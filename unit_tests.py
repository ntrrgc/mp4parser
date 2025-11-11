# Run with
# python -m pytest unit_tests.py

from mp4parser import FlagBitSet

def test_flag_bit_set():
    ff = FlagBitSet(1, 0b1001_0110)
    assert not ff.bit_from_mask(0x1)
    assert ff.bit_from_mask(0x2)