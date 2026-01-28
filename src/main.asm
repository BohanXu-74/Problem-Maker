;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _writeArray_PARM_2
	.globl _main
	.globl _setup
	.globl _loop
	.globl _end
	.globl _div
	.globl _mult
	.globl _sub
	.globl _add
	.globl _clear
	.globl _enter
	.globl _exint0
	.globl _displayFlip
	.globl _writeYesOrNo
	.globl _writeAnswer
	.globl _writeQues
	.globl _writeArray
	.globl _write
	.globl _dat
	.globl _com
	.globl _LCD4to
	.globl _setupInt
	.globl _delayl
	.globl _delay
	.globl _timerInt
	.globl _rand
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _P5_5
	.globl _P5_4
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _next
	.globl _timeStuck
	.globl _writeQues_PARM_4
	.globl _writeQues_PARM_3
	.globl _writeQues_PARM_2
	.globl _write_PARM_2
	.globl _speed
	.globl _displaySelect
	.globl _display
	.globl _doneNum
	.globl _tmin
	.globl _e
	.globl _min
	.globl _tsec
	.globl _sec
	.globl _answer
	.globl _numB
	.globl _numA
	.globl _correctNum
	.globl _quesNum
	.globl _turn
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P5_4	=	0x00cc
_P5_5	=	0x00cd
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_turn::
	.ds 1
_quesNum::
	.ds 1
_correctNum::
	.ds 1
_numA::
	.ds 1
_numB::
	.ds 1
_answer::
	.ds 1
_sec::
	.ds 1
_tsec::
	.ds 1
_min::
	.ds 1
_e::
	.ds 1
_tmin::
	.ds 1
_doneNum::
	.ds 1
_display::
	.ds 32
_displaySelect::
	.ds 1
_speed::
	.ds 2
_com_lcd_65536_55:
	.ds 1
_dat_lcd_65536_57:
	.ds 1
_write_PARM_2:
	.ds 1
_writeQues_PARM_2:
	.ds 1
_writeQues_PARM_3:
	.ds 1
_writeQues_PARM_4:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_writeArray_PARM_2:
	.ds 1
_writeArray_line_65536_64:
	.ds 3
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_timeStuck::
	.ds 1
_next::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_exint0
	.ds	5
	ljmp	_timerInt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:19: unchar turn = 0;
	mov	_turn,#0x00
;	main.c:20: char quesNum, correctNum, numA, numB = 0;
	mov	_numB,#0x00
;	main.c:21: unchar answer = 0;
	mov	_answer,#0x00
;	main.c:22: unchar sec = 0;
	mov	_sec,#0x00
;	main.c:23: unchar tsec = 0;
	mov	_tsec,#0x00
;	main.c:24: unchar min,e = 0;
	mov	_e,#0x00
;	main.c:25: unchar tmin = 0;
	mov	_tmin,#0x00
;	main.c:28: unchar doneNum = 0;
	mov	_doneNum,#0x00
;	main.c:32: unchar displaySelect = 0;
	mov	_displaySelect,#0x00
;	main.c:33: unsigned int speed = 0;
	clr	a
	mov	_speed,a
	mov	(_speed + 1),a
;	main.c:26: __bit timeStuck = 0;
;	assignBit
	clr	_timeStuck
;	main.c:27: __bit next = 0;
;	assignBit
	clr	_next
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timerInt'
;------------------------------------------------------------
;	main.c:35: void timerInt() __interrupt 1
;	-----------------------------------------
;	 function timerInt
;	-----------------------------------------
_timerInt:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	psw
;	main.c:37: TH0 = 0x10;
	mov	_TH0,#0x10
;	main.c:38: TL0 = 0x00;
	mov	_TL0,#0x00
;	main.c:39: e++;
	inc	_e
;	main.c:40: if(e >= 16)
	mov	a,#0x100 - 0x10
	add	a,_e
	jnc	00102$
;	main.c:42: e = 0;
	mov	_e,#0x00
;	main.c:43: sec++;
	inc	_sec
00102$:
;	main.c:45: if(sec >= 10)
	mov	a,#0x100 - 0x0a
	add	a,_sec
	jnc	00104$
;	main.c:47: tsec++;
	inc	_tsec
;	main.c:48: sec = 0;
	mov	_sec,#0x00
00104$:
;	main.c:51: if(tsec == 6)
	mov	a,#0x06
	cjne	a,_tsec,00106$
;	main.c:53: sec = 0;
	mov	_sec,#0x00
;	main.c:54: tsec = 0;
	mov	_tsec,#0x00
;	main.c:55: min++;
	inc	_min
00106$:
;	main.c:57: if(min >= 10)
	mov	a,#0x100 - 0x0a
	add	a,_min
	jnc	00108$
;	main.c:59: tmin++;
	inc	_tmin
;	main.c:60: min = 0;
	mov	_min,#0x00
00108$:
;	main.c:62: if(tmin >= 100)
	mov	a,#0x100 - 0x64
	add	a,_tmin
	jnc	00111$
;	main.c:64: timeStuck = 1;
;	assignBit
	setb	_timeStuck
00111$:
;	main.c:66: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time                      Allocated to registers r7 
;h                         Allocated to registers r5 r6 
;a                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	main.c:68: void delay(unchar time)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
;	main.c:71: for(h = 0; h < time; h++)
	mov	r5,#0x00
	mov	r6,#0x00
00107$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
	jnc	00109$
;	main.c:73: for(a = 0; a < 150; a++);
	mov	r3,#0x96
	mov	r4,#0x00
00105$:
	mov	a,r3
	add	a,#0xff
	mov	r1,a
	mov	a,r4
	addc	a,#0xff
	mov	r2,a
	mov	ar3,r1
	mov	ar4,r2
	mov	a,r1
	orl	a,r2
	jnz	00105$
;	main.c:71: for(h = 0; h < time; h++)
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00109$:
;	main.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayl'
;------------------------------------------------------------
;time                      Allocated to registers r7 
;h                         Allocated to registers r5 r6 
;a                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	main.c:77: void delayl(unchar time)
;	-----------------------------------------
;	 function delayl
;	-----------------------------------------
_delayl:
	mov	r7,dpl
;	main.c:80: for(h = 0; h < time; h++)
	mov	r5,#0x00
	mov	r6,#0x00
00107$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
	jnc	00109$
;	main.c:82: for(a = 0; a < 10000; a++);
	mov	r3,#0x10
	mov	r4,#0x27
00105$:
	mov	a,r3
	add	a,#0xff
	mov	r1,a
	mov	a,r4
	addc	a,#0xff
	mov	r2,a
	mov	ar3,r1
	mov	ar4,r2
	mov	a,r1
	orl	a,r2
	jnz	00105$
;	main.c:80: for(h = 0; h < time; h++)
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00109$:
;	main.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setupInt'
;------------------------------------------------------------
;	main.c:86: void setupInt()
;	-----------------------------------------
;	 function setupInt
;	-----------------------------------------
_setupInt:
;	main.c:88: TMOD = 0x11;
	mov	_TMOD,#0x11
;	main.c:89: TH0 = 0x10;
	mov	_TH0,#0x10
;	main.c:90: TL0 = 0x00;
	mov	_TL0,#0x00
;	main.c:91: ET0 = 1;
;	assignBit
	setb	_ET0
;	main.c:92: EA = 1;
;	assignBit
	setb	_EA
;	main.c:93: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD4to'
;------------------------------------------------------------
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:97: void LCD4to(unchar num)
;	-----------------------------------------
;	 function LCD4to
;	-----------------------------------------
_LCD4to:
;	main.c:99: P1_1 = ((num >> 4) & 1);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P1_1,c
;	main.c:100: P1_0 = ((num >> 5) & 1);
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P1_0,c
;	main.c:101: P3_7 = ((num >> 6) & 1);
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P3_7,c
;	main.c:102: P3_6 = ((num >> 7) & 1);
	mov	a,r7
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P3_6,c
;	main.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'com'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;lcd                       Allocated with name '_com_lcd_65536_55'
;------------------------------------------------------------
;	main.c:105: void com(unchar data)
;	-----------------------------------------
;	 function com
;	-----------------------------------------
_com:
	mov	r7,dpl
;	main.c:108: lcd =(lcd & 0x0F) | (data & 0xF0);
	mov	r5,_com_lcd_65536_55
	anl	ar5,#0x0f
	mov	r6,#0x00
	mov	ar3,r7
	anl	ar3,#0xf0
	mov	r4,#0x00
	mov	a,r3
	orl	ar5,a
	mov	a,r4
	orl	ar6,a
;	main.c:109: LCD4to(lcd);
	mov	dpl,r5
	push	ar7
	push	ar5
	lcall	_LCD4to
;	main.c:110: delay(2);
	mov	dpl,#0x02
	lcall	_delay
;	main.c:111: RS=0;
;	assignBit
	clr	_P1_2
;	main.c:112: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:113: E=1; 
;	assignBit
	setb	_P1_4
;	main.c:114: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
	pop	ar5
	pop	ar7
;	main.c:115: E=0;
;	assignBit
	clr	_P1_4
;	main.c:116: lcd = (lcd & 0x0F) | (data << 4);
	anl	ar5,#0x0f
	mov	r6,#0x00
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r7
	orl	ar5,a
	mov	a,r4
	orl	ar6,a
	mov	_com_lcd_65536_55,r5
;	main.c:117: LCD4to(lcd);
	mov	dpl,_com_lcd_65536_55
	lcall	_LCD4to
;	main.c:118: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:119: E=1;
;	assignBit
	setb	_P1_4
;	main.c:120: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:121: E=0;
;	assignBit
	clr	_P1_4
;	main.c:122: delay(2);	
	mov	dpl,#0x02
;	main.c:123: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'dat'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;lcd                       Allocated with name '_dat_lcd_65536_57'
;------------------------------------------------------------
;	main.c:125: void dat(unchar data)
;	-----------------------------------------
;	 function dat
;	-----------------------------------------
_dat:
	mov	r7,dpl
;	main.c:128: lcd =(lcd & 0x0F) | (data & 0xF0);
	mov	r5,_dat_lcd_65536_57
	anl	ar5,#0x0f
	mov	r6,#0x00
	mov	ar3,r7
	anl	ar3,#0xf0
	mov	r4,#0x00
	mov	a,r3
	orl	ar5,a
	mov	a,r4
	orl	ar6,a
;	main.c:129: LCD4to(lcd);
	mov	dpl,r5
	push	ar7
	push	ar5
	lcall	_LCD4to
;	main.c:130: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:131: RS=1;
;	assignBit
	setb	_P1_2
;	main.c:132: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:133: E=1; 
;	assignBit
	setb	_P1_4
;	main.c:134: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
	pop	ar5
	pop	ar7
;	main.c:135: E=0;
;	assignBit
	clr	_P1_4
;	main.c:136: lcd = (lcd & 0x0F) | (data << 4);
	anl	ar5,#0x0f
	mov	r6,#0x00
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r7
	orl	ar5,a
	mov	a,r4
	orl	ar6,a
	mov	_dat_lcd_65536_57,r5
;	main.c:137: LCD4to(lcd);
	mov	dpl,_dat_lcd_65536_57
	lcall	_LCD4to
;	main.c:138: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:139: E=1;
;	assignBit
	setb	_P1_4
;	main.c:140: delay(2);	
	mov	dpl,#0x02
	lcall	_delay
;	main.c:141: E=0;
;	assignBit
	clr	_P1_4
;	main.c:142: delay(2);	
	mov	dpl,#0x02
;	main.c:143: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;choose                    Allocated with name '_write_PARM_2'
;line                      Allocated to registers r5 r6 r7 
;columm                    Allocated to registers r4 
;------------------------------------------------------------
;	main.c:145: void write(unchar line[16],unchar choose)
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:148: if(choose == 1)
	mov	a,#0x01
	cjne	a,_write_PARM_2,00102$
;	main.c:150: com(0xC0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	push	ar5
	lcall	_com
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00110$
00102$:
;	main.c:154: com(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_com
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:156: for(columm = 0; columm < 17; columm++)
00110$:
	mov	r4,#0x00
00105$:
;	main.c:158: delay(10);
	mov	dpl,#0x0a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:159: dat(line[columm]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dat
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:156: for(columm = 0; columm < 17; columm++)
	inc	r4
	cjne	r4,#0x11,00120$
00120$:
	jc	00105$
;	main.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeArray'
;------------------------------------------------------------
;d2                        Allocated with name '_writeArray_PARM_2'
;line                      Allocated with name '_writeArray_line_65536_64'
;columm                    Allocated to registers r3 
;------------------------------------------------------------
;	main.c:163: void writeArray(unchar line[16],unchar d2)
;	-----------------------------------------
;	 function writeArray
;	-----------------------------------------
_writeArray:
	mov	_writeArray_line_65536_64,dpl
	mov	(_writeArray_line_65536_64 + 1),dph
	mov	(_writeArray_line_65536_64 + 2),b
;	main.c:166: for(columm = 0; columm < 17; ++columm)
	mov	a,_writeArray_PARM_2
	swap	a
	anl	a,#0xf0
	add	a,#_display
	mov	r4,a
	mov	r3,#0x00
00102$:
;	main.c:168: display[d2][columm] = line[columm];
	mov	a,r3
	add	a,r4
	mov	r1,a
	mov	a,r3
	add	a,_writeArray_line_65536_64
	mov	r2,a
	clr	a
	addc	a,(_writeArray_line_65536_64 + 1)
	mov	r6,a
	mov	r7,(_writeArray_line_65536_64 + 2)
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	@r1,a
;	main.c:166: for(columm = 0; columm < 17; ++columm)
	inc	r3
	cjne	r3,#0x11,00111$
00111$:
	jc	00102$
;	main.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeQues'
;------------------------------------------------------------
;numsA                     Allocated with name '_writeQues_PARM_2'
;numsB                     Allocated with name '_writeQues_PARM_3'
;symbols                   Allocated with name '_writeQues_PARM_4'
;numQuess                  Allocated to registers r7 
;------------------------------------------------------------
;	main.c:172: void writeQues(unchar numQuess, unchar numsA, unchar numsB, unchar symbols)
;	-----------------------------------------
;	 function writeQues
;	-----------------------------------------
_writeQues:
	mov	r7,dpl
;	main.c:174: writeArray("  .       =     ", 0);	
	mov	_writeArray_PARM_2,#0x00
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	lcall	_writeArray
	pop	ar7
;	main.c:175: display[0][0] = (numQuess/10)+0x30;
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r4
	mov	_display,a
;	main.c:176: display[0][1] = (numQuess%10)+0x30;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x0001),a
;	main.c:177: display[0][4] = (numsA/10) + 0x30;
	mov	r5,_writeQues_PARM_2
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r3
	mov	(_display + 0x0004),a
;	main.c:178: display[0][5] = (numsA%10) + 0x30;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	__modsint
	mov	r5,dpl
	pop	ar6
	mov	a,#0x30
	add	a,r5
	mov	(_display + 0x0005),a
;	main.c:179: display[0][6] = symbols;
	mov	(_display + 0x0006),_writeQues_PARM_4
;	main.c:180: display[0][7] = (numsB/10) + 0x30;
	mov	r5,_writeQues_PARM_3
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r3
	mov	(_display + 0x0007),a
;	main.c:181: display[0][8] = (numsB%10) + 0x30;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	__modsint
	mov	r5,dpl
	pop	ar6
	mov	a,#0x30
	add	a,r5
	mov	(_display + 0x0008),a
;	main.c:182: display[0][15] = ' ';
	mov	(_display + 0x000f),#0x20
;	main.c:183: if(display[0][0] == 0x30)
	mov	a,#0x30
	cjne	a,_display,00103$
;	main.c:185: display[0][0] = (numQuess%10)+0x30;
	mov	a,#0x30
	add	a,r6
	mov	_display,a
;	main.c:186: display[0][1] = '.';
	mov	(_display + 0x0001),#0x2e
;	main.c:187: display[0][2] = ' ';
	mov	(_display + 0x0002),#0x20
00103$:
;	main.c:189: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeAnswer'
;------------------------------------------------------------
;	main.c:191: void writeAnswer()
;	-----------------------------------------
;	 function writeAnswer
;	-----------------------------------------
_writeAnswer:
;	main.c:193: writeArray("                ", 1);
	mov	_writeArray_PARM_2,#0x01
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_writeArray
;	main.c:194: writeArray("   left!        ",1);
	mov	_writeArray_PARM_2,#0x01
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_writeArray
;	main.c:195: display[1][0] = ((quesNum-doneNum)/10)+0x30;
	mov	r6,_quesNum
	mov	r7,#0x00
	mov	r4,_doneNum
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r7
	subb	a,r5
	mov	dph,a
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x0010),a
;	main.c:196: display[1][1] = ((quesNum-doneNum)%10)+0x30;
	mov	r6,_quesNum
	mov	r7,#0x00
	mov	r4,_doneNum
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r7
	subb	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x0011),a
;	main.c:197: display[0][12] = (turn/100)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000c),a
;	main.c:198: display[0][13] = ((turn/10)%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000d),a
;	main.c:199: display[0][14] = (turn%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000e),a
;	main.c:200: if(display[0][12] == 0x30)
	mov	a,#0x30
	cjne	a,(_display + 0x000c),00121$
	sjmp	00122$
00121$:
	ljmp	00106$
00122$:
;	main.c:202: if(display[0][13] == 0x30)
	mov	a,#0x30
	cjne	a,(_display + 0x000d),00104$
;	main.c:204: if(display[0][14] == 0x30)
	mov	a,#0x30
	cjne	a,(_display + 0x000e),00102$
;	main.c:206: display[0][12] = '0';
	mov	(_display + 0x000c),#0x30
;	main.c:207: display[0][13] = ' ';
	mov	(_display + 0x000d),#0x20
;	main.c:208: display[0][14] = ' ';
	mov	(_display + 0x000e),#0x20
;	main.c:209: return;
	ret
00102$:
;	main.c:211: display[0][12] = (turn%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000c),a
;	main.c:212: display[0][13] = ' ';
	mov	(_display + 0x000d),#0x20
;	main.c:213: display[0][14] = ' ';
	mov	(_display + 0x000e),#0x20
;	main.c:214: return;
	ret
00104$:
;	main.c:216: display[0][12] = ((turn/10)%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000c),a
;	main.c:217: display[0][13] = (turn%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000d),a
;	main.c:218: display[0][14] = ' ';
	mov	(_display + 0x000e),#0x20
;	main.c:219: return;
	ret
00106$:
;	main.c:221: display[0][12] = (turn/100)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000c),a
;	main.c:222: display[0][13] = ((turn/10)%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000d),a
;	main.c:223: display[0][14] = (turn%10)+0x30;
	mov	r6,_turn
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000e),a
;	main.c:224: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeYesOrNo'
;------------------------------------------------------------
;yesOrNo                   Allocated to registers r7 
;------------------------------------------------------------
;	main.c:226: void writeYesOrNo(unchar yesOrNo)
;	-----------------------------------------
;	 function writeYesOrNo
;	-----------------------------------------
_writeYesOrNo:
	mov	r7,dpl
;	main.c:228: if(yesOrNo == 'yes')
	cjne	r7,#0x79,00102$
;	main.c:230: write("       YES      ",1);
	mov	_write_PARM_2,#0x01
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	lcall	_write
	pop	ar7
00102$:
;	main.c:232: if(yesOrNo == 'no')
	cjne	r7,#0x6e,00104$
;	main.c:235: write("       NO       ",1);
	mov	_write_PARM_2,#0x01
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_write
00104$:
;	main.c:237: delayl(70);
	mov	dpl,#0x46
;	main.c:238: }
	ljmp	_delayl
;------------------------------------------------------------
;Allocation info for local variables in function 'displayFlip'
;------------------------------------------------------------
;	main.c:242: void displayFlip()
;	-----------------------------------------
;	 function displayFlip
;	-----------------------------------------
_displayFlip:
;	main.c:244: com(0x80);
	mov	dpl,#0x80
	lcall	_com
;	main.c:245: write(display[0],0);
	mov	_write_PARM_2,#0x00
	mov	dptr,#_display
	mov	b,#0x40
	lcall	_write
;	main.c:246: write(display[1],1);
	mov	_write_PARM_2,#0x01
	mov	dptr,#(_display + 0x0010)
	mov	b,#0x40
;	main.c:247: }
	ljmp	_write
;------------------------------------------------------------
;Allocation info for local variables in function 'exint0'
;------------------------------------------------------------
;	main.c:251: void exint0() __interrupt 0
;	-----------------------------------------
;	 function exint0
;	-----------------------------------------
_exint0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:253: delay(3);
	mov	dpl,#0x03
	lcall	_delay
;	main.c:254: if (!P3_2)
	jb	_P3_2,00117$
;	main.c:256: if (DT == 0)
	jb	_P1_5,00108$
;	main.c:258: if(turn == 255)
	mov	a,#0xff
	cjne	a,_turn,00105$
;	main.c:259: turn = 0;
	mov	_turn,#0x00
	sjmp	00108$
00105$:
;	main.c:260: else if(speed < 1)
	clr	c
	mov	a,_speed
	subb	a,#0x01
	mov	a,(_speed + 1)
	subb	a,#0x00
	jnc	00102$
;	main.c:261: turn = turn + 2;
	mov	r7,_turn
	mov	a,#0x02
	add	a,r7
	mov	_turn,a
	sjmp	00108$
00102$:
;	main.c:263: turn++;
	inc	_turn
00108$:
;	main.c:266: if(DT == 1)
	jnb	_P1_5,00117$
;	main.c:268: if(turn == 0)
	mov	a,_turn
	jnz	00110$
;	main.c:270: turn = 255;
	mov	_turn,#0xff
00110$:
;	main.c:272: if(speed < 1)
	clr	c
	mov	a,_speed
	subb	a,#0x01
	mov	a,(_speed + 1)
	subb	a,#0x00
	jnc	00112$
;	main.c:273: turn = turn - 2;
	mov	a,_turn
	mov	r7,a
	add	a,#0xfe
	mov	_turn,a
	sjmp	00117$
00112$:
;	main.c:275: turn--;	
	dec	_turn
00117$:
;	main.c:278: speed = 0;
	clr	a
	mov	_speed,a
	mov	(_speed + 1),a
;	main.c:279: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'enter'
;------------------------------------------------------------
;	main.c:281: void enter()
;	-----------------------------------------
;	 function enter
;	-----------------------------------------
_enter:
;	main.c:283: while(1)
00107$:
;	main.c:285: if(SW == 0)
	jb	_P5_4,00107$
;	main.c:287: while(SW == 0);
00101$:
	jnb	_P5_4,00101$
;	main.c:288: break;
;	main.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear'
;------------------------------------------------------------
;	main.c:293: void clear()
;	-----------------------------------------
;	 function clear
;	-----------------------------------------
_clear:
;	main.c:295: com(0x01);
	mov	dpl,#0x01
;	main.c:296: }
	ljmp	_com
;------------------------------------------------------------
;Allocation info for local variables in function 'add'
;------------------------------------------------------------
;	main.c:298: void add()
;	-----------------------------------------
;	 function add
;	-----------------------------------------
_add:
;	main.c:300: while(numA + numB > 100)
00101$:
	mov	r6,_numA
	mov	r7,#0x00
	mov	r4,_numB
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,#0x64
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	main.c:302: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:303: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_numB,r6
	sjmp	00101$
00103$:
;	main.c:305: writeQues(doneNum+1, numA, numB,'+');
	mov	a,_doneNum
	inc	a
	mov	dpl,a
	mov	_writeQues_PARM_2,_numA
	mov	_writeQues_PARM_3,_numB
	mov	_writeQues_PARM_4,#0x2b
	lcall	_writeQues
;	main.c:306: writeAnswer();
	lcall	_writeAnswer
;	main.c:307: if(answer == 1)
	mov	a,#0x01
	cjne	a,_answer,00109$
;	main.c:309: if(turn == numA + numB)
	mov	r6,_numA
	mov	r7,#0x00
	mov	r4,_numB
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	r4,_turn
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00105$
	mov	a,r5
	cjne	a,ar7,00105$
;	main.c:311: writeYesOrNo('yes');
	mov	dpl,#0x79
	lcall	_writeYesOrNo
;	main.c:312: correctNum++;
	inc	_correctNum
;	main.c:313: clear();
	lcall	_clear
	sjmp	00106$
00105$:
;	main.c:317: writeYesOrNo('no');
	mov	dpl,#0x6e
	lcall	_writeYesOrNo
;	main.c:318: clear();
	lcall	_clear
00106$:
;	main.c:320: doneNum++;
	inc	_doneNum
;	main.c:321: next = 1;
;	assignBit
	setb	_next
00109$:
;	main.c:323: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sub'
;------------------------------------------------------------
;	main.c:325: void sub()
;	-----------------------------------------
;	 function sub
;	-----------------------------------------
_sub:
;	main.c:327: while(numA - numB < 0)
00101$:
	mov	r6,_numA
	mov	r7,#0x00
	mov	r4,_numB
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnb	acc.7,00103$
;	main.c:329: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:330: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_numB,r6
	sjmp	00101$
00103$:
;	main.c:332: writeQues(doneNum+1, numA, numB,'-');
	mov	a,_doneNum
	inc	a
	mov	dpl,a
	mov	_writeQues_PARM_2,_numA
	mov	_writeQues_PARM_3,_numB
	mov	_writeQues_PARM_4,#0x2d
	lcall	_writeQues
;	main.c:333: writeAnswer();
	lcall	_writeAnswer
;	main.c:334: if(answer == 1)
	mov	a,#0x01
	cjne	a,_answer,00109$
;	main.c:336: if(turn == numA - numB)
	mov	r6,_numA
	mov	r7,#0x00
	mov	r4,_numB
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	r4,_turn
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00105$
	mov	a,r5
	cjne	a,ar7,00105$
;	main.c:338: writeYesOrNo('yes');
	mov	dpl,#0x79
	lcall	_writeYesOrNo
;	main.c:339: correctNum++;
	inc	_correctNum
;	main.c:340: clear();
	lcall	_clear
	sjmp	00106$
00105$:
;	main.c:344: writeYesOrNo('no');
	mov	dpl,#0x6e
	lcall	_writeYesOrNo
;	main.c:345: clear();
	lcall	_clear
00106$:
;	main.c:347: doneNum++;
	inc	_doneNum
;	main.c:348: next = 1;
;	assignBit
	setb	_next
00109$:
;	main.c:350: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mult'
;------------------------------------------------------------
;	main.c:352: void mult()
;	-----------------------------------------
;	 function mult
;	-----------------------------------------
_mult:
;	main.c:354: while(numA * numB > 144)
00101$:
	mov	b,_numA
	mov	a,_numB
	mul	ab
	mov	r6,a
	mov	r7,b
	clr	c
	mov	a,#0x90
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	main.c:356: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:357: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_numB,r6
	sjmp	00101$
00103$:
;	main.c:359: writeQues(doneNum+1, numA, numB,'*');
	mov	a,_doneNum
	inc	a
	mov	dpl,a
	mov	_writeQues_PARM_2,_numA
	mov	_writeQues_PARM_3,_numB
	mov	_writeQues_PARM_4,#0x2a
	lcall	_writeQues
;	main.c:360: writeAnswer();
	lcall	_writeAnswer
;	main.c:361: if(answer == 1)
	mov	a,#0x01
	cjne	a,_answer,00109$
;	main.c:363: if(turn == numA * numB)
	mov	b,_numA
	mov	a,_numB
	mul	ab
	mov	r6,a
	mov	r7,b
	mov	r4,_turn
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00105$
	mov	a,r5
	cjne	a,ar7,00105$
;	main.c:365: writeYesOrNo('yes');
	mov	dpl,#0x79
	lcall	_writeYesOrNo
;	main.c:366: correctNum++;
	inc	_correctNum
;	main.c:367: clear();
	lcall	_clear
	sjmp	00106$
00105$:
;	main.c:371: writeYesOrNo('no');
	mov	dpl,#0x6e
	lcall	_writeYesOrNo
;	main.c:372: clear();
	lcall	_clear
00106$:
;	main.c:374: doneNum++;
	inc	_doneNum
;	main.c:375: next = 1;
;	assignBit
	setb	_next
00109$:
;	main.c:377: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'div'
;------------------------------------------------------------
;	main.c:379: void div()
;	-----------------------------------------
;	 function div
;	-----------------------------------------
_div:
;	main.c:381: while(numA%numB != 0)
00101$:
	mov	b,_numB
	mov	a,_numA
	div	ab
	mov	a,b
	jz	00103$
;	main.c:383: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:384: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_numB,r6
	sjmp	00101$
00103$:
;	main.c:386: writeQues(doneNum+1, numA, numB,'/');
	mov	a,_doneNum
	inc	a
	mov	dpl,a
	mov	_writeQues_PARM_2,_numA
	mov	_writeQues_PARM_3,_numB
	mov	_writeQues_PARM_4,#0x2f
	lcall	_writeQues
;	main.c:387: writeAnswer();
	lcall	_writeAnswer
;	main.c:388: if(answer == 1)
	mov	a,#0x01
	cjne	a,_answer,00109$
;	main.c:390: if(turn == numA / numB)
	mov	b,_numB
	mov	a,_numA
	div	ab
	cjne	a,_turn,00105$
;	main.c:392: writeYesOrNo('yes');
	mov	dpl,#0x79
	lcall	_writeYesOrNo
;	main.c:393: correctNum++;
	inc	_correctNum
;	main.c:394: clear();
	lcall	_clear
	sjmp	00106$
00105$:
;	main.c:398: writeYesOrNo('no');
	mov	dpl,#0x6e
	lcall	_writeYesOrNo
;	main.c:399: clear();
	lcall	_clear
00106$:
;	main.c:401: doneNum++;
	inc	_doneNum
;	main.c:402: next = 1;
;	assignBit
	setb	_next
00109$:
;	main.c:404: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'end'
;------------------------------------------------------------
;percent                   Allocated to registers r7 
;------------------------------------------------------------
;	main.c:406: void end(/*unchar f*/)
;	-----------------------------------------
;	 function end
;	-----------------------------------------
_end:
;	main.c:408: unchar percent = (correctNum)*10;
	mov	a,_correctNum
	mov	b,#0x0a
	mul	ab
	mov	r7,a
;	main.c:409: clear();
	push	ar7
	lcall	_clear
;	main.c:410: writeArray("YOU GOT      AND", 0);
	mov	_writeArray_PARM_2,#0x00
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_writeArray
;	main.c:411: writeArray("YOUR TIME   :   ", 1);
	mov	_writeArray_PARM_2,#0x01
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_writeArray
	pop	ar7
;	main.c:412: display[0][8] = (percent/100)+0x30;
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r4
	mov	(_display + 0x0008),a
;	main.c:413: display[0][9] = ((percent/10)%10)+0x30;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r4
	mov	(_display + 0x0009),a
;	main.c:415: display[0][10] = ((percent)%10)+0x30;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	(_display + 0x000a),a
;	main.c:416: display[0][11] = '%';
	mov	(_display + 0x000b),#0x25
;	main.c:417: display[1][10] = tmin+0x30;
	mov	r7,_tmin
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001a),a
;	main.c:418: display[1][11] = min+0x30;
	mov	r7,_min
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001b),a
;	main.c:419: display[1][13] = tsec+0x30;
	mov	r7,_tsec
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001d),a
;	main.c:420: display[1][14] = sec+0x30;
	mov	r7,_sec
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001e),a
;	main.c:421: displayFlip();
	lcall	_displayFlip
;	main.c:422: enter();
;	main.c:423: }
	ljmp	_enter
;------------------------------------------------------------
;Allocation info for local variables in function 'loop'
;------------------------------------------------------------
;	main.c:427: void loop()
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
;	main.c:429: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	main.c:430: displaySelect = menu;
	mov	_displaySelect,#0x00
;	main.c:432: while(1)
00166$:
;	main.c:435: speed++;
	inc	_speed
	clr	a
	cjne	a,_speed,00286$
	inc	(_speed + 1)
00286$:
;	main.c:436: if(displaySelect == menu)
	mov	a,_displaySelect
	jz	00287$
	ljmp	00122$
00287$:
;	main.c:438: answer = 0;
	mov	_answer,#0x00
;	main.c:439: quesNum = 10;
	mov	_quesNum,#0x0a
;	main.c:440: correctNum = 0;
	mov	_correctNum,#0x00
;	main.c:441: doneNum = 0;
	mov	_doneNum,#0x00
;	main.c:442: timeStuck = 0;
;	assignBit
	clr	_timeStuck
;	main.c:443: next = 0;
;	assignBit
	clr	_next
;	main.c:444: numA = 0;
;	main.c:445: numB = 0;
;	main.c:446: tsec = 0;
;	main.c:447: sec = 0;
;	main.c:448: min = 0;   
;	main.c:449: tmin = 0;                     
;	main.c:451: if(turn == 0)
	clr	a
	mov	_numA,a
	mov	_numB,a
	mov	_tsec,a
	mov	_sec,a
	mov	_min,a
	mov	_tmin,a
	mov	a,_turn
;	main.c:452: writeArray("  1. Addition   ", 0);
	jnz	00102$
	mov	_writeArray_PARM_2,a
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_writeArray
00102$:
;	main.c:453: if(turn == 1)
	mov	a,#0x01
	cjne	a,_turn,00104$
;	main.c:454: writeArray(" 2. Subtraction ", 0);
	mov	_writeArray_PARM_2,#0x00
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_writeArray
00104$:
;	main.c:455: if(turn == 2)
	mov	a,#0x02
	cjne	a,_turn,00106$
;	main.c:456: writeArray("   3. Division  ", 0);
	mov	_writeArray_PARM_2,#0x00
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_writeArray
00106$:
;	main.c:457: if(turn == 3)
	mov	a,#0x03
	cjne	a,_turn,00108$
;	main.c:458: writeArray("4.Multiplication", 0);
	mov	_writeArray_PARM_2,#0x00
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_writeArray
00108$:
;	main.c:459: if(turn > 3)
	mov	a,_turn
	add	a,#0xff - 0x03
	jnc	00110$
;	main.c:460: turn = 0;
	mov	_turn,#0x00
00110$:
;	main.c:461: writeArray("                ", 1);
	mov	_writeArray_PARM_2,#0x01
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_writeArray
;	main.c:462: if(SW == 0)
	jb	_P5_4,00123$
;	main.c:464: while(SW == 0)
00111$:
	jb	_P5_4,00113$
;	main.c:466: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:467: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_numB,r6
	sjmp	00111$
00113$:
;	main.c:469: displaySelect = turn + 1;
	mov	a,_turn
	inc	a
	mov	_displaySelect,a
;	main.c:470: setupInt();
	lcall	_setupInt
;	main.c:471: com(0x01);
	mov	dpl,#0x01
	lcall	_com
	sjmp	00123$
00122$:
;	main.c:476: if(SW == 0)
	jb	_P5_4,00123$
;	main.c:478: while(SW == 0);
00116$:
	jnb	_P5_4,00116$
;	main.c:479: answer = 1;
	mov	_answer,#0x01
00123$:
;	main.c:482: if(displaySelect == adds)
	mov	a,#0x01
	cjne	a,_displaySelect,00132$
;	main.c:484: add();
	lcall	_add
;	main.c:485: displaySelect = adds;
	mov	_displaySelect,#0x01
;	main.c:486: if(doneNum == quesNum)
	mov	a,_quesNum
	cjne	a,_doneNum,00125$
;	main.c:488: TMOD = 0x00;
	mov	_TMOD,#0x00
;	main.c:489: end();
	lcall	_end
;	main.c:490: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	main.c:491: displaySelect = menu;
	mov	_displaySelect,#0x00
00125$:
;	main.c:493: if(next == 1)
	jnb	_next,00132$
;	main.c:495: do
00126$:
;	main.c:497: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:498: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numB,r6
;	main.c:499: }while(numA+numB > 254);
	mov	r6,_numA
	mov	r7,#0x00
	mov	r4,_numB
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,#0xfe
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00126$
;	main.c:500: next = 0;
;	assignBit
	clr	_next
;	main.c:501: answer = 0;
	mov	_answer,#0x00
;	main.c:502: turn = 0;
	mov	_turn,#0x00
00132$:
;	main.c:505: if(displaySelect == divs)
	mov	a,#0x03
	cjne	a,_displaySelect,00141$
;	main.c:507: div();
	lcall	_div
;	main.c:508: displaySelect = divs;
	mov	_displaySelect,#0x03
;	main.c:509: if(doneNum == quesNum)
	mov	a,_quesNum
	cjne	a,_doneNum,00134$
;	main.c:511: TMOD = 0x00;
	mov	_TMOD,#0x00
;	main.c:512: end();
	lcall	_end
;	main.c:513: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	main.c:514: displaySelect = menu;
	mov	_displaySelect,#0x00
00134$:
;	main.c:516: if(next == 1)
	jnb	_next,00141$
;	main.c:518: do
00135$:
;	main.c:520: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:521: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_numB,r6
;	main.c:522: }while(numA%numB != 0);
	mov	b,_numB
	mov	a,_numA
	div	ab
	mov	a,b
	jnz	00135$
;	main.c:523: next = 0;
;	assignBit
	clr	_next
;	main.c:524: answer = 0;
	mov	_answer,#0x00
;	main.c:525: turn = 0;
	mov	_turn,#0x00
00141$:
;	main.c:528: if(displaySelect == subs)
	mov	a,#0x02
	cjne	a,_displaySelect,00150$
;	main.c:530: sub();
	lcall	_sub
;	main.c:531: displaySelect = subs;
	mov	_displaySelect,#0x02
;	main.c:532: if(doneNum == quesNum)
	mov	a,_quesNum
	cjne	a,_doneNum,00143$
;	main.c:534: TMOD = 0x00;
	mov	_TMOD,#0x00
;	main.c:535: end();
	lcall	_end
;	main.c:536: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	main.c:537: displaySelect = menu;
	mov	_displaySelect,#0x00
00143$:
;	main.c:539: if(next == 1)
	jnb	_next,00150$
;	main.c:541: do
00144$:
;	main.c:543: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:544: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numB,r6
;	main.c:545: }while(numA-numB < 0);
	mov	r6,_numA
	mov	r7,#0x00
	mov	r4,_numB
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	jb	acc.7,00144$
;	main.c:546: next = 0;
;	assignBit
	clr	_next
;	main.c:547: answer = 0;
	mov	_answer,#0x00
;	main.c:548: turn = 0;
	mov	_turn,#0x00
00150$:
;	main.c:551: if(displaySelect == mults)
	mov	a,#0x04
	cjne	a,_displaySelect,00159$
;	main.c:553: mult();
	lcall	_mult
;	main.c:554: displaySelect = mults;
	mov	_displaySelect,#0x04
;	main.c:555: if(doneNum == quesNum)
	mov	a,_quesNum
	cjne	a,_doneNum,00152$
;	main.c:557: TMOD = 0x00;
	mov	_TMOD,#0x00
;	main.c:558: end();
	lcall	_end
;	main.c:559: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	main.c:560: displaySelect = menu;
	mov	_displaySelect,#0x00
00152$:
;	main.c:562: if(next == 1)
	jnb	_next,00159$
;	main.c:564: do
00153$:
;	main.c:566: numA = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numA,r6
;	main.c:567: numB = rand()%100;
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_numB,r6
;	main.c:568: }while(numA*numB > 254);
	mov	b,_numA
	mov	a,_numB
	mul	ab
	mov	r6,a
	mov	r7,b
	clr	c
	mov	a,#0xfe
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00153$
;	main.c:569: next = 0;
;	assignBit
	clr	_next
;	main.c:570: answer = 0;
	mov	_answer,#0x00
;	main.c:571: turn = 0;
	mov	_turn,#0x00
00159$:
;	main.c:574: if(displaySelect != menu)
	mov	a,_displaySelect
	jz	00164$
;	main.c:576: if(timeStuck == 0)
	jb	_timeStuck,00161$
;	main.c:578: display[1][11] = tmin+0x30;
	mov	r7,_tmin
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001b),a
;	main.c:579: display[1][12] = min+0x30;
	mov	r7,_min
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001c),a
;	main.c:580: display[1][13] = ':';
	mov	(_display + 0x001d),#0x3a
;	main.c:581: display[1][14] = tsec+0x30;
	mov	r7,_tsec
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001e),a
;	main.c:582: display[1][15] = sec+0x30;
	mov	r7,_sec
	mov	a,#0x30
	add	a,r7
	mov	(_display + 0x001f),a
	sjmp	00164$
00161$:
;	main.c:586: display[1][11] = ' ';
	mov	(_display + 0x001b),#0x20
;	main.c:587: display[1][12] = 'O';
	mov	(_display + 0x001c),#0x4f
;	main.c:588: display[1][13] = 'V';
	mov	(_display + 0x001d),#0x56
;	main.c:589: display[1][14] = 'E';
	mov	(_display + 0x001e),#0x45
;	main.c:590: display[1][15] = 'R';
	mov	(_display + 0x001f),#0x52
00164$:
;	main.c:594: displayFlip();
	lcall	_displayFlip
;	main.c:596: }
	ljmp	00166$
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:598: void setup()
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:600: DT = 1;
;	assignBit
	setb	_P1_5
;	main.c:601: SW = 1;
;	assignBit
	setb	_P5_4
;	main.c:602: CLK = 1;
;	assignBit
	setb	_P3_2
;	main.c:603: com(0x02);
	mov	dpl,#0x02
	lcall	_com
;	main.c:604: delay(5);
	mov	dpl,#0x05
	lcall	_delay
;	main.c:605: com(0x28);
	mov	dpl,#0x28
	lcall	_com
;	main.c:606: delay(5);
	mov	dpl,#0x05
	lcall	_delay
;	main.c:607: com(0x0E);
	mov	dpl,#0x0e
	lcall	_com
;	main.c:608: delay(5);
	mov	dpl,#0x05
	lcall	_delay
;	main.c:609: com(0x06);
	mov	dpl,#0x06
	lcall	_com
;	main.c:610: delay(5);
	mov	dpl,#0x05
	lcall	_delay
;	main.c:611: com(0x01);
	mov	dpl,#0x01
	lcall	_com
;	main.c:612: delay(5);
	mov	dpl,#0x05
	lcall	_delay
;	main.c:613: com(0x80);
	mov	dpl,#0x80
	lcall	_com
;	main.c:619: INT0 = 1;
;	assignBit
	setb	_INT0
;	main.c:620: IT0 = 0;
;	assignBit
	clr	_IT0
;	main.c:621: EX0 = 1;
;	assignBit
	setb	_EX0
;	main.c:622: EA = 1;
;	assignBit
	setb	_EA
;	main.c:623: write(" HP by Bohan Xu ",0);
	mov	_write_PARM_2,#0x00
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_write
;	main.c:624: write("      2025      ",1);
	mov	_write_PARM_2,#0x01
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_write
;	main.c:625: delayl(100);
	mov	dpl,#0x64
;	main.c:626: }
	ljmp	_delayl
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:628: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:634: setup();
	lcall	_setup
;	main.c:635: loop();
	lcall	_loop
;	main.c:636: while(1);
00102$:
;	main.c:637: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "  .       =     "
	.db 0x00
___str_1:
	.ascii "                "
	.db 0x00
___str_2:
	.ascii "   left!        "
	.db 0x00
___str_3:
	.ascii "       YES      "
	.db 0x00
___str_4:
	.ascii "       NO       "
	.db 0x00
___str_5:
	.ascii "YOU GOT      AND"
	.db 0x00
___str_6:
	.ascii "YOUR TIME   :   "
	.db 0x00
___str_7:
	.ascii "  1. Addition   "
	.db 0x00
___str_8:
	.ascii " 2. Subtraction "
	.db 0x00
___str_9:
	.ascii "   3. Division  "
	.db 0x00
___str_10:
	.ascii "4.Multiplication"
	.db 0x00
___str_11:
	.ascii " HP by Bohan Xu "
	.db 0x00
___str_12:
	.ascii "      2025      "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
