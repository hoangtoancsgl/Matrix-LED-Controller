                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.9 #13731 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _RF_pin_ISR
                                     12 	.globl _main
                                     13 	.globl _diff
                                     14 	.globl _receiveProtocol
                                     15 	.globl _initSwitch
                                     16 	.globl _GPIO_Init
                                     17 	.globl _UART0_Init
                                     18 	.globl _DelayInit
                                     19 	.globl _MOSI
                                     20 	.globl _P00
                                     21 	.globl _MISO
                                     22 	.globl _P01
                                     23 	.globl _RXD_1
                                     24 	.globl _P02
                                     25 	.globl _P03
                                     26 	.globl _STADC
                                     27 	.globl _P04
                                     28 	.globl _P05
                                     29 	.globl _TXD
                                     30 	.globl _P06
                                     31 	.globl _RXD
                                     32 	.globl _P07
                                     33 	.globl _IT0
                                     34 	.globl _IE0
                                     35 	.globl _IT1
                                     36 	.globl _IE1
                                     37 	.globl _TR0
                                     38 	.globl _TF0
                                     39 	.globl _TR1
                                     40 	.globl _TF1
                                     41 	.globl _P10
                                     42 	.globl _P11
                                     43 	.globl _P12
                                     44 	.globl _SCL
                                     45 	.globl _P13
                                     46 	.globl _SDA
                                     47 	.globl _P14
                                     48 	.globl _P15
                                     49 	.globl _TXD_1
                                     50 	.globl _P16
                                     51 	.globl _P17
                                     52 	.globl _RI
                                     53 	.globl _TI
                                     54 	.globl _RB8
                                     55 	.globl _TB8
                                     56 	.globl _REN
                                     57 	.globl _SM2
                                     58 	.globl _SM1
                                     59 	.globl _FE
                                     60 	.globl _SM0
                                     61 	.globl _P20
                                     62 	.globl _EX0
                                     63 	.globl _ET0
                                     64 	.globl _EX1
                                     65 	.globl _ET1
                                     66 	.globl _ES
                                     67 	.globl _EBOD
                                     68 	.globl _EADC
                                     69 	.globl _EA
                                     70 	.globl _P30
                                     71 	.globl _PX0
                                     72 	.globl _PT0
                                     73 	.globl _PX1
                                     74 	.globl _PT1
                                     75 	.globl _PS
                                     76 	.globl _PBOD
                                     77 	.globl _PADC
                                     78 	.globl _I2CPX
                                     79 	.globl _AA
                                     80 	.globl _SI
                                     81 	.globl _STO
                                     82 	.globl _STA
                                     83 	.globl _I2CEN
                                     84 	.globl _CM_RL2
                                     85 	.globl _TR2
                                     86 	.globl _TF2
                                     87 	.globl _P
                                     88 	.globl _OV
                                     89 	.globl _RS0
                                     90 	.globl _RS1
                                     91 	.globl _F0
                                     92 	.globl _AC
                                     93 	.globl _CY
                                     94 	.globl _CLRPWM
                                     95 	.globl _PWMF
                                     96 	.globl _LOAD
                                     97 	.globl _PWMRUN
                                     98 	.globl _ADCHS0
                                     99 	.globl _ADCHS1
                                    100 	.globl _ADCHS2
                                    101 	.globl _ADCHS3
                                    102 	.globl _ETGSEL0
                                    103 	.globl _ETGSEL1
                                    104 	.globl _ADCS
                                    105 	.globl _ADCF
                                    106 	.globl _RI_1
                                    107 	.globl _TI_1
                                    108 	.globl _RB8_1
                                    109 	.globl _TB8_1
                                    110 	.globl _REN_1
                                    111 	.globl _SM2_1
                                    112 	.globl _SM1_1
                                    113 	.globl _FE_1
                                    114 	.globl _SM0_1
                                    115 	.globl _EIPH1
                                    116 	.globl _EIP1
                                    117 	.globl _PMD
                                    118 	.globl _PMEN
                                    119 	.globl _PDTCNT
                                    120 	.globl _PDTEN
                                    121 	.globl _SCON_1
                                    122 	.globl _EIPH
                                    123 	.globl _AINDIDS
                                    124 	.globl _SPDR
                                    125 	.globl _SPSR
                                    126 	.globl _SPCR2
                                    127 	.globl _SPCR
                                    128 	.globl _CAPCON4
                                    129 	.globl _CAPCON3
                                    130 	.globl _B
                                    131 	.globl _EIP
                                    132 	.globl _C2H
                                    133 	.globl _C2L
                                    134 	.globl _PIF
                                    135 	.globl _PIPEN
                                    136 	.globl _PINEN
                                    137 	.globl _PICON
                                    138 	.globl _ADCCON0
                                    139 	.globl _C1H
                                    140 	.globl _C1L
                                    141 	.globl _C0H
                                    142 	.globl _C0L
                                    143 	.globl _ADCDLY
                                    144 	.globl _ADCCON2
                                    145 	.globl _ADCCON1
                                    146 	.globl _ACC
                                    147 	.globl _PWMCON1
                                    148 	.globl _PIOCON0
                                    149 	.globl _PWM3L
                                    150 	.globl _PWM2L
                                    151 	.globl _PWM1L
                                    152 	.globl _PWM0L
                                    153 	.globl _PWMPL
                                    154 	.globl _PWMCON0
                                    155 	.globl _FBD
                                    156 	.globl _PNP
                                    157 	.globl _PWM3H
                                    158 	.globl _PWM2H
                                    159 	.globl _PWM1H
                                    160 	.globl _PWM0H
                                    161 	.globl _PWMPH
                                    162 	.globl _PSW
                                    163 	.globl _ADCMPH
                                    164 	.globl _ADCMPL
                                    165 	.globl _PWM5L
                                    166 	.globl _TH2
                                    167 	.globl _PWM4L
                                    168 	.globl _TL2
                                    169 	.globl _RCMP2H
                                    170 	.globl _RCMP2L
                                    171 	.globl _T2MOD
                                    172 	.globl _T2CON
                                    173 	.globl _TA
                                    174 	.globl _PIOCON1
                                    175 	.globl _RH3
                                    176 	.globl _PWM5H
                                    177 	.globl _RL3
                                    178 	.globl _PWM4H
                                    179 	.globl _T3CON
                                    180 	.globl _ADCRH
                                    181 	.globl _ADCRL
                                    182 	.globl _I2ADDR
                                    183 	.globl _I2CON
                                    184 	.globl _I2TOC
                                    185 	.globl _I2CLK
                                    186 	.globl _I2STAT
                                    187 	.globl _I2DAT
                                    188 	.globl _SADDR_1
                                    189 	.globl _SADEN_1
                                    190 	.globl _SADEN
                                    191 	.globl _IP
                                    192 	.globl _PWMINTC
                                    193 	.globl _IPH
                                    194 	.globl _P2S
                                    195 	.globl _P1SR
                                    196 	.globl _P1M2
                                    197 	.globl _P1S
                                    198 	.globl _P1M1
                                    199 	.globl _P0SR
                                    200 	.globl _P0M2
                                    201 	.globl _P0S
                                    202 	.globl _P0M1
                                    203 	.globl _P3
                                    204 	.globl _IAPCN
                                    205 	.globl _IAPFD
                                    206 	.globl _P3SR
                                    207 	.globl _P3M2
                                    208 	.globl _P3S
                                    209 	.globl _P3M1
                                    210 	.globl _BODCON1
                                    211 	.globl _WDCON
                                    212 	.globl _SADDR
                                    213 	.globl _IE
                                    214 	.globl _IAPAH
                                    215 	.globl _IAPAL
                                    216 	.globl _IAPUEN
                                    217 	.globl _IAPTRG
                                    218 	.globl _BODCON0
                                    219 	.globl _AUXR1
                                    220 	.globl _P2
                                    221 	.globl _CHPCON
                                    222 	.globl _EIE1
                                    223 	.globl _EIE
                                    224 	.globl _SBUF_1
                                    225 	.globl _SBUF
                                    226 	.globl _SCON
                                    227 	.globl _CKEN
                                    228 	.globl _CKSWT
                                    229 	.globl _CKDIV
                                    230 	.globl _CAPCON2
                                    231 	.globl _CAPCON1
                                    232 	.globl _CAPCON0
                                    233 	.globl _SFRS
                                    234 	.globl _P1
                                    235 	.globl _WKCON
                                    236 	.globl _CKCON
                                    237 	.globl _TH1
                                    238 	.globl _TH0
                                    239 	.globl _TL1
                                    240 	.globl _TL0
                                    241 	.globl _TMOD
                                    242 	.globl _TCON
                                    243 	.globl _PCON
                                    244 	.globl _RWK
                                    245 	.globl _RCTRIM1
                                    246 	.globl _RCTRIM0
                                    247 	.globl _DPH
                                    248 	.globl _DPL
                                    249 	.globl _SP
                                    250 	.globl _P0
                                    251 	.globl _myRCSwitch
                                    252 ;--------------------------------------------------------
                                    253 ; special function registers
                                    254 ;--------------------------------------------------------
                                    255 	.area RSEG    (ABS,DATA)
      000000                        256 	.org 0x0000
                           000080   257 _P0	=	0x0080
                           000081   258 _SP	=	0x0081
                           000082   259 _DPL	=	0x0082
                           000083   260 _DPH	=	0x0083
                           000084   261 _RCTRIM0	=	0x0084
                           000085   262 _RCTRIM1	=	0x0085
                           000086   263 _RWK	=	0x0086
                           000087   264 _PCON	=	0x0087
                           000088   265 _TCON	=	0x0088
                           000089   266 _TMOD	=	0x0089
                           00008A   267 _TL0	=	0x008a
                           00008B   268 _TL1	=	0x008b
                           00008C   269 _TH0	=	0x008c
                           00008D   270 _TH1	=	0x008d
                           00008E   271 _CKCON	=	0x008e
                           00008F   272 _WKCON	=	0x008f
                           000090   273 _P1	=	0x0090
                           000091   274 _SFRS	=	0x0091
                           000092   275 _CAPCON0	=	0x0092
                           000093   276 _CAPCON1	=	0x0093
                           000094   277 _CAPCON2	=	0x0094
                           000095   278 _CKDIV	=	0x0095
                           000096   279 _CKSWT	=	0x0096
                           000097   280 _CKEN	=	0x0097
                           000098   281 _SCON	=	0x0098
                           000099   282 _SBUF	=	0x0099
                           00009A   283 _SBUF_1	=	0x009a
                           00009B   284 _EIE	=	0x009b
                           00009C   285 _EIE1	=	0x009c
                           00009F   286 _CHPCON	=	0x009f
                           0000A0   287 _P2	=	0x00a0
                           0000A2   288 _AUXR1	=	0x00a2
                           0000A3   289 _BODCON0	=	0x00a3
                           0000A4   290 _IAPTRG	=	0x00a4
                           0000A5   291 _IAPUEN	=	0x00a5
                           0000A6   292 _IAPAL	=	0x00a6
                           0000A7   293 _IAPAH	=	0x00a7
                           0000A8   294 _IE	=	0x00a8
                           0000A9   295 _SADDR	=	0x00a9
                           0000AA   296 _WDCON	=	0x00aa
                           0000AB   297 _BODCON1	=	0x00ab
                           0000AC   298 _P3M1	=	0x00ac
                           0000AC   299 _P3S	=	0x00ac
                           0000AD   300 _P3M2	=	0x00ad
                           0000AD   301 _P3SR	=	0x00ad
                           0000AE   302 _IAPFD	=	0x00ae
                           0000AF   303 _IAPCN	=	0x00af
                           0000B0   304 _P3	=	0x00b0
                           0000B1   305 _P0M1	=	0x00b1
                           0000B1   306 _P0S	=	0x00b1
                           0000B2   307 _P0M2	=	0x00b2
                           0000B2   308 _P0SR	=	0x00b2
                           0000B3   309 _P1M1	=	0x00b3
                           0000B3   310 _P1S	=	0x00b3
                           0000B4   311 _P1M2	=	0x00b4
                           0000B4   312 _P1SR	=	0x00b4
                           0000B5   313 _P2S	=	0x00b5
                           0000B7   314 _IPH	=	0x00b7
                           0000B7   315 _PWMINTC	=	0x00b7
                           0000B8   316 _IP	=	0x00b8
                           0000B9   317 _SADEN	=	0x00b9
                           0000BA   318 _SADEN_1	=	0x00ba
                           0000BB   319 _SADDR_1	=	0x00bb
                           0000BC   320 _I2DAT	=	0x00bc
                           0000BD   321 _I2STAT	=	0x00bd
                           0000BE   322 _I2CLK	=	0x00be
                           0000BF   323 _I2TOC	=	0x00bf
                           0000C0   324 _I2CON	=	0x00c0
                           0000C1   325 _I2ADDR	=	0x00c1
                           0000C2   326 _ADCRL	=	0x00c2
                           0000C3   327 _ADCRH	=	0x00c3
                           0000C4   328 _T3CON	=	0x00c4
                           0000C4   329 _PWM4H	=	0x00c4
                           0000C5   330 _RL3	=	0x00c5
                           0000C5   331 _PWM5H	=	0x00c5
                           0000C6   332 _RH3	=	0x00c6
                           0000C6   333 _PIOCON1	=	0x00c6
                           0000C7   334 _TA	=	0x00c7
                           0000C8   335 _T2CON	=	0x00c8
                           0000C9   336 _T2MOD	=	0x00c9
                           0000CA   337 _RCMP2L	=	0x00ca
                           0000CB   338 _RCMP2H	=	0x00cb
                           0000CC   339 _TL2	=	0x00cc
                           0000CC   340 _PWM4L	=	0x00cc
                           0000CD   341 _TH2	=	0x00cd
                           0000CD   342 _PWM5L	=	0x00cd
                           0000CE   343 _ADCMPL	=	0x00ce
                           0000CF   344 _ADCMPH	=	0x00cf
                           0000D0   345 _PSW	=	0x00d0
                           0000D1   346 _PWMPH	=	0x00d1
                           0000D2   347 _PWM0H	=	0x00d2
                           0000D3   348 _PWM1H	=	0x00d3
                           0000D4   349 _PWM2H	=	0x00d4
                           0000D5   350 _PWM3H	=	0x00d5
                           0000D6   351 _PNP	=	0x00d6
                           0000D7   352 _FBD	=	0x00d7
                           0000D8   353 _PWMCON0	=	0x00d8
                           0000D9   354 _PWMPL	=	0x00d9
                           0000DA   355 _PWM0L	=	0x00da
                           0000DB   356 _PWM1L	=	0x00db
                           0000DC   357 _PWM2L	=	0x00dc
                           0000DD   358 _PWM3L	=	0x00dd
                           0000DE   359 _PIOCON0	=	0x00de
                           0000DF   360 _PWMCON1	=	0x00df
                           0000E0   361 _ACC	=	0x00e0
                           0000E1   362 _ADCCON1	=	0x00e1
                           0000E2   363 _ADCCON2	=	0x00e2
                           0000E3   364 _ADCDLY	=	0x00e3
                           0000E4   365 _C0L	=	0x00e4
                           0000E5   366 _C0H	=	0x00e5
                           0000E6   367 _C1L	=	0x00e6
                           0000E7   368 _C1H	=	0x00e7
                           0000E8   369 _ADCCON0	=	0x00e8
                           0000E9   370 _PICON	=	0x00e9
                           0000EA   371 _PINEN	=	0x00ea
                           0000EB   372 _PIPEN	=	0x00eb
                           0000EC   373 _PIF	=	0x00ec
                           0000ED   374 _C2L	=	0x00ed
                           0000EE   375 _C2H	=	0x00ee
                           0000EF   376 _EIP	=	0x00ef
                           0000F0   377 _B	=	0x00f0
                           0000F1   378 _CAPCON3	=	0x00f1
                           0000F2   379 _CAPCON4	=	0x00f2
                           0000F3   380 _SPCR	=	0x00f3
                           0000F3   381 _SPCR2	=	0x00f3
                           0000F4   382 _SPSR	=	0x00f4
                           0000F5   383 _SPDR	=	0x00f5
                           0000F6   384 _AINDIDS	=	0x00f6
                           0000F7   385 _EIPH	=	0x00f7
                           0000F8   386 _SCON_1	=	0x00f8
                           0000F9   387 _PDTEN	=	0x00f9
                           0000FA   388 _PDTCNT	=	0x00fa
                           0000FB   389 _PMEN	=	0x00fb
                           0000FC   390 _PMD	=	0x00fc
                           0000FE   391 _EIP1	=	0x00fe
                           0000FF   392 _EIPH1	=	0x00ff
                                    393 ;--------------------------------------------------------
                                    394 ; special function bits
                                    395 ;--------------------------------------------------------
                                    396 	.area RSEG    (ABS,DATA)
      000000                        397 	.org 0x0000
                           0000FF   398 _SM0_1	=	0x00ff
                           0000FF   399 _FE_1	=	0x00ff
                           0000FE   400 _SM1_1	=	0x00fe
                           0000FD   401 _SM2_1	=	0x00fd
                           0000FC   402 _REN_1	=	0x00fc
                           0000FB   403 _TB8_1	=	0x00fb
                           0000FA   404 _RB8_1	=	0x00fa
                           0000F9   405 _TI_1	=	0x00f9
                           0000F8   406 _RI_1	=	0x00f8
                           0000EF   407 _ADCF	=	0x00ef
                           0000EE   408 _ADCS	=	0x00ee
                           0000ED   409 _ETGSEL1	=	0x00ed
                           0000EC   410 _ETGSEL0	=	0x00ec
                           0000EB   411 _ADCHS3	=	0x00eb
                           0000EA   412 _ADCHS2	=	0x00ea
                           0000E9   413 _ADCHS1	=	0x00e9
                           0000E8   414 _ADCHS0	=	0x00e8
                           0000DF   415 _PWMRUN	=	0x00df
                           0000DE   416 _LOAD	=	0x00de
                           0000DD   417 _PWMF	=	0x00dd
                           0000DC   418 _CLRPWM	=	0x00dc
                           0000D7   419 _CY	=	0x00d7
                           0000D6   420 _AC	=	0x00d6
                           0000D5   421 _F0	=	0x00d5
                           0000D4   422 _RS1	=	0x00d4
                           0000D3   423 _RS0	=	0x00d3
                           0000D2   424 _OV	=	0x00d2
                           0000D0   425 _P	=	0x00d0
                           0000CF   426 _TF2	=	0x00cf
                           0000CA   427 _TR2	=	0x00ca
                           0000C8   428 _CM_RL2	=	0x00c8
                           0000C6   429 _I2CEN	=	0x00c6
                           0000C5   430 _STA	=	0x00c5
                           0000C4   431 _STO	=	0x00c4
                           0000C3   432 _SI	=	0x00c3
                           0000C2   433 _AA	=	0x00c2
                           0000C0   434 _I2CPX	=	0x00c0
                           0000BE   435 _PADC	=	0x00be
                           0000BD   436 _PBOD	=	0x00bd
                           0000BC   437 _PS	=	0x00bc
                           0000BB   438 _PT1	=	0x00bb
                           0000BA   439 _PX1	=	0x00ba
                           0000B9   440 _PT0	=	0x00b9
                           0000B8   441 _PX0	=	0x00b8
                           0000B0   442 _P30	=	0x00b0
                           0000AF   443 _EA	=	0x00af
                           0000AE   444 _EADC	=	0x00ae
                           0000AD   445 _EBOD	=	0x00ad
                           0000AC   446 _ES	=	0x00ac
                           0000AB   447 _ET1	=	0x00ab
                           0000AA   448 _EX1	=	0x00aa
                           0000A9   449 _ET0	=	0x00a9
                           0000A8   450 _EX0	=	0x00a8
                           0000A0   451 _P20	=	0x00a0
                           00009F   452 _SM0	=	0x009f
                           00009F   453 _FE	=	0x009f
                           00009E   454 _SM1	=	0x009e
                           00009D   455 _SM2	=	0x009d
                           00009C   456 _REN	=	0x009c
                           00009B   457 _TB8	=	0x009b
                           00009A   458 _RB8	=	0x009a
                           000099   459 _TI	=	0x0099
                           000098   460 _RI	=	0x0098
                           000097   461 _P17	=	0x0097
                           000096   462 _P16	=	0x0096
                           000096   463 _TXD_1	=	0x0096
                           000095   464 _P15	=	0x0095
                           000094   465 _P14	=	0x0094
                           000094   466 _SDA	=	0x0094
                           000093   467 _P13	=	0x0093
                           000093   468 _SCL	=	0x0093
                           000092   469 _P12	=	0x0092
                           000091   470 _P11	=	0x0091
                           000090   471 _P10	=	0x0090
                           00008F   472 _TF1	=	0x008f
                           00008E   473 _TR1	=	0x008e
                           00008D   474 _TF0	=	0x008d
                           00008C   475 _TR0	=	0x008c
                           00008B   476 _IE1	=	0x008b
                           00008A   477 _IT1	=	0x008a
                           000089   478 _IE0	=	0x0089
                           000088   479 _IT0	=	0x0088
                           000087   480 _P07	=	0x0087
                           000087   481 _RXD	=	0x0087
                           000086   482 _P06	=	0x0086
                           000086   483 _TXD	=	0x0086
                           000085   484 _P05	=	0x0085
                           000084   485 _P04	=	0x0084
                           000084   486 _STADC	=	0x0084
                           000083   487 _P03	=	0x0083
                           000082   488 _P02	=	0x0082
                           000082   489 _RXD_1	=	0x0082
                           000081   490 _P01	=	0x0081
                           000081   491 _MISO	=	0x0081
                           000080   492 _P00	=	0x0080
                           000080   493 _MOSI	=	0x0080
                                    494 ;--------------------------------------------------------
                                    495 ; overlayable register banks
                                    496 ;--------------------------------------------------------
                                    497 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        498 	.ds 8
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable bit register bank
                                    501 ;--------------------------------------------------------
                                    502 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        503 bits:
      000021                        504 	.ds 1
                           008000   505 	b0 = bits[0]
                           008100   506 	b1 = bits[1]
                           008200   507 	b2 = bits[2]
                           008300   508 	b3 = bits[3]
                           008400   509 	b4 = bits[4]
                           008500   510 	b5 = bits[5]
                           008600   511 	b6 = bits[6]
                           008700   512 	b7 = bits[7]
                                    513 ;--------------------------------------------------------
                                    514 ; internal ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area DSEG    (DATA)
      000008                        517 _RF_pin_ISR_changeCount_65536_35:
      000008                        518 	.ds 2
      00000A                        519 _RF_pin_ISR_lastTime_65536_35:
      00000A                        520 	.ds 4
      00000E                        521 _RF_pin_ISR_repeatCount_65536_35:
      00000E                        522 	.ds 2
                                    523 ;--------------------------------------------------------
                                    524 ; overlayable items in internal ram
                                    525 ;--------------------------------------------------------
                                    526 ;--------------------------------------------------------
                                    527 ; Stack segment in internal ram
                                    528 ;--------------------------------------------------------
                                    529 	.area SSEG
      000038                        530 __start__stack:
      000038                        531 	.ds	1
                                    532 
                                    533 ;--------------------------------------------------------
                                    534 ; indirectly addressable internal ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area ISEG    (DATA)
                                    537 ;--------------------------------------------------------
                                    538 ; absolute internal ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area IABS    (ABS,DATA)
                                    541 	.area IABS    (ABS,DATA)
                                    542 ;--------------------------------------------------------
                                    543 ; bit data
                                    544 ;--------------------------------------------------------
                                    545 	.area BSEG    (BIT)
                                    546 ;--------------------------------------------------------
                                    547 ; paged external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area PSEG    (PAG,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; uninitialized external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XSEG    (XDATA)
      000001                        554 _myRCSwitch::
      000001                        555 	.ds 158
                                    556 ;--------------------------------------------------------
                                    557 ; absolute external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area XABS    (ABS,XDATA)
                                    560 ;--------------------------------------------------------
                                    561 ; initialized external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area XISEG   (XDATA)
                                    564 	.area HOME    (CODE)
                                    565 	.area GSINIT0 (CODE)
                                    566 	.area GSINIT1 (CODE)
                                    567 	.area GSINIT2 (CODE)
                                    568 	.area GSINIT3 (CODE)
                                    569 	.area GSINIT4 (CODE)
                                    570 	.area GSINIT5 (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.area GSFINAL (CODE)
                                    573 	.area CSEG    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; interrupt vector
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
      000000                        578 __interrupt_vect:
      000000 02 00 41         [24]  579 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  580 	reti
      000004                        581 	.ds	7
      00000B 32               [24]  582 	reti
      00000C                        583 	.ds	7
      000013 32               [24]  584 	reti
      000014                        585 	.ds	7
      00001B 32               [24]  586 	reti
      00001C                        587 	.ds	7
      000023 32               [24]  588 	reti
      000024                        589 	.ds	7
      00002B 32               [24]  590 	reti
      00002C                        591 	.ds	7
      000033 32               [24]  592 	reti
      000034                        593 	.ds	7
      00003B 02 00 C2         [24]  594 	ljmp	_RF_pin_ISR
                                    595 ;--------------------------------------------------------
                                    596 ; global & static initialisations
                                    597 ;--------------------------------------------------------
                                    598 	.area HOME    (CODE)
                                    599 	.area GSINIT  (CODE)
                                    600 	.area GSFINAL (CODE)
                                    601 	.area GSINIT  (CODE)
                                    602 	.globl __sdcc_gsinit_startup
                                    603 	.globl __sdcc_program_startup
                                    604 	.globl __start__stack
                                    605 	.globl __mcs51_genXINIT
                                    606 	.globl __mcs51_genXRAMCLEAR
                                    607 	.globl __mcs51_genRAMCLEAR
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'RF_pin_ISR'
                                    610 ;------------------------------------------------------------
                                    611 ;changeCount               Allocated with name '_RF_pin_ISR_changeCount_65536_35'
                                    612 ;lastTime                  Allocated with name '_RF_pin_ISR_lastTime_65536_35'
                                    613 ;repeatCount               Allocated with name '_RF_pin_ISR_repeatCount_65536_35'
                                    614 ;RCSwitch                  Allocated to registers 
                                    615 ;time                      Allocated to registers 
                                    616 ;duration                  Allocated to registers r6 r7 
                                    617 ;------------------------------------------------------------
                                    618 ;	main.c:36: static unsigned int changeCount = 0;
      00009A E4               [12]  619 	clr	a
      00009B F5 08            [12]  620 	mov	_RF_pin_ISR_changeCount_65536_35,a
      00009D F5 09            [12]  621 	mov	(_RF_pin_ISR_changeCount_65536_35 + 1),a
                                    622 ;	main.c:37: static unsigned long lastTime = 0;
      00009F F5 0A            [12]  623 	mov	_RF_pin_ISR_lastTime_65536_35,a
      0000A1 F5 0B            [12]  624 	mov	(_RF_pin_ISR_lastTime_65536_35 + 1),a
      0000A3 F5 0C            [12]  625 	mov	(_RF_pin_ISR_lastTime_65536_35 + 2),a
      0000A5 F5 0D            [12]  626 	mov	(_RF_pin_ISR_lastTime_65536_35 + 3),a
                                    627 ;	main.c:38: static unsigned int repeatCount = 0;
      0000A7 F5 0E            [12]  628 	mov	_RF_pin_ISR_repeatCount_65536_35,a
      0000A9 F5 0F            [12]  629 	mov	(_RF_pin_ISR_repeatCount_65536_35 + 1),a
                                    630 	.area GSFINAL (CODE)
      0000AB 02 00 3E         [24]  631 	ljmp	__sdcc_program_startup
                                    632 ;--------------------------------------------------------
                                    633 ; Home
                                    634 ;--------------------------------------------------------
                                    635 	.area HOME    (CODE)
                                    636 	.area HOME    (CODE)
      00003E                        637 __sdcc_program_startup:
      00003E 02 00 AE         [24]  638 	ljmp	_main
                                    639 ;	return from main will return to caller
                                    640 ;--------------------------------------------------------
                                    641 ; code
                                    642 ;--------------------------------------------------------
                                    643 	.area CSEG    (CODE)
                                    644 ;------------------------------------------------------------
                                    645 ;Allocation info for local variables in function 'main'
                                    646 ;------------------------------------------------------------
                                    647 ;	main.c:16: void main(void)
                                    648 ;	-----------------------------------------
                                    649 ;	 function main
                                    650 ;	-----------------------------------------
      0000AE                        651 _main:
                           000007   652 	ar7 = 0x07
                           000006   653 	ar6 = 0x06
                           000005   654 	ar5 = 0x05
                           000004   655 	ar4 = 0x04
                           000003   656 	ar3 = 0x03
                           000002   657 	ar2 = 0x02
                           000001   658 	ar1 = 0x01
                           000000   659 	ar0 = 0x00
                                    660 ;	main.c:18: DelayInit();
      0000AE 12 01 DA         [24]  661 	lcall	_DelayInit
                                    662 ;	main.c:19: GPIO_Init();
      0000B1 12 02 A5         [24]  663 	lcall	_GPIO_Init
                                    664 ;	main.c:20: UART0_Init();
      0000B4 12 02 01         [24]  665 	lcall	_UART0_Init
                                    666 ;	main.c:22: initSwitch(&myRCSwitch);
      0000B7 90 00 01         [24]  667 	mov	dptr,#_myRCSwitch
      0000BA 75 F0 00         [24]  668 	mov	b,#0x00
      0000BD 12 02 EE         [24]  669 	lcall	_initSwitch
                                    670 ;	main.c:24: while (1) 
      0000C0                        671 00102$:
                                    672 ;	main.c:28: }
      0000C0 80 FE            [24]  673 	sjmp	00102$
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'RF_pin_ISR'
                                    676 ;------------------------------------------------------------
                                    677 ;changeCount               Allocated with name '_RF_pin_ISR_changeCount_65536_35'
                                    678 ;lastTime                  Allocated with name '_RF_pin_ISR_lastTime_65536_35'
                                    679 ;repeatCount               Allocated with name '_RF_pin_ISR_repeatCount_65536_35'
                                    680 ;RCSwitch                  Allocated to registers 
                                    681 ;time                      Allocated to registers 
                                    682 ;duration                  Allocated to registers r6 r7 
                                    683 ;------------------------------------------------------------
                                    684 ;	main.c:32: void RF_pin_ISR(void) __interrupt (7)
                                    685 ;	-----------------------------------------
                                    686 ;	 function RF_pin_ISR
                                    687 ;	-----------------------------------------
      0000C2                        688 _RF_pin_ISR:
      0000C2 C0 21            [24]  689 	push	bits
      0000C4 C0 E0            [24]  690 	push	acc
      0000C6 C0 F0            [24]  691 	push	b
      0000C8 C0 82            [24]  692 	push	dpl
      0000CA C0 83            [24]  693 	push	dph
      0000CC C0 07            [24]  694 	push	(0+7)
      0000CE C0 06            [24]  695 	push	(0+6)
      0000D0 C0 05            [24]  696 	push	(0+5)
      0000D2 C0 04            [24]  697 	push	(0+4)
      0000D4 C0 03            [24]  698 	push	(0+3)
      0000D6 C0 02            [24]  699 	push	(0+2)
      0000D8 C0 01            [24]  700 	push	(0+1)
      0000DA C0 00            [24]  701 	push	(0+0)
      0000DC C0 D0            [24]  702 	push	psw
      0000DE 75 D0 00         [24]  703 	mov	psw,#0x00
                                    704 ;	main.c:34: __xdata RCSWITCH_t * __data RCSwitch  = &myRCSwitch;
                                    705 ;	main.c:41: const unsigned int duration = time - lastTime;
      0000E1 AE 0A            [24]  706 	mov	r6,_RF_pin_ISR_lastTime_65536_35
      0000E3 AF 0B            [24]  707 	mov	r7,(_RF_pin_ISR_lastTime_65536_35 + 1)
      0000E5 C3               [12]  708 	clr	c
      0000E6 E4               [12]  709 	clr	a
      0000E7 9E               [12]  710 	subb	a,r6
      0000E8 FE               [12]  711 	mov	r6,a
      0000E9 E4               [12]  712 	clr	a
      0000EA 9F               [12]  713 	subb	a,r7
      0000EB FF               [12]  714 	mov	r7,a
                                    715 ;	main.c:43: if (duration > RCSwitch->nSeparationLimit) {
      0000EC 90 00 0D         [24]  716 	mov	dptr,#(_myRCSwitch + 0x000c)
      0000EF E0               [24]  717 	movx	a,@dptr
      0000F0 FC               [12]  718 	mov	r4,a
      0000F1 A3               [24]  719 	inc	dptr
      0000F2 E0               [24]  720 	movx	a,@dptr
      0000F3 FD               [12]  721 	mov	r5,a
      0000F4 C3               [12]  722 	clr	c
      0000F5 EC               [12]  723 	mov	a,r4
      0000F6 9E               [12]  724 	subb	a,r6
      0000F7 ED               [12]  725 	mov	a,r5
      0000F8 9F               [12]  726 	subb	a,r7
      0000F9 50 60            [24]  727 	jnc	00108$
                                    728 ;	main.c:46: if (diff(duration, RCSwitch->timings[0]) < 200) {
      0000FB 90 00 0F         [24]  729 	mov	dptr,#(_myRCSwitch + 0x000e)
      0000FE E0               [24]  730 	movx	a,@dptr
      0000FF F5 12            [12]  731 	mov	_diff_PARM_2,a
      000101 A3               [24]  732 	inc	dptr
      000102 E0               [24]  733 	movx	a,@dptr
      000103 F5 13            [12]  734 	mov	(_diff_PARM_2 + 1),a
      000105 8E 82            [24]  735 	mov	dpl,r6
      000107 8F 83            [24]  736 	mov	dph,r7
      000109 C0 07            [24]  737 	push	ar7
      00010B C0 06            [24]  738 	push	ar6
      00010D 12 03 F5         [24]  739 	lcall	_diff
      000110 AC 82            [24]  740 	mov	r4,dpl
      000112 AD 83            [24]  741 	mov	r5,dph
      000114 D0 06            [24]  742 	pop	ar6
      000116 D0 07            [24]  743 	pop	ar7
      000118 C3               [12]  744 	clr	c
      000119 EC               [12]  745 	mov	a,r4
      00011A 94 C8            [12]  746 	subb	a,#0xc8
      00011C ED               [12]  747 	mov	a,r5
      00011D 94 00            [12]  748 	subb	a,#0x00
      00011F 50 35            [24]  749 	jnc	00106$
                                    750 ;	main.c:52: repeatCount++;
      000121 05 0E            [12]  751 	inc	_RF_pin_ISR_repeatCount_65536_35
      000123 E4               [12]  752 	clr	a
      000124 B5 0E 02         [24]  753 	cjne	a,_RF_pin_ISR_repeatCount_65536_35,00135$
      000127 05 0F            [12]  754 	inc	(_RF_pin_ISR_repeatCount_65536_35 + 1)
      000129                        755 00135$:
                                    756 ;	main.c:53: if(repeatCount == 2) 
      000129 74 02            [12]  757 	mov	a,#0x02
      00012B B5 0E 06         [24]  758 	cjne	a,_RF_pin_ISR_repeatCount_65536_35,00136$
      00012E E4               [12]  759 	clr	a
      00012F B5 0F 02         [24]  760 	cjne	a,(_RF_pin_ISR_repeatCount_65536_35 + 1),00136$
      000132 80 02            [24]  761 	sjmp	00137$
      000134                        762 00136$:
      000134 80 20            [24]  763 	sjmp	00106$
      000136                        764 00137$:
                                    765 ;	main.c:54: if(receiveProtocol(RCSwitch, changeCount)) repeatCount = 0;		
      000136 85 08 22         [24]  766 	mov	_receiveProtocol_PARM_2,_RF_pin_ISR_changeCount_65536_35
      000139 85 09 23         [24]  767 	mov	(_receiveProtocol_PARM_2 + 1),(_RF_pin_ISR_changeCount_65536_35 + 1)
      00013C 90 00 01         [24]  768 	mov	dptr,#_myRCSwitch
      00013F 75 F0 00         [24]  769 	mov	b,#0x00
      000142 C0 07            [24]  770 	push	ar7
      000144 C0 06            [24]  771 	push	ar6
      000146 12 04 29         [24]  772 	lcall	_receiveProtocol
      000149 E5 82            [12]  773 	mov	a,dpl
      00014B D0 06            [24]  774 	pop	ar6
      00014D D0 07            [24]  775 	pop	ar7
      00014F 60 05            [24]  776 	jz	00106$
      000151 E4               [12]  777 	clr	a
      000152 F5 0E            [12]  778 	mov	_RF_pin_ISR_repeatCount_65536_35,a
      000154 F5 0F            [12]  779 	mov	(_RF_pin_ISR_repeatCount_65536_35 + 1),a
      000156                        780 00106$:
                                    781 ;	main.c:56: changeCount = 0;
      000156 E4               [12]  782 	clr	a
      000157 F5 08            [12]  783 	mov	_RF_pin_ISR_changeCount_65536_35,a
      000159 F5 09            [12]  784 	mov	(_RF_pin_ISR_changeCount_65536_35 + 1),a
      00015B                        785 00108$:
                                    786 ;	main.c:59: if (changeCount >= RCSWITCH_MAX_CHANGES) {
      00015B C3               [12]  787 	clr	c
      00015C E5 08            [12]  788 	mov	a,_RF_pin_ISR_changeCount_65536_35
      00015E 94 43            [12]  789 	subb	a,#0x43
      000160 E5 09            [12]  790 	mov	a,(_RF_pin_ISR_changeCount_65536_35 + 1)
      000162 94 00            [12]  791 	subb	a,#0x00
      000164 40 09            [24]  792 	jc	00110$
                                    793 ;	main.c:60: changeCount = 0;
      000166 E4               [12]  794 	clr	a
      000167 F5 08            [12]  795 	mov	_RF_pin_ISR_changeCount_65536_35,a
      000169 F5 09            [12]  796 	mov	(_RF_pin_ISR_changeCount_65536_35 + 1),a
                                    797 ;	main.c:61: repeatCount = 0;
      00016B F5 0E            [12]  798 	mov	_RF_pin_ISR_repeatCount_65536_35,a
      00016D F5 0F            [12]  799 	mov	(_RF_pin_ISR_repeatCount_65536_35 + 1),a
      00016F                        800 00110$:
                                    801 ;	main.c:64: RCSwitch->timings[changeCount++] = duration;
      00016F AC 08            [24]  802 	mov	r4,_RF_pin_ISR_changeCount_65536_35
      000171 AD 09            [24]  803 	mov	r5,(_RF_pin_ISR_changeCount_65536_35 + 1)
      000173 05 08            [12]  804 	inc	_RF_pin_ISR_changeCount_65536_35
      000175 E4               [12]  805 	clr	a
      000176 B5 08 02         [24]  806 	cjne	a,_RF_pin_ISR_changeCount_65536_35,00140$
      000179 05 09            [12]  807 	inc	(_RF_pin_ISR_changeCount_65536_35 + 1)
      00017B                        808 00140$:
      00017B EC               [12]  809 	mov	a,r4
      00017C 2C               [12]  810 	add	a,r4
      00017D FC               [12]  811 	mov	r4,a
      00017E ED               [12]  812 	mov	a,r5
      00017F 33               [12]  813 	rlc	a
      000180 FD               [12]  814 	mov	r5,a
      000181 EC               [12]  815 	mov	a,r4
      000182 24 0F            [12]  816 	add	a,#(_myRCSwitch + 0x000e)
      000184 F5 82            [12]  817 	mov	dpl,a
      000186 ED               [12]  818 	mov	a,r5
      000187 34 00            [12]  819 	addc	a,#((_myRCSwitch + 0x000e) >> 8)
      000189 F5 83            [12]  820 	mov	dph,a
      00018B EE               [12]  821 	mov	a,r6
      00018C F0               [24]  822 	movx	@dptr,a
      00018D EF               [12]  823 	mov	a,r7
      00018E A3               [24]  824 	inc	dptr
      00018F F0               [24]  825 	movx	@dptr,a
                                    826 ;	main.c:65: lastTime = time;
      000190 E4               [12]  827 	clr	a
      000191 F5 0A            [12]  828 	mov	_RF_pin_ISR_lastTime_65536_35,a
      000193 F5 0B            [12]  829 	mov	(_RF_pin_ISR_lastTime_65536_35 + 1),a
      000195 F5 0C            [12]  830 	mov	(_RF_pin_ISR_lastTime_65536_35 + 2),a
      000197 F5 0D            [12]  831 	mov	(_RF_pin_ISR_lastTime_65536_35 + 3),a
                                    832 ;	main.c:66: }
      000199 D0 D0            [24]  833 	pop	psw
      00019B D0 00            [24]  834 	pop	(0+0)
      00019D D0 01            [24]  835 	pop	(0+1)
      00019F D0 02            [24]  836 	pop	(0+2)
      0001A1 D0 03            [24]  837 	pop	(0+3)
      0001A3 D0 04            [24]  838 	pop	(0+4)
      0001A5 D0 05            [24]  839 	pop	(0+5)
      0001A7 D0 06            [24]  840 	pop	(0+6)
      0001A9 D0 07            [24]  841 	pop	(0+7)
      0001AB D0 83            [24]  842 	pop	dph
      0001AD D0 82            [24]  843 	pop	dpl
      0001AF D0 F0            [24]  844 	pop	b
      0001B1 D0 E0            [24]  845 	pop	acc
      0001B3 D0 21            [24]  846 	pop	bits
      0001B5 32               [24]  847 	reti
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
                                    850 	.area XINIT   (CODE)
                                    851 	.area CABS    (ABS,CODE)
