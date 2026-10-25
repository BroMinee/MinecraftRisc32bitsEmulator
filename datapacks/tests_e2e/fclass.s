00000000  b7 00 80 ff 53 80 00 f0  53 15 00 e0 b7 00 80 bf  |....S...S.......|
00000010  53 80 00 f0 d3 15 00 e0  b7 00 40 80 53 80 00 f0  |S.........@.S...|
00000020  53 16 00 e0 b7 00 00 80  53 80 00 f0 d3 16 00 e0  |S.......S.......|
00000030  93 00 00 00 53 80 00 f0  53 17 00 e0 b7 00 40 00  |....S...S.....@.|
00000040  53 80 00 f0 d3 17 00 e0  b7 00 80 3f 53 80 00 f0  |S..........?S...|
00000050  53 18 00 e0 b7 00 80 7f  53 80 00 f0 d3 18 00 e0  |S.......S.......|
00000060  b7 00 80 7f 93 80 10 00  53 80 00 f0 53 19 00 e0  |........S...S...|
00000070  b7 00 c0 7f 53 80 00 f0  d3 19 00 e0              |....S.......|
0000007c

# li x1, 0xff800000
# fmv.w.x f0, x1
# fclass.s x10, f0            # -inf -> x10 = 0x001 (bit 0)

# li x1, 0xbf800000
# fmv.w.x f0, x1
# fclass.s x11, f0            # -1.0 (negative normal) -> x11 = 0x002 (bit 1)

# li x1, 0x80400000
# fmv.w.x f0, x1
# fclass.s x12, f0            # negative subnormal -> x12 = 0x004 (bit 2)

# li x1, 0x80000000
# fmv.w.x f0, x1
# fclass.s x13, f0            # -0.0 -> x13 = 0x008 (bit 3)

# li x1, 0x00000000
# fmv.w.x f0, x1
# fclass.s x14, f0            # +0.0 -> x14 = 0x010 (bit 4)

# li x1, 0x00400000
# fmv.w.x f0, x1
# fclass.s x15, f0            # positive subnormal -> x15 = 0x020 (bit 5)

# li x1, 0x3f800000
# fmv.w.x f0, x1
# fclass.s x16, f0            # 1.0 (positive normal) -> x16 = 0x040 (bit 6)

# li x1, 0x7f800000
# fmv.w.x f0, x1
# fclass.s x17, f0            # +inf -> x17 = 0x080 (bit 7)

# li x1, 0x7f800001
# fmv.w.x f0, x1
# fclass.s x18, f0            # signaling NaN (exp=FF, mantissa!=0, bit22=0) -> x18 = 0x100 (bit 8)

# li x1, 0x7fc00000
# fmv.w.x f0, x1
# fclass.s x19, f0            # quiet NaN (exp=FF, mantissa!=0, bit22=1) -> x19 = 0x200 (bit 9)

## cycle 31
## pc 0000007c
## x1 7fc00000
## x10 00000001
## x11 00000002
## x12 00000004
## x13 00000008
## x14 00000010
## x15 00000020
## x16 00000040
## x17 00000080
## x18 00000100
## x19 00000200
## f0 7fc00000