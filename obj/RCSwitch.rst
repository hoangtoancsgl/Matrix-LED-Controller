                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.9 #13731 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module RCSwitch
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _diff_PARM_2
                                     12 	.globl _receiveProtocol_PARM_2
                                     13 	.globl _initSwitch
                                     14 	.globl _available
                                     15 	.globl _resetAvailable
                                     16 	.globl _getReceivedValue
                                     17 	.globl _diff
                                     18 	.globl _receiveProtocol
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; special function bits
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; overlayable register banks
                                     31 ;--------------------------------------------------------
                                     32 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         33 	.ds 8
                                     34 ;--------------------------------------------------------
                                     35 ; internal ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DSEG    (DATA)
      000022                         38 _receiveProtocol_PARM_2:
      000022                         39 	.ds 2
      000024                         40 _receiveProtocol_RCSwitch_65536_55:
      000024                         41 	.ds 3
      000027                         42 _receiveProtocol_code_65536_56:
      000027                         43 	.ds 4
      00002B                         44 _receiveProtocol_delay_65536_56:
      00002B                         45 	.ds 2
      00002D                         46 _receiveProtocol_delayTolerance_65536_56:
      00002D                         47 	.ds 2
      00002F                         48 _receiveProtocol_sloc0_1_0:
      00002F                         49 	.ds 1
      000030                         50 _receiveProtocol_sloc1_1_0:
      000030                         51 	.ds 3
      000033                         52 _receiveProtocol_sloc2_1_0:
      000033                         53 	.ds 3
      000036                         54 _receiveProtocol_sloc3_1_0:
      000036                         55 	.ds 2
                                     56 ;--------------------------------------------------------
                                     57 ; overlayable items in internal ram
                                     58 ;--------------------------------------------------------
                                     59 	.area	OSEG    (OVR,DATA)
                                     60 	.area	OSEG    (OVR,DATA)
                                     61 	.area	OSEG    (OVR,DATA)
                                     62 	.area	OSEG    (OVR,DATA)
                                     63 	.area	OSEG    (OVR,DATA)
      000012                         64 _diff_PARM_2:
      000012                         65 	.ds 2
                                     66 ;--------------------------------------------------------
                                     67 ; indirectly addressable internal ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area ISEG    (DATA)
                                     70 ;--------------------------------------------------------
                                     71 ; absolute internal ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area IABS    (ABS,DATA)
                                     74 	.area IABS    (ABS,DATA)
                                     75 ;--------------------------------------------------------
                                     76 ; bit data
                                     77 ;--------------------------------------------------------
                                     78 	.area BSEG    (BIT)
      000000                         79 _available_sloc0_1_0:
      000000                         80 	.ds 1
                                     81 ;--------------------------------------------------------
                                     82 ; paged external ram data
                                     83 ;--------------------------------------------------------
                                     84 	.area PSEG    (PAG,XDATA)
                                     85 ;--------------------------------------------------------
                                     86 ; uninitialized external ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area XSEG    (XDATA)
                                     89 ;--------------------------------------------------------
                                     90 ; absolute external ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area XABS    (ABS,XDATA)
                                     93 ;--------------------------------------------------------
                                     94 ; initialized external ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area XISEG   (XDATA)
                                     97 	.area HOME    (CODE)
                                     98 	.area GSINIT0 (CODE)
                                     99 	.area GSINIT1 (CODE)
                                    100 	.area GSINIT2 (CODE)
                                    101 	.area GSINIT3 (CODE)
                                    102 	.area GSINIT4 (CODE)
                                    103 	.area GSINIT5 (CODE)
                                    104 	.area GSINIT  (CODE)
                                    105 	.area GSFINAL (CODE)
                                    106 	.area CSEG    (CODE)
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME    (CODE)
                                    111 	.area GSINIT  (CODE)
                                    112 	.area GSFINAL (CODE)
                                    113 	.area GSINIT  (CODE)
                                    114 ;--------------------------------------------------------
                                    115 ; Home
                                    116 ;--------------------------------------------------------
                                    117 	.area HOME    (CODE)
                                    118 	.area HOME    (CODE)
                                    119 ;--------------------------------------------------------
                                    120 ; code
                                    121 ;--------------------------------------------------------
                                    122 	.area CSEG    (CODE)
                                    123 ;------------------------------------------------------------
                                    124 ;Allocation info for local variables in function 'initSwitch'
                                    125 ;------------------------------------------------------------
                                    126 ;RCSwitch                  Allocated to registers r5 r6 r7 
                                    127 ;------------------------------------------------------------
                                    128 ;	RCSwitch.c:14: void initSwitch(RCSWITCH_t * RCSwitch) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function initSwitch
                                    131 ;	-----------------------------------------
      0002EE                        132 _initSwitch:
                           000007   133 	ar7 = 0x07
                           000006   134 	ar6 = 0x06
                           000005   135 	ar5 = 0x05
                           000004   136 	ar4 = 0x04
                           000003   137 	ar3 = 0x03
                           000002   138 	ar2 = 0x02
                           000001   139 	ar1 = 0x01
                           000000   140 	ar0 = 0x00
                                    141 ;	RCSwitch.c:15: RCSwitch->nReceivedValue = 0;
      0002EE AD 82            [24]  142 	mov	r5,dpl
      0002F0 AE 83            [24]  143 	mov	r6,dph
      0002F2 AF F0            [24]  144 	mov	r7,b
      0002F4 E4               [12]  145 	clr	a
      0002F5 12 07 8E         [24]  146 	lcall	__gptrput
      0002F8 A3               [24]  147 	inc	dptr
      0002F9 12 07 8E         [24]  148 	lcall	__gptrput
      0002FC A3               [24]  149 	inc	dptr
      0002FD 12 07 8E         [24]  150 	lcall	__gptrput
      000300 A3               [24]  151 	inc	dptr
      000301 12 07 8E         [24]  152 	lcall	__gptrput
                                    153 ;	RCSwitch.c:16: RCSwitch->nReceivedBitlength = 0;
      000304 74 04            [12]  154 	mov	a,#0x04
      000306 2D               [12]  155 	add	a,r5
      000307 FA               [12]  156 	mov	r2,a
      000308 E4               [12]  157 	clr	a
      000309 3E               [12]  158 	addc	a,r6
      00030A FB               [12]  159 	mov	r3,a
      00030B 8F 04            [24]  160 	mov	ar4,r7
      00030D 8A 82            [24]  161 	mov	dpl,r2
      00030F 8B 83            [24]  162 	mov	dph,r3
      000311 8C F0            [24]  163 	mov	b,r4
      000313 E4               [12]  164 	clr	a
      000314 12 07 8E         [24]  165 	lcall	__gptrput
      000317 A3               [24]  166 	inc	dptr
      000318 12 07 8E         [24]  167 	lcall	__gptrput
                                    168 ;	RCSwitch.c:17: RCSwitch->nReceivedDelay = 0;
      00031B 74 06            [12]  169 	mov	a,#0x06
      00031D 2D               [12]  170 	add	a,r5
      00031E FA               [12]  171 	mov	r2,a
      00031F E4               [12]  172 	clr	a
      000320 3E               [12]  173 	addc	a,r6
      000321 FB               [12]  174 	mov	r3,a
      000322 8F 04            [24]  175 	mov	ar4,r7
      000324 8A 82            [24]  176 	mov	dpl,r2
      000326 8B 83            [24]  177 	mov	dph,r3
      000328 8C F0            [24]  178 	mov	b,r4
      00032A E4               [12]  179 	clr	a
      00032B 12 07 8E         [24]  180 	lcall	__gptrput
      00032E A3               [24]  181 	inc	dptr
      00032F 12 07 8E         [24]  182 	lcall	__gptrput
                                    183 ;	RCSwitch.c:18: RCSwitch->nReceivedProtocol = 0;
      000332 74 08            [12]  184 	mov	a,#0x08
      000334 2D               [12]  185 	add	a,r5
      000335 FA               [12]  186 	mov	r2,a
      000336 E4               [12]  187 	clr	a
      000337 3E               [12]  188 	addc	a,r6
      000338 FB               [12]  189 	mov	r3,a
      000339 8F 04            [24]  190 	mov	ar4,r7
      00033B 8A 82            [24]  191 	mov	dpl,r2
      00033D 8B 83            [24]  192 	mov	dph,r3
      00033F 8C F0            [24]  193 	mov	b,r4
      000341 E4               [12]  194 	clr	a
      000342 12 07 8E         [24]  195 	lcall	__gptrput
      000345 A3               [24]  196 	inc	dptr
      000346 12 07 8E         [24]  197 	lcall	__gptrput
                                    198 ;	RCSwitch.c:19: RCSwitch->nReceiveTolerance = 60;
      000349 74 0A            [12]  199 	mov	a,#0x0a
      00034B 2D               [12]  200 	add	a,r5
      00034C FA               [12]  201 	mov	r2,a
      00034D E4               [12]  202 	clr	a
      00034E 3E               [12]  203 	addc	a,r6
      00034F FB               [12]  204 	mov	r3,a
      000350 8F 04            [24]  205 	mov	ar4,r7
      000352 8A 82            [24]  206 	mov	dpl,r2
      000354 8B 83            [24]  207 	mov	dph,r3
      000356 8C F0            [24]  208 	mov	b,r4
      000358 74 3C            [12]  209 	mov	a,#0x3c
      00035A 12 07 8E         [24]  210 	lcall	__gptrput
      00035D A3               [24]  211 	inc	dptr
      00035E E4               [12]  212 	clr	a
      00035F 12 07 8E         [24]  213 	lcall	__gptrput
                                    214 ;	RCSwitch.c:20: RCSwitch->nSeparationLimit = 4300;
      000362 74 0C            [12]  215 	mov	a,#0x0c
      000364 2D               [12]  216 	add	a,r5
      000365 FA               [12]  217 	mov	r2,a
      000366 E4               [12]  218 	clr	a
      000367 3E               [12]  219 	addc	a,r6
      000368 FB               [12]  220 	mov	r3,a
      000369 8F 04            [24]  221 	mov	ar4,r7
      00036B 8A 82            [24]  222 	mov	dpl,r2
      00036D 8B 83            [24]  223 	mov	dph,r3
      00036F 8C F0            [24]  224 	mov	b,r4
      000371 74 CC            [12]  225 	mov	a,#0xcc
      000373 12 07 8E         [24]  226 	lcall	__gptrput
      000376 A3               [24]  227 	inc	dptr
      000377 74 10            [12]  228 	mov	a,#0x10
      000379 12 07 8E         [24]  229 	lcall	__gptrput
                                    230 ;	RCSwitch.c:22: RCSwitch->nReceiverInterrupt = -1;
      00037C 74 94            [12]  231 	mov	a,#0x94
      00037E 2D               [12]  232 	add	a,r5
      00037F FA               [12]  233 	mov	r2,a
      000380 E4               [12]  234 	clr	a
      000381 3E               [12]  235 	addc	a,r6
      000382 FB               [12]  236 	mov	r3,a
      000383 8F 04            [24]  237 	mov	ar4,r7
      000385 8A 82            [24]  238 	mov	dpl,r2
      000387 8B 83            [24]  239 	mov	dph,r3
      000389 8C F0            [24]  240 	mov	b,r4
      00038B 74 FF            [12]  241 	mov	a,#0xff
      00038D 12 07 8E         [24]  242 	lcall	__gptrput
      000390 A3               [24]  243 	inc	dptr
      000391 12 07 8E         [24]  244 	lcall	__gptrput
                                    245 ;	RCSwitch.c:23: RCSwitch->nReceivedValue = 0;
      000394 8D 82            [24]  246 	mov	dpl,r5
      000396 8E 83            [24]  247 	mov	dph,r6
      000398 8F F0            [24]  248 	mov	b,r7
      00039A E4               [12]  249 	clr	a
      00039B 12 07 8E         [24]  250 	lcall	__gptrput
      00039E A3               [24]  251 	inc	dptr
      00039F 12 07 8E         [24]  252 	lcall	__gptrput
      0003A2 A3               [24]  253 	inc	dptr
      0003A3 12 07 8E         [24]  254 	lcall	__gptrput
      0003A6 A3               [24]  255 	inc	dptr
                                    256 ;	RCSwitch.c:24: }
      0003A7 02 07 8E         [24]  257 	ljmp	__gptrput
                                    258 ;------------------------------------------------------------
                                    259 ;Allocation info for local variables in function 'available'
                                    260 ;------------------------------------------------------------
                                    261 ;RCSwitch                  Allocated to registers r5 r6 r7 
                                    262 ;------------------------------------------------------------
                                    263 ;	RCSwitch.c:27: bool available(RCSWITCH_t * RCSwitch) {
                                    264 ;	-----------------------------------------
                                    265 ;	 function available
                                    266 ;	-----------------------------------------
      0003AA                        267 _available:
                                    268 ;	RCSwitch.c:28: return RCSwitch->nReceivedValue != 0;
      0003AA 12 07 C6         [24]  269 	lcall	__gptrget
      0003AD FD               [12]  270 	mov	r5,a
      0003AE A3               [24]  271 	inc	dptr
      0003AF 12 07 C6         [24]  272 	lcall	__gptrget
      0003B2 FE               [12]  273 	mov	r6,a
      0003B3 A3               [24]  274 	inc	dptr
      0003B4 12 07 C6         [24]  275 	lcall	__gptrget
      0003B7 FF               [12]  276 	mov	r7,a
      0003B8 A3               [24]  277 	inc	dptr
      0003B9 12 07 C6         [24]  278 	lcall	__gptrget
      0003BC FC               [12]  279 	mov	r4,a
      0003BD ED               [12]  280 	mov	a,r5
      0003BE 4E               [12]  281 	orl	a,r6
      0003BF 4F               [12]  282 	orl	a,r7
      0003C0 4C               [12]  283 	orl	a,r4
      0003C1 B4 01 00         [24]  284 	cjne	a,#0x01,00103$
      0003C4                        285 00103$:
      0003C4 92 00            [24]  286 	mov  _available_sloc0_1_0,c
      0003C6 B3               [12]  287 	cpl	c
      0003C7 E4               [12]  288 	clr	a
      0003C8 33               [12]  289 	rlc	a
      0003C9 F5 82            [12]  290 	mov	dpl,a
                                    291 ;	RCSwitch.c:29: }
      0003CB 22               [24]  292 	ret
                                    293 ;------------------------------------------------------------
                                    294 ;Allocation info for local variables in function 'resetAvailable'
                                    295 ;------------------------------------------------------------
                                    296 ;RCSwitch                  Allocated to registers r5 r6 r7 
                                    297 ;------------------------------------------------------------
                                    298 ;	RCSwitch.c:31: void resetAvailable(RCSWITCH_t * RCSwitch) {
                                    299 ;	-----------------------------------------
                                    300 ;	 function resetAvailable
                                    301 ;	-----------------------------------------
      0003CC                        302 _resetAvailable:
                                    303 ;	RCSwitch.c:32: RCSwitch->nReceivedValue = 0;
      0003CC E4               [12]  304 	clr	a
      0003CD 12 07 8E         [24]  305 	lcall	__gptrput
      0003D0 A3               [24]  306 	inc	dptr
      0003D1 12 07 8E         [24]  307 	lcall	__gptrput
      0003D4 A3               [24]  308 	inc	dptr
      0003D5 12 07 8E         [24]  309 	lcall	__gptrput
      0003D8 A3               [24]  310 	inc	dptr
                                    311 ;	RCSwitch.c:33: }
      0003D9 02 07 8E         [24]  312 	ljmp	__gptrput
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'getReceivedValue'
                                    315 ;------------------------------------------------------------
                                    316 ;RCSwitch                  Allocated to registers r5 r6 r7 
                                    317 ;------------------------------------------------------------
                                    318 ;	RCSwitch.c:35: unsigned long getReceivedValue(RCSWITCH_t * RCSwitch) {
                                    319 ;	-----------------------------------------
                                    320 ;	 function getReceivedValue
                                    321 ;	-----------------------------------------
      0003DC                        322 _getReceivedValue:
                                    323 ;	RCSwitch.c:36: return RCSwitch->nReceivedValue;
      0003DC 12 07 C6         [24]  324 	lcall	__gptrget
      0003DF FD               [12]  325 	mov	r5,a
      0003E0 A3               [24]  326 	inc	dptr
      0003E1 12 07 C6         [24]  327 	lcall	__gptrget
      0003E4 FE               [12]  328 	mov	r6,a
      0003E5 A3               [24]  329 	inc	dptr
      0003E6 12 07 C6         [24]  330 	lcall	__gptrget
      0003E9 FF               [12]  331 	mov	r7,a
      0003EA A3               [24]  332 	inc	dptr
      0003EB 12 07 C6         [24]  333 	lcall	__gptrget
      0003EE 8D 82            [24]  334 	mov	dpl,r5
      0003F0 8E 83            [24]  335 	mov	dph,r6
      0003F2 8F F0            [24]  336 	mov	b,r7
                                    337 ;	RCSwitch.c:37: }
      0003F4 22               [24]  338 	ret
                                    339 ;------------------------------------------------------------
                                    340 ;Allocation info for local variables in function 'diff'
                                    341 ;------------------------------------------------------------
                                    342 ;B                         Allocated with name '_diff_PARM_2'
                                    343 ;A                         Allocated to registers r6 r7 
                                    344 ;------------------------------------------------------------
                                    345 ;	RCSwitch.c:41: unsigned int diff(int A, int B) {
                                    346 ;	-----------------------------------------
                                    347 ;	 function diff
                                    348 ;	-----------------------------------------
      0003F5                        349 _diff:
      0003F5 AE 82            [24]  350 	mov	r6,dpl
      0003F7 AF 83            [24]  351 	mov	r7,dph
                                    352 ;	RCSwitch.c:42: return ((A - B)>0) ? A-B : B-A;
      0003F9 EE               [12]  353 	mov	a,r6
      0003FA C3               [12]  354 	clr	c
      0003FB 95 12            [12]  355 	subb	a,_diff_PARM_2
      0003FD FC               [12]  356 	mov	r4,a
      0003FE EF               [12]  357 	mov	a,r7
      0003FF 95 13            [12]  358 	subb	a,(_diff_PARM_2 + 1)
      000401 FD               [12]  359 	mov	r5,a
      000402 C3               [12]  360 	clr	c
      000403 E4               [12]  361 	clr	a
      000404 9C               [12]  362 	subb	a,r4
      000405 74 80            [12]  363 	mov	a,#(0x00 ^ 0x80)
      000407 8D F0            [24]  364 	mov	b,r5
      000409 63 F0 80         [24]  365 	xrl	b,#0x80
      00040C 95 F0            [12]  366 	subb	a,b
      00040E 50 0B            [24]  367 	jnc	00103$
      000410 EE               [12]  368 	mov	a,r6
      000411 C3               [12]  369 	clr	c
      000412 95 12            [12]  370 	subb	a,_diff_PARM_2
      000414 FC               [12]  371 	mov	r4,a
      000415 EF               [12]  372 	mov	a,r7
      000416 95 13            [12]  373 	subb	a,(_diff_PARM_2 + 1)
      000418 FD               [12]  374 	mov	r5,a
      000419 80 09            [24]  375 	sjmp	00104$
      00041B                        376 00103$:
      00041B E5 12            [12]  377 	mov	a,_diff_PARM_2
      00041D C3               [12]  378 	clr	c
      00041E 9E               [12]  379 	subb	a,r6
      00041F FC               [12]  380 	mov	r4,a
      000420 E5 13            [12]  381 	mov	a,(_diff_PARM_2 + 1)
      000422 9F               [12]  382 	subb	a,r7
      000423 FD               [12]  383 	mov	r5,a
      000424                        384 00104$:
      000424 8C 82            [24]  385 	mov	dpl,r4
      000426 8D 83            [24]  386 	mov	dph,r5
                                    387 ;	RCSwitch.c:43: }
      000428 22               [24]  388 	ret
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'receiveProtocol'
                                    391 ;------------------------------------------------------------
                                    392 ;changeCount               Allocated with name '_receiveProtocol_PARM_2'
                                    393 ;RCSwitch                  Allocated with name '_receiveProtocol_RCSwitch_65536_55'
                                    394 ;code                      Allocated with name '_receiveProtocol_code_65536_56'
                                    395 ;syncLengthInPulses        Allocated to registers 
                                    396 ;delay                     Allocated with name '_receiveProtocol_delay_65536_56'
                                    397 ;delayTolerance            Allocated with name '_receiveProtocol_delayTolerance_65536_56'
                                    398 ;i                         Allocated to registers r3 
                                    399 ;sloc0                     Allocated with name '_receiveProtocol_sloc0_1_0'
                                    400 ;sloc1                     Allocated with name '_receiveProtocol_sloc1_1_0'
                                    401 ;sloc2                     Allocated with name '_receiveProtocol_sloc2_1_0'
                                    402 ;sloc3                     Allocated with name '_receiveProtocol_sloc3_1_0'
                                    403 ;------------------------------------------------------------
                                    404 ;	RCSwitch.c:46: bool receiveProtocol(RCSWITCH_t * RCSwitch, unsigned int changeCount) {
                                    405 ;	-----------------------------------------
                                    406 ;	 function receiveProtocol
                                    407 ;	-----------------------------------------
      000429                        408 _receiveProtocol:
      000429 85 82 24         [24]  409 	mov	_receiveProtocol_RCSwitch_65536_55,dpl
      00042C 85 83 25         [24]  410 	mov	(_receiveProtocol_RCSwitch_65536_55 + 1),dph
      00042F 85 F0 26         [24]  411 	mov	(_receiveProtocol_RCSwitch_65536_55 + 2),b
                                    412 ;	RCSwitch.c:48: unsigned long code = 0;
      000432 E4               [12]  413 	clr	a
      000433 F5 27            [12]  414 	mov	_receiveProtocol_code_65536_56,a
      000435 F5 28            [12]  415 	mov	(_receiveProtocol_code_65536_56 + 1),a
      000437 F5 29            [12]  416 	mov	(_receiveProtocol_code_65536_56 + 2),a
      000439 F5 2A            [12]  417 	mov	(_receiveProtocol_code_65536_56 + 3),a
                                    418 ;	RCSwitch.c:50: const unsigned int syncLengthInPulses =  ((pro.syncFactor.low) > (pro.syncFactor.high)) ? (pro.syncFactor.low) : (pro.syncFactor.high);
      00043B 90 07 E9         [24]  419 	mov	dptr,#(_pro + 0x0003)
                                    420 ;	genFromRTrack removed	clr	a
      00043E 93               [24]  421 	movc	a,@a+dptr
      00043F F8               [12]  422 	mov	r0,a
      000440 90 07 E8         [24]  423 	mov	dptr,#(_pro + 0x0002)
      000443 E4               [12]  424 	clr	a
      000444 93               [24]  425 	movc	a,@a+dptr
      000445 F5 2F            [12]  426 	mov	_receiveProtocol_sloc0_1_0,a
      000447 C3               [12]  427 	clr	c
      000448 98               [12]  428 	subb	a,r0
      000449 50 02            [24]  429 	jnc	00117$
      00044B 80 02            [24]  430 	sjmp	00118$
      00044D                        431 00117$:
      00044D A8 2F            [24]  432 	mov	r0,_receiveProtocol_sloc0_1_0
      00044F                        433 00118$:
      00044F 88 12            [24]  434 	mov	__divuint_PARM_2,r0
      000451 75 13 00         [24]  435 	mov	(__divuint_PARM_2 + 1),#0x00
                                    436 ;	RCSwitch.c:51: const unsigned int delay = RCSwitch->timings[0] / syncLengthInPulses;
      000454 74 0E            [12]  437 	mov	a,#0x0e
      000456 25 24            [12]  438 	add	a,_receiveProtocol_RCSwitch_65536_55
      000458 F8               [12]  439 	mov	r0,a
      000459 E4               [12]  440 	clr	a
      00045A 35 25            [12]  441 	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
      00045C FE               [12]  442 	mov	r6,a
      00045D AF 26            [24]  443 	mov	r7,(_receiveProtocol_RCSwitch_65536_55 + 2)
      00045F 88 82            [24]  444 	mov	dpl,r0
      000461 8E 83            [24]  445 	mov	dph,r6
      000463 8F F0            [24]  446 	mov	b,r7
      000465 12 07 C6         [24]  447 	lcall	__gptrget
      000468 F8               [12]  448 	mov	r0,a
      000469 A3               [24]  449 	inc	dptr
      00046A 12 07 C6         [24]  450 	lcall	__gptrget
      00046D FE               [12]  451 	mov	r6,a
      00046E 88 82            [24]  452 	mov	dpl,r0
      000470 8E 83            [24]  453 	mov	dph,r6
      000472 12 07 65         [24]  454 	lcall	__divuint
      000475 85 82 2B         [24]  455 	mov	_receiveProtocol_delay_65536_56,dpl
      000478 85 83 2C         [24]  456 	mov	(_receiveProtocol_delay_65536_56 + 1),dph
                                    457 ;	RCSwitch.c:52: const unsigned int delayTolerance = delay * RCSwitch->nReceiveTolerance / 100;
      00047B 74 0A            [12]  458 	mov	a,#0x0a
      00047D 25 24            [12]  459 	add	a,_receiveProtocol_RCSwitch_65536_55
      00047F F8               [12]  460 	mov	r0,a
      000480 E4               [12]  461 	clr	a
      000481 35 25            [12]  462 	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
      000483 FC               [12]  463 	mov	r4,a
      000484 AD 26            [24]  464 	mov	r5,(_receiveProtocol_RCSwitch_65536_55 + 2)
      000486 88 82            [24]  465 	mov	dpl,r0
      000488 8C 83            [24]  466 	mov	dph,r4
      00048A 8D F0            [24]  467 	mov	b,r5
      00048C 12 07 C6         [24]  468 	lcall	__gptrget
      00048F F8               [12]  469 	mov	r0,a
      000490 A3               [24]  470 	inc	dptr
      000491 12 07 C6         [24]  471 	lcall	__gptrget
      000494 FC               [12]  472 	mov	r4,a
      000495 88 12            [24]  473 	mov	__mulint_PARM_2,r0
      000497 8C 13            [24]  474 	mov	(__mulint_PARM_2 + 1),r4
      000499 85 2B 82         [24]  475 	mov	dpl,_receiveProtocol_delay_65536_56
      00049C 85 2C 83         [24]  476 	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
      00049F 12 07 A9         [24]  477 	lcall	__mulint
      0004A2 75 12 64         [24]  478 	mov	__divuint_PARM_2,#0x64
      0004A5 75 13 00         [24]  479 	mov	(__divuint_PARM_2 + 1),#0x00
      0004A8 12 07 65         [24]  480 	lcall	__divuint
      0004AB 85 82 2D         [24]  481 	mov	_receiveProtocol_delayTolerance_65536_56,dpl
      0004AE 85 83 2E         [24]  482 	mov	(_receiveProtocol_delayTolerance_65536_56 + 1),dph
                                    483 ;	RCSwitch.c:72: for (uint8_t i = 1; i < changeCount - 1; i += 2) {
      0004B1 7B 01            [12]  484 	mov	r3,#0x01
      0004B3 74 0E            [12]  485 	mov	a,#0x0e
      0004B5 25 24            [12]  486 	add	a,_receiveProtocol_RCSwitch_65536_55
      0004B7 F8               [12]  487 	mov	r0,a
      0004B8 E4               [12]  488 	clr	a
      0004B9 35 25            [12]  489 	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
      0004BB F9               [12]  490 	mov	r1,a
      0004BC AA 26            [24]  491 	mov	r2,(_receiveProtocol_RCSwitch_65536_55 + 2)
      0004BE 88 30            [24]  492 	mov	_receiveProtocol_sloc1_1_0,r0
      0004C0 89 31            [24]  493 	mov	(_receiveProtocol_sloc1_1_0 + 1),r1
      0004C2 8A 32            [24]  494 	mov	(_receiveProtocol_sloc1_1_0 + 2),r2
      0004C4 88 33            [24]  495 	mov	_receiveProtocol_sloc2_1_0,r0
      0004C6 89 34            [24]  496 	mov	(_receiveProtocol_sloc2_1_0 + 1),r1
      0004C8 8A 35            [24]  497 	mov	(_receiveProtocol_sloc2_1_0 + 2),r2
      0004CA E5 22            [12]  498 	mov	a,_receiveProtocol_PARM_2
      0004CC 24 FF            [12]  499 	add	a,#0xff
      0004CE F5 36            [12]  500 	mov	_receiveProtocol_sloc3_1_0,a
      0004D0 E5 23            [12]  501 	mov	a,(_receiveProtocol_PARM_2 + 1)
      0004D2 34 FF            [12]  502 	addc	a,#0xff
      0004D4 F5 37            [12]  503 	mov	(_receiveProtocol_sloc3_1_0 + 1),a
      0004D6                        504 00113$:
      0004D6 8B 04            [24]  505 	mov	ar4,r3
      0004D8 7D 00            [12]  506 	mov	r5,#0x00
      0004DA C3               [12]  507 	clr	c
      0004DB EC               [12]  508 	mov	a,r4
      0004DC 95 36            [12]  509 	subb	a,_receiveProtocol_sloc3_1_0
      0004DE ED               [12]  510 	mov	a,r5
      0004DF 95 37            [12]  511 	subb	a,(_receiveProtocol_sloc3_1_0 + 1)
      0004E1 40 03            [24]  512 	jc	00148$
      0004E3 02 06 EE         [24]  513 	ljmp	00109$
      0004E6                        514 00148$:
                                    515 ;	RCSwitch.c:73: code <<= 1;
      0004E6 E5 27            [12]  516 	mov	a,_receiveProtocol_code_65536_56
      0004E8 25 27            [12]  517 	add	a,_receiveProtocol_code_65536_56
      0004EA F5 27            [12]  518 	mov	_receiveProtocol_code_65536_56,a
      0004EC E5 28            [12]  519 	mov	a,(_receiveProtocol_code_65536_56 + 1)
      0004EE 33               [12]  520 	rlc	a
      0004EF F5 28            [12]  521 	mov	(_receiveProtocol_code_65536_56 + 1),a
      0004F1 E5 29            [12]  522 	mov	a,(_receiveProtocol_code_65536_56 + 2)
      0004F3 33               [12]  523 	rlc	a
      0004F4 F5 29            [12]  524 	mov	(_receiveProtocol_code_65536_56 + 2),a
      0004F6 E5 2A            [12]  525 	mov	a,(_receiveProtocol_code_65536_56 + 3)
      0004F8 33               [12]  526 	rlc	a
      0004F9 F5 2A            [12]  527 	mov	(_receiveProtocol_code_65536_56 + 3),a
                                    528 ;	RCSwitch.c:74: if (diff(RCSwitch->timings[i], delay * pro.zero.high) < delayTolerance &&
      0004FB EB               [12]  529 	mov	a,r3
      0004FC 2B               [12]  530 	add	a,r3
      0004FD 28               [12]  531 	add	a,r0
      0004FE FC               [12]  532 	mov	r4,a
      0004FF E4               [12]  533 	clr	a
      000500 39               [12]  534 	addc	a,r1
      000501 FD               [12]  535 	mov	r5,a
      000502 8A 07            [24]  536 	mov	ar7,r2
      000504 8C 82            [24]  537 	mov	dpl,r4
      000506 8D 83            [24]  538 	mov	dph,r5
      000508 8F F0            [24]  539 	mov	b,r7
      00050A 12 07 C6         [24]  540 	lcall	__gptrget
      00050D FC               [12]  541 	mov	r4,a
      00050E A3               [24]  542 	inc	dptr
      00050F 12 07 C6         [24]  543 	lcall	__gptrget
      000512 FD               [12]  544 	mov	r5,a
      000513 90 07 EA         [24]  545 	mov	dptr,#(_pro + 0x0004)
      000516 E4               [12]  546 	clr	a
      000517 93               [24]  547 	movc	a,@a+dptr
      000518 FF               [12]  548 	mov	r7,a
      000519 8F 12            [24]  549 	mov	__mulint_PARM_2,r7
      00051B 75 13 00         [24]  550 	mov	(__mulint_PARM_2 + 1),#0x00
      00051E 85 2B 82         [24]  551 	mov	dpl,_receiveProtocol_delay_65536_56
      000521 85 2C 83         [24]  552 	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
      000524 C0 05            [24]  553 	push	ar5
      000526 C0 04            [24]  554 	push	ar4
      000528 C0 03            [24]  555 	push	ar3
      00052A C0 02            [24]  556 	push	ar2
      00052C C0 01            [24]  557 	push	ar1
      00052E C0 00            [24]  558 	push	ar0
      000530 12 07 A9         [24]  559 	lcall	__mulint
      000533 85 82 12         [24]  560 	mov	_diff_PARM_2,dpl
      000536 85 83 13         [24]  561 	mov	(_diff_PARM_2 + 1),dph
      000539 D0 00            [24]  562 	pop	ar0
      00053B D0 01            [24]  563 	pop	ar1
      00053D D0 02            [24]  564 	pop	ar2
      00053F D0 03            [24]  565 	pop	ar3
      000541 D0 04            [24]  566 	pop	ar4
      000543 D0 05            [24]  567 	pop	ar5
      000545 8C 82            [24]  568 	mov	dpl,r4
      000547 8D 83            [24]  569 	mov	dph,r5
      000549 C0 03            [24]  570 	push	ar3
      00054B C0 02            [24]  571 	push	ar2
      00054D C0 01            [24]  572 	push	ar1
      00054F C0 00            [24]  573 	push	ar0
      000551 12 03 F5         [24]  574 	lcall	_diff
      000554 AE 82            [24]  575 	mov	r6,dpl
      000556 AF 83            [24]  576 	mov	r7,dph
      000558 D0 00            [24]  577 	pop	ar0
      00055A D0 01            [24]  578 	pop	ar1
      00055C D0 02            [24]  579 	pop	ar2
      00055E D0 03            [24]  580 	pop	ar3
      000560 C3               [12]  581 	clr	c
      000561 EE               [12]  582 	mov	a,r6
      000562 95 2D            [12]  583 	subb	a,_receiveProtocol_delayTolerance_65536_56
      000564 EF               [12]  584 	mov	a,r7
      000565 95 2E            [12]  585 	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
      000567 40 03            [24]  586 	jc	00149$
      000569 02 05 EB         [24]  587 	ljmp	00106$
      00056C                        588 00149$:
                                    589 ;	RCSwitch.c:75: diff(RCSwitch->timings[i + 1], delay * pro.zero.low) < delayTolerance) {
      00056C 8B 06            [24]  590 	mov	ar6,r3
      00056E 7F 00            [12]  591 	mov	r7,#0x00
      000570 0E               [12]  592 	inc	r6
      000571 BE 00 01         [24]  593 	cjne	r6,#0x00,00150$
      000574 0F               [12]  594 	inc	r7
      000575                        595 00150$:
      000575 EE               [12]  596 	mov	a,r6
      000576 2E               [12]  597 	add	a,r6
      000577 FE               [12]  598 	mov	r6,a
      000578 EF               [12]  599 	mov	a,r7
      000579 33               [12]  600 	rlc	a
      00057A FF               [12]  601 	mov	r7,a
      00057B EE               [12]  602 	mov	a,r6
      00057C 28               [12]  603 	add	a,r0
      00057D FE               [12]  604 	mov	r6,a
      00057E EF               [12]  605 	mov	a,r7
      00057F 39               [12]  606 	addc	a,r1
      000580 FF               [12]  607 	mov	r7,a
      000581 8A 05            [24]  608 	mov	ar5,r2
      000583 8E 82            [24]  609 	mov	dpl,r6
      000585 8F 83            [24]  610 	mov	dph,r7
      000587 8D F0            [24]  611 	mov	b,r5
      000589 12 07 C6         [24]  612 	lcall	__gptrget
      00058C FE               [12]  613 	mov	r6,a
      00058D A3               [24]  614 	inc	dptr
      00058E 12 07 C6         [24]  615 	lcall	__gptrget
      000591 FF               [12]  616 	mov	r7,a
      000592 90 07 EB         [24]  617 	mov	dptr,#(_pro + 0x0005)
      000595 E4               [12]  618 	clr	a
      000596 93               [24]  619 	movc	a,@a+dptr
      000597 FD               [12]  620 	mov	r5,a
      000598 8D 12            [24]  621 	mov	__mulint_PARM_2,r5
      00059A 75 13 00         [24]  622 	mov	(__mulint_PARM_2 + 1),#0x00
      00059D 85 2B 82         [24]  623 	mov	dpl,_receiveProtocol_delay_65536_56
      0005A0 85 2C 83         [24]  624 	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
      0005A3 C0 07            [24]  625 	push	ar7
      0005A5 C0 06            [24]  626 	push	ar6
      0005A7 C0 03            [24]  627 	push	ar3
      0005A9 C0 02            [24]  628 	push	ar2
      0005AB C0 01            [24]  629 	push	ar1
      0005AD C0 00            [24]  630 	push	ar0
      0005AF 12 07 A9         [24]  631 	lcall	__mulint
      0005B2 85 82 12         [24]  632 	mov	_diff_PARM_2,dpl
      0005B5 85 83 13         [24]  633 	mov	(_diff_PARM_2 + 1),dph
      0005B8 D0 00            [24]  634 	pop	ar0
      0005BA D0 01            [24]  635 	pop	ar1
      0005BC D0 02            [24]  636 	pop	ar2
      0005BE D0 03            [24]  637 	pop	ar3
      0005C0 D0 06            [24]  638 	pop	ar6
      0005C2 D0 07            [24]  639 	pop	ar7
      0005C4 8E 82            [24]  640 	mov	dpl,r6
      0005C6 8F 83            [24]  641 	mov	dph,r7
      0005C8 C0 03            [24]  642 	push	ar3
      0005CA C0 02            [24]  643 	push	ar2
      0005CC C0 01            [24]  644 	push	ar1
      0005CE C0 00            [24]  645 	push	ar0
      0005D0 12 03 F5         [24]  646 	lcall	_diff
      0005D3 AE 82            [24]  647 	mov	r6,dpl
      0005D5 AF 83            [24]  648 	mov	r7,dph
      0005D7 D0 00            [24]  649 	pop	ar0
      0005D9 D0 01            [24]  650 	pop	ar1
      0005DB D0 02            [24]  651 	pop	ar2
      0005DD D0 03            [24]  652 	pop	ar3
      0005DF C3               [12]  653 	clr	c
      0005E0 EE               [12]  654 	mov	a,r6
      0005E1 95 2D            [12]  655 	subb	a,_receiveProtocol_delayTolerance_65536_56
      0005E3 EF               [12]  656 	mov	a,r7
      0005E4 95 2E            [12]  657 	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
      0005E6 50 03            [24]  658 	jnc	00151$
      0005E8 02 06 E5         [24]  659 	ljmp	00114$
      0005EB                        660 00151$:
      0005EB                        661 00106$:
                                    662 ;	RCSwitch.c:77: } else if (diff(RCSwitch->timings[i], delay * pro.one.high) < delayTolerance &&
      0005EB EB               [12]  663 	mov	a,r3
      0005EC 2B               [12]  664 	add	a,r3
      0005ED 25 30            [12]  665 	add	a,_receiveProtocol_sloc1_1_0
      0005EF FF               [12]  666 	mov	r7,a
      0005F0 E4               [12]  667 	clr	a
      0005F1 35 31            [12]  668 	addc	a,(_receiveProtocol_sloc1_1_0 + 1)
      0005F3 FE               [12]  669 	mov	r6,a
      0005F4 AD 32            [24]  670 	mov	r5,(_receiveProtocol_sloc1_1_0 + 2)
      0005F6 8F 82            [24]  671 	mov	dpl,r7
      0005F8 8E 83            [24]  672 	mov	dph,r6
      0005FA 8D F0            [24]  673 	mov	b,r5
      0005FC 12 07 C6         [24]  674 	lcall	__gptrget
      0005FF FF               [12]  675 	mov	r7,a
      000600 A3               [24]  676 	inc	dptr
      000601 12 07 C6         [24]  677 	lcall	__gptrget
      000604 FE               [12]  678 	mov	r6,a
      000605 90 07 EC         [24]  679 	mov	dptr,#(_pro + 0x0006)
      000608 E4               [12]  680 	clr	a
      000609 93               [24]  681 	movc	a,@a+dptr
      00060A FD               [12]  682 	mov	r5,a
      00060B 8D 12            [24]  683 	mov	__mulint_PARM_2,r5
      00060D 75 13 00         [24]  684 	mov	(__mulint_PARM_2 + 1),#0x00
      000610 85 2B 82         [24]  685 	mov	dpl,_receiveProtocol_delay_65536_56
      000613 85 2C 83         [24]  686 	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
      000616 C0 07            [24]  687 	push	ar7
      000618 C0 06            [24]  688 	push	ar6
      00061A C0 03            [24]  689 	push	ar3
      00061C C0 02            [24]  690 	push	ar2
      00061E C0 01            [24]  691 	push	ar1
      000620 C0 00            [24]  692 	push	ar0
      000622 12 07 A9         [24]  693 	lcall	__mulint
      000625 85 82 12         [24]  694 	mov	_diff_PARM_2,dpl
      000628 85 83 13         [24]  695 	mov	(_diff_PARM_2 + 1),dph
      00062B D0 00            [24]  696 	pop	ar0
      00062D D0 01            [24]  697 	pop	ar1
      00062F D0 02            [24]  698 	pop	ar2
      000631 D0 03            [24]  699 	pop	ar3
      000633 D0 06            [24]  700 	pop	ar6
      000635 D0 07            [24]  701 	pop	ar7
      000637 8F 82            [24]  702 	mov	dpl,r7
      000639 8E 83            [24]  703 	mov	dph,r6
      00063B C0 03            [24]  704 	push	ar3
      00063D C0 02            [24]  705 	push	ar2
      00063F C0 01            [24]  706 	push	ar1
      000641 C0 00            [24]  707 	push	ar0
      000643 12 03 F5         [24]  708 	lcall	_diff
      000646 AE 82            [24]  709 	mov	r6,dpl
      000648 AF 83            [24]  710 	mov	r7,dph
      00064A D0 00            [24]  711 	pop	ar0
      00064C D0 01            [24]  712 	pop	ar1
      00064E D0 02            [24]  713 	pop	ar2
      000650 D0 03            [24]  714 	pop	ar3
      000652 C3               [12]  715 	clr	c
      000653 EE               [12]  716 	mov	a,r6
      000654 95 2D            [12]  717 	subb	a,_receiveProtocol_delayTolerance_65536_56
      000656 EF               [12]  718 	mov	a,r7
      000657 95 2E            [12]  719 	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
      000659 40 03            [24]  720 	jc	00152$
      00065B 02 06 E1         [24]  721 	ljmp	00102$
      00065E                        722 00152$:
                                    723 ;	RCSwitch.c:78: diff(RCSwitch->timings[i + 1], delay * pro.one.low) < delayTolerance) {
      00065E 8B 06            [24]  724 	mov	ar6,r3
      000660 7F 00            [12]  725 	mov	r7,#0x00
      000662 0E               [12]  726 	inc	r6
      000663 BE 00 01         [24]  727 	cjne	r6,#0x00,00153$
      000666 0F               [12]  728 	inc	r7
      000667                        729 00153$:
      000667 EE               [12]  730 	mov	a,r6
      000668 2E               [12]  731 	add	a,r6
      000669 FE               [12]  732 	mov	r6,a
      00066A EF               [12]  733 	mov	a,r7
      00066B 33               [12]  734 	rlc	a
      00066C FF               [12]  735 	mov	r7,a
      00066D EE               [12]  736 	mov	a,r6
      00066E 25 33            [12]  737 	add	a,_receiveProtocol_sloc2_1_0
      000670 FE               [12]  738 	mov	r6,a
      000671 EF               [12]  739 	mov	a,r7
      000672 35 34            [12]  740 	addc	a,(_receiveProtocol_sloc2_1_0 + 1)
      000674 FF               [12]  741 	mov	r7,a
      000675 AD 35            [24]  742 	mov	r5,(_receiveProtocol_sloc2_1_0 + 2)
      000677 8E 82            [24]  743 	mov	dpl,r6
      000679 8F 83            [24]  744 	mov	dph,r7
      00067B 8D F0            [24]  745 	mov	b,r5
      00067D 12 07 C6         [24]  746 	lcall	__gptrget
      000680 FE               [12]  747 	mov	r6,a
      000681 A3               [24]  748 	inc	dptr
      000682 12 07 C6         [24]  749 	lcall	__gptrget
      000685 FF               [12]  750 	mov	r7,a
      000686 90 07 ED         [24]  751 	mov	dptr,#(_pro + 0x0007)
      000689 E4               [12]  752 	clr	a
      00068A 93               [24]  753 	movc	a,@a+dptr
      00068B FD               [12]  754 	mov	r5,a
      00068C 8D 12            [24]  755 	mov	__mulint_PARM_2,r5
      00068E 75 13 00         [24]  756 	mov	(__mulint_PARM_2 + 1),#0x00
      000691 85 2B 82         [24]  757 	mov	dpl,_receiveProtocol_delay_65536_56
      000694 85 2C 83         [24]  758 	mov	dph,(_receiveProtocol_delay_65536_56 + 1)
      000697 C0 07            [24]  759 	push	ar7
      000699 C0 06            [24]  760 	push	ar6
      00069B C0 03            [24]  761 	push	ar3
      00069D C0 02            [24]  762 	push	ar2
      00069F C0 01            [24]  763 	push	ar1
      0006A1 C0 00            [24]  764 	push	ar0
      0006A3 12 07 A9         [24]  765 	lcall	__mulint
      0006A6 85 82 12         [24]  766 	mov	_diff_PARM_2,dpl
      0006A9 85 83 13         [24]  767 	mov	(_diff_PARM_2 + 1),dph
      0006AC D0 00            [24]  768 	pop	ar0
      0006AE D0 01            [24]  769 	pop	ar1
      0006B0 D0 02            [24]  770 	pop	ar2
      0006B2 D0 03            [24]  771 	pop	ar3
      0006B4 D0 06            [24]  772 	pop	ar6
      0006B6 D0 07            [24]  773 	pop	ar7
      0006B8 8E 82            [24]  774 	mov	dpl,r6
      0006BA 8F 83            [24]  775 	mov	dph,r7
      0006BC C0 03            [24]  776 	push	ar3
      0006BE C0 02            [24]  777 	push	ar2
      0006C0 C0 01            [24]  778 	push	ar1
      0006C2 C0 00            [24]  779 	push	ar0
      0006C4 12 03 F5         [24]  780 	lcall	_diff
      0006C7 AE 82            [24]  781 	mov	r6,dpl
      0006C9 AF 83            [24]  782 	mov	r7,dph
      0006CB D0 00            [24]  783 	pop	ar0
      0006CD D0 01            [24]  784 	pop	ar1
      0006CF D0 02            [24]  785 	pop	ar2
      0006D1 D0 03            [24]  786 	pop	ar3
      0006D3 C3               [12]  787 	clr	c
      0006D4 EE               [12]  788 	mov	a,r6
      0006D5 95 2D            [12]  789 	subb	a,_receiveProtocol_delayTolerance_65536_56
      0006D7 EF               [12]  790 	mov	a,r7
      0006D8 95 2E            [12]  791 	subb	a,(_receiveProtocol_delayTolerance_65536_56 + 1)
      0006DA 50 05            [24]  792 	jnc	00102$
                                    793 ;	RCSwitch.c:80: code |= 1;
      0006DC 43 27 01         [24]  794 	orl	_receiveProtocol_code_65536_56,#0x01
      0006DF 80 04            [24]  795 	sjmp	00114$
      0006E1                        796 00102$:
                                    797 ;	RCSwitch.c:83: return false;
      0006E1 75 82 00         [24]  798 	mov	dpl,#0x00
      0006E4 22               [24]  799 	ret
      0006E5                        800 00114$:
                                    801 ;	RCSwitch.c:72: for (uint8_t i = 1; i < changeCount - 1; i += 2) {
      0006E5 8B 07            [24]  802 	mov	ar7,r3
      0006E7 74 02            [12]  803 	mov	a,#0x02
      0006E9 2F               [12]  804 	add	a,r7
      0006EA FB               [12]  805 	mov	r3,a
      0006EB 02 04 D6         [24]  806 	ljmp	00113$
      0006EE                        807 00109$:
                                    808 ;	RCSwitch.c:87: if (changeCount > 7) {		// ignore very short transmissions: no device sends them, so this must be noise
      0006EE C3               [12]  809 	clr	c
      0006EF 74 07            [12]  810 	mov	a,#0x07
      0006F1 95 22            [12]  811 	subb	a,_receiveProtocol_PARM_2
      0006F3 E4               [12]  812 	clr	a
      0006F4 95 23            [12]  813 	subb	a,(_receiveProtocol_PARM_2 + 1)
      0006F6 50 69            [24]  814 	jnc	00111$
                                    815 ;	RCSwitch.c:88: RCSwitch->nReceivedValue = code;
      0006F8 85 24 82         [24]  816 	mov	dpl,_receiveProtocol_RCSwitch_65536_55
      0006FB 85 25 83         [24]  817 	mov	dph,(_receiveProtocol_RCSwitch_65536_55 + 1)
      0006FE 85 26 F0         [24]  818 	mov	b,(_receiveProtocol_RCSwitch_65536_55 + 2)
      000701 E5 27            [12]  819 	mov	a,_receiveProtocol_code_65536_56
      000703 12 07 8E         [24]  820 	lcall	__gptrput
      000706 A3               [24]  821 	inc	dptr
      000707 E5 28            [12]  822 	mov	a,(_receiveProtocol_code_65536_56 + 1)
      000709 12 07 8E         [24]  823 	lcall	__gptrput
      00070C A3               [24]  824 	inc	dptr
      00070D E5 29            [12]  825 	mov	a,(_receiveProtocol_code_65536_56 + 2)
      00070F 12 07 8E         [24]  826 	lcall	__gptrput
      000712 A3               [24]  827 	inc	dptr
      000713 E5 2A            [12]  828 	mov	a,(_receiveProtocol_code_65536_56 + 3)
      000715 12 07 8E         [24]  829 	lcall	__gptrput
                                    830 ;	RCSwitch.c:89: RCSwitch->nReceivedBitlength = (changeCount - 1) / 2;
      000718 74 04            [12]  831 	mov	a,#0x04
      00071A 25 24            [12]  832 	add	a,_receiveProtocol_RCSwitch_65536_55
      00071C FD               [12]  833 	mov	r5,a
      00071D E4               [12]  834 	clr	a
      00071E 35 25            [12]  835 	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
      000720 FE               [12]  836 	mov	r6,a
      000721 AF 26            [24]  837 	mov	r7,(_receiveProtocol_RCSwitch_65536_55 + 2)
      000723 E5 22            [12]  838 	mov	a,_receiveProtocol_PARM_2
      000725 24 FF            [12]  839 	add	a,#0xff
      000727 FB               [12]  840 	mov	r3,a
      000728 E5 23            [12]  841 	mov	a,(_receiveProtocol_PARM_2 + 1)
      00072A 34 FF            [12]  842 	addc	a,#0xff
      00072C C3               [12]  843 	clr	c
      00072D 13               [12]  844 	rrc	a
      00072E CB               [12]  845 	xch	a,r3
      00072F 13               [12]  846 	rrc	a
      000730 CB               [12]  847 	xch	a,r3
      000731 FC               [12]  848 	mov	r4,a
      000732 8D 82            [24]  849 	mov	dpl,r5
      000734 8E 83            [24]  850 	mov	dph,r6
      000736 8F F0            [24]  851 	mov	b,r7
      000738 EB               [12]  852 	mov	a,r3
      000739 12 07 8E         [24]  853 	lcall	__gptrput
      00073C A3               [24]  854 	inc	dptr
      00073D EC               [12]  855 	mov	a,r4
      00073E 12 07 8E         [24]  856 	lcall	__gptrput
                                    857 ;	RCSwitch.c:90: RCSwitch->nReceivedDelay = delay;
      000741 74 06            [12]  858 	mov	a,#0x06
      000743 25 24            [12]  859 	add	a,_receiveProtocol_RCSwitch_65536_55
      000745 FD               [12]  860 	mov	r5,a
      000746 E4               [12]  861 	clr	a
      000747 35 25            [12]  862 	addc	a,(_receiveProtocol_RCSwitch_65536_55 + 1)
      000749 FE               [12]  863 	mov	r6,a
      00074A AF 26            [24]  864 	mov	r7,(_receiveProtocol_RCSwitch_65536_55 + 2)
      00074C 8D 82            [24]  865 	mov	dpl,r5
      00074E 8E 83            [24]  866 	mov	dph,r6
      000750 8F F0            [24]  867 	mov	b,r7
      000752 E5 2B            [12]  868 	mov	a,_receiveProtocol_delay_65536_56
      000754 12 07 8E         [24]  869 	lcall	__gptrput
      000757 A3               [24]  870 	inc	dptr
      000758 E5 2C            [12]  871 	mov	a,(_receiveProtocol_delay_65536_56 + 1)
      00075A 12 07 8E         [24]  872 	lcall	__gptrput
                                    873 ;	RCSwitch.c:91: return true;
      00075D 75 82 01         [24]  874 	mov	dpl,#0x01
      000760 22               [24]  875 	ret
      000761                        876 00111$:
                                    877 ;	RCSwitch.c:94: return false;
      000761 75 82 00         [24]  878 	mov	dpl,#0x00
                                    879 ;	RCSwitch.c:95: }
      000764 22               [24]  880 	ret
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
      0007E6                        883 _pro:
      0007E6 5E 01                  884 	.byte #0x5e, #0x01	; 350
      0007E8 01                     885 	.db #0x01	; 1
      0007E9 1F                     886 	.db #0x1f	; 31
      0007EA 01                     887 	.db #0x01	; 1
      0007EB 03                     888 	.db #0x03	; 3
      0007EC 03                     889 	.db #0x03	; 3
      0007ED 01                     890 	.db #0x01	; 1
                                    891 	.area XINIT   (CODE)
                                    892 	.area CABS    (ABS,CODE)
