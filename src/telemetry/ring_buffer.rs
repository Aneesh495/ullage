//! Lock-free circular ring buffer for high-rate telemetry frames
//!
//! Provides deterministic single-producer multi-consumer safe data passing
//! with zero dynamic heap allocations on the hot acquisition path.

use std::sync::atomic::{AtomicUsize, Ordering};

/// Lock-free circular ring buffer of fixed power-of-two size
pub struct TelemetryRingBuffer<T: Copy + Default> {
    buffer: Box<[T]>,
    capacity: usize,
    mask: usize,
    head: AtomicUsize,
    tail: AtomicUsize,
    dropped_count: AtomicUsize,
}

impl<T: Copy + Default> TelemetryRingBuffer<T> {
    pub fn new(capacity_power_of_two: usize) -> Self {
        assert!(capacity_power_of_two.is_power_of_two(), "Capacity must be a power of two");
        let mut vec = Vec::with_capacity(capacity_power_of_two);
        for _ in 0..capacity_power_of_two {
            vec.push(T::default());
        }
        Self {
            buffer: vec.into_boxed_slice(),
            capacity: capacity_power_of_two,
            mask: capacity_power_of_two - 1,
            head: AtomicUsize::new(0),
            tail: AtomicUsize::new(0),
            dropped_count: AtomicUsize::new(0),
        }
    }

    /// Enqueue a telemetry sample. If full, overwrites oldest sample and increments dropped count.
    #[inline]
    pub fn push_overwrite(&self, item: T) {
        let head = self.head.load(Ordering::Relaxed);
        let tail = self.tail.load(Ordering::Acquire);

        // Check if buffer is full
        if head.wrapping_sub(tail) >= self.capacity {
            self.tail.store(tail.wrapping_add(1), Ordering::Release);
            self.dropped_count.fetch_add(1, Ordering::Relaxed);
        }

        // Store item into array
        let idx = head & self.mask;
        // Safety: idx is strictly bounded by mask = capacity - 1
        unsafe {
            let ptr = self.buffer.as_ptr() as *mut T;
            std::ptr::write(ptr.add(idx), item);
        }

        self.head.store(head.wrapping_add(1), Ordering::Release);
    }

    /// Try to dequeue an item
    #[inline]
    pub fn pop(&self) -> Option<T> {
        let tail = self.tail.load(Ordering::Relaxed);
        let head = self.head.load(Ordering::Acquire);

        if tail == head {
            return None;
        }

        let idx = tail & self.mask;
        let item = unsafe {
            let ptr = self.buffer.as_ptr();
            std::ptr::read(ptr.add(idx))
        };

        self.tail.store(tail.wrapping_add(1), Ordering::Release);
        Some(item)
    }

    #[inline]
    pub fn len(&self) -> usize {
        let head = self.head.load(Ordering::Relaxed);
        let tail = self.tail.load(Ordering::Relaxed);
        head.wrapping_sub(tail)
    }

    #[inline]
    pub fn is_empty(&self) -> bool {
        self.len() == 0
    }

    #[inline]
    pub fn dropped_frames(&self) -> usize {
        self.dropped_count.load(Ordering::Relaxed)
    }

    #[inline]
    pub fn capacity(&self) -> usize {
        self.capacity
    }
}

unsafe impl<T: Copy + Default + Send> Send for TelemetryRingBuffer<T> {}
unsafe impl<T: Copy + Default + Sync> Sync for TelemetryRingBuffer<T> {}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_ring_buffer_fifo() {
        let rb = TelemetryRingBuffer::<u64>::new(8);
        assert!(rb.is_empty());
        rb.push_overwrite(10);
        rb.push_overwrite(20);
        rb.push_overwrite(30);

        assert_eq!(rb.len(), 3);
        assert_eq!(rb.pop(), Some(10));
        assert_eq!(rb.pop(), Some(20));
        assert_eq!(rb.pop(), Some(30));
        assert_eq!(rb.pop(), None);
        assert_eq!(rb.dropped_frames(), 0);
    }

    #[test]
    fn test_ring_buffer_overrun() {
        let rb = TelemetryRingBuffer::<u32>::new(4);
        for i in 0..6 {
            rb.push_overwrite(i);
        }
        assert_eq!(rb.dropped_frames(), 2);
        assert_eq!(rb.len(), 4);
        // The oldest remaining element should be 2
        assert_eq!(rb.pop(), Some(2));
        assert_eq!(rb.pop(), Some(3));
        assert_eq!(rb.pop(), Some(4));
        assert_eq!(rb.pop(), Some(5));
        assert_eq!(rb.pop(), None);
    }
}
