//! Standard Test Data Format (STDF-v4 inspired) record exporter
//!
//! Provides structured logging of qualification runs, parametric test results,
//! and hardware pass/fail binning.

use std::io::{self, Write};

/// STDF Record Type Codes
pub const REC_FAR: u8 = 0; // File Attributes Record
pub const REC_MIR: u8 = 1; // Master Information Record
pub const REC_PIR: u8 = 2; // Part Information Record
pub const REC_PTR: u8 = 3; // Parametric Test Record
pub const REC_PRR: u8 = 4; // Part Results Record
pub const REC_MRR: u8 = 5; // Master Results Record

/// Parametric test measurement result for STDF archiving
#[derive(Debug, Clone)]
pub struct ParametricTestResult {
    pub test_num: u32,
    pub test_name: String,
    pub result_val: f64,
    pub lo_limit: Option<f64>,
    pub hi_limit: Option<f64>,
    pub units: String,
    pub pass: bool,
}

/// STDF Record Builder and Writer
pub struct StdfWriter<W: Write> {
    writer: W,
    records_written: usize,
}

impl<W: Write> StdfWriter<W> {
    pub fn new(writer: W) -> Self {
        Self {
            writer,
            records_written: 0,
        }
    }

    /// Write File Attributes Record (FAR)
    pub fn write_far(&mut self) -> io::Result<()> {
        let mut payload = Vec::new();
        payload.push(4u8); // STDF Version 4
        payload.push(2u8); // CPU Type
        self.write_record(REC_FAR, &payload)
    }

    /// Write Master Information Record (MIR)
    pub fn write_mir(&mut self, facility: &str, stand_id: &str, engine_sn: &str) -> io::Result<()> {
        let mut payload = Vec::new();
        Self::append_str(&mut payload, facility);
        Self::append_str(&mut payload, stand_id);
        Self::append_str(&mut payload, engine_sn);
        self.write_record(REC_MIR, &payload)
    }

    /// Write Parametric Test Record (PTR)
    pub fn write_ptr(&mut self, res: &ParametricTestResult) -> io::Result<()> {
        let mut payload = Vec::new();
        payload.extend_from_slice(&res.test_num.to_be_bytes());
        Self::append_str(&mut payload, &res.test_name);
        payload.extend_from_slice(&res.result_val.to_be_bytes());
        payload.extend_from_slice(&res.lo_limit.unwrap_or(f64::NEG_INFINITY).to_be_bytes());
        payload.extend_from_slice(&res.hi_limit.unwrap_or(f64::INFINITY).to_be_bytes());
        Self::append_str(&mut payload, &res.units);
        payload.push(if res.pass { 1 } else { 0 });
        self.write_record(REC_PTR, &payload)
    }

    /// Write Master Results Record (MRR)
    pub fn write_mrr(&mut self, summary_pass: bool) -> io::Result<()> {
        let mut payload = Vec::new();
        payload.push(if summary_pass { 1 } else { 0 });
        self.write_record(REC_MRR, &payload)
    }

    fn write_record(&mut self, rec_type: u8, data: &[u8]) -> io::Result<()> {
        let len = data.len() as u16;
        self.writer.write_all(&len.to_be_bytes())?;
        self.writer.write_all(&[rec_type])?;
        self.writer.write_all(data)?;
        self.records_written += 1;
        Ok(())
    }

    fn append_str(vec: &mut Vec<u8>, s: &str) {
        let bytes = s.as_bytes();
        vec.push(bytes.len() as u8);
        vec.extend_from_slice(bytes);
    }

    pub fn records_count(&self) -> usize {
        self.records_written
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_stdf_generation() {
        let mut buf = Vec::new();
        {
            let mut stdf = StdfWriter::new(&mut buf);
            stdf.write_far().unwrap();
            stdf.write_mir("TestStand-Alpha", "Cell-4B", "ENG-LOX-0042").unwrap();
            let ptr = ParametricTestResult {
                test_num: 101,
                test_name: "Chamber_Pressure_Pc".to_string(),
                result_val: 82.5,
                lo_limit: Some(78.0),
                hi_limit: Some(85.0),
                units: "bar".to_string(),
                pass: true,
            };
            stdf.write_ptr(&ptr).unwrap();
            stdf.write_mrr(true).unwrap();
            assert_eq!(stdf.records_count(), 4);
        }
        assert!(!buf.is_empty());
    }
}
