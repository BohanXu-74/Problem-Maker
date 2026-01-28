                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _writeArray_PARM_2
                                     12 	.globl _main
                                     13 	.globl _setup
                                     14 	.globl _loop
                                     15 	.globl _end
                                     16 	.globl _div
                                     17 	.globl _mult
                                     18 	.globl _sub
                                     19 	.globl _add
                                     20 	.globl _clear
                                     21 	.globl _enter
                                     22 	.globl _exint0
                                     23 	.globl _displayFlip
                                     24 	.globl _writeYesOrNo
                                     25 	.globl _writeAnswer
                                     26 	.globl _writeQues
                                     27 	.globl _writeArray
                                     28 	.globl _write
                                     29 	.globl _dat
                                     30 	.globl _com
                                     31 	.globl _LCD4to
                                     32 	.globl _setupInt
                                     33 	.globl _delayl
                                     34 	.globl _delay
                                     35 	.globl _timerInt
                                     36 	.globl _rand
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _FL
                                     44 	.globl _P
                                     45 	.globl _P5_5
                                     46 	.globl _P5_4
                                     47 	.globl _TF2
                                     48 	.globl _EXF2
                                     49 	.globl _RCLK
                                     50 	.globl _TCLK
                                     51 	.globl _EXEN2
                                     52 	.globl _TR2
                                     53 	.globl _C_T2
                                     54 	.globl _CP_RL2
                                     55 	.globl _T2CON_7
                                     56 	.globl _T2CON_6
                                     57 	.globl _T2CON_5
                                     58 	.globl _T2CON_4
                                     59 	.globl _T2CON_3
                                     60 	.globl _T2CON_2
                                     61 	.globl _T2CON_1
                                     62 	.globl _T2CON_0
                                     63 	.globl _PT2
                                     64 	.globl _PS
                                     65 	.globl _PT1
                                     66 	.globl _PX1
                                     67 	.globl _PT0
                                     68 	.globl _PX0
                                     69 	.globl _RD
                                     70 	.globl _WR
                                     71 	.globl _T1
                                     72 	.globl _T0
                                     73 	.globl _INT1
                                     74 	.globl _INT0
                                     75 	.globl _TXD
                                     76 	.globl _RXD
                                     77 	.globl _P3_7
                                     78 	.globl _P3_6
                                     79 	.globl _P3_5
                                     80 	.globl _P3_4
                                     81 	.globl _P3_3
                                     82 	.globl _P3_2
                                     83 	.globl _P3_1
                                     84 	.globl _P3_0
                                     85 	.globl _EA
                                     86 	.globl _ET2
                                     87 	.globl _ES
                                     88 	.globl _ET1
                                     89 	.globl _EX1
                                     90 	.globl _ET0
                                     91 	.globl _EX0
                                     92 	.globl _P2_7
                                     93 	.globl _P2_6
                                     94 	.globl _P2_5
                                     95 	.globl _P2_4
                                     96 	.globl _P2_3
                                     97 	.globl _P2_2
                                     98 	.globl _P2_1
                                     99 	.globl _P2_0
                                    100 	.globl _SM0
                                    101 	.globl _SM1
                                    102 	.globl _SM2
                                    103 	.globl _REN
                                    104 	.globl _TB8
                                    105 	.globl _RB8
                                    106 	.globl _TI
                                    107 	.globl _RI
                                    108 	.globl _T2EX
                                    109 	.globl _T2
                                    110 	.globl _P1_7
                                    111 	.globl _P1_6
                                    112 	.globl _P1_5
                                    113 	.globl _P1_4
                                    114 	.globl _P1_3
                                    115 	.globl _P1_2
                                    116 	.globl _P1_1
                                    117 	.globl _P1_0
                                    118 	.globl _TF1
                                    119 	.globl _TR1
                                    120 	.globl _TF0
                                    121 	.globl _TR0
                                    122 	.globl _IE1
                                    123 	.globl _IT1
                                    124 	.globl _IE0
                                    125 	.globl _IT0
                                    126 	.globl _P0_7
                                    127 	.globl _P0_6
                                    128 	.globl _P0_5
                                    129 	.globl _P0_4
                                    130 	.globl _P0_3
                                    131 	.globl _P0_2
                                    132 	.globl _P0_1
                                    133 	.globl _P0_0
                                    134 	.globl _B
                                    135 	.globl _A
                                    136 	.globl _ACC
                                    137 	.globl _PSW
                                    138 	.globl _TH2
                                    139 	.globl _TL2
                                    140 	.globl _RCAP2H
                                    141 	.globl _RCAP2L
                                    142 	.globl _T2MOD
                                    143 	.globl _T2CON
                                    144 	.globl _IP
                                    145 	.globl _P3
                                    146 	.globl _IE
                                    147 	.globl _P2
                                    148 	.globl _SBUF
                                    149 	.globl _SCON
                                    150 	.globl _P1
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TL1
                                    154 	.globl _TL0
                                    155 	.globl _TMOD
                                    156 	.globl _TCON
                                    157 	.globl _PCON
                                    158 	.globl _DPH
                                    159 	.globl _DPL
                                    160 	.globl _SP
                                    161 	.globl _P0
                                    162 	.globl _next
                                    163 	.globl _timeStuck
                                    164 	.globl _writeQues_PARM_4
                                    165 	.globl _writeQues_PARM_3
                                    166 	.globl _writeQues_PARM_2
                                    167 	.globl _write_PARM_2
                                    168 	.globl _speed
                                    169 	.globl _displaySelect
                                    170 	.globl _display
                                    171 	.globl _doneNum
                                    172 	.globl _tmin
                                    173 	.globl _e
                                    174 	.globl _min
                                    175 	.globl _tsec
                                    176 	.globl _sec
                                    177 	.globl _answer
                                    178 	.globl _numB
                                    179 	.globl _numA
                                    180 	.globl _correctNum
                                    181 	.globl _quesNum
                                    182 	.globl _turn
                                    183 ;--------------------------------------------------------
                                    184 ; special function registers
                                    185 ;--------------------------------------------------------
                                    186 	.area RSEG    (ABS,DATA)
      000000                        187 	.org 0x0000
                           000080   188 _P0	=	0x0080
                           000081   189 _SP	=	0x0081
                           000082   190 _DPL	=	0x0082
                           000083   191 _DPH	=	0x0083
                           000087   192 _PCON	=	0x0087
                           000088   193 _TCON	=	0x0088
                           000089   194 _TMOD	=	0x0089
                           00008A   195 _TL0	=	0x008a
                           00008B   196 _TL1	=	0x008b
                           00008C   197 _TH0	=	0x008c
                           00008D   198 _TH1	=	0x008d
                           000090   199 _P1	=	0x0090
                           000098   200 _SCON	=	0x0098
                           000099   201 _SBUF	=	0x0099
                           0000A0   202 _P2	=	0x00a0
                           0000A8   203 _IE	=	0x00a8
                           0000B0   204 _P3	=	0x00b0
                           0000B8   205 _IP	=	0x00b8
                           0000C8   206 _T2CON	=	0x00c8
                           0000C9   207 _T2MOD	=	0x00c9
                           0000CA   208 _RCAP2L	=	0x00ca
                           0000CB   209 _RCAP2H	=	0x00cb
                           0000CC   210 _TL2	=	0x00cc
                           0000CD   211 _TH2	=	0x00cd
                           0000D0   212 _PSW	=	0x00d0
                           0000E0   213 _ACC	=	0x00e0
                           0000E0   214 _A	=	0x00e0
                           0000F0   215 _B	=	0x00f0
                                    216 ;--------------------------------------------------------
                                    217 ; special function bits
                                    218 ;--------------------------------------------------------
                                    219 	.area RSEG    (ABS,DATA)
      000000                        220 	.org 0x0000
                           000080   221 _P0_0	=	0x0080
                           000081   222 _P0_1	=	0x0081
                           000082   223 _P0_2	=	0x0082
                           000083   224 _P0_3	=	0x0083
                           000084   225 _P0_4	=	0x0084
                           000085   226 _P0_5	=	0x0085
                           000086   227 _P0_6	=	0x0086
                           000087   228 _P0_7	=	0x0087
                           000088   229 _IT0	=	0x0088
                           000089   230 _IE0	=	0x0089
                           00008A   231 _IT1	=	0x008a
                           00008B   232 _IE1	=	0x008b
                           00008C   233 _TR0	=	0x008c
                           00008D   234 _TF0	=	0x008d
                           00008E   235 _TR1	=	0x008e
                           00008F   236 _TF1	=	0x008f
                           000090   237 _P1_0	=	0x0090
                           000091   238 _P1_1	=	0x0091
                           000092   239 _P1_2	=	0x0092
                           000093   240 _P1_3	=	0x0093
                           000094   241 _P1_4	=	0x0094
                           000095   242 _P1_5	=	0x0095
                           000096   243 _P1_6	=	0x0096
                           000097   244 _P1_7	=	0x0097
                           000090   245 _T2	=	0x0090
                           000091   246 _T2EX	=	0x0091
                           000098   247 _RI	=	0x0098
                           000099   248 _TI	=	0x0099
                           00009A   249 _RB8	=	0x009a
                           00009B   250 _TB8	=	0x009b
                           00009C   251 _REN	=	0x009c
                           00009D   252 _SM2	=	0x009d
                           00009E   253 _SM1	=	0x009e
                           00009F   254 _SM0	=	0x009f
                           0000A0   255 _P2_0	=	0x00a0
                           0000A1   256 _P2_1	=	0x00a1
                           0000A2   257 _P2_2	=	0x00a2
                           0000A3   258 _P2_3	=	0x00a3
                           0000A4   259 _P2_4	=	0x00a4
                           0000A5   260 _P2_5	=	0x00a5
                           0000A6   261 _P2_6	=	0x00a6
                           0000A7   262 _P2_7	=	0x00a7
                           0000A8   263 _EX0	=	0x00a8
                           0000A9   264 _ET0	=	0x00a9
                           0000AA   265 _EX1	=	0x00aa
                           0000AB   266 _ET1	=	0x00ab
                           0000AC   267 _ES	=	0x00ac
                           0000AD   268 _ET2	=	0x00ad
                           0000AF   269 _EA	=	0x00af
                           0000B0   270 _P3_0	=	0x00b0
                           0000B1   271 _P3_1	=	0x00b1
                           0000B2   272 _P3_2	=	0x00b2
                           0000B3   273 _P3_3	=	0x00b3
                           0000B4   274 _P3_4	=	0x00b4
                           0000B5   275 _P3_5	=	0x00b5
                           0000B6   276 _P3_6	=	0x00b6
                           0000B7   277 _P3_7	=	0x00b7
                           0000B0   278 _RXD	=	0x00b0
                           0000B1   279 _TXD	=	0x00b1
                           0000B2   280 _INT0	=	0x00b2
                           0000B3   281 _INT1	=	0x00b3
                           0000B4   282 _T0	=	0x00b4
                           0000B5   283 _T1	=	0x00b5
                           0000B6   284 _WR	=	0x00b6
                           0000B7   285 _RD	=	0x00b7
                           0000B8   286 _PX0	=	0x00b8
                           0000B9   287 _PT0	=	0x00b9
                           0000BA   288 _PX1	=	0x00ba
                           0000BB   289 _PT1	=	0x00bb
                           0000BC   290 _PS	=	0x00bc
                           0000BD   291 _PT2	=	0x00bd
                           0000C8   292 _T2CON_0	=	0x00c8
                           0000C9   293 _T2CON_1	=	0x00c9
                           0000CA   294 _T2CON_2	=	0x00ca
                           0000CB   295 _T2CON_3	=	0x00cb
                           0000CC   296 _T2CON_4	=	0x00cc
                           0000CD   297 _T2CON_5	=	0x00cd
                           0000CE   298 _T2CON_6	=	0x00ce
                           0000CF   299 _T2CON_7	=	0x00cf
                           0000C8   300 _CP_RL2	=	0x00c8
                           0000C9   301 _C_T2	=	0x00c9
                           0000CA   302 _TR2	=	0x00ca
                           0000CB   303 _EXEN2	=	0x00cb
                           0000CC   304 _TCLK	=	0x00cc
                           0000CD   305 _RCLK	=	0x00cd
                           0000CE   306 _EXF2	=	0x00ce
                           0000CF   307 _TF2	=	0x00cf
                           0000CC   308 _P5_4	=	0x00cc
                           0000CD   309 _P5_5	=	0x00cd
                           0000D0   310 _P	=	0x00d0
                           0000D1   311 _FL	=	0x00d1
                           0000D2   312 _OV	=	0x00d2
                           0000D3   313 _RS0	=	0x00d3
                           0000D4   314 _RS1	=	0x00d4
                           0000D5   315 _F0	=	0x00d5
                           0000D6   316 _AC	=	0x00d6
                           0000D7   317 _CY	=	0x00d7
                                    318 ;--------------------------------------------------------
                                    319 ; overlayable register banks
                                    320 ;--------------------------------------------------------
                                    321 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        322 	.ds 8
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable bit register bank
                                    325 ;--------------------------------------------------------
                                    326 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        327 bits:
      000021                        328 	.ds 1
                           008000   329 	b0 = bits[0]
                           008100   330 	b1 = bits[1]
                           008200   331 	b2 = bits[2]
                           008300   332 	b3 = bits[3]
                           008400   333 	b4 = bits[4]
                           008500   334 	b5 = bits[5]
                           008600   335 	b6 = bits[6]
                           008700   336 	b7 = bits[7]
                                    337 ;--------------------------------------------------------
                                    338 ; internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area DSEG    (DATA)
      000022                        341 _turn::
      000022                        342 	.ds 1
      000023                        343 _quesNum::
      000023                        344 	.ds 1
      000024                        345 _correctNum::
      000024                        346 	.ds 1
      000025                        347 _numA::
      000025                        348 	.ds 1
      000026                        349 _numB::
      000026                        350 	.ds 1
      000027                        351 _answer::
      000027                        352 	.ds 1
      000028                        353 _sec::
      000028                        354 	.ds 1
      000029                        355 _tsec::
      000029                        356 	.ds 1
      00002A                        357 _min::
      00002A                        358 	.ds 1
      00002B                        359 _e::
      00002B                        360 	.ds 1
      00002C                        361 _tmin::
      00002C                        362 	.ds 1
      00002D                        363 _doneNum::
      00002D                        364 	.ds 1
      00002E                        365 _display::
      00002E                        366 	.ds 32
      00004E                        367 _displaySelect::
      00004E                        368 	.ds 1
      00004F                        369 _speed::
      00004F                        370 	.ds 2
      000051                        371 _com_lcd_65536_55:
      000051                        372 	.ds 1
      000052                        373 _dat_lcd_65536_57:
      000052                        374 	.ds 1
      000053                        375 _write_PARM_2:
      000053                        376 	.ds 1
      000054                        377 _writeQues_PARM_2:
      000054                        378 	.ds 1
      000055                        379 _writeQues_PARM_3:
      000055                        380 	.ds 1
      000056                        381 _writeQues_PARM_4:
      000056                        382 	.ds 1
                                    383 ;--------------------------------------------------------
                                    384 ; overlayable items in internal ram 
                                    385 ;--------------------------------------------------------
                                    386 	.area	OSEG    (OVR,DATA)
                                    387 	.area	OSEG    (OVR,DATA)
                                    388 	.area	OSEG    (OVR,DATA)
                                    389 	.area	OSEG    (OVR,DATA)
      00000C                        390 _writeArray_PARM_2:
      00000C                        391 	.ds 1
      00000D                        392 _writeArray_line_65536_64:
      00000D                        393 	.ds 3
                                    394 ;--------------------------------------------------------
                                    395 ; Stack segment in internal ram 
                                    396 ;--------------------------------------------------------
                                    397 	.area	SSEG
      000057                        398 __start__stack:
      000057                        399 	.ds	1
                                    400 
                                    401 ;--------------------------------------------------------
                                    402 ; indirectly addressable internal ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area ISEG    (DATA)
                                    405 ;--------------------------------------------------------
                                    406 ; absolute internal ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area IABS    (ABS,DATA)
                                    409 	.area IABS    (ABS,DATA)
                                    410 ;--------------------------------------------------------
                                    411 ; bit data
                                    412 ;--------------------------------------------------------
                                    413 	.area BSEG    (BIT)
      000000                        414 _timeStuck::
      000000                        415 	.ds 1
      000001                        416 _next::
      000001                        417 	.ds 1
                                    418 ;--------------------------------------------------------
                                    419 ; paged external ram data
                                    420 ;--------------------------------------------------------
                                    421 	.area PSEG    (PAG,XDATA)
                                    422 ;--------------------------------------------------------
                                    423 ; external ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area XSEG    (XDATA)
                                    426 ;--------------------------------------------------------
                                    427 ; absolute external ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area XABS    (ABS,XDATA)
                                    430 ;--------------------------------------------------------
                                    431 ; external initialized ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area XISEG   (XDATA)
                                    434 	.area HOME    (CODE)
                                    435 	.area GSINIT0 (CODE)
                                    436 	.area GSINIT1 (CODE)
                                    437 	.area GSINIT2 (CODE)
                                    438 	.area GSINIT3 (CODE)
                                    439 	.area GSINIT4 (CODE)
                                    440 	.area GSINIT5 (CODE)
                                    441 	.area GSINIT  (CODE)
                                    442 	.area GSFINAL (CODE)
                                    443 	.area CSEG    (CODE)
                                    444 ;--------------------------------------------------------
                                    445 ; interrupt vector 
                                    446 ;--------------------------------------------------------
                                    447 	.area HOME    (CODE)
      000000                        448 __interrupt_vect:
      000000 02 00 11         [24]  449 	ljmp	__sdcc_gsinit_startup
      000003 02 05 79         [24]  450 	ljmp	_exint0
      000006                        451 	.ds	5
      00000B 02 00 9C         [24]  452 	ljmp	_timerInt
                                    453 ;--------------------------------------------------------
                                    454 ; global & static initialisations
                                    455 ;--------------------------------------------------------
                                    456 	.area HOME    (CODE)
                                    457 	.area GSINIT  (CODE)
                                    458 	.area GSFINAL (CODE)
                                    459 	.area GSINIT  (CODE)
                                    460 	.globl __sdcc_gsinit_startup
                                    461 	.globl __sdcc_program_startup
                                    462 	.globl __start__stack
                                    463 	.globl __mcs51_genXINIT
                                    464 	.globl __mcs51_genXRAMCLEAR
                                    465 	.globl __mcs51_genRAMCLEAR
                                    466 ;	main.c:19: unchar turn = 0;
      00006A 75 22 00         [24]  467 	mov	_turn,#0x00
                                    468 ;	main.c:20: char quesNum, correctNum, numA, numB = 0;
      00006D 75 26 00         [24]  469 	mov	_numB,#0x00
                                    470 ;	main.c:21: unchar answer = 0;
      000070 75 27 00         [24]  471 	mov	_answer,#0x00
                                    472 ;	main.c:22: unchar sec = 0;
      000073 75 28 00         [24]  473 	mov	_sec,#0x00
                                    474 ;	main.c:23: unchar tsec = 0;
      000076 75 29 00         [24]  475 	mov	_tsec,#0x00
                                    476 ;	main.c:24: unchar min,e = 0;
      000079 75 2B 00         [24]  477 	mov	_e,#0x00
                                    478 ;	main.c:25: unchar tmin = 0;
      00007C 75 2C 00         [24]  479 	mov	_tmin,#0x00
                                    480 ;	main.c:28: unchar doneNum = 0;
      00007F 75 2D 00         [24]  481 	mov	_doneNum,#0x00
                                    482 ;	main.c:32: unchar displaySelect = 0;
      000082 75 4E 00         [24]  483 	mov	_displaySelect,#0x00
                                    484 ;	main.c:33: unsigned int speed = 0;
      000085 E4               [12]  485 	clr	a
      000086 F5 4F            [12]  486 	mov	_speed,a
      000088 F5 50            [12]  487 	mov	(_speed + 1),a
                                    488 ;	main.c:26: __bit timeStuck = 0;
                                    489 ;	assignBit
      00008A C2 00            [12]  490 	clr	_timeStuck
                                    491 ;	main.c:27: __bit next = 0;
                                    492 ;	assignBit
      00008C C2 01            [12]  493 	clr	_next
                                    494 	.area GSFINAL (CODE)
      000099 02 00 0E         [24]  495 	ljmp	__sdcc_program_startup
                                    496 ;--------------------------------------------------------
                                    497 ; Home
                                    498 ;--------------------------------------------------------
                                    499 	.area HOME    (CODE)
                                    500 	.area HOME    (CODE)
      00000E                        501 __sdcc_program_startup:
      00000E 02 0B AB         [24]  502 	ljmp	_main
                                    503 ;	return from main will return to caller
                                    504 ;--------------------------------------------------------
                                    505 ; code
                                    506 ;--------------------------------------------------------
                                    507 	.area CSEG    (CODE)
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'timerInt'
                                    510 ;------------------------------------------------------------
                                    511 ;	main.c:35: void timerInt() __interrupt 1
                                    512 ;	-----------------------------------------
                                    513 ;	 function timerInt
                                    514 ;	-----------------------------------------
      00009C                        515 _timerInt:
                           000007   516 	ar7 = 0x07
                           000006   517 	ar6 = 0x06
                           000005   518 	ar5 = 0x05
                           000004   519 	ar4 = 0x04
                           000003   520 	ar3 = 0x03
                           000002   521 	ar2 = 0x02
                           000001   522 	ar1 = 0x01
                           000000   523 	ar0 = 0x00
      00009C C0 E0            [24]  524 	push	acc
      00009E C0 D0            [24]  525 	push	psw
                                    526 ;	main.c:37: TH0 = 0x10;
      0000A0 75 8C 10         [24]  527 	mov	_TH0,#0x10
                                    528 ;	main.c:38: TL0 = 0x00;
      0000A3 75 8A 00         [24]  529 	mov	_TL0,#0x00
                                    530 ;	main.c:39: e++;
      0000A6 05 2B            [12]  531 	inc	_e
                                    532 ;	main.c:40: if(e >= 16)
      0000A8 74 F0            [12]  533 	mov	a,#0x100 - 0x10
      0000AA 25 2B            [12]  534 	add	a,_e
      0000AC 50 05            [24]  535 	jnc	00102$
                                    536 ;	main.c:42: e = 0;
      0000AE 75 2B 00         [24]  537 	mov	_e,#0x00
                                    538 ;	main.c:43: sec++;
      0000B1 05 28            [12]  539 	inc	_sec
      0000B3                        540 00102$:
                                    541 ;	main.c:45: if(sec >= 10)
      0000B3 74 F6            [12]  542 	mov	a,#0x100 - 0x0a
      0000B5 25 28            [12]  543 	add	a,_sec
      0000B7 50 05            [24]  544 	jnc	00104$
                                    545 ;	main.c:47: tsec++;
      0000B9 05 29            [12]  546 	inc	_tsec
                                    547 ;	main.c:48: sec = 0;
      0000BB 75 28 00         [24]  548 	mov	_sec,#0x00
      0000BE                        549 00104$:
                                    550 ;	main.c:51: if(tsec == 6)
      0000BE 74 06            [12]  551 	mov	a,#0x06
      0000C0 B5 29 08         [24]  552 	cjne	a,_tsec,00106$
                                    553 ;	main.c:53: sec = 0;
      0000C3 75 28 00         [24]  554 	mov	_sec,#0x00
                                    555 ;	main.c:54: tsec = 0;
      0000C6 75 29 00         [24]  556 	mov	_tsec,#0x00
                                    557 ;	main.c:55: min++;
      0000C9 05 2A            [12]  558 	inc	_min
      0000CB                        559 00106$:
                                    560 ;	main.c:57: if(min >= 10)
      0000CB 74 F6            [12]  561 	mov	a,#0x100 - 0x0a
      0000CD 25 2A            [12]  562 	add	a,_min
      0000CF 50 05            [24]  563 	jnc	00108$
                                    564 ;	main.c:59: tmin++;
      0000D1 05 2C            [12]  565 	inc	_tmin
                                    566 ;	main.c:60: min = 0;
      0000D3 75 2A 00         [24]  567 	mov	_min,#0x00
      0000D6                        568 00108$:
                                    569 ;	main.c:62: if(tmin >= 100)
      0000D6 74 9C            [12]  570 	mov	a,#0x100 - 0x64
      0000D8 25 2C            [12]  571 	add	a,_tmin
      0000DA 50 02            [24]  572 	jnc	00111$
                                    573 ;	main.c:64: timeStuck = 1;
                                    574 ;	assignBit
      0000DC D2 00            [12]  575 	setb	_timeStuck
      0000DE                        576 00111$:
                                    577 ;	main.c:66: }
      0000DE D0 D0            [24]  578 	pop	psw
      0000E0 D0 E0            [24]  579 	pop	acc
      0000E2 32               [24]  580 	reti
                                    581 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    582 ;	eliminated unneeded push/pop dpl
                                    583 ;	eliminated unneeded push/pop dph
                                    584 ;	eliminated unneeded push/pop b
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'delay'
                                    587 ;------------------------------------------------------------
                                    588 ;time                      Allocated to registers r7 
                                    589 ;h                         Allocated to registers r5 r6 
                                    590 ;a                         Allocated to registers r3 r4 
                                    591 ;------------------------------------------------------------
                                    592 ;	main.c:68: void delay(unchar time)
                                    593 ;	-----------------------------------------
                                    594 ;	 function delay
                                    595 ;	-----------------------------------------
      0000E3                        596 _delay:
      0000E3 AF 82            [24]  597 	mov	r7,dpl
                                    598 ;	main.c:71: for(h = 0; h < time; h++)
      0000E5 7D 00            [12]  599 	mov	r5,#0x00
      0000E7 7E 00            [12]  600 	mov	r6,#0x00
      0000E9                        601 00107$:
      0000E9 8F 03            [24]  602 	mov	ar3,r7
      0000EB 7C 00            [12]  603 	mov	r4,#0x00
      0000ED C3               [12]  604 	clr	c
      0000EE ED               [12]  605 	mov	a,r5
      0000EF 9B               [12]  606 	subb	a,r3
      0000F0 EE               [12]  607 	mov	a,r6
      0000F1 9C               [12]  608 	subb	a,r4
      0000F2 50 1B            [24]  609 	jnc	00109$
                                    610 ;	main.c:73: for(a = 0; a < 150; a++);
      0000F4 7B 96            [12]  611 	mov	r3,#0x96
      0000F6 7C 00            [12]  612 	mov	r4,#0x00
      0000F8                        613 00105$:
      0000F8 EB               [12]  614 	mov	a,r3
      0000F9 24 FF            [12]  615 	add	a,#0xff
      0000FB F9               [12]  616 	mov	r1,a
      0000FC EC               [12]  617 	mov	a,r4
      0000FD 34 FF            [12]  618 	addc	a,#0xff
      0000FF FA               [12]  619 	mov	r2,a
      000100 89 03            [24]  620 	mov	ar3,r1
      000102 8A 04            [24]  621 	mov	ar4,r2
      000104 E9               [12]  622 	mov	a,r1
      000105 4A               [12]  623 	orl	a,r2
      000106 70 F0            [24]  624 	jnz	00105$
                                    625 ;	main.c:71: for(h = 0; h < time; h++)
      000108 0D               [12]  626 	inc	r5
      000109 BD 00 DD         [24]  627 	cjne	r5,#0x00,00107$
      00010C 0E               [12]  628 	inc	r6
      00010D 80 DA            [24]  629 	sjmp	00107$
      00010F                        630 00109$:
                                    631 ;	main.c:75: }
      00010F 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'delayl'
                                    635 ;------------------------------------------------------------
                                    636 ;time                      Allocated to registers r7 
                                    637 ;h                         Allocated to registers r5 r6 
                                    638 ;a                         Allocated to registers r3 r4 
                                    639 ;------------------------------------------------------------
                                    640 ;	main.c:77: void delayl(unchar time)
                                    641 ;	-----------------------------------------
                                    642 ;	 function delayl
                                    643 ;	-----------------------------------------
      000110                        644 _delayl:
      000110 AF 82            [24]  645 	mov	r7,dpl
                                    646 ;	main.c:80: for(h = 0; h < time; h++)
      000112 7D 00            [12]  647 	mov	r5,#0x00
      000114 7E 00            [12]  648 	mov	r6,#0x00
      000116                        649 00107$:
      000116 8F 03            [24]  650 	mov	ar3,r7
      000118 7C 00            [12]  651 	mov	r4,#0x00
      00011A C3               [12]  652 	clr	c
      00011B ED               [12]  653 	mov	a,r5
      00011C 9B               [12]  654 	subb	a,r3
      00011D EE               [12]  655 	mov	a,r6
      00011E 9C               [12]  656 	subb	a,r4
      00011F 50 1B            [24]  657 	jnc	00109$
                                    658 ;	main.c:82: for(a = 0; a < 10000; a++);
      000121 7B 10            [12]  659 	mov	r3,#0x10
      000123 7C 27            [12]  660 	mov	r4,#0x27
      000125                        661 00105$:
      000125 EB               [12]  662 	mov	a,r3
      000126 24 FF            [12]  663 	add	a,#0xff
      000128 F9               [12]  664 	mov	r1,a
      000129 EC               [12]  665 	mov	a,r4
      00012A 34 FF            [12]  666 	addc	a,#0xff
      00012C FA               [12]  667 	mov	r2,a
      00012D 89 03            [24]  668 	mov	ar3,r1
      00012F 8A 04            [24]  669 	mov	ar4,r2
      000131 E9               [12]  670 	mov	a,r1
      000132 4A               [12]  671 	orl	a,r2
      000133 70 F0            [24]  672 	jnz	00105$
                                    673 ;	main.c:80: for(h = 0; h < time; h++)
      000135 0D               [12]  674 	inc	r5
      000136 BD 00 DD         [24]  675 	cjne	r5,#0x00,00107$
      000139 0E               [12]  676 	inc	r6
      00013A 80 DA            [24]  677 	sjmp	00107$
      00013C                        678 00109$:
                                    679 ;	main.c:84: }
      00013C 22               [24]  680 	ret
                                    681 ;------------------------------------------------------------
                                    682 ;Allocation info for local variables in function 'setupInt'
                                    683 ;------------------------------------------------------------
                                    684 ;	main.c:86: void setupInt()
                                    685 ;	-----------------------------------------
                                    686 ;	 function setupInt
                                    687 ;	-----------------------------------------
      00013D                        688 _setupInt:
                                    689 ;	main.c:88: TMOD = 0x11;
      00013D 75 89 11         [24]  690 	mov	_TMOD,#0x11
                                    691 ;	main.c:89: TH0 = 0x10;
      000140 75 8C 10         [24]  692 	mov	_TH0,#0x10
                                    693 ;	main.c:90: TL0 = 0x00;
      000143 75 8A 00         [24]  694 	mov	_TL0,#0x00
                                    695 ;	main.c:91: ET0 = 1;
                                    696 ;	assignBit
      000146 D2 A9            [12]  697 	setb	_ET0
                                    698 ;	main.c:92: EA = 1;
                                    699 ;	assignBit
      000148 D2 AF            [12]  700 	setb	_EA
                                    701 ;	main.c:93: TR0 = 1;
                                    702 ;	assignBit
      00014A D2 8C            [12]  703 	setb	_TR0
                                    704 ;	main.c:94: }
      00014C 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'LCD4to'
                                    708 ;------------------------------------------------------------
                                    709 ;num                       Allocated to registers r7 
                                    710 ;------------------------------------------------------------
                                    711 ;	main.c:97: void LCD4to(unchar num)
                                    712 ;	-----------------------------------------
                                    713 ;	 function LCD4to
                                    714 ;	-----------------------------------------
      00014D                        715 _LCD4to:
                                    716 ;	main.c:99: P1_1 = ((num >> 4) & 1);
      00014D E5 82            [12]  717 	mov	a,dpl
      00014F FF               [12]  718 	mov	r7,a
      000150 C4               [12]  719 	swap	a
      000151 54 01            [12]  720 	anl	a,#0x01
      000153 24 FF            [12]  721 	add	a,#0xff
      000155 92 91            [24]  722 	mov	_P1_1,c
                                    723 ;	main.c:100: P1_0 = ((num >> 5) & 1);
      000157 EF               [12]  724 	mov	a,r7
      000158 A2 E5            [12]  725 	mov	c,acc[5]
      00015A E4               [12]  726 	clr	a
      00015B 33               [12]  727 	rlc	a
      00015C 24 FF            [12]  728 	add	a,#0xff
      00015E 92 90            [24]  729 	mov	_P1_0,c
                                    730 ;	main.c:101: P3_7 = ((num >> 6) & 1);
      000160 EF               [12]  731 	mov	a,r7
      000161 23               [12]  732 	rl	a
      000162 23               [12]  733 	rl	a
      000163 54 01            [12]  734 	anl	a,#0x01
      000165 24 FF            [12]  735 	add	a,#0xff
      000167 92 B7            [24]  736 	mov	_P3_7,c
                                    737 ;	main.c:102: P3_6 = ((num >> 7) & 1);
      000169 EF               [12]  738 	mov	a,r7
      00016A 23               [12]  739 	rl	a
      00016B 54 01            [12]  740 	anl	a,#0x01
      00016D 24 FF            [12]  741 	add	a,#0xff
      00016F 92 B6            [24]  742 	mov	_P3_6,c
                                    743 ;	main.c:103: }
      000171 22               [24]  744 	ret
                                    745 ;------------------------------------------------------------
                                    746 ;Allocation info for local variables in function 'com'
                                    747 ;------------------------------------------------------------
                                    748 ;data                      Allocated to registers r7 
                                    749 ;lcd                       Allocated with name '_com_lcd_65536_55'
                                    750 ;------------------------------------------------------------
                                    751 ;	main.c:105: void com(unchar data)
                                    752 ;	-----------------------------------------
                                    753 ;	 function com
                                    754 ;	-----------------------------------------
      000172                        755 _com:
      000172 AF 82            [24]  756 	mov	r7,dpl
                                    757 ;	main.c:108: lcd =(lcd & 0x0F) | (data & 0xF0);
      000174 AD 51            [24]  758 	mov	r5,_com_lcd_65536_55
      000176 53 05 0F         [24]  759 	anl	ar5,#0x0f
      000179 7E 00            [12]  760 	mov	r6,#0x00
      00017B 8F 03            [24]  761 	mov	ar3,r7
      00017D 53 03 F0         [24]  762 	anl	ar3,#0xf0
      000180 7C 00            [12]  763 	mov	r4,#0x00
      000182 EB               [12]  764 	mov	a,r3
      000183 42 05            [12]  765 	orl	ar5,a
      000185 EC               [12]  766 	mov	a,r4
      000186 42 06            [12]  767 	orl	ar6,a
                                    768 ;	main.c:109: LCD4to(lcd);
      000188 8D 82            [24]  769 	mov	dpl,r5
      00018A C0 07            [24]  770 	push	ar7
      00018C C0 05            [24]  771 	push	ar5
      00018E 12 01 4D         [24]  772 	lcall	_LCD4to
                                    773 ;	main.c:110: delay(2);
      000191 75 82 02         [24]  774 	mov	dpl,#0x02
      000194 12 00 E3         [24]  775 	lcall	_delay
                                    776 ;	main.c:111: RS=0;
                                    777 ;	assignBit
      000197 C2 92            [12]  778 	clr	_P1_2
                                    779 ;	main.c:112: delay(2);	
      000199 75 82 02         [24]  780 	mov	dpl,#0x02
      00019C 12 00 E3         [24]  781 	lcall	_delay
                                    782 ;	main.c:113: E=1; 
                                    783 ;	assignBit
      00019F D2 94            [12]  784 	setb	_P1_4
                                    785 ;	main.c:114: delay(2);	
      0001A1 75 82 02         [24]  786 	mov	dpl,#0x02
      0001A4 12 00 E3         [24]  787 	lcall	_delay
      0001A7 D0 05            [24]  788 	pop	ar5
      0001A9 D0 07            [24]  789 	pop	ar7
                                    790 ;	main.c:115: E=0;
                                    791 ;	assignBit
      0001AB C2 94            [12]  792 	clr	_P1_4
                                    793 ;	main.c:116: lcd = (lcd & 0x0F) | (data << 4);
      0001AD 53 05 0F         [24]  794 	anl	ar5,#0x0f
      0001B0 7E 00            [12]  795 	mov	r6,#0x00
      0001B2 EF               [12]  796 	mov	a,r7
      0001B3 C4               [12]  797 	swap	a
      0001B4 54 F0            [12]  798 	anl	a,#0xf0
      0001B6 FF               [12]  799 	mov	r7,a
      0001B7 33               [12]  800 	rlc	a
      0001B8 95 E0            [12]  801 	subb	a,acc
      0001BA FC               [12]  802 	mov	r4,a
      0001BB EF               [12]  803 	mov	a,r7
      0001BC 42 05            [12]  804 	orl	ar5,a
      0001BE EC               [12]  805 	mov	a,r4
      0001BF 42 06            [12]  806 	orl	ar6,a
      0001C1 8D 51            [24]  807 	mov	_com_lcd_65536_55,r5
                                    808 ;	main.c:117: LCD4to(lcd);
      0001C3 85 51 82         [24]  809 	mov	dpl,_com_lcd_65536_55
      0001C6 12 01 4D         [24]  810 	lcall	_LCD4to
                                    811 ;	main.c:118: delay(2);	
      0001C9 75 82 02         [24]  812 	mov	dpl,#0x02
      0001CC 12 00 E3         [24]  813 	lcall	_delay
                                    814 ;	main.c:119: E=1;
                                    815 ;	assignBit
      0001CF D2 94            [12]  816 	setb	_P1_4
                                    817 ;	main.c:120: delay(2);	
      0001D1 75 82 02         [24]  818 	mov	dpl,#0x02
      0001D4 12 00 E3         [24]  819 	lcall	_delay
                                    820 ;	main.c:121: E=0;
                                    821 ;	assignBit
      0001D7 C2 94            [12]  822 	clr	_P1_4
                                    823 ;	main.c:122: delay(2);	
      0001D9 75 82 02         [24]  824 	mov	dpl,#0x02
                                    825 ;	main.c:123: }
      0001DC 02 00 E3         [24]  826 	ljmp	_delay
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'dat'
                                    829 ;------------------------------------------------------------
                                    830 ;data                      Allocated to registers r7 
                                    831 ;lcd                       Allocated with name '_dat_lcd_65536_57'
                                    832 ;------------------------------------------------------------
                                    833 ;	main.c:125: void dat(unchar data)
                                    834 ;	-----------------------------------------
                                    835 ;	 function dat
                                    836 ;	-----------------------------------------
      0001DF                        837 _dat:
      0001DF AF 82            [24]  838 	mov	r7,dpl
                                    839 ;	main.c:128: lcd =(lcd & 0x0F) | (data & 0xF0);
      0001E1 AD 52            [24]  840 	mov	r5,_dat_lcd_65536_57
      0001E3 53 05 0F         [24]  841 	anl	ar5,#0x0f
      0001E6 7E 00            [12]  842 	mov	r6,#0x00
      0001E8 8F 03            [24]  843 	mov	ar3,r7
      0001EA 53 03 F0         [24]  844 	anl	ar3,#0xf0
      0001ED 7C 00            [12]  845 	mov	r4,#0x00
      0001EF EB               [12]  846 	mov	a,r3
      0001F0 42 05            [12]  847 	orl	ar5,a
      0001F2 EC               [12]  848 	mov	a,r4
      0001F3 42 06            [12]  849 	orl	ar6,a
                                    850 ;	main.c:129: LCD4to(lcd);
      0001F5 8D 82            [24]  851 	mov	dpl,r5
      0001F7 C0 07            [24]  852 	push	ar7
      0001F9 C0 05            [24]  853 	push	ar5
      0001FB 12 01 4D         [24]  854 	lcall	_LCD4to
                                    855 ;	main.c:130: delay(2);	
      0001FE 75 82 02         [24]  856 	mov	dpl,#0x02
      000201 12 00 E3         [24]  857 	lcall	_delay
                                    858 ;	main.c:131: RS=1;
                                    859 ;	assignBit
      000204 D2 92            [12]  860 	setb	_P1_2
                                    861 ;	main.c:132: delay(2);	
      000206 75 82 02         [24]  862 	mov	dpl,#0x02
      000209 12 00 E3         [24]  863 	lcall	_delay
                                    864 ;	main.c:133: E=1; 
                                    865 ;	assignBit
      00020C D2 94            [12]  866 	setb	_P1_4
                                    867 ;	main.c:134: delay(2);	
      00020E 75 82 02         [24]  868 	mov	dpl,#0x02
      000211 12 00 E3         [24]  869 	lcall	_delay
      000214 D0 05            [24]  870 	pop	ar5
      000216 D0 07            [24]  871 	pop	ar7
                                    872 ;	main.c:135: E=0;
                                    873 ;	assignBit
      000218 C2 94            [12]  874 	clr	_P1_4
                                    875 ;	main.c:136: lcd = (lcd & 0x0F) | (data << 4);
      00021A 53 05 0F         [24]  876 	anl	ar5,#0x0f
      00021D 7E 00            [12]  877 	mov	r6,#0x00
      00021F EF               [12]  878 	mov	a,r7
      000220 C4               [12]  879 	swap	a
      000221 54 F0            [12]  880 	anl	a,#0xf0
      000223 FF               [12]  881 	mov	r7,a
      000224 33               [12]  882 	rlc	a
      000225 95 E0            [12]  883 	subb	a,acc
      000227 FC               [12]  884 	mov	r4,a
      000228 EF               [12]  885 	mov	a,r7
      000229 42 05            [12]  886 	orl	ar5,a
      00022B EC               [12]  887 	mov	a,r4
      00022C 42 06            [12]  888 	orl	ar6,a
      00022E 8D 52            [24]  889 	mov	_dat_lcd_65536_57,r5
                                    890 ;	main.c:137: LCD4to(lcd);
      000230 85 52 82         [24]  891 	mov	dpl,_dat_lcd_65536_57
      000233 12 01 4D         [24]  892 	lcall	_LCD4to
                                    893 ;	main.c:138: delay(2);	
      000236 75 82 02         [24]  894 	mov	dpl,#0x02
      000239 12 00 E3         [24]  895 	lcall	_delay
                                    896 ;	main.c:139: E=1;
                                    897 ;	assignBit
      00023C D2 94            [12]  898 	setb	_P1_4
                                    899 ;	main.c:140: delay(2);	
      00023E 75 82 02         [24]  900 	mov	dpl,#0x02
      000241 12 00 E3         [24]  901 	lcall	_delay
                                    902 ;	main.c:141: E=0;
                                    903 ;	assignBit
      000244 C2 94            [12]  904 	clr	_P1_4
                                    905 ;	main.c:142: delay(2);	
      000246 75 82 02         [24]  906 	mov	dpl,#0x02
                                    907 ;	main.c:143: }
      000249 02 00 E3         [24]  908 	ljmp	_delay
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'write'
                                    911 ;------------------------------------------------------------
                                    912 ;choose                    Allocated with name '_write_PARM_2'
                                    913 ;line                      Allocated to registers r5 r6 r7 
                                    914 ;columm                    Allocated to registers r4 
                                    915 ;------------------------------------------------------------
                                    916 ;	main.c:145: void write(unchar line[16],unchar choose)
                                    917 ;	-----------------------------------------
                                    918 ;	 function write
                                    919 ;	-----------------------------------------
      00024C                        920 _write:
      00024C AD 82            [24]  921 	mov	r5,dpl
      00024E AE 83            [24]  922 	mov	r6,dph
      000250 AF F0            [24]  923 	mov	r7,b
                                    924 ;	main.c:148: if(choose == 1)
      000252 74 01            [12]  925 	mov	a,#0x01
      000254 B5 53 14         [24]  926 	cjne	a,_write_PARM_2,00102$
                                    927 ;	main.c:150: com(0xC0);
      000257 75 82 C0         [24]  928 	mov	dpl,#0xc0
      00025A C0 07            [24]  929 	push	ar7
      00025C C0 06            [24]  930 	push	ar6
      00025E C0 05            [24]  931 	push	ar5
      000260 12 01 72         [24]  932 	lcall	_com
      000263 D0 05            [24]  933 	pop	ar5
      000265 D0 06            [24]  934 	pop	ar6
      000267 D0 07            [24]  935 	pop	ar7
      000269 80 12            [24]  936 	sjmp	00110$
      00026B                        937 00102$:
                                    938 ;	main.c:154: com(0x80);
      00026B 75 82 80         [24]  939 	mov	dpl,#0x80
      00026E C0 07            [24]  940 	push	ar7
      000270 C0 06            [24]  941 	push	ar6
      000272 C0 05            [24]  942 	push	ar5
      000274 12 01 72         [24]  943 	lcall	_com
      000277 D0 05            [24]  944 	pop	ar5
      000279 D0 06            [24]  945 	pop	ar6
      00027B D0 07            [24]  946 	pop	ar7
                                    947 ;	main.c:156: for(columm = 0; columm < 17; columm++)
      00027D                        948 00110$:
      00027D 7C 00            [12]  949 	mov	r4,#0x00
      00027F                        950 00105$:
                                    951 ;	main.c:158: delay(10);
      00027F 75 82 0A         [24]  952 	mov	dpl,#0x0a
      000282 C0 07            [24]  953 	push	ar7
      000284 C0 06            [24]  954 	push	ar6
      000286 C0 05            [24]  955 	push	ar5
      000288 C0 04            [24]  956 	push	ar4
      00028A 12 00 E3         [24]  957 	lcall	_delay
      00028D D0 04            [24]  958 	pop	ar4
      00028F D0 05            [24]  959 	pop	ar5
      000291 D0 06            [24]  960 	pop	ar6
      000293 D0 07            [24]  961 	pop	ar7
                                    962 ;	main.c:159: dat(line[columm]);
      000295 EC               [12]  963 	mov	a,r4
      000296 2D               [12]  964 	add	a,r5
      000297 F9               [12]  965 	mov	r1,a
      000298 E4               [12]  966 	clr	a
      000299 3E               [12]  967 	addc	a,r6
      00029A FA               [12]  968 	mov	r2,a
      00029B 8F 03            [24]  969 	mov	ar3,r7
      00029D 89 82            [24]  970 	mov	dpl,r1
      00029F 8A 83            [24]  971 	mov	dph,r2
      0002A1 8B F0            [24]  972 	mov	b,r3
      0002A3 12 0C A9         [24]  973 	lcall	__gptrget
      0002A6 F5 82            [12]  974 	mov	dpl,a
      0002A8 C0 07            [24]  975 	push	ar7
      0002AA C0 06            [24]  976 	push	ar6
      0002AC C0 05            [24]  977 	push	ar5
      0002AE C0 04            [24]  978 	push	ar4
      0002B0 12 01 DF         [24]  979 	lcall	_dat
      0002B3 D0 04            [24]  980 	pop	ar4
      0002B5 D0 05            [24]  981 	pop	ar5
      0002B7 D0 06            [24]  982 	pop	ar6
      0002B9 D0 07            [24]  983 	pop	ar7
                                    984 ;	main.c:156: for(columm = 0; columm < 17; columm++)
      0002BB 0C               [12]  985 	inc	r4
      0002BC BC 11 00         [24]  986 	cjne	r4,#0x11,00120$
      0002BF                        987 00120$:
      0002BF 40 BE            [24]  988 	jc	00105$
                                    989 ;	main.c:161: }
      0002C1 22               [24]  990 	ret
                                    991 ;------------------------------------------------------------
                                    992 ;Allocation info for local variables in function 'writeArray'
                                    993 ;------------------------------------------------------------
                                    994 ;d2                        Allocated with name '_writeArray_PARM_2'
                                    995 ;line                      Allocated with name '_writeArray_line_65536_64'
                                    996 ;columm                    Allocated to registers r3 
                                    997 ;------------------------------------------------------------
                                    998 ;	main.c:163: void writeArray(unchar line[16],unchar d2)
                                    999 ;	-----------------------------------------
                                   1000 ;	 function writeArray
                                   1001 ;	-----------------------------------------
      0002C2                       1002 _writeArray:
      0002C2 85 82 0D         [24] 1003 	mov	_writeArray_line_65536_64,dpl
      0002C5 85 83 0E         [24] 1004 	mov	(_writeArray_line_65536_64 + 1),dph
      0002C8 85 F0 0F         [24] 1005 	mov	(_writeArray_line_65536_64 + 2),b
                                   1006 ;	main.c:166: for(columm = 0; columm < 17; ++columm)
      0002CB E5 0C            [12] 1007 	mov	a,_writeArray_PARM_2
      0002CD C4               [12] 1008 	swap	a
      0002CE 54 F0            [12] 1009 	anl	a,#0xf0
      0002D0 24 2E            [12] 1010 	add	a,#_display
      0002D2 FC               [12] 1011 	mov	r4,a
      0002D3 7B 00            [12] 1012 	mov	r3,#0x00
      0002D5                       1013 00102$:
                                   1014 ;	main.c:168: display[d2][columm] = line[columm];
      0002D5 EB               [12] 1015 	mov	a,r3
      0002D6 2C               [12] 1016 	add	a,r4
      0002D7 F9               [12] 1017 	mov	r1,a
      0002D8 EB               [12] 1018 	mov	a,r3
      0002D9 25 0D            [12] 1019 	add	a,_writeArray_line_65536_64
      0002DB FA               [12] 1020 	mov	r2,a
      0002DC E4               [12] 1021 	clr	a
      0002DD 35 0E            [12] 1022 	addc	a,(_writeArray_line_65536_64 + 1)
      0002DF FE               [12] 1023 	mov	r6,a
      0002E0 AF 0F            [24] 1024 	mov	r7,(_writeArray_line_65536_64 + 2)
      0002E2 8A 82            [24] 1025 	mov	dpl,r2
      0002E4 8E 83            [24] 1026 	mov	dph,r6
      0002E6 8F F0            [24] 1027 	mov	b,r7
      0002E8 12 0C A9         [24] 1028 	lcall	__gptrget
      0002EB F7               [12] 1029 	mov	@r1,a
                                   1030 ;	main.c:166: for(columm = 0; columm < 17; ++columm)
      0002EC 0B               [12] 1031 	inc	r3
      0002ED BB 11 00         [24] 1032 	cjne	r3,#0x11,00111$
      0002F0                       1033 00111$:
      0002F0 40 E3            [24] 1034 	jc	00102$
                                   1035 ;	main.c:170: }
      0002F2 22               [24] 1036 	ret
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'writeQues'
                                   1039 ;------------------------------------------------------------
                                   1040 ;numsA                     Allocated with name '_writeQues_PARM_2'
                                   1041 ;numsB                     Allocated with name '_writeQues_PARM_3'
                                   1042 ;symbols                   Allocated with name '_writeQues_PARM_4'
                                   1043 ;numQuess                  Allocated to registers r7 
                                   1044 ;------------------------------------------------------------
                                   1045 ;	main.c:172: void writeQues(unchar numQuess, unchar numsA, unchar numsB, unchar symbols)
                                   1046 ;	-----------------------------------------
                                   1047 ;	 function writeQues
                                   1048 ;	-----------------------------------------
      0002F3                       1049 _writeQues:
      0002F3 AF 82            [24] 1050 	mov	r7,dpl
                                   1051 ;	main.c:174: writeArray("  .       =     ", 0);	
      0002F5 75 0C 00         [24] 1052 	mov	_writeArray_PARM_2,#0x00
      0002F8 90 0D 37         [24] 1053 	mov	dptr,#___str_0
      0002FB 75 F0 80         [24] 1054 	mov	b,#0x80
      0002FE C0 07            [24] 1055 	push	ar7
      000300 12 02 C2         [24] 1056 	lcall	_writeArray
      000303 D0 07            [24] 1057 	pop	ar7
                                   1058 ;	main.c:175: display[0][0] = (numQuess/10)+0x30;
      000305 7E 00            [12] 1059 	mov	r6,#0x00
      000307 75 0C 0A         [24] 1060 	mov	__divsint_PARM_2,#0x0a
                                   1061 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00030A 8E 0D            [24] 1062 	mov	(__divsint_PARM_2 + 1),r6
      00030C 8F 82            [24] 1063 	mov	dpl,r7
      00030E 8E 83            [24] 1064 	mov	dph,r6
      000310 C0 07            [24] 1065 	push	ar7
      000312 C0 06            [24] 1066 	push	ar6
      000314 12 0C FB         [24] 1067 	lcall	__divsint
      000317 AC 82            [24] 1068 	mov	r4,dpl
      000319 D0 06            [24] 1069 	pop	ar6
      00031B D0 07            [24] 1070 	pop	ar7
      00031D 74 30            [12] 1071 	mov	a,#0x30
      00031F 2C               [12] 1072 	add	a,r4
      000320 F5 2E            [12] 1073 	mov	_display,a
                                   1074 ;	main.c:176: display[0][1] = (numQuess%10)+0x30;
      000322 75 0C 0A         [24] 1075 	mov	__modsint_PARM_2,#0x0a
      000325 75 0D 00         [24] 1076 	mov	(__modsint_PARM_2 + 1),#0x00
      000328 8F 82            [24] 1077 	mov	dpl,r7
      00032A 8E 83            [24] 1078 	mov	dph,r6
      00032C 12 0C C5         [24] 1079 	lcall	__modsint
      00032F AE 82            [24] 1080 	mov	r6,dpl
      000331 74 30            [12] 1081 	mov	a,#0x30
      000333 2E               [12] 1082 	add	a,r6
      000334 F5 2F            [12] 1083 	mov	(_display + 0x0001),a
                                   1084 ;	main.c:177: display[0][4] = (numsA/10) + 0x30;
      000336 AD 54            [24] 1085 	mov	r5,_writeQues_PARM_2
      000338 7F 00            [12] 1086 	mov	r7,#0x00
      00033A 75 0C 0A         [24] 1087 	mov	__divsint_PARM_2,#0x0a
                                   1088 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00033D 8F 0D            [24] 1089 	mov	(__divsint_PARM_2 + 1),r7
      00033F 8D 82            [24] 1090 	mov	dpl,r5
      000341 8F 83            [24] 1091 	mov	dph,r7
      000343 C0 07            [24] 1092 	push	ar7
      000345 C0 06            [24] 1093 	push	ar6
      000347 C0 05            [24] 1094 	push	ar5
      000349 12 0C FB         [24] 1095 	lcall	__divsint
      00034C AB 82            [24] 1096 	mov	r3,dpl
      00034E D0 05            [24] 1097 	pop	ar5
      000350 D0 06            [24] 1098 	pop	ar6
      000352 D0 07            [24] 1099 	pop	ar7
      000354 74 30            [12] 1100 	mov	a,#0x30
      000356 2B               [12] 1101 	add	a,r3
      000357 F5 32            [12] 1102 	mov	(_display + 0x0004),a
                                   1103 ;	main.c:178: display[0][5] = (numsA%10) + 0x30;
      000359 75 0C 0A         [24] 1104 	mov	__modsint_PARM_2,#0x0a
      00035C 75 0D 00         [24] 1105 	mov	(__modsint_PARM_2 + 1),#0x00
      00035F 8D 82            [24] 1106 	mov	dpl,r5
      000361 8F 83            [24] 1107 	mov	dph,r7
      000363 C0 06            [24] 1108 	push	ar6
      000365 12 0C C5         [24] 1109 	lcall	__modsint
      000368 AD 82            [24] 1110 	mov	r5,dpl
      00036A D0 06            [24] 1111 	pop	ar6
      00036C 74 30            [12] 1112 	mov	a,#0x30
      00036E 2D               [12] 1113 	add	a,r5
      00036F F5 33            [12] 1114 	mov	(_display + 0x0005),a
                                   1115 ;	main.c:179: display[0][6] = symbols;
      000371 85 56 34         [24] 1116 	mov	(_display + 0x0006),_writeQues_PARM_4
                                   1117 ;	main.c:180: display[0][7] = (numsB/10) + 0x30;
      000374 AD 55            [24] 1118 	mov	r5,_writeQues_PARM_3
      000376 7F 00            [12] 1119 	mov	r7,#0x00
      000378 75 0C 0A         [24] 1120 	mov	__divsint_PARM_2,#0x0a
                                   1121 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00037B 8F 0D            [24] 1122 	mov	(__divsint_PARM_2 + 1),r7
      00037D 8D 82            [24] 1123 	mov	dpl,r5
      00037F 8F 83            [24] 1124 	mov	dph,r7
      000381 C0 07            [24] 1125 	push	ar7
      000383 C0 06            [24] 1126 	push	ar6
      000385 C0 05            [24] 1127 	push	ar5
      000387 12 0C FB         [24] 1128 	lcall	__divsint
      00038A AB 82            [24] 1129 	mov	r3,dpl
      00038C D0 05            [24] 1130 	pop	ar5
      00038E D0 06            [24] 1131 	pop	ar6
      000390 D0 07            [24] 1132 	pop	ar7
      000392 74 30            [12] 1133 	mov	a,#0x30
      000394 2B               [12] 1134 	add	a,r3
      000395 F5 35            [12] 1135 	mov	(_display + 0x0007),a
                                   1136 ;	main.c:181: display[0][8] = (numsB%10) + 0x30;
      000397 75 0C 0A         [24] 1137 	mov	__modsint_PARM_2,#0x0a
      00039A 75 0D 00         [24] 1138 	mov	(__modsint_PARM_2 + 1),#0x00
      00039D 8D 82            [24] 1139 	mov	dpl,r5
      00039F 8F 83            [24] 1140 	mov	dph,r7
      0003A1 C0 06            [24] 1141 	push	ar6
      0003A3 12 0C C5         [24] 1142 	lcall	__modsint
      0003A6 AD 82            [24] 1143 	mov	r5,dpl
      0003A8 D0 06            [24] 1144 	pop	ar6
      0003AA 74 30            [12] 1145 	mov	a,#0x30
      0003AC 2D               [12] 1146 	add	a,r5
      0003AD F5 36            [12] 1147 	mov	(_display + 0x0008),a
                                   1148 ;	main.c:182: display[0][15] = ' ';
      0003AF 75 3D 20         [24] 1149 	mov	(_display + 0x000f),#0x20
                                   1150 ;	main.c:183: if(display[0][0] == 0x30)
      0003B2 74 30            [12] 1151 	mov	a,#0x30
      0003B4 B5 2E 0B         [24] 1152 	cjne	a,_display,00103$
                                   1153 ;	main.c:185: display[0][0] = (numQuess%10)+0x30;
      0003B7 74 30            [12] 1154 	mov	a,#0x30
      0003B9 2E               [12] 1155 	add	a,r6
      0003BA F5 2E            [12] 1156 	mov	_display,a
                                   1157 ;	main.c:186: display[0][1] = '.';
      0003BC 75 2F 2E         [24] 1158 	mov	(_display + 0x0001),#0x2e
                                   1159 ;	main.c:187: display[0][2] = ' ';
      0003BF 75 30 20         [24] 1160 	mov	(_display + 0x0002),#0x20
      0003C2                       1161 00103$:
                                   1162 ;	main.c:189: }
      0003C2 22               [24] 1163 	ret
                                   1164 ;------------------------------------------------------------
                                   1165 ;Allocation info for local variables in function 'writeAnswer'
                                   1166 ;------------------------------------------------------------
                                   1167 ;	main.c:191: void writeAnswer()
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function writeAnswer
                                   1170 ;	-----------------------------------------
      0003C3                       1171 _writeAnswer:
                                   1172 ;	main.c:193: writeArray("                ", 1);
      0003C3 75 0C 01         [24] 1173 	mov	_writeArray_PARM_2,#0x01
      0003C6 90 0D 48         [24] 1174 	mov	dptr,#___str_1
      0003C9 75 F0 80         [24] 1175 	mov	b,#0x80
      0003CC 12 02 C2         [24] 1176 	lcall	_writeArray
                                   1177 ;	main.c:194: writeArray("   left!        ",1);
      0003CF 75 0C 01         [24] 1178 	mov	_writeArray_PARM_2,#0x01
      0003D2 90 0D 59         [24] 1179 	mov	dptr,#___str_2
      0003D5 75 F0 80         [24] 1180 	mov	b,#0x80
      0003D8 12 02 C2         [24] 1181 	lcall	_writeArray
                                   1182 ;	main.c:195: display[1][0] = ((quesNum-doneNum)/10)+0x30;
      0003DB AE 23            [24] 1183 	mov	r6,_quesNum
      0003DD 7F 00            [12] 1184 	mov	r7,#0x00
      0003DF AC 2D            [24] 1185 	mov	r4,_doneNum
      0003E1 7D 00            [12] 1186 	mov	r5,#0x00
      0003E3 EE               [12] 1187 	mov	a,r6
      0003E4 C3               [12] 1188 	clr	c
      0003E5 9C               [12] 1189 	subb	a,r4
      0003E6 F5 82            [12] 1190 	mov	dpl,a
      0003E8 EF               [12] 1191 	mov	a,r7
      0003E9 9D               [12] 1192 	subb	a,r5
      0003EA F5 83            [12] 1193 	mov	dph,a
      0003EC 75 0C 0A         [24] 1194 	mov	__divsint_PARM_2,#0x0a
                                   1195 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0003EF 8F 0D            [24] 1196 	mov	(__divsint_PARM_2 + 1),r7
      0003F1 12 0C FB         [24] 1197 	lcall	__divsint
      0003F4 AE 82            [24] 1198 	mov	r6,dpl
      0003F6 74 30            [12] 1199 	mov	a,#0x30
      0003F8 2E               [12] 1200 	add	a,r6
      0003F9 F5 3E            [12] 1201 	mov	(_display + 0x0010),a
                                   1202 ;	main.c:196: display[1][1] = ((quesNum-doneNum)%10)+0x30;
      0003FB AE 23            [24] 1203 	mov	r6,_quesNum
      0003FD 7F 00            [12] 1204 	mov	r7,#0x00
      0003FF AC 2D            [24] 1205 	mov	r4,_doneNum
      000401 7D 00            [12] 1206 	mov	r5,#0x00
      000403 EE               [12] 1207 	mov	a,r6
      000404 C3               [12] 1208 	clr	c
      000405 9C               [12] 1209 	subb	a,r4
      000406 F5 82            [12] 1210 	mov	dpl,a
      000408 EF               [12] 1211 	mov	a,r7
      000409 9D               [12] 1212 	subb	a,r5
      00040A F5 83            [12] 1213 	mov	dph,a
      00040C 75 0C 0A         [24] 1214 	mov	__modsint_PARM_2,#0x0a
                                   1215 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00040F 8F 0D            [24] 1216 	mov	(__modsint_PARM_2 + 1),r7
      000411 12 0C C5         [24] 1217 	lcall	__modsint
      000414 AE 82            [24] 1218 	mov	r6,dpl
      000416 74 30            [12] 1219 	mov	a,#0x30
      000418 2E               [12] 1220 	add	a,r6
      000419 F5 3F            [12] 1221 	mov	(_display + 0x0011),a
                                   1222 ;	main.c:197: display[0][12] = (turn/100)+0x30;
      00041B AE 22            [24] 1223 	mov	r6,_turn
      00041D 7F 00            [12] 1224 	mov	r7,#0x00
      00041F 75 0C 64         [24] 1225 	mov	__divsint_PARM_2,#0x64
                                   1226 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000422 8F 0D            [24] 1227 	mov	(__divsint_PARM_2 + 1),r7
      000424 8E 82            [24] 1228 	mov	dpl,r6
      000426 8F 83            [24] 1229 	mov	dph,r7
      000428 12 0C FB         [24] 1230 	lcall	__divsint
      00042B AE 82            [24] 1231 	mov	r6,dpl
      00042D 74 30            [12] 1232 	mov	a,#0x30
      00042F 2E               [12] 1233 	add	a,r6
      000430 F5 3A            [12] 1234 	mov	(_display + 0x000c),a
                                   1235 ;	main.c:198: display[0][13] = ((turn/10)%10)+0x30;
      000432 AE 22            [24] 1236 	mov	r6,_turn
      000434 7F 00            [12] 1237 	mov	r7,#0x00
      000436 75 0C 0A         [24] 1238 	mov	__divsint_PARM_2,#0x0a
                                   1239 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000439 8F 0D            [24] 1240 	mov	(__divsint_PARM_2 + 1),r7
      00043B 8E 82            [24] 1241 	mov	dpl,r6
      00043D 8F 83            [24] 1242 	mov	dph,r7
      00043F 12 0C FB         [24] 1243 	lcall	__divsint
      000442 75 0C 0A         [24] 1244 	mov	__modsint_PARM_2,#0x0a
      000445 75 0D 00         [24] 1245 	mov	(__modsint_PARM_2 + 1),#0x00
      000448 12 0C C5         [24] 1246 	lcall	__modsint
      00044B AE 82            [24] 1247 	mov	r6,dpl
      00044D 74 30            [12] 1248 	mov	a,#0x30
      00044F 2E               [12] 1249 	add	a,r6
      000450 F5 3B            [12] 1250 	mov	(_display + 0x000d),a
                                   1251 ;	main.c:199: display[0][14] = (turn%10)+0x30;
      000452 AE 22            [24] 1252 	mov	r6,_turn
      000454 7F 00            [12] 1253 	mov	r7,#0x00
      000456 75 0C 0A         [24] 1254 	mov	__modsint_PARM_2,#0x0a
                                   1255 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000459 8F 0D            [24] 1256 	mov	(__modsint_PARM_2 + 1),r7
      00045B 8E 82            [24] 1257 	mov	dpl,r6
      00045D 8F 83            [24] 1258 	mov	dph,r7
      00045F 12 0C C5         [24] 1259 	lcall	__modsint
      000462 AE 82            [24] 1260 	mov	r6,dpl
      000464 AF 83            [24] 1261 	mov	r7,dph
      000466 74 30            [12] 1262 	mov	a,#0x30
      000468 2E               [12] 1263 	add	a,r6
      000469 F5 3C            [12] 1264 	mov	(_display + 0x000e),a
                                   1265 ;	main.c:200: if(display[0][12] == 0x30)
      00046B 74 30            [12] 1266 	mov	a,#0x30
      00046D B5 3A 02         [24] 1267 	cjne	a,(_display + 0x000c),00121$
      000470 80 03            [24] 1268 	sjmp	00122$
      000472                       1269 00121$:
      000472 02 04 E2         [24] 1270 	ljmp	00106$
      000475                       1271 00122$:
                                   1272 ;	main.c:202: if(display[0][13] == 0x30)
      000475 74 30            [12] 1273 	mov	a,#0x30
      000477 B5 3B 2D         [24] 1274 	cjne	a,(_display + 0x000d),00104$
                                   1275 ;	main.c:204: if(display[0][14] == 0x30)
      00047A 74 30            [12] 1276 	mov	a,#0x30
      00047C B5 3C 0A         [24] 1277 	cjne	a,(_display + 0x000e),00102$
                                   1278 ;	main.c:206: display[0][12] = '0';
      00047F 75 3A 30         [24] 1279 	mov	(_display + 0x000c),#0x30
                                   1280 ;	main.c:207: display[0][13] = ' ';
      000482 75 3B 20         [24] 1281 	mov	(_display + 0x000d),#0x20
                                   1282 ;	main.c:208: display[0][14] = ' ';
      000485 75 3C 20         [24] 1283 	mov	(_display + 0x000e),#0x20
                                   1284 ;	main.c:209: return;
      000488 22               [24] 1285 	ret
      000489                       1286 00102$:
                                   1287 ;	main.c:211: display[0][12] = (turn%10)+0x30;
      000489 AE 22            [24] 1288 	mov	r6,_turn
      00048B 7F 00            [12] 1289 	mov	r7,#0x00
      00048D 75 0C 0A         [24] 1290 	mov	__modsint_PARM_2,#0x0a
                                   1291 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000490 8F 0D            [24] 1292 	mov	(__modsint_PARM_2 + 1),r7
      000492 8E 82            [24] 1293 	mov	dpl,r6
      000494 8F 83            [24] 1294 	mov	dph,r7
      000496 12 0C C5         [24] 1295 	lcall	__modsint
      000499 AE 82            [24] 1296 	mov	r6,dpl
      00049B 74 30            [12] 1297 	mov	a,#0x30
      00049D 2E               [12] 1298 	add	a,r6
      00049E F5 3A            [12] 1299 	mov	(_display + 0x000c),a
                                   1300 ;	main.c:212: display[0][13] = ' ';
      0004A0 75 3B 20         [24] 1301 	mov	(_display + 0x000d),#0x20
                                   1302 ;	main.c:213: display[0][14] = ' ';
      0004A3 75 3C 20         [24] 1303 	mov	(_display + 0x000e),#0x20
                                   1304 ;	main.c:214: return;
      0004A6 22               [24] 1305 	ret
      0004A7                       1306 00104$:
                                   1307 ;	main.c:216: display[0][12] = ((turn/10)%10)+0x30;
      0004A7 AE 22            [24] 1308 	mov	r6,_turn
      0004A9 7F 00            [12] 1309 	mov	r7,#0x00
      0004AB 75 0C 0A         [24] 1310 	mov	__divsint_PARM_2,#0x0a
                                   1311 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0004AE 8F 0D            [24] 1312 	mov	(__divsint_PARM_2 + 1),r7
      0004B0 8E 82            [24] 1313 	mov	dpl,r6
      0004B2 8F 83            [24] 1314 	mov	dph,r7
      0004B4 12 0C FB         [24] 1315 	lcall	__divsint
      0004B7 75 0C 0A         [24] 1316 	mov	__modsint_PARM_2,#0x0a
      0004BA 75 0D 00         [24] 1317 	mov	(__modsint_PARM_2 + 1),#0x00
      0004BD 12 0C C5         [24] 1318 	lcall	__modsint
      0004C0 AE 82            [24] 1319 	mov	r6,dpl
      0004C2 74 30            [12] 1320 	mov	a,#0x30
      0004C4 2E               [12] 1321 	add	a,r6
      0004C5 F5 3A            [12] 1322 	mov	(_display + 0x000c),a
                                   1323 ;	main.c:217: display[0][13] = (turn%10)+0x30;
      0004C7 AE 22            [24] 1324 	mov	r6,_turn
      0004C9 7F 00            [12] 1325 	mov	r7,#0x00
      0004CB 75 0C 0A         [24] 1326 	mov	__modsint_PARM_2,#0x0a
                                   1327 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0004CE 8F 0D            [24] 1328 	mov	(__modsint_PARM_2 + 1),r7
      0004D0 8E 82            [24] 1329 	mov	dpl,r6
      0004D2 8F 83            [24] 1330 	mov	dph,r7
      0004D4 12 0C C5         [24] 1331 	lcall	__modsint
      0004D7 AE 82            [24] 1332 	mov	r6,dpl
      0004D9 74 30            [12] 1333 	mov	a,#0x30
      0004DB 2E               [12] 1334 	add	a,r6
      0004DC F5 3B            [12] 1335 	mov	(_display + 0x000d),a
                                   1336 ;	main.c:218: display[0][14] = ' ';
      0004DE 75 3C 20         [24] 1337 	mov	(_display + 0x000e),#0x20
                                   1338 ;	main.c:219: return;
      0004E1 22               [24] 1339 	ret
      0004E2                       1340 00106$:
                                   1341 ;	main.c:221: display[0][12] = (turn/100)+0x30;
      0004E2 AE 22            [24] 1342 	mov	r6,_turn
      0004E4 7F 00            [12] 1343 	mov	r7,#0x00
      0004E6 75 0C 64         [24] 1344 	mov	__divsint_PARM_2,#0x64
                                   1345 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0004E9 8F 0D            [24] 1346 	mov	(__divsint_PARM_2 + 1),r7
      0004EB 8E 82            [24] 1347 	mov	dpl,r6
      0004ED 8F 83            [24] 1348 	mov	dph,r7
      0004EF 12 0C FB         [24] 1349 	lcall	__divsint
      0004F2 AE 82            [24] 1350 	mov	r6,dpl
      0004F4 74 30            [12] 1351 	mov	a,#0x30
      0004F6 2E               [12] 1352 	add	a,r6
      0004F7 F5 3A            [12] 1353 	mov	(_display + 0x000c),a
                                   1354 ;	main.c:222: display[0][13] = ((turn/10)%10)+0x30;
      0004F9 AE 22            [24] 1355 	mov	r6,_turn
      0004FB 7F 00            [12] 1356 	mov	r7,#0x00
      0004FD 75 0C 0A         [24] 1357 	mov	__divsint_PARM_2,#0x0a
                                   1358 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000500 8F 0D            [24] 1359 	mov	(__divsint_PARM_2 + 1),r7
      000502 8E 82            [24] 1360 	mov	dpl,r6
      000504 8F 83            [24] 1361 	mov	dph,r7
      000506 12 0C FB         [24] 1362 	lcall	__divsint
      000509 75 0C 0A         [24] 1363 	mov	__modsint_PARM_2,#0x0a
      00050C 75 0D 00         [24] 1364 	mov	(__modsint_PARM_2 + 1),#0x00
      00050F 12 0C C5         [24] 1365 	lcall	__modsint
      000512 AE 82            [24] 1366 	mov	r6,dpl
      000514 74 30            [12] 1367 	mov	a,#0x30
      000516 2E               [12] 1368 	add	a,r6
      000517 F5 3B            [12] 1369 	mov	(_display + 0x000d),a
                                   1370 ;	main.c:223: display[0][14] = (turn%10)+0x30;
      000519 AE 22            [24] 1371 	mov	r6,_turn
      00051B 7F 00            [12] 1372 	mov	r7,#0x00
      00051D 75 0C 0A         [24] 1373 	mov	__modsint_PARM_2,#0x0a
                                   1374 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000520 8F 0D            [24] 1375 	mov	(__modsint_PARM_2 + 1),r7
      000522 8E 82            [24] 1376 	mov	dpl,r6
      000524 8F 83            [24] 1377 	mov	dph,r7
      000526 12 0C C5         [24] 1378 	lcall	__modsint
      000529 AE 82            [24] 1379 	mov	r6,dpl
      00052B 74 30            [12] 1380 	mov	a,#0x30
      00052D 2E               [12] 1381 	add	a,r6
      00052E F5 3C            [12] 1382 	mov	(_display + 0x000e),a
                                   1383 ;	main.c:224: }
      000530 22               [24] 1384 	ret
                                   1385 ;------------------------------------------------------------
                                   1386 ;Allocation info for local variables in function 'writeYesOrNo'
                                   1387 ;------------------------------------------------------------
                                   1388 ;yesOrNo                   Allocated to registers r7 
                                   1389 ;------------------------------------------------------------
                                   1390 ;	main.c:226: void writeYesOrNo(unchar yesOrNo)
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function writeYesOrNo
                                   1393 ;	-----------------------------------------
      000531                       1394 _writeYesOrNo:
      000531 AF 82            [24] 1395 	mov	r7,dpl
                                   1396 ;	main.c:228: if(yesOrNo == 'yes')
      000533 BF 79 10         [24] 1397 	cjne	r7,#0x79,00102$
                                   1398 ;	main.c:230: write("       YES      ",1);
      000536 75 53 01         [24] 1399 	mov	_write_PARM_2,#0x01
      000539 90 0D 6A         [24] 1400 	mov	dptr,#___str_3
      00053C 75 F0 80         [24] 1401 	mov	b,#0x80
      00053F C0 07            [24] 1402 	push	ar7
      000541 12 02 4C         [24] 1403 	lcall	_write
      000544 D0 07            [24] 1404 	pop	ar7
      000546                       1405 00102$:
                                   1406 ;	main.c:232: if(yesOrNo == 'no')
      000546 BF 6E 0C         [24] 1407 	cjne	r7,#0x6e,00104$
                                   1408 ;	main.c:235: write("       NO       ",1);
      000549 75 53 01         [24] 1409 	mov	_write_PARM_2,#0x01
      00054C 90 0D 7B         [24] 1410 	mov	dptr,#___str_4
      00054F 75 F0 80         [24] 1411 	mov	b,#0x80
      000552 12 02 4C         [24] 1412 	lcall	_write
      000555                       1413 00104$:
                                   1414 ;	main.c:237: delayl(70);
      000555 75 82 46         [24] 1415 	mov	dpl,#0x46
                                   1416 ;	main.c:238: }
      000558 02 01 10         [24] 1417 	ljmp	_delayl
                                   1418 ;------------------------------------------------------------
                                   1419 ;Allocation info for local variables in function 'displayFlip'
                                   1420 ;------------------------------------------------------------
                                   1421 ;	main.c:242: void displayFlip()
                                   1422 ;	-----------------------------------------
                                   1423 ;	 function displayFlip
                                   1424 ;	-----------------------------------------
      00055B                       1425 _displayFlip:
                                   1426 ;	main.c:244: com(0x80);
      00055B 75 82 80         [24] 1427 	mov	dpl,#0x80
      00055E 12 01 72         [24] 1428 	lcall	_com
                                   1429 ;	main.c:245: write(display[0],0);
      000561 75 53 00         [24] 1430 	mov	_write_PARM_2,#0x00
      000564 90 00 2E         [24] 1431 	mov	dptr,#_display
      000567 75 F0 40         [24] 1432 	mov	b,#0x40
      00056A 12 02 4C         [24] 1433 	lcall	_write
                                   1434 ;	main.c:246: write(display[1],1);
      00056D 75 53 01         [24] 1435 	mov	_write_PARM_2,#0x01
      000570 90 00 3E         [24] 1436 	mov	dptr,#(_display + 0x0010)
      000573 75 F0 40         [24] 1437 	mov	b,#0x40
                                   1438 ;	main.c:247: }
      000576 02 02 4C         [24] 1439 	ljmp	_write
                                   1440 ;------------------------------------------------------------
                                   1441 ;Allocation info for local variables in function 'exint0'
                                   1442 ;------------------------------------------------------------
                                   1443 ;	main.c:251: void exint0() __interrupt 0
                                   1444 ;	-----------------------------------------
                                   1445 ;	 function exint0
                                   1446 ;	-----------------------------------------
      000579                       1447 _exint0:
      000579 C0 21            [24] 1448 	push	bits
      00057B C0 E0            [24] 1449 	push	acc
      00057D C0 F0            [24] 1450 	push	b
      00057F C0 82            [24] 1451 	push	dpl
      000581 C0 83            [24] 1452 	push	dph
      000583 C0 07            [24] 1453 	push	(0+7)
      000585 C0 06            [24] 1454 	push	(0+6)
      000587 C0 05            [24] 1455 	push	(0+5)
      000589 C0 04            [24] 1456 	push	(0+4)
      00058B C0 03            [24] 1457 	push	(0+3)
      00058D C0 02            [24] 1458 	push	(0+2)
      00058F C0 01            [24] 1459 	push	(0+1)
      000591 C0 00            [24] 1460 	push	(0+0)
      000593 C0 D0            [24] 1461 	push	psw
      000595 75 D0 00         [24] 1462 	mov	psw,#0x00
                                   1463 ;	main.c:253: delay(3);
      000598 75 82 03         [24] 1464 	mov	dpl,#0x03
      00059B 12 00 E3         [24] 1465 	lcall	_delay
                                   1466 ;	main.c:254: if (!P3_2)
      00059E 20 B2 43         [24] 1467 	jb	_P3_2,00117$
                                   1468 ;	main.c:256: if (DT == 0)
      0005A1 20 95 20         [24] 1469 	jb	_P1_5,00108$
                                   1470 ;	main.c:258: if(turn == 255)
      0005A4 74 FF            [12] 1471 	mov	a,#0xff
      0005A6 B5 22 05         [24] 1472 	cjne	a,_turn,00105$
                                   1473 ;	main.c:259: turn = 0;
      0005A9 75 22 00         [24] 1474 	mov	_turn,#0x00
      0005AC 80 16            [24] 1475 	sjmp	00108$
      0005AE                       1476 00105$:
                                   1477 ;	main.c:260: else if(speed < 1)
      0005AE C3               [12] 1478 	clr	c
      0005AF E5 4F            [12] 1479 	mov	a,_speed
      0005B1 94 01            [12] 1480 	subb	a,#0x01
      0005B3 E5 50            [12] 1481 	mov	a,(_speed + 1)
      0005B5 94 00            [12] 1482 	subb	a,#0x00
      0005B7 50 09            [24] 1483 	jnc	00102$
                                   1484 ;	main.c:261: turn = turn + 2;
      0005B9 AF 22            [24] 1485 	mov	r7,_turn
      0005BB 74 02            [12] 1486 	mov	a,#0x02
      0005BD 2F               [12] 1487 	add	a,r7
      0005BE F5 22            [12] 1488 	mov	_turn,a
      0005C0 80 02            [24] 1489 	sjmp	00108$
      0005C2                       1490 00102$:
                                   1491 ;	main.c:263: turn++;
      0005C2 05 22            [12] 1492 	inc	_turn
      0005C4                       1493 00108$:
                                   1494 ;	main.c:266: if(DT == 1)
      0005C4 30 95 1D         [24] 1495 	jnb	_P1_5,00117$
                                   1496 ;	main.c:268: if(turn == 0)
      0005C7 E5 22            [12] 1497 	mov	a,_turn
      0005C9 70 03            [24] 1498 	jnz	00110$
                                   1499 ;	main.c:270: turn = 255;
      0005CB 75 22 FF         [24] 1500 	mov	_turn,#0xff
      0005CE                       1501 00110$:
                                   1502 ;	main.c:272: if(speed < 1)
      0005CE C3               [12] 1503 	clr	c
      0005CF E5 4F            [12] 1504 	mov	a,_speed
      0005D1 94 01            [12] 1505 	subb	a,#0x01
      0005D3 E5 50            [12] 1506 	mov	a,(_speed + 1)
      0005D5 94 00            [12] 1507 	subb	a,#0x00
      0005D7 50 09            [24] 1508 	jnc	00112$
                                   1509 ;	main.c:273: turn = turn - 2;
      0005D9 E5 22            [12] 1510 	mov	a,_turn
      0005DB FF               [12] 1511 	mov	r7,a
      0005DC 24 FE            [12] 1512 	add	a,#0xfe
      0005DE F5 22            [12] 1513 	mov	_turn,a
      0005E0 80 02            [24] 1514 	sjmp	00117$
      0005E2                       1515 00112$:
                                   1516 ;	main.c:275: turn--;	
      0005E2 15 22            [12] 1517 	dec	_turn
      0005E4                       1518 00117$:
                                   1519 ;	main.c:278: speed = 0;
      0005E4 E4               [12] 1520 	clr	a
      0005E5 F5 4F            [12] 1521 	mov	_speed,a
      0005E7 F5 50            [12] 1522 	mov	(_speed + 1),a
                                   1523 ;	main.c:279: }
      0005E9 D0 D0            [24] 1524 	pop	psw
      0005EB D0 00            [24] 1525 	pop	(0+0)
      0005ED D0 01            [24] 1526 	pop	(0+1)
      0005EF D0 02            [24] 1527 	pop	(0+2)
      0005F1 D0 03            [24] 1528 	pop	(0+3)
      0005F3 D0 04            [24] 1529 	pop	(0+4)
      0005F5 D0 05            [24] 1530 	pop	(0+5)
      0005F7 D0 06            [24] 1531 	pop	(0+6)
      0005F9 D0 07            [24] 1532 	pop	(0+7)
      0005FB D0 83            [24] 1533 	pop	dph
      0005FD D0 82            [24] 1534 	pop	dpl
      0005FF D0 F0            [24] 1535 	pop	b
      000601 D0 E0            [24] 1536 	pop	acc
      000603 D0 21            [24] 1537 	pop	bits
      000605 32               [24] 1538 	reti
                                   1539 ;------------------------------------------------------------
                                   1540 ;Allocation info for local variables in function 'enter'
                                   1541 ;------------------------------------------------------------
                                   1542 ;	main.c:281: void enter()
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function enter
                                   1545 ;	-----------------------------------------
      000606                       1546 _enter:
                                   1547 ;	main.c:283: while(1)
      000606                       1548 00107$:
                                   1549 ;	main.c:285: if(SW == 0)
      000606 20 CC FD         [24] 1550 	jb	_P5_4,00107$
                                   1551 ;	main.c:287: while(SW == 0);
      000609                       1552 00101$:
      000609 30 CC FD         [24] 1553 	jnb	_P5_4,00101$
                                   1554 ;	main.c:288: break;
                                   1555 ;	main.c:291: }
      00060C 22               [24] 1556 	ret
                                   1557 ;------------------------------------------------------------
                                   1558 ;Allocation info for local variables in function 'clear'
                                   1559 ;------------------------------------------------------------
                                   1560 ;	main.c:293: void clear()
                                   1561 ;	-----------------------------------------
                                   1562 ;	 function clear
                                   1563 ;	-----------------------------------------
      00060D                       1564 _clear:
                                   1565 ;	main.c:295: com(0x01);
      00060D 75 82 01         [24] 1566 	mov	dpl,#0x01
                                   1567 ;	main.c:296: }
      000610 02 01 72         [24] 1568 	ljmp	_com
                                   1569 ;------------------------------------------------------------
                                   1570 ;Allocation info for local variables in function 'add'
                                   1571 ;------------------------------------------------------------
                                   1572 ;	main.c:298: void add()
                                   1573 ;	-----------------------------------------
                                   1574 ;	 function add
                                   1575 ;	-----------------------------------------
      000613                       1576 _add:
                                   1577 ;	main.c:300: while(numA + numB > 100)
      000613                       1578 00101$:
      000613 AE 25            [24] 1579 	mov	r6,_numA
      000615 7F 00            [12] 1580 	mov	r7,#0x00
      000617 AC 26            [24] 1581 	mov	r4,_numB
      000619 7D 00            [12] 1582 	mov	r5,#0x00
      00061B EC               [12] 1583 	mov	a,r4
      00061C 2E               [12] 1584 	add	a,r6
      00061D FE               [12] 1585 	mov	r6,a
      00061E ED               [12] 1586 	mov	a,r5
      00061F 3F               [12] 1587 	addc	a,r7
      000620 FF               [12] 1588 	mov	r7,a
      000621 C3               [12] 1589 	clr	c
      000622 74 64            [12] 1590 	mov	a,#0x64
      000624 9E               [12] 1591 	subb	a,r6
      000625 74 80            [12] 1592 	mov	a,#(0x00 ^ 0x80)
      000627 8F F0            [24] 1593 	mov	b,r7
      000629 63 F0 80         [24] 1594 	xrl	b,#0x80
      00062C 95 F0            [12] 1595 	subb	a,b
      00062E 50 24            [24] 1596 	jnc	00103$
                                   1597 ;	main.c:302: numA = rand()%100;
      000630 12 0B B3         [24] 1598 	lcall	_rand
      000633 75 0C 64         [24] 1599 	mov	__modsint_PARM_2,#0x64
      000636 75 0D 00         [24] 1600 	mov	(__modsint_PARM_2 + 1),#0x00
      000639 12 0C C5         [24] 1601 	lcall	__modsint
      00063C AE 82            [24] 1602 	mov	r6,dpl
      00063E 8E 25            [24] 1603 	mov	_numA,r6
                                   1604 ;	main.c:303: numB = rand()%100;
      000640 12 0B B3         [24] 1605 	lcall	_rand
      000643 75 0C 64         [24] 1606 	mov	__modsint_PARM_2,#0x64
      000646 75 0D 00         [24] 1607 	mov	(__modsint_PARM_2 + 1),#0x00
      000649 12 0C C5         [24] 1608 	lcall	__modsint
      00064C AE 82            [24] 1609 	mov	r6,dpl
      00064E AF 83            [24] 1610 	mov	r7,dph
      000650 8E 26            [24] 1611 	mov	_numB,r6
      000652 80 BF            [24] 1612 	sjmp	00101$
      000654                       1613 00103$:
                                   1614 ;	main.c:305: writeQues(doneNum+1, numA, numB,'+');
      000654 E5 2D            [12] 1615 	mov	a,_doneNum
      000656 04               [12] 1616 	inc	a
      000657 F5 82            [12] 1617 	mov	dpl,a
      000659 85 25 54         [24] 1618 	mov	_writeQues_PARM_2,_numA
      00065C 85 26 55         [24] 1619 	mov	_writeQues_PARM_3,_numB
      00065F 75 56 2B         [24] 1620 	mov	_writeQues_PARM_4,#0x2b
      000662 12 02 F3         [24] 1621 	lcall	_writeQues
                                   1622 ;	main.c:306: writeAnswer();
      000665 12 03 C3         [24] 1623 	lcall	_writeAnswer
                                   1624 ;	main.c:307: if(answer == 1)
      000668 74 01            [12] 1625 	mov	a,#0x01
      00066A B5 27 34         [24] 1626 	cjne	a,_answer,00109$
                                   1627 ;	main.c:309: if(turn == numA + numB)
      00066D AE 25            [24] 1628 	mov	r6,_numA
      00066F 7F 00            [12] 1629 	mov	r7,#0x00
      000671 AC 26            [24] 1630 	mov	r4,_numB
      000673 7D 00            [12] 1631 	mov	r5,#0x00
      000675 EC               [12] 1632 	mov	a,r4
      000676 2E               [12] 1633 	add	a,r6
      000677 FE               [12] 1634 	mov	r6,a
      000678 ED               [12] 1635 	mov	a,r5
      000679 3F               [12] 1636 	addc	a,r7
      00067A FF               [12] 1637 	mov	r7,a
      00067B AC 22            [24] 1638 	mov	r4,_turn
      00067D 7D 00            [12] 1639 	mov	r5,#0x00
      00067F EC               [12] 1640 	mov	a,r4
      000680 B5 06 11         [24] 1641 	cjne	a,ar6,00105$
      000683 ED               [12] 1642 	mov	a,r5
      000684 B5 07 0D         [24] 1643 	cjne	a,ar7,00105$
                                   1644 ;	main.c:311: writeYesOrNo('yes');
      000687 75 82 79         [24] 1645 	mov	dpl,#0x79
      00068A 12 05 31         [24] 1646 	lcall	_writeYesOrNo
                                   1647 ;	main.c:312: correctNum++;
      00068D 05 24            [12] 1648 	inc	_correctNum
                                   1649 ;	main.c:313: clear();
      00068F 12 06 0D         [24] 1650 	lcall	_clear
      000692 80 09            [24] 1651 	sjmp	00106$
      000694                       1652 00105$:
                                   1653 ;	main.c:317: writeYesOrNo('no');
      000694 75 82 6E         [24] 1654 	mov	dpl,#0x6e
      000697 12 05 31         [24] 1655 	lcall	_writeYesOrNo
                                   1656 ;	main.c:318: clear();
      00069A 12 06 0D         [24] 1657 	lcall	_clear
      00069D                       1658 00106$:
                                   1659 ;	main.c:320: doneNum++;
      00069D 05 2D            [12] 1660 	inc	_doneNum
                                   1661 ;	main.c:321: next = 1;
                                   1662 ;	assignBit
      00069F D2 01            [12] 1663 	setb	_next
      0006A1                       1664 00109$:
                                   1665 ;	main.c:323: }
      0006A1 22               [24] 1666 	ret
                                   1667 ;------------------------------------------------------------
                                   1668 ;Allocation info for local variables in function 'sub'
                                   1669 ;------------------------------------------------------------
                                   1670 ;	main.c:325: void sub()
                                   1671 ;	-----------------------------------------
                                   1672 ;	 function sub
                                   1673 ;	-----------------------------------------
      0006A2                       1674 _sub:
                                   1675 ;	main.c:327: while(numA - numB < 0)
      0006A2                       1676 00101$:
      0006A2 AE 25            [24] 1677 	mov	r6,_numA
      0006A4 7F 00            [12] 1678 	mov	r7,#0x00
      0006A6 AC 26            [24] 1679 	mov	r4,_numB
      0006A8 7D 00            [12] 1680 	mov	r5,#0x00
      0006AA EE               [12] 1681 	mov	a,r6
      0006AB C3               [12] 1682 	clr	c
      0006AC 9C               [12] 1683 	subb	a,r4
      0006AD EF               [12] 1684 	mov	a,r7
      0006AE 9D               [12] 1685 	subb	a,r5
      0006AF 30 E7 24         [24] 1686 	jnb	acc.7,00103$
                                   1687 ;	main.c:329: numA = rand()%100;
      0006B2 12 0B B3         [24] 1688 	lcall	_rand
      0006B5 75 0C 64         [24] 1689 	mov	__modsint_PARM_2,#0x64
      0006B8 75 0D 00         [24] 1690 	mov	(__modsint_PARM_2 + 1),#0x00
      0006BB 12 0C C5         [24] 1691 	lcall	__modsint
      0006BE AE 82            [24] 1692 	mov	r6,dpl
      0006C0 8E 25            [24] 1693 	mov	_numA,r6
                                   1694 ;	main.c:330: numB = rand()%100;
      0006C2 12 0B B3         [24] 1695 	lcall	_rand
      0006C5 75 0C 64         [24] 1696 	mov	__modsint_PARM_2,#0x64
      0006C8 75 0D 00         [24] 1697 	mov	(__modsint_PARM_2 + 1),#0x00
      0006CB 12 0C C5         [24] 1698 	lcall	__modsint
      0006CE AE 82            [24] 1699 	mov	r6,dpl
      0006D0 AF 83            [24] 1700 	mov	r7,dph
      0006D2 8E 26            [24] 1701 	mov	_numB,r6
      0006D4 80 CC            [24] 1702 	sjmp	00101$
      0006D6                       1703 00103$:
                                   1704 ;	main.c:332: writeQues(doneNum+1, numA, numB,'-');
      0006D6 E5 2D            [12] 1705 	mov	a,_doneNum
      0006D8 04               [12] 1706 	inc	a
      0006D9 F5 82            [12] 1707 	mov	dpl,a
      0006DB 85 25 54         [24] 1708 	mov	_writeQues_PARM_2,_numA
      0006DE 85 26 55         [24] 1709 	mov	_writeQues_PARM_3,_numB
      0006E1 75 56 2D         [24] 1710 	mov	_writeQues_PARM_4,#0x2d
      0006E4 12 02 F3         [24] 1711 	lcall	_writeQues
                                   1712 ;	main.c:333: writeAnswer();
      0006E7 12 03 C3         [24] 1713 	lcall	_writeAnswer
                                   1714 ;	main.c:334: if(answer == 1)
      0006EA 74 01            [12] 1715 	mov	a,#0x01
      0006EC B5 27 35         [24] 1716 	cjne	a,_answer,00109$
                                   1717 ;	main.c:336: if(turn == numA - numB)
      0006EF AE 25            [24] 1718 	mov	r6,_numA
      0006F1 7F 00            [12] 1719 	mov	r7,#0x00
      0006F3 AC 26            [24] 1720 	mov	r4,_numB
      0006F5 7D 00            [12] 1721 	mov	r5,#0x00
      0006F7 EE               [12] 1722 	mov	a,r6
      0006F8 C3               [12] 1723 	clr	c
      0006F9 9C               [12] 1724 	subb	a,r4
      0006FA FE               [12] 1725 	mov	r6,a
      0006FB EF               [12] 1726 	mov	a,r7
      0006FC 9D               [12] 1727 	subb	a,r5
      0006FD FF               [12] 1728 	mov	r7,a
      0006FE AC 22            [24] 1729 	mov	r4,_turn
      000700 7D 00            [12] 1730 	mov	r5,#0x00
      000702 EC               [12] 1731 	mov	a,r4
      000703 B5 06 11         [24] 1732 	cjne	a,ar6,00105$
      000706 ED               [12] 1733 	mov	a,r5
      000707 B5 07 0D         [24] 1734 	cjne	a,ar7,00105$
                                   1735 ;	main.c:338: writeYesOrNo('yes');
      00070A 75 82 79         [24] 1736 	mov	dpl,#0x79
      00070D 12 05 31         [24] 1737 	lcall	_writeYesOrNo
                                   1738 ;	main.c:339: correctNum++;
      000710 05 24            [12] 1739 	inc	_correctNum
                                   1740 ;	main.c:340: clear();
      000712 12 06 0D         [24] 1741 	lcall	_clear
      000715 80 09            [24] 1742 	sjmp	00106$
      000717                       1743 00105$:
                                   1744 ;	main.c:344: writeYesOrNo('no');
      000717 75 82 6E         [24] 1745 	mov	dpl,#0x6e
      00071A 12 05 31         [24] 1746 	lcall	_writeYesOrNo
                                   1747 ;	main.c:345: clear();
      00071D 12 06 0D         [24] 1748 	lcall	_clear
      000720                       1749 00106$:
                                   1750 ;	main.c:347: doneNum++;
      000720 05 2D            [12] 1751 	inc	_doneNum
                                   1752 ;	main.c:348: next = 1;
                                   1753 ;	assignBit
      000722 D2 01            [12] 1754 	setb	_next
      000724                       1755 00109$:
                                   1756 ;	main.c:350: }
      000724 22               [24] 1757 	ret
                                   1758 ;------------------------------------------------------------
                                   1759 ;Allocation info for local variables in function 'mult'
                                   1760 ;------------------------------------------------------------
                                   1761 ;	main.c:352: void mult()
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function mult
                                   1764 ;	-----------------------------------------
      000725                       1765 _mult:
                                   1766 ;	main.c:354: while(numA * numB > 144)
      000725                       1767 00101$:
      000725 85 25 F0         [24] 1768 	mov	b,_numA
      000728 E5 26            [12] 1769 	mov	a,_numB
      00072A A4               [48] 1770 	mul	ab
      00072B FE               [12] 1771 	mov	r6,a
      00072C AF F0            [24] 1772 	mov	r7,b
      00072E C3               [12] 1773 	clr	c
      00072F 74 90            [12] 1774 	mov	a,#0x90
      000731 9E               [12] 1775 	subb	a,r6
      000732 74 80            [12] 1776 	mov	a,#(0x00 ^ 0x80)
      000734 8F F0            [24] 1777 	mov	b,r7
      000736 63 F0 80         [24] 1778 	xrl	b,#0x80
      000739 95 F0            [12] 1779 	subb	a,b
      00073B 50 24            [24] 1780 	jnc	00103$
                                   1781 ;	main.c:356: numA = rand()%100;
      00073D 12 0B B3         [24] 1782 	lcall	_rand
      000740 75 0C 64         [24] 1783 	mov	__modsint_PARM_2,#0x64
      000743 75 0D 00         [24] 1784 	mov	(__modsint_PARM_2 + 1),#0x00
      000746 12 0C C5         [24] 1785 	lcall	__modsint
      000749 AE 82            [24] 1786 	mov	r6,dpl
      00074B 8E 25            [24] 1787 	mov	_numA,r6
                                   1788 ;	main.c:357: numB = rand()%100;
      00074D 12 0B B3         [24] 1789 	lcall	_rand
      000750 75 0C 64         [24] 1790 	mov	__modsint_PARM_2,#0x64
      000753 75 0D 00         [24] 1791 	mov	(__modsint_PARM_2 + 1),#0x00
      000756 12 0C C5         [24] 1792 	lcall	__modsint
      000759 AE 82            [24] 1793 	mov	r6,dpl
      00075B AF 83            [24] 1794 	mov	r7,dph
      00075D 8E 26            [24] 1795 	mov	_numB,r6
      00075F 80 C4            [24] 1796 	sjmp	00101$
      000761                       1797 00103$:
                                   1798 ;	main.c:359: writeQues(doneNum+1, numA, numB,'*');
      000761 E5 2D            [12] 1799 	mov	a,_doneNum
      000763 04               [12] 1800 	inc	a
      000764 F5 82            [12] 1801 	mov	dpl,a
      000766 85 25 54         [24] 1802 	mov	_writeQues_PARM_2,_numA
      000769 85 26 55         [24] 1803 	mov	_writeQues_PARM_3,_numB
      00076C 75 56 2A         [24] 1804 	mov	_writeQues_PARM_4,#0x2a
      00076F 12 02 F3         [24] 1805 	lcall	_writeQues
                                   1806 ;	main.c:360: writeAnswer();
      000772 12 03 C3         [24] 1807 	lcall	_writeAnswer
                                   1808 ;	main.c:361: if(answer == 1)
      000775 74 01            [12] 1809 	mov	a,#0x01
      000777 B5 27 2F         [24] 1810 	cjne	a,_answer,00109$
                                   1811 ;	main.c:363: if(turn == numA * numB)
      00077A 85 25 F0         [24] 1812 	mov	b,_numA
      00077D E5 26            [12] 1813 	mov	a,_numB
      00077F A4               [48] 1814 	mul	ab
      000780 FE               [12] 1815 	mov	r6,a
      000781 AF F0            [24] 1816 	mov	r7,b
      000783 AC 22            [24] 1817 	mov	r4,_turn
      000785 7D 00            [12] 1818 	mov	r5,#0x00
      000787 EC               [12] 1819 	mov	a,r4
      000788 B5 06 11         [24] 1820 	cjne	a,ar6,00105$
      00078B ED               [12] 1821 	mov	a,r5
      00078C B5 07 0D         [24] 1822 	cjne	a,ar7,00105$
                                   1823 ;	main.c:365: writeYesOrNo('yes');
      00078F 75 82 79         [24] 1824 	mov	dpl,#0x79
      000792 12 05 31         [24] 1825 	lcall	_writeYesOrNo
                                   1826 ;	main.c:366: correctNum++;
      000795 05 24            [12] 1827 	inc	_correctNum
                                   1828 ;	main.c:367: clear();
      000797 12 06 0D         [24] 1829 	lcall	_clear
      00079A 80 09            [24] 1830 	sjmp	00106$
      00079C                       1831 00105$:
                                   1832 ;	main.c:371: writeYesOrNo('no');
      00079C 75 82 6E         [24] 1833 	mov	dpl,#0x6e
      00079F 12 05 31         [24] 1834 	lcall	_writeYesOrNo
                                   1835 ;	main.c:372: clear();
      0007A2 12 06 0D         [24] 1836 	lcall	_clear
      0007A5                       1837 00106$:
                                   1838 ;	main.c:374: doneNum++;
      0007A5 05 2D            [12] 1839 	inc	_doneNum
                                   1840 ;	main.c:375: next = 1;
                                   1841 ;	assignBit
      0007A7 D2 01            [12] 1842 	setb	_next
      0007A9                       1843 00109$:
                                   1844 ;	main.c:377: }
      0007A9 22               [24] 1845 	ret
                                   1846 ;------------------------------------------------------------
                                   1847 ;Allocation info for local variables in function 'div'
                                   1848 ;------------------------------------------------------------
                                   1849 ;	main.c:379: void div()
                                   1850 ;	-----------------------------------------
                                   1851 ;	 function div
                                   1852 ;	-----------------------------------------
      0007AA                       1853 _div:
                                   1854 ;	main.c:381: while(numA%numB != 0)
      0007AA                       1855 00101$:
      0007AA 85 26 F0         [24] 1856 	mov	b,_numB
      0007AD E5 25            [12] 1857 	mov	a,_numA
      0007AF 84               [48] 1858 	div	ab
      0007B0 E5 F0            [12] 1859 	mov	a,b
      0007B2 60 24            [24] 1860 	jz	00103$
                                   1861 ;	main.c:383: numA = rand()%100;
      0007B4 12 0B B3         [24] 1862 	lcall	_rand
      0007B7 75 0C 64         [24] 1863 	mov	__modsint_PARM_2,#0x64
      0007BA 75 0D 00         [24] 1864 	mov	(__modsint_PARM_2 + 1),#0x00
      0007BD 12 0C C5         [24] 1865 	lcall	__modsint
      0007C0 AE 82            [24] 1866 	mov	r6,dpl
      0007C2 8E 25            [24] 1867 	mov	_numA,r6
                                   1868 ;	main.c:384: numB = rand()%100;
      0007C4 12 0B B3         [24] 1869 	lcall	_rand
      0007C7 75 0C 64         [24] 1870 	mov	__modsint_PARM_2,#0x64
      0007CA 75 0D 00         [24] 1871 	mov	(__modsint_PARM_2 + 1),#0x00
      0007CD 12 0C C5         [24] 1872 	lcall	__modsint
      0007D0 AE 82            [24] 1873 	mov	r6,dpl
      0007D2 AF 83            [24] 1874 	mov	r7,dph
      0007D4 8E 26            [24] 1875 	mov	_numB,r6
      0007D6 80 D2            [24] 1876 	sjmp	00101$
      0007D8                       1877 00103$:
                                   1878 ;	main.c:386: writeQues(doneNum+1, numA, numB,'/');
      0007D8 E5 2D            [12] 1879 	mov	a,_doneNum
      0007DA 04               [12] 1880 	inc	a
      0007DB F5 82            [12] 1881 	mov	dpl,a
      0007DD 85 25 54         [24] 1882 	mov	_writeQues_PARM_2,_numA
      0007E0 85 26 55         [24] 1883 	mov	_writeQues_PARM_3,_numB
      0007E3 75 56 2F         [24] 1884 	mov	_writeQues_PARM_4,#0x2f
      0007E6 12 02 F3         [24] 1885 	lcall	_writeQues
                                   1886 ;	main.c:387: writeAnswer();
      0007E9 12 03 C3         [24] 1887 	lcall	_writeAnswer
                                   1888 ;	main.c:388: if(answer == 1)
      0007EC 74 01            [12] 1889 	mov	a,#0x01
      0007EE B5 27 23         [24] 1890 	cjne	a,_answer,00109$
                                   1891 ;	main.c:390: if(turn == numA / numB)
      0007F1 85 26 F0         [24] 1892 	mov	b,_numB
      0007F4 E5 25            [12] 1893 	mov	a,_numA
      0007F6 84               [48] 1894 	div	ab
      0007F7 B5 22 0D         [24] 1895 	cjne	a,_turn,00105$
                                   1896 ;	main.c:392: writeYesOrNo('yes');
      0007FA 75 82 79         [24] 1897 	mov	dpl,#0x79
      0007FD 12 05 31         [24] 1898 	lcall	_writeYesOrNo
                                   1899 ;	main.c:393: correctNum++;
      000800 05 24            [12] 1900 	inc	_correctNum
                                   1901 ;	main.c:394: clear();
      000802 12 06 0D         [24] 1902 	lcall	_clear
      000805 80 09            [24] 1903 	sjmp	00106$
      000807                       1904 00105$:
                                   1905 ;	main.c:398: writeYesOrNo('no');
      000807 75 82 6E         [24] 1906 	mov	dpl,#0x6e
      00080A 12 05 31         [24] 1907 	lcall	_writeYesOrNo
                                   1908 ;	main.c:399: clear();
      00080D 12 06 0D         [24] 1909 	lcall	_clear
      000810                       1910 00106$:
                                   1911 ;	main.c:401: doneNum++;
      000810 05 2D            [12] 1912 	inc	_doneNum
                                   1913 ;	main.c:402: next = 1;
                                   1914 ;	assignBit
      000812 D2 01            [12] 1915 	setb	_next
      000814                       1916 00109$:
                                   1917 ;	main.c:404: }
      000814 22               [24] 1918 	ret
                                   1919 ;------------------------------------------------------------
                                   1920 ;Allocation info for local variables in function 'end'
                                   1921 ;------------------------------------------------------------
                                   1922 ;percent                   Allocated to registers r7 
                                   1923 ;------------------------------------------------------------
                                   1924 ;	main.c:406: void end(/*unchar f*/)
                                   1925 ;	-----------------------------------------
                                   1926 ;	 function end
                                   1927 ;	-----------------------------------------
      000815                       1928 _end:
                                   1929 ;	main.c:408: unchar percent = (correctNum)*10;
      000815 E5 24            [12] 1930 	mov	a,_correctNum
      000817 75 F0 0A         [24] 1931 	mov	b,#0x0a
      00081A A4               [48] 1932 	mul	ab
      00081B FF               [12] 1933 	mov	r7,a
                                   1934 ;	main.c:409: clear();
      00081C C0 07            [24] 1935 	push	ar7
      00081E 12 06 0D         [24] 1936 	lcall	_clear
                                   1937 ;	main.c:410: writeArray("YOU GOT      AND", 0);
      000821 75 0C 00         [24] 1938 	mov	_writeArray_PARM_2,#0x00
      000824 90 0D 8C         [24] 1939 	mov	dptr,#___str_5
      000827 75 F0 80         [24] 1940 	mov	b,#0x80
      00082A 12 02 C2         [24] 1941 	lcall	_writeArray
                                   1942 ;	main.c:411: writeArray("YOUR TIME   :   ", 1);
      00082D 75 0C 01         [24] 1943 	mov	_writeArray_PARM_2,#0x01
      000830 90 0D 9D         [24] 1944 	mov	dptr,#___str_6
      000833 75 F0 80         [24] 1945 	mov	b,#0x80
      000836 12 02 C2         [24] 1946 	lcall	_writeArray
      000839 D0 07            [24] 1947 	pop	ar7
                                   1948 ;	main.c:412: display[0][8] = (percent/100)+0x30;
      00083B 7E 00            [12] 1949 	mov	r6,#0x00
      00083D 75 0C 64         [24] 1950 	mov	__divsint_PARM_2,#0x64
                                   1951 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000840 8E 0D            [24] 1952 	mov	(__divsint_PARM_2 + 1),r6
      000842 8F 82            [24] 1953 	mov	dpl,r7
      000844 8E 83            [24] 1954 	mov	dph,r6
      000846 C0 07            [24] 1955 	push	ar7
      000848 C0 06            [24] 1956 	push	ar6
      00084A 12 0C FB         [24] 1957 	lcall	__divsint
      00084D AC 82            [24] 1958 	mov	r4,dpl
      00084F D0 06            [24] 1959 	pop	ar6
      000851 D0 07            [24] 1960 	pop	ar7
      000853 74 30            [12] 1961 	mov	a,#0x30
      000855 2C               [12] 1962 	add	a,r4
      000856 F5 36            [12] 1963 	mov	(_display + 0x0008),a
                                   1964 ;	main.c:413: display[0][9] = ((percent/10)%10)+0x30;
      000858 75 0C 0A         [24] 1965 	mov	__divsint_PARM_2,#0x0a
      00085B 75 0D 00         [24] 1966 	mov	(__divsint_PARM_2 + 1),#0x00
      00085E 8F 82            [24] 1967 	mov	dpl,r7
      000860 8E 83            [24] 1968 	mov	dph,r6
      000862 C0 07            [24] 1969 	push	ar7
      000864 C0 06            [24] 1970 	push	ar6
      000866 12 0C FB         [24] 1971 	lcall	__divsint
      000869 75 0C 0A         [24] 1972 	mov	__modsint_PARM_2,#0x0a
      00086C 75 0D 00         [24] 1973 	mov	(__modsint_PARM_2 + 1),#0x00
      00086F 12 0C C5         [24] 1974 	lcall	__modsint
      000872 AC 82            [24] 1975 	mov	r4,dpl
      000874 D0 06            [24] 1976 	pop	ar6
      000876 D0 07            [24] 1977 	pop	ar7
      000878 74 30            [12] 1978 	mov	a,#0x30
      00087A 2C               [12] 1979 	add	a,r4
      00087B F5 37            [12] 1980 	mov	(_display + 0x0009),a
                                   1981 ;	main.c:415: display[0][10] = ((percent)%10)+0x30;
      00087D 75 0C 0A         [24] 1982 	mov	__modsint_PARM_2,#0x0a
      000880 75 0D 00         [24] 1983 	mov	(__modsint_PARM_2 + 1),#0x00
      000883 8F 82            [24] 1984 	mov	dpl,r7
      000885 8E 83            [24] 1985 	mov	dph,r6
      000887 12 0C C5         [24] 1986 	lcall	__modsint
      00088A AE 82            [24] 1987 	mov	r6,dpl
      00088C 74 30            [12] 1988 	mov	a,#0x30
      00088E 2E               [12] 1989 	add	a,r6
      00088F F5 38            [12] 1990 	mov	(_display + 0x000a),a
                                   1991 ;	main.c:416: display[0][11] = '%';
      000891 75 39 25         [24] 1992 	mov	(_display + 0x000b),#0x25
                                   1993 ;	main.c:417: display[1][10] = tmin+0x30;
      000894 AF 2C            [24] 1994 	mov	r7,_tmin
      000896 74 30            [12] 1995 	mov	a,#0x30
      000898 2F               [12] 1996 	add	a,r7
      000899 F5 48            [12] 1997 	mov	(_display + 0x001a),a
                                   1998 ;	main.c:418: display[1][11] = min+0x30;
      00089B AF 2A            [24] 1999 	mov	r7,_min
      00089D 74 30            [12] 2000 	mov	a,#0x30
      00089F 2F               [12] 2001 	add	a,r7
      0008A0 F5 49            [12] 2002 	mov	(_display + 0x001b),a
                                   2003 ;	main.c:419: display[1][13] = tsec+0x30;
      0008A2 AF 29            [24] 2004 	mov	r7,_tsec
      0008A4 74 30            [12] 2005 	mov	a,#0x30
      0008A6 2F               [12] 2006 	add	a,r7
      0008A7 F5 4B            [12] 2007 	mov	(_display + 0x001d),a
                                   2008 ;	main.c:420: display[1][14] = sec+0x30;
      0008A9 AF 28            [24] 2009 	mov	r7,_sec
      0008AB 74 30            [12] 2010 	mov	a,#0x30
      0008AD 2F               [12] 2011 	add	a,r7
      0008AE F5 4C            [12] 2012 	mov	(_display + 0x001e),a
                                   2013 ;	main.c:421: displayFlip();
      0008B0 12 05 5B         [24] 2014 	lcall	_displayFlip
                                   2015 ;	main.c:422: enter();
                                   2016 ;	main.c:423: }
      0008B3 02 06 06         [24] 2017 	ljmp	_enter
                                   2018 ;------------------------------------------------------------
                                   2019 ;Allocation info for local variables in function 'loop'
                                   2020 ;------------------------------------------------------------
                                   2021 ;	main.c:427: void loop()
                                   2022 ;	-----------------------------------------
                                   2023 ;	 function loop
                                   2024 ;	-----------------------------------------
      0008B6                       2025 _loop:
                                   2026 ;	main.c:429: com(0x01);
      0008B6 75 82 01         [24] 2027 	mov	dpl,#0x01
      0008B9 12 01 72         [24] 2028 	lcall	_com
                                   2029 ;	main.c:430: displaySelect = menu;
      0008BC 75 4E 00         [24] 2030 	mov	_displaySelect,#0x00
                                   2031 ;	main.c:432: while(1)
      0008BF                       2032 00166$:
                                   2033 ;	main.c:435: speed++;
      0008BF 05 4F            [12] 2034 	inc	_speed
      0008C1 E4               [12] 2035 	clr	a
      0008C2 B5 4F 02         [24] 2036 	cjne	a,_speed,00286$
      0008C5 05 50            [12] 2037 	inc	(_speed + 1)
      0008C7                       2038 00286$:
                                   2039 ;	main.c:436: if(displaySelect == menu)
      0008C7 E5 4E            [12] 2040 	mov	a,_displaySelect
      0008C9 60 03            [24] 2041 	jz	00287$
      0008CB 02 09 7C         [24] 2042 	ljmp	00122$
      0008CE                       2043 00287$:
                                   2044 ;	main.c:438: answer = 0;
      0008CE 75 27 00         [24] 2045 	mov	_answer,#0x00
                                   2046 ;	main.c:439: quesNum = 10;
      0008D1 75 23 0A         [24] 2047 	mov	_quesNum,#0x0a
                                   2048 ;	main.c:440: correctNum = 0;
      0008D4 75 24 00         [24] 2049 	mov	_correctNum,#0x00
                                   2050 ;	main.c:441: doneNum = 0;
      0008D7 75 2D 00         [24] 2051 	mov	_doneNum,#0x00
                                   2052 ;	main.c:442: timeStuck = 0;
                                   2053 ;	assignBit
      0008DA C2 00            [12] 2054 	clr	_timeStuck
                                   2055 ;	main.c:443: next = 0;
                                   2056 ;	assignBit
      0008DC C2 01            [12] 2057 	clr	_next
                                   2058 ;	main.c:444: numA = 0;
                                   2059 ;	main.c:445: numB = 0;
                                   2060 ;	main.c:446: tsec = 0;
                                   2061 ;	main.c:447: sec = 0;
                                   2062 ;	main.c:448: min = 0;   
                                   2063 ;	main.c:449: tmin = 0;                     
                                   2064 ;	main.c:451: if(turn == 0)
      0008DE E4               [12] 2065 	clr	a
      0008DF F5 25            [12] 2066 	mov	_numA,a
      0008E1 F5 26            [12] 2067 	mov	_numB,a
      0008E3 F5 29            [12] 2068 	mov	_tsec,a
      0008E5 F5 28            [12] 2069 	mov	_sec,a
      0008E7 F5 2A            [12] 2070 	mov	_min,a
      0008E9 F5 2C            [12] 2071 	mov	_tmin,a
      0008EB E5 22            [12] 2072 	mov	a,_turn
                                   2073 ;	main.c:452: writeArray("  1. Addition   ", 0);
      0008ED 70 0B            [24] 2074 	jnz	00102$
      0008EF F5 0C            [12] 2075 	mov	_writeArray_PARM_2,a
      0008F1 90 0D AE         [24] 2076 	mov	dptr,#___str_7
      0008F4 75 F0 80         [24] 2077 	mov	b,#0x80
      0008F7 12 02 C2         [24] 2078 	lcall	_writeArray
      0008FA                       2079 00102$:
                                   2080 ;	main.c:453: if(turn == 1)
      0008FA 74 01            [12] 2081 	mov	a,#0x01
      0008FC B5 22 0C         [24] 2082 	cjne	a,_turn,00104$
                                   2083 ;	main.c:454: writeArray(" 2. Subtraction ", 0);
      0008FF 75 0C 00         [24] 2084 	mov	_writeArray_PARM_2,#0x00
      000902 90 0D BF         [24] 2085 	mov	dptr,#___str_8
      000905 75 F0 80         [24] 2086 	mov	b,#0x80
      000908 12 02 C2         [24] 2087 	lcall	_writeArray
      00090B                       2088 00104$:
                                   2089 ;	main.c:455: if(turn == 2)
      00090B 74 02            [12] 2090 	mov	a,#0x02
      00090D B5 22 0C         [24] 2091 	cjne	a,_turn,00106$
                                   2092 ;	main.c:456: writeArray("   3. Division  ", 0);
      000910 75 0C 00         [24] 2093 	mov	_writeArray_PARM_2,#0x00
      000913 90 0D D0         [24] 2094 	mov	dptr,#___str_9
      000916 75 F0 80         [24] 2095 	mov	b,#0x80
      000919 12 02 C2         [24] 2096 	lcall	_writeArray
      00091C                       2097 00106$:
                                   2098 ;	main.c:457: if(turn == 3)
      00091C 74 03            [12] 2099 	mov	a,#0x03
      00091E B5 22 0C         [24] 2100 	cjne	a,_turn,00108$
                                   2101 ;	main.c:458: writeArray("4.Multiplication", 0);
      000921 75 0C 00         [24] 2102 	mov	_writeArray_PARM_2,#0x00
      000924 90 0D E1         [24] 2103 	mov	dptr,#___str_10
      000927 75 F0 80         [24] 2104 	mov	b,#0x80
      00092A 12 02 C2         [24] 2105 	lcall	_writeArray
      00092D                       2106 00108$:
                                   2107 ;	main.c:459: if(turn > 3)
      00092D E5 22            [12] 2108 	mov	a,_turn
      00092F 24 FC            [12] 2109 	add	a,#0xff - 0x03
      000931 50 03            [24] 2110 	jnc	00110$
                                   2111 ;	main.c:460: turn = 0;
      000933 75 22 00         [24] 2112 	mov	_turn,#0x00
      000936                       2113 00110$:
                                   2114 ;	main.c:461: writeArray("                ", 1);
      000936 75 0C 01         [24] 2115 	mov	_writeArray_PARM_2,#0x01
      000939 90 0D 48         [24] 2116 	mov	dptr,#___str_1
      00093C 75 F0 80         [24] 2117 	mov	b,#0x80
      00093F 12 02 C2         [24] 2118 	lcall	_writeArray
                                   2119 ;	main.c:462: if(SW == 0)
      000942 20 CC 40         [24] 2120 	jb	_P5_4,00123$
                                   2121 ;	main.c:464: while(SW == 0)
      000945                       2122 00111$:
      000945 20 CC 24         [24] 2123 	jb	_P5_4,00113$
                                   2124 ;	main.c:466: numA = rand()%100;
      000948 12 0B B3         [24] 2125 	lcall	_rand
      00094B 75 0C 64         [24] 2126 	mov	__modsint_PARM_2,#0x64
      00094E 75 0D 00         [24] 2127 	mov	(__modsint_PARM_2 + 1),#0x00
      000951 12 0C C5         [24] 2128 	lcall	__modsint
      000954 AE 82            [24] 2129 	mov	r6,dpl
      000956 8E 25            [24] 2130 	mov	_numA,r6
                                   2131 ;	main.c:467: numB = rand()%100;
      000958 12 0B B3         [24] 2132 	lcall	_rand
      00095B 75 0C 64         [24] 2133 	mov	__modsint_PARM_2,#0x64
      00095E 75 0D 00         [24] 2134 	mov	(__modsint_PARM_2 + 1),#0x00
      000961 12 0C C5         [24] 2135 	lcall	__modsint
      000964 AE 82            [24] 2136 	mov	r6,dpl
      000966 AF 83            [24] 2137 	mov	r7,dph
      000968 8E 26            [24] 2138 	mov	_numB,r6
      00096A 80 D9            [24] 2139 	sjmp	00111$
      00096C                       2140 00113$:
                                   2141 ;	main.c:469: displaySelect = turn + 1;
      00096C E5 22            [12] 2142 	mov	a,_turn
      00096E 04               [12] 2143 	inc	a
      00096F F5 4E            [12] 2144 	mov	_displaySelect,a
                                   2145 ;	main.c:470: setupInt();
      000971 12 01 3D         [24] 2146 	lcall	_setupInt
                                   2147 ;	main.c:471: com(0x01);
      000974 75 82 01         [24] 2148 	mov	dpl,#0x01
      000977 12 01 72         [24] 2149 	lcall	_com
      00097A 80 09            [24] 2150 	sjmp	00123$
      00097C                       2151 00122$:
                                   2152 ;	main.c:476: if(SW == 0)
      00097C 20 CC 06         [24] 2153 	jb	_P5_4,00123$
                                   2154 ;	main.c:478: while(SW == 0);
      00097F                       2155 00116$:
      00097F 30 CC FD         [24] 2156 	jnb	_P5_4,00116$
                                   2157 ;	main.c:479: answer = 1;
      000982 75 27 01         [24] 2158 	mov	_answer,#0x01
      000985                       2159 00123$:
                                   2160 ;	main.c:482: if(displaySelect == adds)
      000985 74 01            [12] 2161 	mov	a,#0x01
      000987 B5 4E 62         [24] 2162 	cjne	a,_displaySelect,00132$
                                   2163 ;	main.c:484: add();
      00098A 12 06 13         [24] 2164 	lcall	_add
                                   2165 ;	main.c:485: displaySelect = adds;
      00098D 75 4E 01         [24] 2166 	mov	_displaySelect,#0x01
                                   2167 ;	main.c:486: if(doneNum == quesNum)
      000990 E5 23            [12] 2168 	mov	a,_quesNum
      000992 B5 2D 0F         [24] 2169 	cjne	a,_doneNum,00125$
                                   2170 ;	main.c:488: TMOD = 0x00;
      000995 75 89 00         [24] 2171 	mov	_TMOD,#0x00
                                   2172 ;	main.c:489: end();
      000998 12 08 15         [24] 2173 	lcall	_end
                                   2174 ;	main.c:490: com(0x01);
      00099B 75 82 01         [24] 2175 	mov	dpl,#0x01
      00099E 12 01 72         [24] 2176 	lcall	_com
                                   2177 ;	main.c:491: displaySelect = menu;
      0009A1 75 4E 00         [24] 2178 	mov	_displaySelect,#0x00
      0009A4                       2179 00125$:
                                   2180 ;	main.c:493: if(next == 1)
      0009A4 30 01 45         [24] 2181 	jnb	_next,00132$
                                   2182 ;	main.c:495: do
      0009A7                       2183 00126$:
                                   2184 ;	main.c:497: numA = rand()%100;
      0009A7 12 0B B3         [24] 2185 	lcall	_rand
      0009AA 75 0C 64         [24] 2186 	mov	__modsint_PARM_2,#0x64
      0009AD 75 0D 00         [24] 2187 	mov	(__modsint_PARM_2 + 1),#0x00
      0009B0 12 0C C5         [24] 2188 	lcall	__modsint
      0009B3 AE 82            [24] 2189 	mov	r6,dpl
      0009B5 8E 25            [24] 2190 	mov	_numA,r6
                                   2191 ;	main.c:498: numB = rand()%100;
      0009B7 12 0B B3         [24] 2192 	lcall	_rand
      0009BA 75 0C 64         [24] 2193 	mov	__modsint_PARM_2,#0x64
      0009BD 75 0D 00         [24] 2194 	mov	(__modsint_PARM_2 + 1),#0x00
      0009C0 12 0C C5         [24] 2195 	lcall	__modsint
      0009C3 AE 82            [24] 2196 	mov	r6,dpl
      0009C5 8E 26            [24] 2197 	mov	_numB,r6
                                   2198 ;	main.c:499: }while(numA+numB > 254);
      0009C7 AE 25            [24] 2199 	mov	r6,_numA
      0009C9 7F 00            [12] 2200 	mov	r7,#0x00
      0009CB AC 26            [24] 2201 	mov	r4,_numB
      0009CD 7D 00            [12] 2202 	mov	r5,#0x00
      0009CF EC               [12] 2203 	mov	a,r4
      0009D0 2E               [12] 2204 	add	a,r6
      0009D1 FE               [12] 2205 	mov	r6,a
      0009D2 ED               [12] 2206 	mov	a,r5
      0009D3 3F               [12] 2207 	addc	a,r7
      0009D4 FF               [12] 2208 	mov	r7,a
      0009D5 C3               [12] 2209 	clr	c
      0009D6 74 FE            [12] 2210 	mov	a,#0xfe
      0009D8 9E               [12] 2211 	subb	a,r6
      0009D9 74 80            [12] 2212 	mov	a,#(0x00 ^ 0x80)
      0009DB 8F F0            [24] 2213 	mov	b,r7
      0009DD 63 F0 80         [24] 2214 	xrl	b,#0x80
      0009E0 95 F0            [12] 2215 	subb	a,b
      0009E2 40 C3            [24] 2216 	jc	00126$
                                   2217 ;	main.c:500: next = 0;
                                   2218 ;	assignBit
      0009E4 C2 01            [12] 2219 	clr	_next
                                   2220 ;	main.c:501: answer = 0;
      0009E6 75 27 00         [24] 2221 	mov	_answer,#0x00
                                   2222 ;	main.c:502: turn = 0;
      0009E9 75 22 00         [24] 2223 	mov	_turn,#0x00
      0009EC                       2224 00132$:
                                   2225 ;	main.c:505: if(displaySelect == divs)
      0009EC 74 03            [12] 2226 	mov	a,#0x03
      0009EE B5 4E 51         [24] 2227 	cjne	a,_displaySelect,00141$
                                   2228 ;	main.c:507: div();
      0009F1 12 07 AA         [24] 2229 	lcall	_div
                                   2230 ;	main.c:508: displaySelect = divs;
      0009F4 75 4E 03         [24] 2231 	mov	_displaySelect,#0x03
                                   2232 ;	main.c:509: if(doneNum == quesNum)
      0009F7 E5 23            [12] 2233 	mov	a,_quesNum
      0009F9 B5 2D 0F         [24] 2234 	cjne	a,_doneNum,00134$
                                   2235 ;	main.c:511: TMOD = 0x00;
      0009FC 75 89 00         [24] 2236 	mov	_TMOD,#0x00
                                   2237 ;	main.c:512: end();
      0009FF 12 08 15         [24] 2238 	lcall	_end
                                   2239 ;	main.c:513: com(0x01);
      000A02 75 82 01         [24] 2240 	mov	dpl,#0x01
      000A05 12 01 72         [24] 2241 	lcall	_com
                                   2242 ;	main.c:514: displaySelect = menu;
      000A08 75 4E 00         [24] 2243 	mov	_displaySelect,#0x00
      000A0B                       2244 00134$:
                                   2245 ;	main.c:516: if(next == 1)
      000A0B 30 01 34         [24] 2246 	jnb	_next,00141$
                                   2247 ;	main.c:518: do
      000A0E                       2248 00135$:
                                   2249 ;	main.c:520: numA = rand()%100;
      000A0E 12 0B B3         [24] 2250 	lcall	_rand
      000A11 75 0C 64         [24] 2251 	mov	__modsint_PARM_2,#0x64
      000A14 75 0D 00         [24] 2252 	mov	(__modsint_PARM_2 + 1),#0x00
      000A17 12 0C C5         [24] 2253 	lcall	__modsint
      000A1A AE 82            [24] 2254 	mov	r6,dpl
      000A1C 8E 25            [24] 2255 	mov	_numA,r6
                                   2256 ;	main.c:521: numB = rand()%100;
      000A1E 12 0B B3         [24] 2257 	lcall	_rand
      000A21 75 0C 64         [24] 2258 	mov	__modsint_PARM_2,#0x64
      000A24 75 0D 00         [24] 2259 	mov	(__modsint_PARM_2 + 1),#0x00
      000A27 12 0C C5         [24] 2260 	lcall	__modsint
      000A2A AE 82            [24] 2261 	mov	r6,dpl
      000A2C AF 83            [24] 2262 	mov	r7,dph
      000A2E 8E 26            [24] 2263 	mov	_numB,r6
                                   2264 ;	main.c:522: }while(numA%numB != 0);
      000A30 85 26 F0         [24] 2265 	mov	b,_numB
      000A33 E5 25            [12] 2266 	mov	a,_numA
      000A35 84               [48] 2267 	div	ab
      000A36 E5 F0            [12] 2268 	mov	a,b
      000A38 70 D4            [24] 2269 	jnz	00135$
                                   2270 ;	main.c:523: next = 0;
                                   2271 ;	assignBit
      000A3A C2 01            [12] 2272 	clr	_next
                                   2273 ;	main.c:524: answer = 0;
      000A3C 75 27 00         [24] 2274 	mov	_answer,#0x00
                                   2275 ;	main.c:525: turn = 0;
      000A3F 75 22 00         [24] 2276 	mov	_turn,#0x00
      000A42                       2277 00141$:
                                   2278 ;	main.c:528: if(displaySelect == subs)
      000A42 74 02            [12] 2279 	mov	a,#0x02
      000A44 B5 4E 57         [24] 2280 	cjne	a,_displaySelect,00150$
                                   2281 ;	main.c:530: sub();
      000A47 12 06 A2         [24] 2282 	lcall	_sub
                                   2283 ;	main.c:531: displaySelect = subs;
      000A4A 75 4E 02         [24] 2284 	mov	_displaySelect,#0x02
                                   2285 ;	main.c:532: if(doneNum == quesNum)
      000A4D E5 23            [12] 2286 	mov	a,_quesNum
      000A4F B5 2D 0F         [24] 2287 	cjne	a,_doneNum,00143$
                                   2288 ;	main.c:534: TMOD = 0x00;
      000A52 75 89 00         [24] 2289 	mov	_TMOD,#0x00
                                   2290 ;	main.c:535: end();
      000A55 12 08 15         [24] 2291 	lcall	_end
                                   2292 ;	main.c:536: com(0x01);
      000A58 75 82 01         [24] 2293 	mov	dpl,#0x01
      000A5B 12 01 72         [24] 2294 	lcall	_com
                                   2295 ;	main.c:537: displaySelect = menu;
      000A5E 75 4E 00         [24] 2296 	mov	_displaySelect,#0x00
      000A61                       2297 00143$:
                                   2298 ;	main.c:539: if(next == 1)
      000A61 30 01 3A         [24] 2299 	jnb	_next,00150$
                                   2300 ;	main.c:541: do
      000A64                       2301 00144$:
                                   2302 ;	main.c:543: numA = rand()%100;
      000A64 12 0B B3         [24] 2303 	lcall	_rand
      000A67 75 0C 64         [24] 2304 	mov	__modsint_PARM_2,#0x64
      000A6A 75 0D 00         [24] 2305 	mov	(__modsint_PARM_2 + 1),#0x00
      000A6D 12 0C C5         [24] 2306 	lcall	__modsint
      000A70 AE 82            [24] 2307 	mov	r6,dpl
      000A72 8E 25            [24] 2308 	mov	_numA,r6
                                   2309 ;	main.c:544: numB = rand()%100;
      000A74 12 0B B3         [24] 2310 	lcall	_rand
      000A77 75 0C 64         [24] 2311 	mov	__modsint_PARM_2,#0x64
      000A7A 75 0D 00         [24] 2312 	mov	(__modsint_PARM_2 + 1),#0x00
      000A7D 12 0C C5         [24] 2313 	lcall	__modsint
      000A80 AE 82            [24] 2314 	mov	r6,dpl
      000A82 8E 26            [24] 2315 	mov	_numB,r6
                                   2316 ;	main.c:545: }while(numA-numB < 0);
      000A84 AE 25            [24] 2317 	mov	r6,_numA
      000A86 7F 00            [12] 2318 	mov	r7,#0x00
      000A88 AC 26            [24] 2319 	mov	r4,_numB
      000A8A 7D 00            [12] 2320 	mov	r5,#0x00
      000A8C EE               [12] 2321 	mov	a,r6
      000A8D C3               [12] 2322 	clr	c
      000A8E 9C               [12] 2323 	subb	a,r4
      000A8F FE               [12] 2324 	mov	r6,a
      000A90 EF               [12] 2325 	mov	a,r7
      000A91 9D               [12] 2326 	subb	a,r5
      000A92 FF               [12] 2327 	mov	r7,a
      000A93 20 E7 CE         [24] 2328 	jb	acc.7,00144$
                                   2329 ;	main.c:546: next = 0;
                                   2330 ;	assignBit
      000A96 C2 01            [12] 2331 	clr	_next
                                   2332 ;	main.c:547: answer = 0;
      000A98 75 27 00         [24] 2333 	mov	_answer,#0x00
                                   2334 ;	main.c:548: turn = 0;
      000A9B 75 22 00         [24] 2335 	mov	_turn,#0x00
      000A9E                       2336 00150$:
                                   2337 ;	main.c:551: if(displaySelect == mults)
      000A9E 74 04            [12] 2338 	mov	a,#0x04
      000AA0 B5 4E 5D         [24] 2339 	cjne	a,_displaySelect,00159$
                                   2340 ;	main.c:553: mult();
      000AA3 12 07 25         [24] 2341 	lcall	_mult
                                   2342 ;	main.c:554: displaySelect = mults;
      000AA6 75 4E 04         [24] 2343 	mov	_displaySelect,#0x04
                                   2344 ;	main.c:555: if(doneNum == quesNum)
      000AA9 E5 23            [12] 2345 	mov	a,_quesNum
      000AAB B5 2D 0F         [24] 2346 	cjne	a,_doneNum,00152$
                                   2347 ;	main.c:557: TMOD = 0x00;
      000AAE 75 89 00         [24] 2348 	mov	_TMOD,#0x00
                                   2349 ;	main.c:558: end();
      000AB1 12 08 15         [24] 2350 	lcall	_end
                                   2351 ;	main.c:559: com(0x01);
      000AB4 75 82 01         [24] 2352 	mov	dpl,#0x01
      000AB7 12 01 72         [24] 2353 	lcall	_com
                                   2354 ;	main.c:560: displaySelect = menu;
      000ABA 75 4E 00         [24] 2355 	mov	_displaySelect,#0x00
      000ABD                       2356 00152$:
                                   2357 ;	main.c:562: if(next == 1)
      000ABD 30 01 40         [24] 2358 	jnb	_next,00159$
                                   2359 ;	main.c:564: do
      000AC0                       2360 00153$:
                                   2361 ;	main.c:566: numA = rand()%100;
      000AC0 12 0B B3         [24] 2362 	lcall	_rand
      000AC3 75 0C 64         [24] 2363 	mov	__modsint_PARM_2,#0x64
      000AC6 75 0D 00         [24] 2364 	mov	(__modsint_PARM_2 + 1),#0x00
      000AC9 12 0C C5         [24] 2365 	lcall	__modsint
      000ACC AE 82            [24] 2366 	mov	r6,dpl
      000ACE 8E 25            [24] 2367 	mov	_numA,r6
                                   2368 ;	main.c:567: numB = rand()%100;
      000AD0 12 0B B3         [24] 2369 	lcall	_rand
      000AD3 75 0C 64         [24] 2370 	mov	__modsint_PARM_2,#0x64
      000AD6 75 0D 00         [24] 2371 	mov	(__modsint_PARM_2 + 1),#0x00
      000AD9 12 0C C5         [24] 2372 	lcall	__modsint
      000ADC AE 82            [24] 2373 	mov	r6,dpl
      000ADE 8E 26            [24] 2374 	mov	_numB,r6
                                   2375 ;	main.c:568: }while(numA*numB > 254);
      000AE0 85 25 F0         [24] 2376 	mov	b,_numA
      000AE3 E5 26            [12] 2377 	mov	a,_numB
      000AE5 A4               [48] 2378 	mul	ab
      000AE6 FE               [12] 2379 	mov	r6,a
      000AE7 AF F0            [24] 2380 	mov	r7,b
      000AE9 C3               [12] 2381 	clr	c
      000AEA 74 FE            [12] 2382 	mov	a,#0xfe
      000AEC 9E               [12] 2383 	subb	a,r6
      000AED 74 80            [12] 2384 	mov	a,#(0x00 ^ 0x80)
      000AEF 8F F0            [24] 2385 	mov	b,r7
      000AF1 63 F0 80         [24] 2386 	xrl	b,#0x80
      000AF4 95 F0            [12] 2387 	subb	a,b
      000AF6 40 C8            [24] 2388 	jc	00153$
                                   2389 ;	main.c:569: next = 0;
                                   2390 ;	assignBit
      000AF8 C2 01            [12] 2391 	clr	_next
                                   2392 ;	main.c:570: answer = 0;
      000AFA 75 27 00         [24] 2393 	mov	_answer,#0x00
                                   2394 ;	main.c:571: turn = 0;
      000AFD 75 22 00         [24] 2395 	mov	_turn,#0x00
      000B00                       2396 00159$:
                                   2397 ;	main.c:574: if(displaySelect != menu)
      000B00 E5 4E            [12] 2398 	mov	a,_displaySelect
      000B02 60 33            [24] 2399 	jz	00164$
                                   2400 ;	main.c:576: if(timeStuck == 0)
      000B04 20 00 21         [24] 2401 	jb	_timeStuck,00161$
                                   2402 ;	main.c:578: display[1][11] = tmin+0x30;
      000B07 AF 2C            [24] 2403 	mov	r7,_tmin
      000B09 74 30            [12] 2404 	mov	a,#0x30
      000B0B 2F               [12] 2405 	add	a,r7
      000B0C F5 49            [12] 2406 	mov	(_display + 0x001b),a
                                   2407 ;	main.c:579: display[1][12] = min+0x30;
      000B0E AF 2A            [24] 2408 	mov	r7,_min
      000B10 74 30            [12] 2409 	mov	a,#0x30
      000B12 2F               [12] 2410 	add	a,r7
      000B13 F5 4A            [12] 2411 	mov	(_display + 0x001c),a
                                   2412 ;	main.c:580: display[1][13] = ':';
      000B15 75 4B 3A         [24] 2413 	mov	(_display + 0x001d),#0x3a
                                   2414 ;	main.c:581: display[1][14] = tsec+0x30;
      000B18 AF 29            [24] 2415 	mov	r7,_tsec
      000B1A 74 30            [12] 2416 	mov	a,#0x30
      000B1C 2F               [12] 2417 	add	a,r7
      000B1D F5 4C            [12] 2418 	mov	(_display + 0x001e),a
                                   2419 ;	main.c:582: display[1][15] = sec+0x30;
      000B1F AF 28            [24] 2420 	mov	r7,_sec
      000B21 74 30            [12] 2421 	mov	a,#0x30
      000B23 2F               [12] 2422 	add	a,r7
      000B24 F5 4D            [12] 2423 	mov	(_display + 0x001f),a
      000B26 80 0F            [24] 2424 	sjmp	00164$
      000B28                       2425 00161$:
                                   2426 ;	main.c:586: display[1][11] = ' ';
      000B28 75 49 20         [24] 2427 	mov	(_display + 0x001b),#0x20
                                   2428 ;	main.c:587: display[1][12] = 'O';
      000B2B 75 4A 4F         [24] 2429 	mov	(_display + 0x001c),#0x4f
                                   2430 ;	main.c:588: display[1][13] = 'V';
      000B2E 75 4B 56         [24] 2431 	mov	(_display + 0x001d),#0x56
                                   2432 ;	main.c:589: display[1][14] = 'E';
      000B31 75 4C 45         [24] 2433 	mov	(_display + 0x001e),#0x45
                                   2434 ;	main.c:590: display[1][15] = 'R';
      000B34 75 4D 52         [24] 2435 	mov	(_display + 0x001f),#0x52
      000B37                       2436 00164$:
                                   2437 ;	main.c:594: displayFlip();
      000B37 12 05 5B         [24] 2438 	lcall	_displayFlip
                                   2439 ;	main.c:596: }
      000B3A 02 08 BF         [24] 2440 	ljmp	00166$
                                   2441 ;------------------------------------------------------------
                                   2442 ;Allocation info for local variables in function 'setup'
                                   2443 ;------------------------------------------------------------
                                   2444 ;	main.c:598: void setup()
                                   2445 ;	-----------------------------------------
                                   2446 ;	 function setup
                                   2447 ;	-----------------------------------------
      000B3D                       2448 _setup:
                                   2449 ;	main.c:600: DT = 1;
                                   2450 ;	assignBit
      000B3D D2 95            [12] 2451 	setb	_P1_5
                                   2452 ;	main.c:601: SW = 1;
                                   2453 ;	assignBit
      000B3F D2 CC            [12] 2454 	setb	_P5_4
                                   2455 ;	main.c:602: CLK = 1;
                                   2456 ;	assignBit
      000B41 D2 B2            [12] 2457 	setb	_P3_2
                                   2458 ;	main.c:603: com(0x02);
      000B43 75 82 02         [24] 2459 	mov	dpl,#0x02
      000B46 12 01 72         [24] 2460 	lcall	_com
                                   2461 ;	main.c:604: delay(5);
      000B49 75 82 05         [24] 2462 	mov	dpl,#0x05
      000B4C 12 00 E3         [24] 2463 	lcall	_delay
                                   2464 ;	main.c:605: com(0x28);
      000B4F 75 82 28         [24] 2465 	mov	dpl,#0x28
      000B52 12 01 72         [24] 2466 	lcall	_com
                                   2467 ;	main.c:606: delay(5);
      000B55 75 82 05         [24] 2468 	mov	dpl,#0x05
      000B58 12 00 E3         [24] 2469 	lcall	_delay
                                   2470 ;	main.c:607: com(0x0E);
      000B5B 75 82 0E         [24] 2471 	mov	dpl,#0x0e
      000B5E 12 01 72         [24] 2472 	lcall	_com
                                   2473 ;	main.c:608: delay(5);
      000B61 75 82 05         [24] 2474 	mov	dpl,#0x05
      000B64 12 00 E3         [24] 2475 	lcall	_delay
                                   2476 ;	main.c:609: com(0x06);
      000B67 75 82 06         [24] 2477 	mov	dpl,#0x06
      000B6A 12 01 72         [24] 2478 	lcall	_com
                                   2479 ;	main.c:610: delay(5);
      000B6D 75 82 05         [24] 2480 	mov	dpl,#0x05
      000B70 12 00 E3         [24] 2481 	lcall	_delay
                                   2482 ;	main.c:611: com(0x01);
      000B73 75 82 01         [24] 2483 	mov	dpl,#0x01
      000B76 12 01 72         [24] 2484 	lcall	_com
                                   2485 ;	main.c:612: delay(5);
      000B79 75 82 05         [24] 2486 	mov	dpl,#0x05
      000B7C 12 00 E3         [24] 2487 	lcall	_delay
                                   2488 ;	main.c:613: com(0x80);
      000B7F 75 82 80         [24] 2489 	mov	dpl,#0x80
      000B82 12 01 72         [24] 2490 	lcall	_com
                                   2491 ;	main.c:619: INT0 = 1;
                                   2492 ;	assignBit
      000B85 D2 B2            [12] 2493 	setb	_INT0
                                   2494 ;	main.c:620: IT0 = 0;
                                   2495 ;	assignBit
      000B87 C2 88            [12] 2496 	clr	_IT0
                                   2497 ;	main.c:621: EX0 = 1;
                                   2498 ;	assignBit
      000B89 D2 A8            [12] 2499 	setb	_EX0
                                   2500 ;	main.c:622: EA = 1;
                                   2501 ;	assignBit
      000B8B D2 AF            [12] 2502 	setb	_EA
                                   2503 ;	main.c:623: write(" HP by Bohan Xu ",0);
      000B8D 75 53 00         [24] 2504 	mov	_write_PARM_2,#0x00
      000B90 90 0D F2         [24] 2505 	mov	dptr,#___str_11
      000B93 75 F0 80         [24] 2506 	mov	b,#0x80
      000B96 12 02 4C         [24] 2507 	lcall	_write
                                   2508 ;	main.c:624: write("      2025      ",1);
      000B99 75 53 01         [24] 2509 	mov	_write_PARM_2,#0x01
      000B9C 90 0E 03         [24] 2510 	mov	dptr,#___str_12
      000B9F 75 F0 80         [24] 2511 	mov	b,#0x80
      000BA2 12 02 4C         [24] 2512 	lcall	_write
                                   2513 ;	main.c:625: delayl(100);
      000BA5 75 82 64         [24] 2514 	mov	dpl,#0x64
                                   2515 ;	main.c:626: }
      000BA8 02 01 10         [24] 2516 	ljmp	_delayl
                                   2517 ;------------------------------------------------------------
                                   2518 ;Allocation info for local variables in function 'main'
                                   2519 ;------------------------------------------------------------
                                   2520 ;	main.c:628: void main()
                                   2521 ;	-----------------------------------------
                                   2522 ;	 function main
                                   2523 ;	-----------------------------------------
      000BAB                       2524 _main:
                                   2525 ;	main.c:634: setup();
      000BAB 12 0B 3D         [24] 2526 	lcall	_setup
                                   2527 ;	main.c:635: loop();
      000BAE 12 08 B6         [24] 2528 	lcall	_loop
                                   2529 ;	main.c:636: while(1);
      000BB1                       2530 00102$:
                                   2531 ;	main.c:637: }
      000BB1 80 FE            [24] 2532 	sjmp	00102$
                                   2533 	.area CSEG    (CODE)
                                   2534 	.area CONST   (CODE)
      000D37                       2535 ___str_0:
      000D37 20 20 2E 20 20 20 20  2536 	.ascii "  .       =     "
             20 20 20 3D 20 20 20
             20 20
      000D47 00                    2537 	.db 0x00
      000D48                       2538 ___str_1:
      000D48 20 20 20 20 20 20 20  2539 	.ascii "                "
             20 20 20 20 20 20 20
             20 20
      000D58 00                    2540 	.db 0x00
      000D59                       2541 ___str_2:
      000D59 20 20 20 6C 65 66 74  2542 	.ascii "   left!        "
             21 20 20 20 20 20 20
             20 20
      000D69 00                    2543 	.db 0x00
      000D6A                       2544 ___str_3:
      000D6A 20 20 20 20 20 20 20  2545 	.ascii "       YES      "
             59 45 53 20 20 20 20
             20 20
      000D7A 00                    2546 	.db 0x00
      000D7B                       2547 ___str_4:
      000D7B 20 20 20 20 20 20 20  2548 	.ascii "       NO       "
             4E 4F 20 20 20 20 20
             20 20
      000D8B 00                    2549 	.db 0x00
      000D8C                       2550 ___str_5:
      000D8C 59 4F 55 20 47 4F 54  2551 	.ascii "YOU GOT      AND"
             20 20 20 20 20 20 41
             4E 44
      000D9C 00                    2552 	.db 0x00
      000D9D                       2553 ___str_6:
      000D9D 59 4F 55 52 20 54 49  2554 	.ascii "YOUR TIME   :   "
             4D 45 20 20 20 3A 20
             20 20
      000DAD 00                    2555 	.db 0x00
      000DAE                       2556 ___str_7:
      000DAE 20 20 31 2E 20 41 64  2557 	.ascii "  1. Addition   "
             64 69 74 69 6F 6E 20
             20 20
      000DBE 00                    2558 	.db 0x00
      000DBF                       2559 ___str_8:
      000DBF 20 32 2E 20 53 75 62  2560 	.ascii " 2. Subtraction "
             74 72 61 63 74 69 6F
             6E 20
      000DCF 00                    2561 	.db 0x00
      000DD0                       2562 ___str_9:
      000DD0 20 20 20 33 2E 20 44  2563 	.ascii "   3. Division  "
             69 76 69 73 69 6F 6E
             20 20
      000DE0 00                    2564 	.db 0x00
      000DE1                       2565 ___str_10:
      000DE1 34 2E 4D 75 6C 74 69  2566 	.ascii "4.Multiplication"
             70 6C 69 63 61 74 69
             6F 6E
      000DF1 00                    2567 	.db 0x00
      000DF2                       2568 ___str_11:
      000DF2 20 48 50 20 62 79 20  2569 	.ascii " HP by Bohan Xu "
             42 6F 68 61 6E 20 58
             75 20
      000E02 00                    2570 	.db 0x00
      000E03                       2571 ___str_12:
      000E03 20 20 20 20 20 20 32  2572 	.ascii "      2025      "
             30 32 35 20 20 20 20
             20 20
      000E13 00                    2573 	.db 0x00
                                   2574 	.area XINIT   (CODE)
                                   2575 	.area CABS    (ABS,CODE)
