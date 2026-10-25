00000000  d3 7f 10 08 b7 a0 99 be  93 80 a0 99 53 80 00 f0  |............S...|
00000010  37 a1 99 3e 13 01 a1 99  d3 00 01 f0 53 7f 10 08  |7..>........S...|
00000020  d3 fe 00 08 b7 20 6a ff  93 80 30 3a 53 80 00 f0  |..... j...0:S...|
00000030  37 21 6a 7f 13 01 31 3a  d3 00 01 f0 53 7e 10 08  |7!j...1:....S~..|
00000040  d3 fd 00 08 b7 e0 6a 5b  93 80 30 3a 53 80 00 f0  |......j[..0:S...|
00000050  37 91 3e 26 13 01 41 09  d3 00 01 f0 53 7d 10 08  |7.>&..A.....S}..|
00000060  d3 fc 00 08 b7 e0 6a 5b  93 80 30 3a 53 80 00 f0  |......j[..0:S...|
00000070  37 01 80 4f d3 00 01 f0  53 7c 10 08 d3 fb 00 08  |7..O....S|......|
00000080  b7 d0 cc 3d 93 80 d0 cc  53 80 00 f0 37 d1 0c 3e  |...=....S...7..>|
00000090  13 01 e1 cc d3 00 01 f0  53 7b 10 08 d3 fa 00 08  |........S{......|
000000a0  b7 d0 cc 3d 93 80 f0 cc  53 80 00 f0 37 d1 0c 3e  |...=....S...7..>|
000000b0  13 01 e1 cc d3 00 01 f0  53 7a 10 08 d3 f9 00 08  |........Sz......|
000000c0  b7 e0 6a 5b 93 80 30 3a  53 80 00 f0 37 01 ff 4e  |..j[..0:S...7..N|
000000d0  d3 00 01 f0 53 79 10 08  d3 f8 00 08 b7 00 52 43  |....Sy........RC|
000000e0  53 80 00 f0 37 11 ac 3c  13 01 11 83 d3 00 01 f0  |S...7..<........|
000000f0  53 78 10 08 d3 f7 00 08  b7 e0 2c bf 93 80 10 83  |Sx........,.....|
00000100  53 80 00 f0 37 e1 2c c1  13 01 11 83 d3 00 01 f0  |S...7.,.........|
00000110  53 77 10 08 d3 f6 00 08  b7 e0 2c 3f 93 80 10 83  |Sw........,?....|
00000120  53 80 00 f0 37 e1 2c c1  13 01 11 83 d3 00 01 f0  |S...7.,.........|
00000130  53 76 10 08 d3 f5 00 08  b7 10 60 45 93 80 40 61  |Sv........`E..@a|
00000140  53 80 00 f0 37 e1 87 c4  13 01 01 9b d3 00 01 f0  |S...7...........|
00000150  53 75 10 08 d3 f4 00 08  b7 d0 35 48 93 80 a0 28  |Su........5H...(|
00000160  53 80 00 f0 37 e1 59 45  13 01 f1 28 d3 00 01 f0  |S...7.YE...(....|
00000170  53 74 10 08 d3 f3 00 08  b7 a0 7f 7f 93 80 f0 7f  |St..............|
00000180  53 80 00 f0 37 61 35 7f  13 01 81 a4 d3 00 01 f0  |S...7a5.........|
00000190  53 73 10 08 d3 f2 00 08  b7 a0 7f ff 93 80 f0 7f  |Ss..............|
000001a0  53 80 00 f0 37 61 35 ff  13 01 81 a4 d3 00 01 f0  |S...7a5.........|
000001b0  53 72 10 08 d3 f1 00 08                           |Sr......|
000001b8



# fsub.s f31, f0, f1 # f31 = 0x0
# 
# 
# li x1, 0xbe99999a     # -0.3
# fmv.w.x f0, x1
# li x2, 0x3e99999a     # 0.3
# fmv.w.x f1, x2
# fsub.s f30, f0, f1 # f30 = 0xbf19999a
# fsub.s f29, f1, f0 # f29 = 0x3f19999a
# 
# li x1, 0xff6a23a3     # -3.1122439e38
# fmv.w.x f0, x1
# li x2, 0x7f6a23a3     # 3.1122439e38
# fmv.w.x f1, x2
# fsub.s f28, f0, f1 # f28 = 0xff800000
# fsub.s f27, f1, f0 # f27 = 0x7f800000
# 
# li x1, 0x5b6ae3a3     # 6.6115434e16
# fmv.w.x f0, x1
# li x2, 0x263e9094     # 6.6115434e-16
# fmv.w.x f1, x2
# fsub.s f26, f0, f1 # f26 = 0x5b6ae3a3
# fsub.s f25, f1, f0 # f25 = 0xdb6ae3a3
# 
# li x1, 0x5b6ae3a3     # 6.6115434e16
# fmv.w.x f0, x1
# li x2, 0x4f800000     # 4.2949673e9 (smallest value possible to add)
# fmv.w.x f1, x2
# fsub.s f24, f0, f1 # f24 = 0x5b6ae3a2
# fsub.s f23, f1, f0 # f23 = 0xdb6ae3a2
# 
# 
# li x1, 0x3dcccccd     # 0.1 (case where round is NOT need not other 1 after last bit and least bit is 0)
# fmv.w.x f0, x1
# li x2, 0x3e0cccce     # 0.13750002
# fmv.w.x f1, x2
# fsub.s f22, f0, f1 # f22 = 0xbd19999e
# fsub.s f21, f1, f0 # f21 = 0x3d19999e
# 
# 
# li x1, 0x3dcccccf     # 0.10000002 (case where round is need not other 1 after last bit and least bit is 1)
# fmv.w.x f0, x1
# li x2, 0x3e0cccce     # 0.13750002
# fmv.w.x f1, x2
# fsub.s f20, f0, f1 # f20 = 0xbd19999a
# fsub.s f19, f1, f0 # f19 = 0x3d19999a
# 
# 
# li x1, 0x5b6ae3a3     # 6.6115434e16
# fmv.w.x f0, x1
# li x2, 0x4eff0000     # 2.139095e9 (smallest not significative value)
# fmv.w.x f1, x2
# fsub.s f18, f0, f1 # f18 = 0x5b6ae3a3
# fsub.s f17, f1, f0 # f17 = 0xdb6ae3a3
# 
# 
# li x1, 0x43520000     # 2.1e2 (exponent opposity but storable)
# fmv.w.x f0, x1
# li x2, 0x3cac0831     # 2.1e-2
# fmv.w.x f1, x2
# fsub.s f16, f0, f1 # f16 = 0x4351faa0
# fsub.s f15, f1, f0 # f15 = 0xc351faa0
# 
# 
# li x1, 0xbf2cd831     # -0.6751738 negatif + negatif
# fmv.w.x f0, x1
# li x2, 0xc12cd831     # -10.802781
# fmv.w.x f1, x2
# fsub.s f14, f0, f1 # f14 = 0x41220aae
# fsub.s f13, f1, f0 # f13 = 0xc1220aae
# 
# 
# 
# li x1, 0x3f2cd831     # 0.6751738 positif + negatif (res negatif)
# fmv.w.x f0, x1
# li x2, 0xc12cd831     # -10.802781
# fmv.w.x f1, x2
# fsub.s f12, f0, f1 # f12 = 0x4137a5b4
# fsub.s f11, f1, f0 # f11 = 0xc137a5b4
# 
# li x1, 0x45601614     # 3585.38 positif + negatif (res positif)
# fmv.w.x f0, x1
# li x2, 0xc487d9b0     # -1086.802781
# fmv.w.x f1, x2
# fsub.s f10, f0, f1 # f10 = 0x45920176
# fsub.s f9, f1, f0 # f9 = 0xc5920176

# li x1, 0x4835d28a     # 186186.1615187 positif + positif (positif)
# fmv.w.x f0, x1
# li x2, 0x4559e28f     # 3486.16
# fmv.w.x f1, x2
# fsub.s f8, f0, f1 # f8 = 0x48326b00
# fsub.s f7, f1, f0 # f7 = 0xc8326b00
# 
# li x1, 0x7f7fa7ff     # 3.3982542e38 positif + positif
# fmv.w.x f0, x1
# li x2, 0x7f355a48     # 2.4105903e38
# fmv.w.x f1, x2
# fsub.s f6, f0, f1 # f6 = 0x7e949b6e
# fsub.s f5, f1, f0 # f5 = 0xfe949b6e
# 
# li x1, 0xff7fa7ff     # -3.3982542e38 negatif + negatif
# fmv.w.x f0, x1
# li x2, 0xff355a48     # -2.4105903e38
# fmv.w.x f1, x2
# fsub.s f4, f0, f1 # f4 = 0xfe949b6e
# fsub.s f3, f1, f0 # f3 = 0x7e949b6e

## cycle 110
## pc 000001b8
## x1 ff7fa7ff
## x2 ff355a48
## f0 ff7fa7ff
## f1 ff355a48
## f2 00000000
## f3 7e949b6e
## f4 fe949b6e
## f5 fe949b6e
## f6 7e949b6e
## f7 c8326b00
## f8 48326b00
## f9 c5920176
## f10 45920176
## f11 c137a5b4
## f12 4137a5b4
## f13 c1220aae
## f14 41220aae
## f15 c351faa0
## f16 4351faa0
## f17 db6ae3a3
## f18 5b6ae3a3
## f19 3d19999a
## f20 bd19999a
## f21 3d19999e
## f22 bd19999e
## f23 db6ae3a2
## f24 5b6ae3a2
## f25 db6ae3a3
## f26 5b6ae3a3
## f27 7f800000
## f28 ff800000
## f29 3f19999a 
## f30 bf19999a
## f31 00000000
