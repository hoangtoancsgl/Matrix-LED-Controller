;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.9 #13731 (Linux)
;--------------------------------------------------------
	.module RCSwitch
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _diff_PARM_2
	.globl _receiveProtocol_PARM_2
	.globl _initSwitch
	.globl _available
	.globl _resetAvailable
	.globl _getReceivedValue
	.globl _diff
	.globl _receiveProtocol
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_receiveProtocol_PARM_2:
	.ds 2
_receiveProtocol_RCSwitch_65536_55:
	.ds 3
_receiveProtocol_code_65536_56:
	.ds 4
_receiveProtocol_delay_65536_56:
	.ds 2
_receiveProtocol_delayTolerance_65536_56:
	.ds 2
_receiveProtocol_sloc0_1_0:
	.ds 1
_receiveProtocol_sloc1_1_0:
	.ds 3
_receiveProtocol_sloc2_1_0:
	.ds 3
_receiveProtocol_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_diff_PARM_2:
	.ds 2
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
_available_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'initSwitch'
;------------------------------------------------------------
;RCSwitch                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	RCSwitch.c:14: void initSwitch(RCSWITCH_t * RCSwitch) {
;	-----------------------------------------
;	 function initSwitch
;	-----------------------------------------
_initSwitch:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	RCSwitch.c:15: RCSwitch->nReceivedValue = 0;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	RCSwitch.c:16: RCSwitch->nReceivedBitlength = 0;
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	RCSwitch.c:17: RCSwitch->nReceivedDelay = 0;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	RCSwitch.c:18: RCSwitch->nReceivedProtocol = 0;
	mov	a,#0x08
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	RCSwitch.c:19: RCSwitch->nReceiveTolerance = 60;
	mov	a,#0x0a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3c
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	RCSwitch.c:20: RCSwitch->nSeparationLimit = 4300;
	mov	a,#0x0c
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xcc
	lcall	__gptrput
	inc	dptr
	mov	a,#0x10
	lcall	__gptrput
;	RCSwitch.c:22: RCSwitch->nReceiverInterrupt = -1;
	mov	a,#0x94
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	RCSwitch.c:23: RCSwitch->nReceivedValue = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
;	RCSwitch.c:24: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'available'
;------------------------------------------------------------
;RCSwitch                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	RCSwitch.c:27: bool available(RCSWITCH_t * RCSwitch) {
;	-----------------------------------------
;	 function available
;	-----------------------------------------
_available:
;	RCSwitch.c:28: return RCSwitch->nReceivedValue != 0;
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r4
	cjne	a,#0x01,00103$
00103$:
	mov  _available_sloc0_1_0,c
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
;	RCSwitch.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetAvailable'
;------------------------------------------------------------
;RCSwitch                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	RCSwitch.c:31: void resetAvailable(RCSWITCH_t * RCSwitch) {
;	-----------------------------------------
;	 function resetAvailable
;	-----------------------------------------
_resetAvailable:
;	RCSwitch.c:32: RCSwitch->nReceivedValue = 0;
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
;	RCSwitch.c:33: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'getReceivedValue'
;------------------------------------------------------------
;RCSwitch                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	RCSwitch.c:35: unsigned long getReceivedValue(RCSWITCH_t * RCSwitch) {
;	-----------------------------------------
;	 function getReceivedValue
;	-----------------------------------------
_getReceivedValue:
;	RCSwitch.c:36: return RCSwitch->nReceivedValue;
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	RCSwitch.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'diff'
;------------------------------------------------------------
;B                         Allocated with name '_diff_PARM_2'
;A                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	RCSwitch.c:41: unsigned int diff(int A, int B) {
;	-----------------------------------------
;	 function diff
;	-----------------------------------------
_diff:
	mov	r6,dpl
	mov	r7,dph
;	RCSwitch.c:42: return ((A - B)>0) ? A-B : B-A;
	mov	a,r6
	clr	c
	subb	a,_diff_PARM_2
	mov	r4,a
	mov	a,r7
	subb	a,(_diff_PARM_2 + 1)
	mov	r5,a
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	mov	a,r6
	clr	c
	subb	a,_diff_PARM_2
	mov	r4,a
	mov	a,r7
	subb	a,(_diff_PARM_2 + 1)
	mov	r5,a
	sjmp	00104$
00103$:
	mov	a,_diff_PARM_2
	clr	c
	subb	a,r6
	mov	r4,a
	mov	a,(_diff_PARM_2 + 1)
	subb	a,r7
	mov	r5,a
00104$:
	mov	dpl,r4
	mov	dph,r5
;	RCSwitch.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiveProtocol'
;------------------------------------------------------------
;changeCount               Allocated with name '_receiveProtocol_PARM_2'
;RCSwitch                  Allocated with name '_receiveProtocol_RCSwitch_65536_55'
;code                      Allocated with name '_receiveProtocol_code_65536_56'
;syncLengthInPulses        Allocated to registers 
;delay                     Allocated with name '_receiveProtocol_delay_65536_56'
;delayTolerance            Allocated with name '_receiveProtocol_delayTolerance_65536_56'
;i                         Allocated to registers r3 
;sloc0                     Allocated with name '_receiveProtocol_sloc0_1_0'
;sloc1                     Allocated with name '_receiveProtocol_sloc1_1_0'
;sloc2                     Allocated with name '_receiveProtocol_sloc2_1_0'
;sloc3                     Allocated with name '_receiveProtocol_sloc3_1_0'
;------------------------------------------------------------
;	RCSwitch.c:46: bool receiveProtocol(RCSWITCH_t * RCSwitch, unsigned int changeCount) {
;	-----------------------------------------
;	 function receiveProtocol
;	-----------------------------------------
_receiveProtocol:
	mov	_receiveProtocol_RCSwitch_65536_55,dpl
	mov	(_receiveProtocol_RCSwitch_65536_55 + 1),dph
	mov	(_receiveProtocol_RCSwitch_65536_55 + 2),b
;	RCSwitch.c:48: unsigned long code = 0;
	clr	a
	mov	_receiveProtocol_code_65536_56,a
	mov	(_receiveProtocol_code_65536_56 + 1),a
	mov	(_receiveProtocol_code_65536_56 + 2),a
	mov	(_receiveProtocol_code_65536_56 + 3),a
;	RCSwitch.c:50: const unsigned int syncLengthInPulses =  ((pro.syncFactor.low) > (pro.syncFactor.high)) ? (pro.syncFactor.low) : (pro.syncFactor.high);
	mov	dptr,#(_pro + 0x0003)
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	dptr,#(_pro + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	_receiveProtocol_sloc0_1_0,a
	clr	c
	subb	a,r0
	jnc	00117$
	sjmp	00118$
00117$:
	mov	r0,_receiveProtocol_sloc0_1_0
00118$:
	mov	__divuint_PARM_2,r0
	mov	(__divuint_PARM_2 + 1),#0x00
;	RCSwitch.c:51: const unsigned int delay = RCSwitch->timings[0] / syncLengthInPulses;
	mov	a,#0x0e
	add	a,_receiveProtocol_RCSwitch_65536_55
	mov	r0,a
	clr	a
	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
	mov	r6,a
	mov	r7,(_receiveProtocol_RCSwitch_65536_55 + 2)
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r0
	mov	dph,r6
	lcall	__divuint
	mov	_receiveProtocol_delay_65536_56,dpl
	mov	(_receiveProtocol_delay_65536_56 + 1),dph
;	RCSwitch.c:52: const unsigned int delayTolerance = delay * RCSwitch->nReceiveTolerance / 100;
	mov	a,#0x0a
	add	a,_receiveProtocol_RCSwitch_65536_55
	mov	r0,a
	clr	a
	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
	mov	r4,a
	mov	r5,(_receiveProtocol_RCSwitch_65536_55 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	__mulint_PARM_2,r0
	mov	(__mulint_PARM_2 + 1),r4
	mov	dpl,_receiveProtocol_delay_65536_56
	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	_receiveProtocol_delayTolerance_65536_56,dpl
	mov	(_receiveProtocol_delayTolerance_65536_56 + 1),dph
;	RCSwitch.c:72: for (uint8_t i = 1; i < changeCount - 1; i += 2) {
	mov	r3,#0x01
	mov	a,#0x0e
	add	a,_receiveProtocol_RCSwitch_65536_55
	mov	r0,a
	clr	a
	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
	mov	r1,a
	mov	r2,(_receiveProtocol_RCSwitch_65536_55 + 2)
	mov	_receiveProtocol_sloc1_1_0,r0
	mov	(_receiveProtocol_sloc1_1_0 + 1),r1
	mov	(_receiveProtocol_sloc1_1_0 + 2),r2
	mov	_receiveProtocol_sloc2_1_0,r0
	mov	(_receiveProtocol_sloc2_1_0 + 1),r1
	mov	(_receiveProtocol_sloc2_1_0 + 2),r2
	mov	a,_receiveProtocol_PARM_2
	add	a,#0xff
	mov	_receiveProtocol_sloc3_1_0,a
	mov	a,(_receiveProtocol_PARM_2 + 1)
	addc	a,#0xff
	mov	(_receiveProtocol_sloc3_1_0 + 1),a
00113$:
	mov	ar4,r3
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,_receiveProtocol_sloc3_1_0
	mov	a,r5
	subb	a,(_receiveProtocol_sloc3_1_0 + 1)
	jc	00148$
	ljmp	00109$
00148$:
;	RCSwitch.c:73: code <<= 1;
	mov	a,_receiveProtocol_code_65536_56
	add	a,_receiveProtocol_code_65536_56
	mov	_receiveProtocol_code_65536_56,a
	mov	a,(_receiveProtocol_code_65536_56 + 1)
	rlc	a
	mov	(_receiveProtocol_code_65536_56 + 1),a
	mov	a,(_receiveProtocol_code_65536_56 + 2)
	rlc	a
	mov	(_receiveProtocol_code_65536_56 + 2),a
	mov	a,(_receiveProtocol_code_65536_56 + 3)
	rlc	a
	mov	(_receiveProtocol_code_65536_56 + 3),a
;	RCSwitch.c:74: if (diff(RCSwitch->timings[i], delay * pro.zero.high) < delayTolerance &&
	mov	a,r3
	add	a,r3
	add	a,r0
	mov	r4,a
	clr	a
	addc	a,r1
	mov	r5,a
	mov	ar7,r2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_pro + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_receiveProtocol_delay_65536_56
	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	_diff_PARM_2,dpl
	mov	(_diff_PARM_2 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r4
	mov	dph,r5
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_diff
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	clr	c
	mov	a,r6
	subb	a,_receiveProtocol_delayTolerance_65536_56
	mov	a,r7
	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
	jc	00149$
	ljmp	00106$
00149$:
;	RCSwitch.c:75: diff(RCSwitch->timings[i + 1], delay * pro.zero.low) < delayTolerance) {
	mov	ar6,r3
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00150$
	inc	r7
00150$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r0
	mov	r6,a
	mov	a,r7
	addc	a,r1
	mov	r7,a
	mov	ar5,r2
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(_pro + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_receiveProtocol_delay_65536_56
	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	_diff_PARM_2,dpl
	mov	(_diff_PARM_2 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_diff
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	clr	c
	mov	a,r6
	subb	a,_receiveProtocol_delayTolerance_65536_56
	mov	a,r7
	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
	jnc	00151$
	ljmp	00114$
00151$:
00106$:
;	RCSwitch.c:77: } else if (diff(RCSwitch->timings[i], delay * pro.one.high) < delayTolerance &&
	mov	a,r3
	add	a,r3
	add	a,_receiveProtocol_sloc1_1_0
	mov	r7,a
	clr	a
	addc	a,(_receiveProtocol_sloc1_1_0 + 1)
	mov	r6,a
	mov	r5,(_receiveProtocol_sloc1_1_0 + 2)
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(_pro + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_receiveProtocol_delay_65536_56
	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	_diff_PARM_2,dpl
	mov	(_diff_PARM_2 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_diff
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	clr	c
	mov	a,r6
	subb	a,_receiveProtocol_delayTolerance_65536_56
	mov	a,r7
	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
	jc	00152$
	ljmp	00102$
00152$:
;	RCSwitch.c:78: diff(RCSwitch->timings[i + 1], delay * pro.one.low) < delayTolerance) {
	mov	ar6,r3
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00153$
	inc	r7
00153$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,_receiveProtocol_sloc2_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_receiveProtocol_sloc2_1_0 + 1)
	mov	r7,a
	mov	r5,(_receiveProtocol_sloc2_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(_pro + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_receiveProtocol_delay_65536_56
	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	_diff_PARM_2,dpl
	mov	(_diff_PARM_2 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_diff
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	clr	c
	mov	a,r6
	subb	a,_receiveProtocol_delayTolerance_65536_56
	mov	a,r7
	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
	jnc	00102$
;	RCSwitch.c:80: code |= 1;
	orl	_receiveProtocol_code_65536_56,#0x01
	sjmp	00114$
00102$:
;	RCSwitch.c:83: return false;
	mov	dpl,#0x00
	ret
00114$:
;	RCSwitch.c:72: for (uint8_t i = 1; i < changeCount - 1; i += 2) {
	mov	ar7,r3
	mov	a,#0x02
	add	a,r7
	mov	r3,a
	ljmp	00113$
00109$:
;	RCSwitch.c:87: if (changeCount > 7) {		// ignore very short transmissions: no device sends them, so this must be noise
	clr	c
	mov	a,#0x07
	subb	a,_receiveProtocol_PARM_2
	clr	a
	subb	a,(_receiveProtocol_PARM_2 + 1)
	jnc	00111$
;	RCSwitch.c:88: RCSwitch->nReceivedValue = code;
	mov	dpl,_receiveProtocol_RCSwitch_65536_55
	mov	dph,(_receiveProtocol_RCSwitch_65536_55 + 1)
	mov	b,(_receiveProtocol_RCSwitch_65536_55 + 2)
	mov	a,_receiveProtocol_code_65536_56
	lcall	__gptrput
	inc	dptr
	mov	a,(_receiveProtocol_code_65536_56 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_receiveProtocol_code_65536_56 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_receiveProtocol_code_65536_56 + 3)
	lcall	__gptrput
;	RCSwitch.c:89: RCSwitch->nReceivedBitlength = (changeCount - 1) / 2;
	mov	a,#0x04
	add	a,_receiveProtocol_RCSwitch_65536_55
	mov	r5,a
	clr	a
	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
	mov	r6,a
	mov	r7,(_receiveProtocol_RCSwitch_65536_55 + 2)
	mov	a,_receiveProtocol_PARM_2
	add	a,#0xff
	mov	r3,a
	mov	a,(_receiveProtocol_PARM_2 + 1)
	addc	a,#0xff
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	RCSwitch.c:90: RCSwitch->nReceivedDelay = delay;
	mov	a,#0x06
	add	a,_receiveProtocol_RCSwitch_65536_55
	mov	r5,a
	clr	a
	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
	mov	r6,a
	mov	r7,(_receiveProtocol_RCSwitch_65536_55 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_receiveProtocol_delay_65536_56
	lcall	__gptrput
	inc	dptr
	mov	a,(_receiveProtocol_delay_65536_56 + 1)
	lcall	__gptrput
;	RCSwitch.c:91: return true;
	mov	dpl,#0x01
	ret
00111$:
;	RCSwitch.c:94: return false;
	mov	dpl,#0x00
;	RCSwitch.c:95: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_pro:
	.byte #0x5e, #0x01	; 350
	.db #0x01	; 1
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
