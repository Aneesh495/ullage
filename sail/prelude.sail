/*==============================================================================
  Ullage Formal Safety Specification in Sail ISA Language
  Prelude: Bitvector Primitives, Fixed-Width Words, and Arithmetic
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

default Order dec

$include <prelude.sail>

type byte = bits(8)
type half = bits(16)
type word = bits(32)
type doubleword = bits(64)

val zero_word : word
function zero_word = 0x0000_0000

val word_to_int : word -> int
function word_to_int(w) = unsigned(w)

val int_to_word : int -> word
function int_to_word(i) = to_bits(32, i)

val bit_is_set : (word, int) -> bool
function bit_is_set(w, bit_idx) = {
    let mask = 1 << bit_idx;
    (unsigned(w) & mask) != 0
}
