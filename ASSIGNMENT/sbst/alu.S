.section .text.alu_test
.global _alu_test
.type _alu_test, @function

_alu_test:

    #fmax.s f0, f1, f2

    ##- START -##
    li t0, 0xb6f55a23
    p.abs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x387185d4
    li t1, 0x6deffcc0
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x45b3b33
    li t1, 0xeea663ed
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x82ee5dca
    p.extractu t2, t0, 0x6, 0x3
    sw t2, 4(sp)
    
    li t0, 0x6663ca37
    li t1, 0x75b32849
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe970e2ef
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0x482edf41
    li t1, 0x5cc8c040
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x32d0d2c9
    li t1, 0xcc7f99
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfeccc3de
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x5c71b3f6
    li t1, 0x370c3616
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2d55f043
    li t1, 0x3dc011c3
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xdd08087b
    li t1, 0xe451077b
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4336fc6c
    li t1, 0xb7b0c088
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd171babc
    p.clip t2, t0, 0x8
    sw t2, 4(sp)
    
    li t0, 0x157fb6f
    li t1, 0xfebacc06
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7607320d
    p.extractu t2, t0, 0x1e, 0x15
    sw t2, 4(sp)
    
    li t0, 0x921befd8
    li t1, 0x8a09f17a
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x14ada102
    li t1, 0x6b4d3181
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf3fea7e4
    p.bclr t2, t0, 0x7, 0x11
    sw t2, 4(sp)
    
    li t0, 0x1427a184
    pv.extract.b t2, t0, 0x3
    sw t2, 4(sp)
    
    li t0, 0xff8e1284
    li t1, 0x13c3846
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x88a0916f
    li t1, 0x8d0e8907
    pv.shuffle.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x83f1b175
    li t1, 0x9bae8c74
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfbdbebed
    p.bset t2, t0, 0x12, 0x1c
    sw t2, 4(sp)
    
    li t0, 0xdffdffff
    p.bclr t2, t0, 0x18, 0xe
    sw t2, 4(sp)
    
    li t0, 0x3a085e4d
    p.extract t2, t0, 0x15, 0xc
    sw t2, 4(sp)
    
    li t0, 0x4337f01
    li t1, 0x4337e23
    pv.cmpgeu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5f14e860
    li t1, 0x59034e7e
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x88211a55
    li t1, 0x2bdff715
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc3053f07
    li t1, 0xe6fd6ecf
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x357fffd3
    p.bset t2, t0, 0x1, 0x1d
    sw t2, 4(sp)
    
    li t0, 0x2ac309c8
    li t1, 0x7ed63c3a
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x31c6b366
    li t1, 0xd38378f2
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7ab7afc7
    p.bset t2, t0, 0x18, 0x16
    sw t2, 4(sp)
    
    li t0, 0xd9e9835d
    p.bset t2, t0, 0x2, 0x1a
    sw t2, 4(sp)
    
    li t0, 0xcd3d1bf3
    li t1, 0xe33d1564
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xef25aab3
    li t1, 0xef24528f
    and t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc5993104
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0xd4a8295
    li t1, 0x554a8210
    p.adduN t2, t0, t1, 0x6
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xd4a8295
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2b3afb71
    p.extractu t2, t0, 0xc, 0xc
    sw t2, 4(sp)
    
    li t0, 0x50485f91
    pv.extractu.h t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x4ffd1b03
    pv.extractu.h t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x7fefd8e0
    li t1, 0x8020595e
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf40e25f1
    li t1, 0xe4b378eb
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x510046
    p.bset t2, t0, 0x8, 0x18
    sw t2, 4(sp)
    
    li t0, 0x1c0dc220
    li t1, 0x27fbcdee
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x484e7fc2
    li t1, 0x504e7fa2
    pv.max.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9d170c38
    li t1, 0xb7435333
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3f1a81c6
    li t1, 0x3f1a82c7
    bgt t0, t1, label_n_0
    label_n_0:
        sw t2, 4(sp)
    
    li t0, 0x2fdfa963
    li t1, 0xc00d34e9
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd35b6cca
    li t1, 0xd35b6cca
    p.adduN t2, t0, t1, 0xe
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xd35b6cca
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcf5675fb
    li t1, 0xb561d56
    p.subuN t2, t0, t1, 0x1
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xcf5675fb
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc41c2f9e
    li t1, 0x2be3c53e
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb1e92016
    p.extract t2, t0, 0xf, 0xe
    sw t2, 4(sp)
    
    li t0, 0xc9808b52
    li t1, 0xcbbd5c07
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x13f381a0
    li t1, 0xc6c30051
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x93ef4689
    li t1, 0x5c10fc2c
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa0a68fbd
    li t1, 0x1f428f70
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb4d035a9
    p.bset t2, t0, 0x16, 0xf
    sw t2, 4(sp)
    
    li t0, 0x604
    li t1, 0x4fb34002
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf13ad6ac
    li t1, 0x748e0ab
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x26d4c3
    li t1, 0xccffd47c
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3807fd7f
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x4025aff
    p.clipu t2, t0, 0x8
    sw t2, 4(sp)
    
    li t0, 0xfc54212c
    li t1, 0xfc54082b
    pv.cmpeq.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x51ee623b
    li t1, 0xe50d403b
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf092825a
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xb960b860
    li t1, 0xe45aea1e
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xba29c871
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x72779541
    p.bset t2, t0, 0x1f, 0x1
    sw t2, 4(sp)
    
    li t0, 0x5dd641f5
    p.bset t2, t0, 0x8, 0x11
    sw t2, 4(sp)
    
    li t0, 0x8000
    li t1, 0x35dc
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7eace5ea
    pv.extract.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0xca44437a
    li t1, 0xca44437b
    pv.add.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xefbffdfe
    li t1, 0x37c5ff45
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x575b87f5
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x7badc17a
    li t1, 0x78848e7b
    bge t0, t1, label_n_1
    label_n_1:
        sw t2, 4(sp)
    
    li t0, 0x80b9cd37
    li t1, 0x80b724e8
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4fd5e639
    li t1, 0x501b19cf
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x328a5402
    li t1, 0x3a3fa5a9
    p.subuRN t2, t0, t1, 0x2
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x328a5402
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1d6b02ab
    pv.extractu.h t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0x85351aa2
    li t1, 0xeec4e560
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x65413ee1
    li t1, 0xe6c0c120
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8041186d
    li t1, 0x60d80a14
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe990c343
    p.bset t2, t0, 0x1c, 0x17
    sw t2, 4(sp)
    
    li t0, 0x2001
    li t1, 0xffffdfff
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9153162a
    li t1, 0xef67165a
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7faf30d1
    li t1, 0x424d90ce
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x29d78b6a
    li t1, 0x9678833
    p.min t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5993bc3c
    p.bset t2, t0, 0x0, 0x9
    sw t2, 4(sp)
    
    li t0, 0x2c6042d2
    li t1, 0x2c601949
    pv.cmpge.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x747e5e6d
    li t1, 0x2fa593fc
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x14148403
    p.extractu t2, t0, 0x11, 0x2
    sw t2, 4(sp)
    
    li t0, 0x482a1ab1
    li t1, 0xde376718
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x25750d58
    li t1, 0xee03b38c
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc08286ac
    li t1, 0x2f6dd9c6
    pv.shuffle.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe0243463
    p.bset t2, t0, 0x8, 0x1b
    sw t2, 4(sp)
    
    li t0, 0xeb77e1bb
    p.bset t2, t0, 0x5, 0x6
    sw t2, 4(sp)
    
    li t0, 0x90e6a1cf
    p.bset t2, t0, 0x10, 0x5
    sw t2, 4(sp)
    
    li t0, 0x80000000
    li t1, 0x794a0b93
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x400
    li t1, 0x3f500190
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9321e6ec
    li t1, 0x9321e6ec
    pv.cmpgt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1495a48e
    p.clip t2, t0, 0x1b
    sw t2, 4(sp)
    
    li t0, 0xff32ad7c
    li t1, 0x96a3d87b
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2bcf3b2f
    li t1, 0x27d13daf
    pv.and.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xed56f39a
    li t1, 0xed58f9a7
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa9e42d04
    li t1, 0x85e75219
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xec715b43
    li t1, 0x2363c006
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9c91c20b
    li t1, 0xd8584345
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x429f4d79
    p.bset t2, t0, 0x6, 0x12
    sw t2, 4(sp)
    
    li t0, 0xd94ccb45
    p.bset t2, t0, 0x1a, 0x7
    sw t2, 4(sp)
    
    li t0, 0x9
    li t1, 0x3446796
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x86924768
    p.bset t2, t0, 0x17, 0x1f
    sw t2, 4(sp)
    
    li t0, 0x54c307c9
    p.bset t2, t0, 0x17, 0x1f
    sw t2, 4(sp)
    
    li t0, 0x10001
    li t1, 0x8eb8f564
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc6d695a
    li t1, 0xc66b7332
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8721fced
    li t1, 0xe3ae7d19
    pv.cmpleu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xed60fa7e
    li t1, 0xed60fb11
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t2, 0x50f8b85d
    li t0, 0x6ed9fe5b
    li t1, 0x2ca803c6
    p.insertr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9dc5409
    li t1, 0x90260039
    p.subuN t2, t0, t1, 0xf
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x9dc5409
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe093c805
    li t1, 0x3af5c800
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xef0c090e
    li t1, 0xefe0090f
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x0
    li t1, 0x65fb55d6
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8e71580f
    p.bset t2, t0, 0x1, 0x1
    sw t2, 4(sp)
    
    li t0, 0x8fd08ca1
    p.bset t2, t0, 0x1f, 0x1
    sw t2, 4(sp)
    
    li t0, 0x800000
    li t1, 0xc40b572
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x584d8e75
    pv.extract.h t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0x427ffe03
    li t1, 0xc1080ceb
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4f971721
    li t1, 0x4f960e55
    p.subuN t2, t0, t1, 0x1d
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x4f971721
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd14a49a7
    p.clipu t2, t0, 0x5
    sw t2, 4(sp)
    
    li t0, 0x993ecacc
    li t1, 0x68f2ca4d
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9c8d2cea
    p.extractu t2, t0, 0xe, 0x4
    sw t2, 4(sp)
    
    li t0, 0xab91f4b1
    li t1, 0xaf94206d
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x555200d8
    li t1, 0xd7ab11f6
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb94ad7f1
    p.bset t2, t0, 0xe, 0x9
    sw t2, 4(sp)
    
    li t0, 0x80
    li t1, 0x7ceb5b4e
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x331213ff
    p.bset t2, t0, 0x0, 0xd
    sw t2, 4(sp)
    
    li t0, 0x40001
    li t1, 0xd470e3a9
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x801
    li t1, 0x39a3549d
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa22c1a26
    li t1, 0xa22d2a4e
    p.addRN t2, t0, t1, 0xb
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa22c1a26
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8851c033
    li t1, 0x5cfa70d2
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb40ffdec
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x4df126b7
    li t1, 0x681b7391
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3e798186
    p.extract t2, t0, 0x8, 0x16
    sw t2, 4(sp)
    
    li t0, 0x68d1df5b
    p.bset t2, t0, 0x5, 0x2
    sw t2, 4(sp)
    
    li t0, 0x20
    li t1, 0x1aa87fd5
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x100000
    li t1, 0x975ec
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x200
    li t1, 0x55ec0176
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x139ac036
    li t1, 0x13063ed6
    pv.cmple.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf5a56317
    li t1, 0x8f9b1d17
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7bd3c40d
    p.clipu t2, t0, 0x15
    sw t2, 4(sp)
    
    li t0, 0xc1b8205d
    li t1, 0xbb2dbcfc
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd3f27d3d
    p.bset t2, t0, 0x3, 0x19
    sw t2, 4(sp)
    
    li t0, 0xb2fd1f27
    p.bset t2, t0, 0x19, 0x4
    sw t2, 4(sp)
    
    li t0, 0xea699b6b
    p.bset t2, t0, 0x14, 0xa
    sw t2, 4(sp)
    
    li t0, 0x11
    li t1, 0x5a790f4e
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4b727461
    p.bset t2, t0, 0x1f, 0x1d
    sw t2, 4(sp)
    
    li t0, 0x4001
    li t1, 0xcb4f21eb
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x400001
    li t1, 0xa0a99b0d
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4d15ad56
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0xc40181a6
    li t1, 0x40008061
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe3a3efe6
    li t1, 0xa8ab0630
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa1c6a6ae
    li t1, 0xd34cf011
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x441197d5
    p.bset t2, t0, 0xa, 0x0
    sw t2, 4(sp)
    
    li t0, 0x805f1bc1
    p.bset t2, t0, 0x1e, 0x0
    sw t2, 4(sp)
    
    li t0, 0x544e672b
    p.bset t2, t0, 0x1d, 0x11
    sw t2, 4(sp)
    
    li t0, 0x2
    li t1, 0xff392f3d
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x10000001
    li t1, 0xee59e7f6
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x200000
    li t1, 0xf70c737b
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1000000
    li t1, 0xe0b3bb7c
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x58101d68
    li t1, 0x58115dbe
    beq t0, t1, label_n_2
    label_n_2:
        sw t2, 4(sp)
    
    li t0, 0x3937c6f1
    li t1, 0xf241170c
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xab8b0466
    li t1, 0xcb094ede
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xecb3f7e9
    p.bset t2, t0, 0x17, 0xe
    sw t2, 4(sp)
    
    li t0, 0x62e52745
    p.bset t2, t0, 0x1b, 0x0
    sw t2, 4(sp)
    
    li t0, 0x2841e18d
    p.bset t2, t0, 0x12, 0x0
    sw t2, 4(sp)
    
    li t0, 0xb0521d61
    p.bset t2, t0, 0x16, 0x1
    sw t2, 4(sp)
    
    li t0, 0x1001
    li t1, 0x7b2c0ba5
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8000000
    li t1, 0xb5967552
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1145d808
    li t1, 0x6f20fe05
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6985ce1c
    li t1, 0x63d78ab1
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x94b39f7e
    li t1, 0xeab00152
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4a7a1f3b
    li t1, 0x75ae42eb
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x84bb117
    li t1, 0x39f8cf1b
    pv.and.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe320b64e
    li t1, 0x1c629dde
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe0f05b36
    li t1, 0x62504eef
    pv.packhi.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xac0c53ed
    li t1, 0xec745301
    xor t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x100
    li t1, 0x69
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x69a3aecd
    p.bset t2, t0, 0x12, 0x4
    sw t2, 4(sp)
    
    li t0, 0xe8762d33
    p.bset t2, t0, 0xc, 0x13
    sw t2, 4(sp)
    
    li t0, 0x20001
    li t1, 0x235c3c6
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4000001
    li t1, 0x6a473db5
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf9e2ecb3
    li t1, 0x5e7f42b4
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7b49e76f
    li t1, 0x7dcddd62
    p.minu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd7a4f3b6
    li t1, 0xd4e6eeb1
    beq t0, t1, label_n_3
    label_n_3:
        sw t2, 4(sp)
    
    li t0, 0xad279da
    li t1, 0xb737758
    pv.cmpgt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd92afc81
    li t1, 0x824e15f1
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfdbd11b6
    li t1, 0x757ffb7c
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x73df204f
    p.bset t2, t0, 0x10, 0xf
    sw t2, 4(sp)
    
    li t0, 0x635d3fdd
    p.bset t2, t0, 0x12, 0x14
    sw t2, 4(sp)
    
    li t0, 0x402cab3
    p.bset t2, t0, 0xc, 0xa
    sw t2, 4(sp)
    
    li t0, 0x41
    li t1, 0x45529c93
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6354f17
    p.bset t2, t0, 0x9, 0x3
    sw t2, 4(sp)
    
    li t0, 0x2a07945e
    p.bset t2, t0, 0x0, 0x12
    sw t2, 4(sp)
    
    li t0, 0x4e6329
    p.bset t2, t0, 0x17, 0x19
    sw t2, 4(sp)
    
    li t0, 0x9edb568b
    p.bset t2, t0, 0x15, 0xc
    sw t2, 4(sp)
    
    li t0, 0x40000000
    li t1, 0x39b18d24
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x20000001
    li t1, 0x59bdb345
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x80001
    li t1, 0xbcd7d9a2
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2000001
    li t1, 0xa5d3df94
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4
    li t1, 0xaa54dc03
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8aae8dea
    li t1, 0x952ed8a4
    pv.max.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7b91e221
    li t1, 0x600df565
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xde177633
    li t1, 0xf8b4c8d4
    pv.sra.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf84f282a
    li t1, 0x74135c0
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe0492264
    li t1, 0xd8b62d1e
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8ed2fdfe
    li t1, 0x2df69627
    p.subRN t2, t0, t1, 0x1f
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x8ed2fdfe
    p.subRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x93ddbc9e
    li t1, 0xaff4f1f2
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa34e19b7
    li t1, 0xd3583d4
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x35bebda4
    pv.abs.b t2, t0
    sw t2, 4(sp)
    
    li t0, 0x50cebcf2
    li t1, 0xc06dc8ad
    p.subuRN t2, t0, t1, 0x7
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x50cebcf2
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5c5c5d1
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xe381800
    li t1, 0x7bcc8da0
    p.subuRN t2, t0, t1, 0x14
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xe381800
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1ff606b8
    li t1, 0x1a933d23
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x877dfd70
    li t1, 0x6fc84df8
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc0341978
    li t1, 0xc228a4e1
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6d8374d7
    li t1, 0x4097acad
    pv.and.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3621bb6b
    li t1, 0x3a4a9e0c
    pv.add.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6ab70204
    li t1, 0xf1b5797f
    p.subRN t2, t0, t1, 0x14
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x6ab70204
    p.subRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x43c5e54b
    li t1, 0x5918fbda
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9ad43f6
    li t1, 0x58762491
    pv.cmple.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa5468f94
    li t1, 0x96327e52
    pv.cmpltu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xbddd717c
    li t1, 0x87705fe2
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x498c9740
    li t1, 0x5143f644
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x71023a
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0x4602d3eb
    li t1, 0x85de7f76
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa1ca8bef
    li t1, 0xec84a181
    bleu t0, t1, label_n_4
    label_n_4:
        sw t2, 4(sp)
    
    li t0, 0x56d6ed43
    li t1, 0x691bbcd0
    pv.cmpge.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd060ba47
    li t1, 0x1ac0464d
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xbfc7761a
    pv.extractu.h t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0xebec2086
    li t1, 0xe96590ce
    pv.cmpne.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x29cd91ce
    li t1, 0x3bf69d0
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x21f0035
    p.bset t2, t0, 0xa, 0x4
    sw t2, 4(sp)
    
    li t0, 0x61f0035
    p.bset t2, t0, 0xb, 0x3
    sw t2, 4(sp)
    
    li t0, 0x762c3246
    li t1, 0xa64d9170
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x39b8c7e0
    li t1, 0x42bac9a
    pv.min.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcbb0a922
    li t1, 0x565f851c
    bgt t0, t1, label_n_5
    label_n_5:
        sw t2, 4(sp)
    
    li t0, 0xdd351af4
    li t1, 0xd62e0e53
    p.subuRN t2, t0, t1, 0x12
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xdd351af4
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xdac23023
    li t1, 0xdfed6fad
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc8f66433
    li t1, 0xdc4d0515
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4ed7caa3
    pv.insert.h t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x1
    li t1, 0xa3fd86d2
    p.adduN t2, t0, t1, 0x1c
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x1
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x92e80935
    li t1, 0x8703e014
    pv.cmpgeu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd7e8705d
    pv.abs.b t2, t0
    sw t2, 4(sp)
    
    li t0, 0xe1580ae9
    li t1, 0x388819fc
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x36b8d1dc
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x1966cf51
    li t1, 0xd16c9698
    pv.sll.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf625762f
    li t1, 0x148f8570
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb5f77d91
    li t1, 0xe9f88a17
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1b48e19d
    li t1, 0xce2f63b3
    bge t0, t1, label_n_6
    label_n_6:
        sw t2, 4(sp)
    
    li t0, 0xf787349e
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t2, 0x79a5a100
    li t0, 0x9b6add6f
    li t1, 0xc0529f7b
    p.insertr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x94277b7
    li t1, 0xf0564cca
    blt t0, t1, label_n_7
    label_n_7:
        sw t2, 4(sp)
    
    li t0, 0x8201a71e
    li t1, 0x657e0e7b
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd7c8ecf7
    li t1, 0xa24ed833
    pv.cmpleu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xae6f731d
    li t1, 0x46725293
    bne t0, t1, label_n_8
    label_n_8:
        sw t2, 4(sp)
    
    li t0, 0x439879ff
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x1c37c1ff
    li t1, 0x71bd3f78
    pv.xor.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x307c07c1
    li t1, 0xf69991e8
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xaac864ec
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x814f3fb7
    li t1, 0xa65a76ae
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc74f004a
    p.bset t2, t0, 0x14, 0x14
    sw t2, 4(sp)
    
    li t0, 0x853a6226
    li t1, 0x9b23ebee
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4f342d45
    li t1, 0x6a86bf82
    sra t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf62916d8
    li t1, 0x1ad5956c
    pv.sra.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x16f8373e
    li t1, 0x7e0bee
    sra t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x648ece39
    li t1, 0x98d82965
    bltu t0, t1, label_n_9
    label_n_9:
        sw t2, 4(sp)
    
    li t0, 0x16fc2f3e
    li t1, 0xdda585cd
    pv.add.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb9b28740
    li t1, 0x756d2412
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa15e1d9a
    li t1, 0x7da053c7
    bgeu t0, t1, label_n_10
    label_n_10:
        sw t2, 4(sp)
    
    li t0, 0x4456ddd7
    li t1, 0x1f5c8bd9
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc49d1dc5
    li t1, 0x4ee90178
    p.subuRN t2, t0, t1, 0x1
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xc49d1dc5
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb601a83e
    li t1, 0x8645780d
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8c5aa7b1
    li t1, 0x3a92a655
    p.adduRN t2, t0, t1, 0x13
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x8c5aa7b1
    p.adduRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc4b26a23
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x9b919dc7
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0x2bc31b98
    li t1, 0xcb105342
    pv.max.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x22ed398d
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xe886aea0
    li t1, 0xf24adad9
    pv.cmpeq.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xdda1f702
    li t1, 0x4f8f30ba
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3d9e6722
    li t1, 0xfdfc9dc6
    bne t0, t1, label_n_11
    label_n_11:
        sw t2, 4(sp)
    
    li t0, 0x2e81f785
    li t1, 0xb71bc865
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7a8ab86e
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x846ba51e
    li t1, 0x2cba7b19
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x434929f0
    li t1, 0xacc6680d
    p.addRN t2, t0, t1, 0x4
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x434929f0
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5acfd480
    li t1, 0xd2f423fd
    p.adduN t2, t0, t1, 0x1c
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x5acfd480
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfcde7a4a
    li t1, 0xb5a20344
    bgt t0, t1, label_n_12
    label_n_12:
        sw t2, 4(sp)
    
    li t0, 0x10e1d16e
    li t1, 0xc2952d84
    p.adduRN t2, t0, t1, 0x1e
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x10e1d16e
    p.adduRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1b9a3068
    li t1, 0xacb23b20
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfcc2c9c5
    li t1, 0x168e3ea8
    ble t0, t1, label_n_13
    label_n_13:
        sw t2, 4(sp)
    
    li t0, 0x724bbd0e
    li t1, 0x89d606e
    pv.cmpgtu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x67153cab
    li t1, 0x5e8486c3
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb4b6621a
    li t1, 0xa9b28de0
    pv.cmple.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x17a0567a
    li t1, 0xb65c64c1
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6d67887e
    p.extract t2, t0, 0x17, 0x1f
    sw t2, 4(sp)
    
    li t0, 0x5d997251
    p.clip t2, t0, 0x1d
    sw t2, 4(sp)
    
    li t0, 0xa8e03062
    li t1, 0xaf7d5788
    p.subuN t2, t0, t1, 0x19
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa8e03062
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x85d403b7
    li t1, 0x83e7de67
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa45d4f4a
    p.bclr t2, t0, 0x2, 0x18
    sw t2, 4(sp)
    
    li t0, 0x55b9f811
    p.clip t2, t0, 0x15
    sw t2, 4(sp)
    
    li t0, 0x1dd7e1b4
    li t1, 0x752382bc
    pv.sub.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x17901d1e
    li t1, 0x16befc5f
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa98e2f24
    pv.insert.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x7e644f5a
    li t1, 0x2045d645
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x78fe26ac
    li t1, 0xcdc8db84
    p.adduRN t2, t0, t1, 0xa
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x78fe26ac
    p.adduRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x203a702d
    li t1, 0xb34aa7ed
    pv.cmpge.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9188145f
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xa9bc8ea0
    li t1, 0x4bf482bc
    bgt t0, t1, label_n_14
    label_n_14:
        sw t2, 4(sp)
    
    li t0, 0x6d908423
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xd4d079d9
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x12526626
    li t1, 0xe50a82d8
    bge t0, t1, label_n_15
    label_n_15:
        sw t2, 4(sp)
    
    li t0, 0xc10e234d
    li t1, 0x311476bf
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x436a6186
    li t1, 0x4588988a
    p.addRN t2, t0, t1, 0x1a
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x436a6186
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2788a4e9
    li t1, 0xf8d4f5a
    and t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7a4c77d3
    li t1, 0xa1f145f2
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9a7e5831
    li t1, 0xf2d3c152
    pv.max.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x16f827be
    li t1, 0x815b766a
    bgt t0, t1, label_n_16
    label_n_16:
        sw t2, 4(sp)
    
    li t0, 0xed8a90e7
    p.clipu t2, t0, 0x11
    sw t2, 4(sp)
    
    li t0, 0x6f19e713
    li t1, 0xaecdae80
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x37bd54e0
    li t1, 0xcdf69af4
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8678de2b
    li t1, 0x902235d1
    bltu t0, t1, label_n_17
    label_n_17:
        sw t2, 4(sp)
    
    li t0, 0xc4a40220
    li t1, 0x6da1bdc8
    p.subuN t2, t0, t1, 0x1e
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xc4a40220
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x430d9fd9
    li t1, 0xe1151931
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x74a04a5f
    li t1, 0x671ee2b6
    pv.sub.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x0
    li t1, 0x7accfe29
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xefe021d6
    pv.insert.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x5cf5244
    li t1, 0xd875906e
    bge t0, t1, label_n_18
    label_n_18:
        sw t2, 4(sp)
    
    li t0, 0x7f3db3fa
    li t1, 0x419c7f32
    p.max t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x446fa0a1
    li t1, 0x8d16ac38
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6ae7746d
    li t1, 0x4aee79a9
    pv.cmple.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1ffe0123
    li t1, 0xbd0814b9
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc74e64c5
    li t1, 0x7cae4083
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc2e53f42
    li t1, 0xcc817147
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xae7c3a27
    p.clipu t2, t0, 0x16
    sw t2, 4(sp)
    
    li t0, 0xfe871ada
    li t1, 0x533c2f59
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe8ae4c85
    pv.extract.b t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0x17f82fbf
    li t1, 0xa8c7e706
    add t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3d7845e7
    li t1, 0xc53aed32
    p.adduN t2, t0, t1, 0x1d
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x3d7845e7
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5b68eff2
    li t1, 0x37b8579c
    sra t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x50e60ec
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x30858bba
    p.clip t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0xe6fa4770
    li t1, 0x900e7760
    pv.cmpge.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7073c5b6
    p.extract t2, t0, 0x12, 0x14
    sw t2, 4(sp)
    
    li t0, 0x17fc2fbb
    li t1, 0x8b50041b
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x18031e01
    p.extractu t2, t0, 0x14, 0x1e
    sw t2, 4(sp)
    
    li t0, 0x0
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x72fd0034
    li t1, 0x82e59168
    pv.cmpeq.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf6e62706
    li t1, 0x26416698
    pv.cmpltu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf6a4471
    li t1, 0x271b6c98
    pv.cmpgtu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xea0dadeb
    li t1, 0x6985dbb6
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x56f837bf
    li t1, 0xf4254ab8
    bge t0, t1, label_n_19
    label_n_19:
        sw t2, 4(sp)
    
    li t0, 0x76e17e96
    li t1, 0xa5cfadb3
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x55bcfcf3
    li t1, 0x78d1c529
    bgt t0, t1, label_n_20
    label_n_20:
        sw t2, 4(sp)
    
    li t0, 0x3fe72f77
    li t1, 0x984ac5c4
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x38bd0423
    p.abs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x28e4f211
    li t1, 0x15098ce8
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x516f5f01
    p.clip t2, t0, 0xe
    sw t2, 4(sp)
    
    li t0, 0x53e0f24c
    p.bclr t2, t0, 0x6, 0x12
    sw t2, 4(sp)
    
    li t0, 0x24953b99
    li t1, 0xdae312dc
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2c258c
    li t1, 0x3afddd0b
    blt t0, t1, label_n_21
    label_n_21:
        sw t2, 4(sp)
    
    li t0, 0xfeb1135f
    li t1, 0x4107c216
    pv.cmpge.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x34a5cd91
    li t1, 0xb274da65
    pv.cmpgtu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x300c475e
    li t1, 0xb64b9e9c
    pv.max.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xbbb2997
    li t1, 0x5c465c24
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf1fb1338
    p.bset t2, t0, 0x18, 0x8
    sw t2, 4(sp)
    
    li t0, 0xa587700a
    p.clipu t2, t0, 0xf
    sw t2, 4(sp)
    
    li t0, 0xee3b673c
    li t1, 0x320b28a1
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd591f7dd
    li t1, 0x176ded61
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x658205ff
    li t1, 0xa13f0dfb
    xor t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xeacd818e
    li t1, 0x667971d3
    ble t0, t1, label_n_22
    label_n_22:
        sw t2, 4(sp)
    
    li t0, 0x8c397906
    p.bclr t2, t0, 0x18, 0x0
    sw t2, 4(sp)
    
    li t0, 0xb111cf5a
    li t1, 0xed802790
    pv.maxu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x499f71ab
    li t1, 0x8a5c715
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x355d012
    li t1, 0x23edd283
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9caa44d1
    li t1, 0x313ea216
    pv.maxu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf47ea8c5
    li t1, 0x3de800a2
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x34243d6
    li t1, 0x2210a56e
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x68178d5a
    li t1, 0xcd18af7a
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x38971350
    li t1, 0x77abf01b
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe3e255e2
    p.bclr t2, t0, 0x4, 0x9
    sw t2, 4(sp)
    
    li t0, 0x9ab095
    p.clip t2, t0, 0x14
    sw t2, 4(sp)
    
    li t0, 0xa8c61d38
    li t1, 0x48fb49bc
    bgtu t0, t1, label_n_23
    label_n_23:
        sw t2, 4(sp)
    
    li t0, 0x758fe6fb
    li t1, 0x8619088e
    srl t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x67e73ec6
    li t1, 0xd4874fb
    sra t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd1914a2b
    li t1, 0x48c72e6d
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1
    li t1, 0xc643ad8b
    pv.sra.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf9dc8dd9
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x20c76404
    li t1, 0x33962933
    p.adduN t2, t0, t1, 0x15
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x20c76404
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4c61ee64
    p.clip t2, t0, 0x3
    sw t2, 4(sp)
    
    li t0, 0xac0f6526
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x4c2c1610
    li t1, 0xb376da67
    bgtu t0, t1, label_n_24
    label_n_24:
        sw t2, 4(sp)
    
    li t0, 0x80929522
    li t1, 0xc2b3251d
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x906d2d1f
    li t1, 0xf2ca06cb
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x722613be
    li t1, 0xdf7f7290
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5f6dc084
    li t1, 0xa56582f8
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb8ae0de0
    li t1, 0x7be846a7
    p.minu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6433a918
    li t1, 0x2fdff57b
    pv.and.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd2810f53
    li t1, 0x1c91d6ae
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfec3e74e
    li t1, 0x79129440
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7ed717e9
    li t1, 0x1a837269
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8d9cf025
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x1e275e4c
    li t1, 0xa07235fd
    pv.cmpeq.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8bf7fc8d
    li t1, 0x7ef9ab8b
    bgt t0, t1, label_n_25
    label_n_25:
        sw t2, 4(sp)
    
    li t0, 0xf8eb86f
    li t1, 0x2dc8a8df
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x93d4bba
    li t1, 0xf874d433
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe8f5b6b
    li t1, 0x2ac80a5d
    pv.sll.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x94bc4cff
    li t1, 0xe583d115
    pv.cmpne.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5f8459f4
    pv.extract.b t2, t0, 0x3
    sw t2, 4(sp)
    
    li t0, 0x5f43c7ff
    p.clip t2, t0, 0xb
    sw t2, 4(sp)
    
    li t0, 0x306e43f
    li t1, 0xfbb2bc5
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb3e7a3f
    p.clipu t2, t0, 0x19
    sw t2, 4(sp)
    
    li t0, 0x142f8caf
    li t1, 0xe35c5815
    p.adduRN t2, t0, t1, 0x19
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x142f8caf
    p.adduRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x450185d8
    li t1, 0x3251e3cc
    bltu t0, t1, label_n_26
    label_n_26:
        sw t2, 4(sp)
    
    li t0, 0xb0e8dabf
    li t1, 0xf50b6bfb
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t2, 0x9abfc15
    li t0, 0x1960a6e1
    li t1, 0x6e7c2607
    p.insertr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x908b8917
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x8b805463
    p.bset t2, t0, 0x2, 0x13
    sw t2, 4(sp)
    
    li t0, 0xfa5fdc3
    li t1, 0x96433c40
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1
    p.abs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x575b3850
    li t1, 0x82cd0dc1
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2d40642e
    li t1, 0xe1949132
    pv.add.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc385e865
    p.extractu t2, t0, 0x19, 0x1d
    sw t2, 4(sp)
    
    li t0, 0xa98be3f8
    li t1, 0x9eeaa6d8
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa58bfa04
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xd051995f
    li t1, 0x2242db79
    p.subRN t2, t0, t1, 0x9
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xd051995f
    p.subRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x591b25c5
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x1826205
    pv.extractu.b t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0x7de1f25b
    li t1, 0x63885a16
    p.addRN t2, t0, t1, 0x11
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x7de1f25b
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc34d6750
    li t1, 0x5b2e6044
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x76fa18e1
    li t1, 0xdc5f004a
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2b60132e
    li t1, 0xc6832d14
    pv.and.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe7193768
    li t1, 0x8fdaeec5
    pv.cmpge.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb4363d07
    p.bclr t2, t0, 0x17, 0x6
    sw t2, 4(sp)
    
    li t0, 0x2d669fb
    pv.insert.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x99ed45ec
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xad708a15
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x78adbd00
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0xa38692a8
    li t1, 0x521c627f
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1604787a
    li t1, 0xf466da3d
    srl t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf81265d9
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x17f827be
    li t1, 0x2875fad7
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x814fa2df
    li t1, 0x8f34f392
    p.min t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x56fc27bf
    li t1, 0xa1e1509a
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2c4fa808
    li t1, 0x58e1c80d
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x91c99c6c
    li t1, 0xd6f6dc58
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5ccc6385
    li t1, 0x1b5109b
    pv.and.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9cab0fc4
    li t1, 0xf06ed77d
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7b69cbb3
    li t1, 0xc1b7ecd3
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x57f827be
    p.bset t2, t0, 0x1b, 0x1b
    sw t2, 4(sp)
    
    li t0, 0xea7ee83e
    li t1, 0xf7d3bd7a
    srl t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x50c772f4
    li t1, 0xc4ea7503
    pv.maxu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xca291d5c
    li t1, 0x1f18e486
    xor t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3e810858
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xcdac1df2
    li t1, 0x9f074375
    p.subRN t2, t0, t1, 0x1e
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xcdac1df2
    p.subRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5fe112c2
    li t1, 0x6ef07e7f
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x44a0fc34
    li t1, 0x325003db
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2620661e
    p.bset t2, t0, 0x7, 0x6
    sw t2, 4(sp)
    
    li t0, 0x11ce6245
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xe69959e
    li t1, 0xfdccc89e
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x79d77e21
    li t1, 0xddf2a925
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x86bcdd3e
    li t1, 0x58b2ad94
    pv.cmplt.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x756f175b
    li t1, 0xedf55601
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x595fdfce
    li t1, 0xf14df823
    p.subuRN t2, t0, t1, 0x19
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x595fdfce
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x17fc3fbe
    li t1, 0x21bd36d4
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcce46a5c
    li t1, 0x1e6d5b55
    p.subuN t2, t0, t1, 0x1
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xcce46a5c
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7fb1215b
    li t1, 0x17526316
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc3ff4be7
    li t1, 0xe0c2b1c2
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1
    li t1, 0xfdcd1f66
    add t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6e3ef41a
    li t1, 0x9ebbbded
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5000b5b9
    li t1, 0x1362c6e0
    pv.cmpgtu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb629ed0e
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xe48245d1
    li t1, 0xc727b667
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x42dd7fc5
    li t1, 0x6edc9d8b
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcd886d53
    li t1, 0x1fd1bef1
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9ad644be
    li t1, 0xbc750aa2
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x481a9951
    li t1, 0x3f2b5ef1
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1877c5ee
    p.bclr t2, t0, 0xf, 0x19
    sw t2, 4(sp)
    
    li t0, 0x8872cad9
    li t1, 0xab50d743
    pv.cmpleu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xef4ad26f
    li t1, 0xfe8e15ef
    bge t0, t1, label_n_27
    label_n_27:
        sw t2, 4(sp)
    
    li t0, 0xf04125b2
    li t1, 0x36eb4235
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7b867828
    li t1, 0xcd6621d2
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x89829552
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x699ae334
    li t1, 0xfdfd36d3
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xeb7d2a4a
    li t1, 0x74295fc8
    pv.cmpltu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xeb096275
    li t1, 0x10660e6f
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa516afb2
    li t1, 0xfc2533d3
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa5a89eb1
    li t1, 0x5a70dad9
    pv.sll.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x942b78cc
    li t1, 0xdaa11011
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3718c89e
    li t1, 0xba893937
    bgtu t0, t1, label_n_28
    label_n_28:
        sw t2, 4(sp)
    
    li t0, 0xa12ceb90
    li t1, 0xadde4c2
    p.adduN t2, t0, t1, 0x15
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa12ceb90
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x20f1c030
    li t1, 0x22d73459
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc7c23a56
    li t1, 0x8036031a
    add t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x74bcc702
    li t1, 0xef7572db
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3b2e8009
    li t1, 0x5a5cb0f2
    pv.minu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x974e3253
    li t1, 0x46cfe5bd
    pv.max.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7fc826ea
    li t1, 0x37da917f
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe52d8934
    p.bset t2, t0, 0x1e, 0x2
    sw t2, 4(sp)
    
    li t0, 0xe107f56
    li t1, 0x3a722138
    bleu t0, t1, label_n_29
    label_n_29:
        sw t2, 4(sp)
    
    li t0, 0xb838e240
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0x63f8b9d1
    p.extract t2, t0, 0x7, 0x15
    sw t2, 4(sp)
    
    li t0, 0x2991044f
    li t1, 0xc25297ce
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5b74c0a9
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0xd8dac5a5
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x645e36c2
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xc76e1c80
    li t1, 0xfdc6f381
    pv.cmple.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9dc3da24
    li t1, 0xb62e1e60
    beq t0, t1, label_n_30
    label_n_30:
        sw t2, 4(sp)
    
    li t0, 0xe0d207ce
    li t1, 0xbc307098
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2d7d89a3
    li t1, 0x6b17867c
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8be7ad9a
    pv.insert.b t2, t0, 0x3
    sw t2, 4(sp)
    
    li t0, 0x3c1bc069
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x2d264d90
    li t1, 0x20e3c905
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xacfe1f76
    li t1, 0x6e5a11a1
    ble t0, t1, label_n_31
    label_n_31:
        sw t2, 4(sp)
    
    li t0, 0x7f9953ee
    li t1, 0xb7229a0d
    beq t0, t1, label_n_32
    label_n_32:
        sw t2, 4(sp)
    
    li t0, 0x13a21e97
    li t1, 0x76294646
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xbb9c38b4
    p.extract t2, t0, 0x1e, 0x1d
    sw t2, 4(sp)
    
    li t0, 0xd280744b
    li t1, 0x6632c4f6
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x45998a0a
    li t1, 0x7211e0d8
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x938b42fb
    li t1, 0x8792e39c
    pv.cmpgeu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe52b0544
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0xae91869c
    pv.extract.b t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0x1a9988c4
    li t1, 0x5e082a49
    pv.cmpleu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4207d048
    li t1, 0xe8bd68fc
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb823fa88
    li t1, 0x2d919ad9
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x95ecbd0f
    li t1, 0xe8c0e21a
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3b6a6152
    li t1, 0x2d7e296
    pv.cmpgtu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xdc582615
    li t1, 0x7c13399b
    p.max t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe0961024
    li t1, 0x526dd114
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3d5dcf12
    li t1, 0xd4cac552
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x63ba3099
    li t1, 0x34e28370
    pv.cmpgeu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xdc4671d2
    p.clipu t2, t0, 0xf
    sw t2, 4(sp)
    
    li t0, 0x70e40bf5
    li t1, 0xe2d311b3
    beq t0, t1, label_n_33
    label_n_33:
        sw t2, 4(sp)
    
    li t0, 0x14454ffa
    li t1, 0xb2e1495d
    pv.cmpleu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf51d17e7
    li t1, 0xc86b25d6
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x83844bee
    li t1, 0xd0c05af5
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x825aa29c
    li t1, 0x8f5960da
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xea33f5d1
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0x5bc38dd2
    li t1, 0x12ce6800
    pv.minu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2bb4456f
    p.bclr t2, t0, 0x15, 0xc
    sw t2, 4(sp)
    
    li t0, 0xd8bfd452
    li t1, 0xe492957b
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1
    li t1, 0x5a22d0f1
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3551b495
    li t1, 0xcd992936
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xbde802b6
    li t1, 0xd822b25f
    and t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb52ed802
    li t1, 0x9a95b911
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd90ca54e
    li t1, 0xa98a3a23
    pv.add.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x635029d6
    p.bclr t2, t0, 0x0, 0x14
    sw t2, 4(sp)
    
    li t0, 0x4182cc26
    li t1, 0xa0db39ac
    bgt t0, t1, label_n_34
    label_n_34:
        sw t2, 4(sp)
    
    li t0, 0xdc697a71
    li t1, 0xfa794075
    pv.cmpne.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x38d185fe
    li t1, 0x6f62f3d0
    pv.cmpleu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa558c944
    li t1, 0x8fe2b260
    p.subuRN t2, t0, t1, 0x8
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa558c944
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd80c9d
    li t1, 0xedd149fe
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc4741b6e
    p.bset t2, t0, 0x6, 0x3
    sw t2, 4(sp)
    
    li t0, 0x543d4dbe
    li t1, 0x7f22ca88
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6e77268a
    li t1, 0x27b7fb2a
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb69f1433
    li t1, 0xab09dcd0
    pv.maxu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6b2b2f
    li t1, 0x17e4ccbd
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7f0c945b
    li t1, 0xc3dffe34
    pv.cmpgeu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x18125b7b
    li t1, 0xafcf9fa4
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x72f161fe
    li t1, 0x48abef7b
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc51432fd
    p.clipu t2, t0, 0x1a
    sw t2, 4(sp)
    
    li t0, 0x8ad17ed8
    li t1, 0x962fd3d0
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x16fc3fbf
    li t1, 0xd63fb1a4
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x473059cd
    li t1, 0x2892c240
    bge t0, t1, label_n_35
    label_n_35:
        sw t2, 4(sp)
    
    li t0, 0x56fc3fbb
    li t1, 0xe50132dd
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x916c4cf3
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x169747d2
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x57fc2fbb
    pv.insert.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0xd8ce588f
    li t1, 0xcc7eb0b8
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1faeb865
    li t1, 0x55ce357c
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x57fc3fbe
    li t1, 0x573fe79d
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xca4e311d
    li t1, 0xf9a69dd6
    p.subuRN t2, t0, t1, 0xd
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xca4e311d
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf664d80f
    li t1, 0xf9a66314
    p.addRN t2, t0, t1, 0xa
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xf664d80f
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe22013c4
    li t1, 0x42fe5861
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x17f82f3a
    li t1, 0x9533f97c
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x69b4d5cb
    li t1, 0xa806453a
    pv.xor.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x17f8273f
    li t1, 0xec85caa4
    pv.add.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x57f8373a
    li t1, 0xda0c2d42
    bge t0, t1, label_n_36
    label_n_36:
        sw t2, 4(sp)
    
    li t0, 0x4e769757
    li t1, 0xc34a4029
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x31fe83e5
    li t1, 0xf9cd0982
    pv.sub.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x16f827bf
    li t1, 0xbfaa807b
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd5b59008
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0xed54e139
    li t1, 0x811dc047
    p.addRN t2, t0, t1, 0x11
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xed54e139
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa6285865
    p.clipu t2, t0, 0xc
    sw t2, 4(sp)
    
    li t0, 0x173e1644
    li t1, 0x7f9720fc
    pv.cmpgtu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd55afd75
    li t1, 0xad8add7d
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x854247f5
    li t1, 0xe84b4604
    pv.shuffle.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6afaded2
    li t1, 0xbcae8c5f
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xad5eb4cb
    li t1, 0xcfb9c580
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9a1986b
    li t1, 0xbbf75095
    pv.cmpgt.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4d18046b
    li t1, 0x814ee9c2
    bgtu t0, t1, label_n_37
    label_n_37:
        sw t2, 4(sp)
    
    li t0, 0x90df4855
    li t1, 0xd4443085
    pv.cmpleu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd964f905
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x82ce4b8
    li t1, 0xd5e17549
    pv.and.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf0b117cc
    li t1, 0xe1ea6c6c
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x200117e7
    li t1, 0xcb1fa9a6
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8665fabd
    li t1, 0x5b6bedf9
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf4387918
    li t1, 0x12b356f4
    p.min t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd95cc4c4
    li t1, 0x7fbd1aeb
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x26af679c
    li t1, 0x1fb5c81f
    p.subuN t2, t0, t1, 0x0
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x26af679c
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x19f840fc
    li t1, 0xbba14c9b
    pv.add.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb74d8748
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0x759ed832
    li t1, 0xadb4bcb3
    bgeu t0, t1, label_n_38
    label_n_38:
        sw t2, 4(sp)
    
    li t0, 0xeeb4c9de
    li t1, 0x85987387
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfe2d628a
    li t1, 0x158b06f8
    pv.or.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6e7047c3
    p.bset t2, t0, 0x1a, 0xd
    sw t2, 4(sp)
    
    li t0, 0xefaafc26
    li t1, 0x10240a19
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x589fd333
    li t1, 0xd9ce7102
    pv.cmplt.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3ef91062
    li t1, 0x508dfc6b
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2038d095
    p.bset t2, t0, 0x5, 0x17
    sw t2, 4(sp)
    
    li t0, 0x583c0a28
    li t1, 0xee1fa0b0
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xfcc4b1c3
    p.clipu t2, t0, 0x5
    sw t2, 4(sp)
    
    li t0, 0x4a500bab
    li t1, 0x4360fcaa
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcc926d90
    li t1, 0x1e1e858
    p.adduRN t2, t0, t1, 0x7
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xcc926d90
    p.adduRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7a9b6edb
    li t1, 0x99e3ebb
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x590db05f
    li t1, 0xc5ba475d
    pv.xor.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x88e55ec8
    li t1, 0xc4332a99
    p.adduN t2, t0, t1, 0xd
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x88e55ec8
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x50ee4131
    pv.extractu.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t2, 0xba4393c4
    li t0, 0xf75969fe
    li t1, 0xb8daa7a7
    p.insertr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x58d3d5aa
    p.bclr t2, t0, 0x10, 0x1
    sw t2, 4(sp)
    
    li t0, 0xb59ba765
    li t1, 0xc90db533
    add t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf8f70d22
    li t1, 0xd85febbd
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7a38668e
    li t1, 0x127f7b5b
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4099ab0e
    li t1, 0xaa0c9bec
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x771e5243
    li t1, 0x14965a
    p.adduN t2, t0, t1, 0x1f
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x771e5243
    p.adduNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8877f6ec
    li t1, 0x76d3ff7c
    p.addRN t2, t0, t1, 0x3
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x8877f6ec
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8a7b5226
    li t1, 0xb28bdd1f
    pv.shuffle.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcbfff4e6
    li t1, 0xb9c254a2
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4500e3a4
    li t1, 0x301618ae
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4c91b788
    li t1, 0x4e8d488e
    p.addRN t2, t0, t1, 0x15
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x4c91b788
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2223e482
    li t1, 0xc21bba0
    pv.cmpne.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcde97ccd
    li t1, 0xaaec2ac8
    pv.cmpgt.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xdd8de62
    p.clb t2, t0
    sw t2, 4(sp)
    
    li t0, 0xecd87120
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0xf8c035d9
    li t1, 0x4285511a
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x694645d1
    li t1, 0x1465e3d7
    p.subuN t2, t0, t1, 0x1f
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x694645d1
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa38c5d6b
    li t1, 0xa18c11ce
    pv.and.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2c7b2597
    li t1, 0x8fd11b6e
    pv.cmpgtu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb3e9626b
    p.bset t2, t0, 0xa, 0x12
    sw t2, 4(sp)
    
    li t0, 0x875235e8
    li t1, 0x721df37f
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3c549b79
    li t1, 0xaa75a060
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8540db25
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0xcc0b2a61
    li t1, 0x5333a3e5
    bge t0, t1, label_n_39
    label_n_39:
        sw t2, 4(sp)
    
    li t0, 0x1b03e2a6
    li t1, 0x8cdd1317
    pv.cmpltu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x60fcc500
    li t1, 0xb5a6fce1
    beq t0, t1, label_n_40
    label_n_40:
        sw t2, 4(sp)
    
    li t0, 0x2c02b207
    li t1, 0x98464e96
    p.subuRN t2, t0, t1, 0x5
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x2c02b207
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x67f1cfea
    p.abs t2, t0
    sw t2, 4(sp)
    
    li t0, 0x6cddbf8f
    li t1, 0x67d40e92
    bgeu t0, t1, label_n_41
    label_n_41:
        sw t2, 4(sp)
    
    li t0, 0x396ba50
    li t1, 0x4c977312
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa6c3fb07
    li t1, 0xe31ff298
    pv.cmpgeu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4246d460
    li t1, 0xfcbfe4d8
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf80f953d
    p.clip t2, t0, 0x1b
    sw t2, 4(sp)
    
    li t0, 0x2c86a392
    li t1, 0x55550ddb
    bltu t0, t1, label_n_42
    label_n_42:
        sw t2, 4(sp)
    
    li t0, 0xfe70d289
    li t1, 0xe1afd5ac
    pv.maxu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb365488a
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0xb75dd4a8
    li t1, 0xef6c5d37
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6f04873a
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xa92ece12
    p.bset t2, t0, 0x17, 0x3
    sw t2, 4(sp)
    
    li t0, 0xca22bcdf
    li t1, 0xe92891ff
    bne t0, t1, label_n_43
    label_n_43:
        sw t2, 4(sp)
    
    li t0, 0x7b0d3eb6
    p.extractu t2, t0, 0x6, 0x8
    sw t2, 4(sp)
    
    li t0, 0x2954b559
    li t1, 0x1800afe9
    p.addRN t2, t0, t1, 0xc
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x2954b559
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xbf751451
    li t1, 0x5b732bc4
    p.addRN t2, t0, t1, 0x11
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xbf751451
    p.addRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3acb7476
    li t1, 0x9c04aba6
    pv.min.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x2c35af03
    li t1, 0x14d8e616
    srl t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xffb55aab
    li t1, 0x559e261c
    pv.cmpgtu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8c03085b
    li t1, 0x55f36a48
    bgtu t0, t1, label_n_44
    label_n_44:
        sw t2, 4(sp)
    
    li t0, 0xaade1508
    li t1, 0x528818d2
    pv.cmpgtu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3e70fb72
    li t1, 0x7d22297d
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5ea1d916
    li t1, 0xd2d4bd6c
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x39295f66
    pv.extractu.b t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0x856e6992
    li t1, 0x396e44c3
    sra t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x98bf4669
    li t1, 0xcd13a532
    pv.sll.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3ac0cd97
    li t1, 0xa9f0d12b
    pv.cmpltu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8648c92a
    li t1, 0x48e6b686
    p.maxu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9c585490
    li t1, 0x9c027c2d
    p.minu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3486518c
    p.clipu t2, t0, 0x19
    sw t2, 4(sp)
    
    li t0, 0xaf4c41f
    li t1, 0x97e6ec50
    pv.srl.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4e94caa7
    li t1, 0xe33ef75d
    sub t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x742c680e
    li t1, 0xbcea589d
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x7e390954
    li t1, 0x922c49d4
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x67c178d0
    p.bclr t2, t0, 0x8, 0x13
    sw t2, 4(sp)
    
    li t0, 0x666882bf
    li t1, 0x7658e24b
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x13e4e41
    li t1, 0xd2e2ab96
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa455ae35
    li t1, 0x5e4a03fe
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1f88a3a1
    li t1, 0x116f4b1
    bleu t0, t1, label_n_45
    label_n_45:
        sw t2, 4(sp)
    
    li t0, 0x1429c3cd
    p.bclr t2, t0, 0x1, 0x1d
    sw t2, 4(sp)
    
    li t0, 0x9a5e5bd7
    li t1, 0xca43dbc3
    sra t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x338a144
    li t1, 0xb923ef71
    pv.shuffle.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x34ee170d
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x38c939bf
    p.ff1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x159aa964
    li t1, 0x38e3d16b
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5fafbcbd
    li t1, 0x242f9851
    pv.xor.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xebf6025e
    li t1, 0x8dba9644
    div t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x714cd21d
    p.exthz t2, t0
    p.extbz t2, t0
    sw t2, 4(sp)
    
    li t0, 0x32e0a363
    p.clip t2, t0, 0x16
    sw t2, 4(sp)
    
    li t0, 0xb651d6dc
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0xef3e0671
    li t1, 0xbb5b688c
    pv.cmpge.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x26adaa42
    li t1, 0x1ce4c41b
    ble t0, t1, label_n_46
    label_n_46:
        sw t2, 4(sp)
    
    li t0, 0x3b33816b
    li t1, 0x1c255cad
    beq t0, t1, label_n_47
    label_n_47:
        sw t2, 4(sp)
    
    li t0, 0x4de1af47
    p.bclr t2, t0, 0x6, 0x8
    sw t2, 4(sp)
    
    li t0, 0x2827c47b
    li t1, 0x958d24a7
    and t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe24caebb
    li t1, 0xec3a5438
    pv.packlo.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xccc7c7fa
    li t1, 0xe4ef95e4
    p.max t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x88f124ae
    li t1, 0x904d4cbf
    remu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x114a19dc
    li t1, 0x7c23b696
    sll t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8398fcd7
    li t1, 0x147155e
    p.sletu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1646b0a1
    li t1, 0x22097c54
    pv.sll.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x71cd202
    pv.extract.h t2, t0, 0x0
    sw t2, 4(sp)
    
    li t0, 0xe1a460b5
    li t1, 0x25e378a8
    pv.cmpgtu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1a4a6454
    li t1, 0x613b3aa9
    bgt t0, t1, label_n_48
    label_n_48:
        sw t2, 4(sp)
    
    li t0, 0x9c9c9f3c
    li t1, 0x84495457
    p.subuN t2, t0, t1, 0x1
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x9c9c9f3c
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4fda7a23
    li t1, 0xb4a76afc
    divu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa6d0f8e0
    li t1, 0x9eee7f9e
    p.subuRN t2, t0, t1, 0x17
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa6d0f8e0
    p.subuRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xeb66dd6c
    li t1, 0x696a29b8
    bgeu t0, t1, label_n_49
    label_n_49:
        sw t2, 4(sp)
    
    li t0, 0x2022a493
    li t1, 0x76c1030e
    p.min t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf4026f88
    li t1, 0xd853b17e
    bleu t0, t1, label_n_50
    label_n_50:
        sw t2, 4(sp)
    
    li t0, 0x80ec607a
    li t1, 0x55f6510a
    pv.cmpeq.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x64186670
    li t1, 0x6e01f2c3
    ble t0, t1, label_n_51
    label_n_51:
        sw t2, 4(sp)
    
    li t0, 0x50fcd159
    li t1, 0x64b5e651
    ble t0, t1, label_n_52
    label_n_52:
        sw t2, 4(sp)
    
    li t0, 0x3d23ec01
    li t1, 0x6575005f
    pv.maxu.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x0
    p.clip t2, t0, 0x7
    sw t2, 4(sp)
    
    li t0, 0x8a63b87c
    li t1, 0xcf156fe8
    pv.shuffle2.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4d2d7fd6
    p.extractu t2, t0, 0x15, 0xd
    sw t2, 4(sp)
    
    li t0, 0xe527ef75
    li t1, 0x7fb9a2e0
    pv.min.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xcd044ac2
    li t1, 0x9fd366b2
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe896c8ec
    li t1, 0xdaee7b6b
    pv.sra.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1733c049
    li t1, 0xaff3d4c0
    bltu t0, t1, label_n_53
    label_n_53:
        sw t2, 4(sp)
    
    li t0, 0x67a186ff
    li t1, 0x392fbc21
    pv.pack.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xf4f2daf8
    p.bset t2, t0, 0x17, 0x1b
    sw t2, 4(sp)
    
    li t0, 0xef629199
    li t1, 0x83afdc01
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x13e5b7c4
    li t1, 0xad14ea57
    or t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x3d8f25f5
    li t1, 0xc6e65228
    bgtu t0, t1, label_n_54
    label_n_54:
        sw t2, 4(sp)
    
    li t0, 0x5deb9a7c
    li t1, 0xc56755fe
    add t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x920d619a
    li t1, 0x5e1e0256
    p.subRN t2, t0, t1, 0xe
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x920d619a
    p.subRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb7a2c411
    li t1, 0x6dda5d15
    srl t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1
    li t1, 0x7f59240
    pv.max.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd0d66389
    li t1, 0x98de3c6
    pv.cmpltu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe2cf6c2f
    li t1, 0xbbcbb6bf
    pv.sra.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xef34399c
    li t1, 0x3928871
    pv.minu.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa86483e3
    li t1, 0x2ddfe613
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x90f480c6
    li t1, 0x3079d13a
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x647e57fc
    li t1, 0x42314fee
    bgtu t0, t1, label_n_55
    label_n_55:
        sw t2, 4(sp)
    
    li t0, 0x144a1ca4
    li t1, 0xaf7a2ab5
    pv.sll.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd1695bb2
    p.exths t2, t0
    p.extbs t2, t0
    sw t2, 4(sp)
    
    li t0, 0xa007a583
    li t1, 0x7e8f75b2
    p.subuN t2, t0, t1, 0x1
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa007a583
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd807b005
    li t1, 0xc960af67
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xefa48273
    p.fl1 t2, t0
    sw t2, 4(sp)
    
    li t0, 0x408a1bee
    pv.extract.h t2, t0, 0x1
    sw t2, 4(sp)
    
    li t0, 0x879589fa
    li t1, 0x9acb0e52
    pv.xor.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xe034fc91
    li t1, 0x22277472
    rem t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xadf8c40f
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x66324e0e
    li t1, 0xbec9317f
    p.subuN t2, t0, t1, 0x12
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x66324e0e
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x402ceff3
    li t1, 0xc363788d
    slt t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x53f85644
    li t1, 0xbc6da5f5
    pv.or.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd798f0a4
    li t1, 0x5ced664d
    pv.add.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x4458c9e5
    li t1, 0xf8179b9f
    pv.srl.sc.b t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x9b785a53
    li t1, 0x109359a1
    p.adduRN t2, t0, t1, 0x10
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x9b785a53
    p.adduRNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x64d76e5f
    li t1, 0xb8f480f5
    p.subuN t2, t0, t1, 0x11
    sw t2, 4(sp)
    ## -- ##
    li t2, 0x64d76e5f
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t2, 0x15653320
    li t0, 0x25ea8220
    li t1, 0xb8e3e33a
    p.insertr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x5c434c18
    li t1, 0x8928edb8
    p.ror t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xb1045024
    li t1, 0xcbdffd82
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xc1237857
    li t1, 0x802c7f88
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1014c12b
    li t1, 0xb890cd9a
    blt t0, t1, label_n_56
    label_n_56:
        sw t2, 4(sp)
    
    li t0, 0x4a4d3800
    li t1, 0xfb11a2ef
    sltu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x8a107854
    li t1, 0xa63b42e1
    srl t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x29a2e059
    li t1, 0xacdcdb0a
    p.minu t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6947cd75
    li t1, 0xf844c2f9
    pv.shuffle2.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xa89a7c7e
    li t1, 0x560dd232
    p.subuN t2, t0, t1, 0x6
    sw t2, 4(sp)
    ## -- ##
    li t2, 0xa89a7c7e
    p.subuNr t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x6ca647c7
    li t1, 0x4d923334
    p.slet t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0xd6164487
    p.bclr t2, t0, 0x14, 0x1d
    sw t2, 4(sp)
    
    li t0, 0x4ca0a7c3
    p.clipu t2, t0, 0xc
    sw t2, 4(sp)
    
    li t0, 0xa33aede4
    li t1, 0xb3232538
    blt t0, t1, label_n_57
    label_n_57:
        sw t2, 4(sp)
    
    li t0, 0x5e38ce71
    p.bclr t2, t0, 0x5, 0xe
    sw t2, 4(sp)
    
    li t0, 0xba3bff1b
    li t1, 0x8d1ad0ee
    pv.cmpne.sc.h t2, t0, t1
    sw t2, 4(sp)
    
    li t0, 0x1b96bb34
    p.cnt t2, t0
    sw t2, 4(sp)
    
    li t0, 0x9fc0bdfc
    li t1, 0x7e578f51
    beq t0, t1, label_n_58
    label_n_58:
        sw t2, 4(sp)
    
    ##- END -##

    ret
