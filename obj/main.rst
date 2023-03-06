                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _check_request
                                     13 	.globl _select_program
                                     14 	.globl _GPIO_Init
                                     15 	.globl _UART0_Init
                                     16 	.globl _printf
                                     17 	.globl _DelayMs
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
                                    251 ;--------------------------------------------------------
                                    252 ; special function registers
                                    253 ;--------------------------------------------------------
                                    254 	.area RSEG    (ABS,DATA)
      000000                        255 	.org 0x0000
                           000080   256 _P0	=	0x0080
                           000081   257 _SP	=	0x0081
                           000082   258 _DPL	=	0x0082
                           000083   259 _DPH	=	0x0083
                           000084   260 _RCTRIM0	=	0x0084
                           000085   261 _RCTRIM1	=	0x0085
                           000086   262 _RWK	=	0x0086
                           000087   263 _PCON	=	0x0087
                           000088   264 _TCON	=	0x0088
                           000089   265 _TMOD	=	0x0089
                           00008A   266 _TL0	=	0x008a
                           00008B   267 _TL1	=	0x008b
                           00008C   268 _TH0	=	0x008c
                           00008D   269 _TH1	=	0x008d
                           00008E   270 _CKCON	=	0x008e
                           00008F   271 _WKCON	=	0x008f
                           000090   272 _P1	=	0x0090
                           000091   273 _SFRS	=	0x0091
                           000092   274 _CAPCON0	=	0x0092
                           000093   275 _CAPCON1	=	0x0093
                           000094   276 _CAPCON2	=	0x0094
                           000095   277 _CKDIV	=	0x0095
                           000096   278 _CKSWT	=	0x0096
                           000097   279 _CKEN	=	0x0097
                           000098   280 _SCON	=	0x0098
                           000099   281 _SBUF	=	0x0099
                           00009A   282 _SBUF_1	=	0x009a
                           00009B   283 _EIE	=	0x009b
                           00009C   284 _EIE1	=	0x009c
                           00009F   285 _CHPCON	=	0x009f
                           0000A0   286 _P2	=	0x00a0
                           0000A2   287 _AUXR1	=	0x00a2
                           0000A3   288 _BODCON0	=	0x00a3
                           0000A4   289 _IAPTRG	=	0x00a4
                           0000A5   290 _IAPUEN	=	0x00a5
                           0000A6   291 _IAPAL	=	0x00a6
                           0000A7   292 _IAPAH	=	0x00a7
                           0000A8   293 _IE	=	0x00a8
                           0000A9   294 _SADDR	=	0x00a9
                           0000AA   295 _WDCON	=	0x00aa
                           0000AB   296 _BODCON1	=	0x00ab
                           0000AC   297 _P3M1	=	0x00ac
                           0000AC   298 _P3S	=	0x00ac
                           0000AD   299 _P3M2	=	0x00ad
                           0000AD   300 _P3SR	=	0x00ad
                           0000AE   301 _IAPFD	=	0x00ae
                           0000AF   302 _IAPCN	=	0x00af
                           0000B0   303 _P3	=	0x00b0
                           0000B1   304 _P0M1	=	0x00b1
                           0000B1   305 _P0S	=	0x00b1
                           0000B2   306 _P0M2	=	0x00b2
                           0000B2   307 _P0SR	=	0x00b2
                           0000B3   308 _P1M1	=	0x00b3
                           0000B3   309 _P1S	=	0x00b3
                           0000B4   310 _P1M2	=	0x00b4
                           0000B4   311 _P1SR	=	0x00b4
                           0000B5   312 _P2S	=	0x00b5
                           0000B7   313 _IPH	=	0x00b7
                           0000B7   314 _PWMINTC	=	0x00b7
                           0000B8   315 _IP	=	0x00b8
                           0000B9   316 _SADEN	=	0x00b9
                           0000BA   317 _SADEN_1	=	0x00ba
                           0000BB   318 _SADDR_1	=	0x00bb
                           0000BC   319 _I2DAT	=	0x00bc
                           0000BD   320 _I2STAT	=	0x00bd
                           0000BE   321 _I2CLK	=	0x00be
                           0000BF   322 _I2TOC	=	0x00bf
                           0000C0   323 _I2CON	=	0x00c0
                           0000C1   324 _I2ADDR	=	0x00c1
                           0000C2   325 _ADCRL	=	0x00c2
                           0000C3   326 _ADCRH	=	0x00c3
                           0000C4   327 _T3CON	=	0x00c4
                           0000C4   328 _PWM4H	=	0x00c4
                           0000C5   329 _RL3	=	0x00c5
                           0000C5   330 _PWM5H	=	0x00c5
                           0000C6   331 _RH3	=	0x00c6
                           0000C6   332 _PIOCON1	=	0x00c6
                           0000C7   333 _TA	=	0x00c7
                           0000C8   334 _T2CON	=	0x00c8
                           0000C9   335 _T2MOD	=	0x00c9
                           0000CA   336 _RCMP2L	=	0x00ca
                           0000CB   337 _RCMP2H	=	0x00cb
                           0000CC   338 _TL2	=	0x00cc
                           0000CC   339 _PWM4L	=	0x00cc
                           0000CD   340 _TH2	=	0x00cd
                           0000CD   341 _PWM5L	=	0x00cd
                           0000CE   342 _ADCMPL	=	0x00ce
                           0000CF   343 _ADCMPH	=	0x00cf
                           0000D0   344 _PSW	=	0x00d0
                           0000D1   345 _PWMPH	=	0x00d1
                           0000D2   346 _PWM0H	=	0x00d2
                           0000D3   347 _PWM1H	=	0x00d3
                           0000D4   348 _PWM2H	=	0x00d4
                           0000D5   349 _PWM3H	=	0x00d5
                           0000D6   350 _PNP	=	0x00d6
                           0000D7   351 _FBD	=	0x00d7
                           0000D8   352 _PWMCON0	=	0x00d8
                           0000D9   353 _PWMPL	=	0x00d9
                           0000DA   354 _PWM0L	=	0x00da
                           0000DB   355 _PWM1L	=	0x00db
                           0000DC   356 _PWM2L	=	0x00dc
                           0000DD   357 _PWM3L	=	0x00dd
                           0000DE   358 _PIOCON0	=	0x00de
                           0000DF   359 _PWMCON1	=	0x00df
                           0000E0   360 _ACC	=	0x00e0
                           0000E1   361 _ADCCON1	=	0x00e1
                           0000E2   362 _ADCCON2	=	0x00e2
                           0000E3   363 _ADCDLY	=	0x00e3
                           0000E4   364 _C0L	=	0x00e4
                           0000E5   365 _C0H	=	0x00e5
                           0000E6   366 _C1L	=	0x00e6
                           0000E7   367 _C1H	=	0x00e7
                           0000E8   368 _ADCCON0	=	0x00e8
                           0000E9   369 _PICON	=	0x00e9
                           0000EA   370 _PINEN	=	0x00ea
                           0000EB   371 _PIPEN	=	0x00eb
                           0000EC   372 _PIF	=	0x00ec
                           0000ED   373 _C2L	=	0x00ed
                           0000EE   374 _C2H	=	0x00ee
                           0000EF   375 _EIP	=	0x00ef
                           0000F0   376 _B	=	0x00f0
                           0000F1   377 _CAPCON3	=	0x00f1
                           0000F2   378 _CAPCON4	=	0x00f2
                           0000F3   379 _SPCR	=	0x00f3
                           0000F3   380 _SPCR2	=	0x00f3
                           0000F4   381 _SPSR	=	0x00f4
                           0000F5   382 _SPDR	=	0x00f5
                           0000F6   383 _AINDIDS	=	0x00f6
                           0000F7   384 _EIPH	=	0x00f7
                           0000F8   385 _SCON_1	=	0x00f8
                           0000F9   386 _PDTEN	=	0x00f9
                           0000FA   387 _PDTCNT	=	0x00fa
                           0000FB   388 _PMEN	=	0x00fb
                           0000FC   389 _PMD	=	0x00fc
                           0000FE   390 _EIP1	=	0x00fe
                           0000FF   391 _EIPH1	=	0x00ff
                                    392 ;--------------------------------------------------------
                                    393 ; special function bits
                                    394 ;--------------------------------------------------------
                                    395 	.area RSEG    (ABS,DATA)
      000000                        396 	.org 0x0000
                           0000FF   397 _SM0_1	=	0x00ff
                           0000FF   398 _FE_1	=	0x00ff
                           0000FE   399 _SM1_1	=	0x00fe
                           0000FD   400 _SM2_1	=	0x00fd
                           0000FC   401 _REN_1	=	0x00fc
                           0000FB   402 _TB8_1	=	0x00fb
                           0000FA   403 _RB8_1	=	0x00fa
                           0000F9   404 _TI_1	=	0x00f9
                           0000F8   405 _RI_1	=	0x00f8
                           0000EF   406 _ADCF	=	0x00ef
                           0000EE   407 _ADCS	=	0x00ee
                           0000ED   408 _ETGSEL1	=	0x00ed
                           0000EC   409 _ETGSEL0	=	0x00ec
                           0000EB   410 _ADCHS3	=	0x00eb
                           0000EA   411 _ADCHS2	=	0x00ea
                           0000E9   412 _ADCHS1	=	0x00e9
                           0000E8   413 _ADCHS0	=	0x00e8
                           0000DF   414 _PWMRUN	=	0x00df
                           0000DE   415 _LOAD	=	0x00de
                           0000DD   416 _PWMF	=	0x00dd
                           0000DC   417 _CLRPWM	=	0x00dc
                           0000D7   418 _CY	=	0x00d7
                           0000D6   419 _AC	=	0x00d6
                           0000D5   420 _F0	=	0x00d5
                           0000D4   421 _RS1	=	0x00d4
                           0000D3   422 _RS0	=	0x00d3
                           0000D2   423 _OV	=	0x00d2
                           0000D0   424 _P	=	0x00d0
                           0000CF   425 _TF2	=	0x00cf
                           0000CA   426 _TR2	=	0x00ca
                           0000C8   427 _CM_RL2	=	0x00c8
                           0000C6   428 _I2CEN	=	0x00c6
                           0000C5   429 _STA	=	0x00c5
                           0000C4   430 _STO	=	0x00c4
                           0000C3   431 _SI	=	0x00c3
                           0000C2   432 _AA	=	0x00c2
                           0000C0   433 _I2CPX	=	0x00c0
                           0000BE   434 _PADC	=	0x00be
                           0000BD   435 _PBOD	=	0x00bd
                           0000BC   436 _PS	=	0x00bc
                           0000BB   437 _PT1	=	0x00bb
                           0000BA   438 _PX1	=	0x00ba
                           0000B9   439 _PT0	=	0x00b9
                           0000B8   440 _PX0	=	0x00b8
                           0000B0   441 _P30	=	0x00b0
                           0000AF   442 _EA	=	0x00af
                           0000AE   443 _EADC	=	0x00ae
                           0000AD   444 _EBOD	=	0x00ad
                           0000AC   445 _ES	=	0x00ac
                           0000AB   446 _ET1	=	0x00ab
                           0000AA   447 _EX1	=	0x00aa
                           0000A9   448 _ET0	=	0x00a9
                           0000A8   449 _EX0	=	0x00a8
                           0000A0   450 _P20	=	0x00a0
                           00009F   451 _SM0	=	0x009f
                           00009F   452 _FE	=	0x009f
                           00009E   453 _SM1	=	0x009e
                           00009D   454 _SM2	=	0x009d
                           00009C   455 _REN	=	0x009c
                           00009B   456 _TB8	=	0x009b
                           00009A   457 _RB8	=	0x009a
                           000099   458 _TI	=	0x0099
                           000098   459 _RI	=	0x0098
                           000097   460 _P17	=	0x0097
                           000096   461 _P16	=	0x0096
                           000096   462 _TXD_1	=	0x0096
                           000095   463 _P15	=	0x0095
                           000094   464 _P14	=	0x0094
                           000094   465 _SDA	=	0x0094
                           000093   466 _P13	=	0x0093
                           000093   467 _SCL	=	0x0093
                           000092   468 _P12	=	0x0092
                           000091   469 _P11	=	0x0091
                           000090   470 _P10	=	0x0090
                           00008F   471 _TF1	=	0x008f
                           00008E   472 _TR1	=	0x008e
                           00008D   473 _TF0	=	0x008d
                           00008C   474 _TR0	=	0x008c
                           00008B   475 _IE1	=	0x008b
                           00008A   476 _IT1	=	0x008a
                           000089   477 _IE0	=	0x0089
                           000088   478 _IT0	=	0x0088
                           000087   479 _P07	=	0x0087
                           000087   480 _RXD	=	0x0087
                           000086   481 _P06	=	0x0086
                           000086   482 _TXD	=	0x0086
                           000085   483 _P05	=	0x0085
                           000084   484 _P04	=	0x0084
                           000084   485 _STADC	=	0x0084
                           000083   486 _P03	=	0x0083
                           000082   487 _P02	=	0x0082
                           000082   488 _RXD_1	=	0x0082
                           000081   489 _P01	=	0x0081
                           000081   490 _MISO	=	0x0081
                           000080   491 _P00	=	0x0080
                           000080   492 _MOSI	=	0x0080
                                    493 ;--------------------------------------------------------
                                    494 ; overlayable register banks
                                    495 ;--------------------------------------------------------
                                    496 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        497 	.ds 8
                                    498 ;--------------------------------------------------------
                                    499 ; internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area DSEG    (DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; overlayable items in internal ram
                                    504 ;--------------------------------------------------------
                                    505 ;--------------------------------------------------------
                                    506 ; Stack segment in internal ram
                                    507 ;--------------------------------------------------------
                                    508 	.area	SSEG
      000043                        509 __start__stack:
      000043                        510 	.ds	1
                                    511 
                                    512 ;--------------------------------------------------------
                                    513 ; indirectly addressable internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area ISEG    (DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; absolute internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area IABS    (ABS,DATA)
                                    520 	.area IABS    (ABS,DATA)
                                    521 ;--------------------------------------------------------
                                    522 ; bit data
                                    523 ;--------------------------------------------------------
                                    524 	.area BSEG    (BIT)
                                    525 ;--------------------------------------------------------
                                    526 ; paged external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area PSEG    (PAG,XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XSEG    (XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; absolute external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XABS    (ABS,XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; external initialized ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XISEG   (XDATA)
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT0 (CODE)
                                    543 	.area GSINIT1 (CODE)
                                    544 	.area GSINIT2 (CODE)
                                    545 	.area GSINIT3 (CODE)
                                    546 	.area GSINIT4 (CODE)
                                    547 	.area GSINIT5 (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 	.area GSFINAL (CODE)
                                    550 	.area CSEG    (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; interrupt vector
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
      000000                        555 __interrupt_vect:
      000000 02 00 06         [24]  556 	ljmp	__sdcc_gsinit_startup
                                    557 ;--------------------------------------------------------
                                    558 ; global & static initialisations
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.globl __sdcc_gsinit_startup
                                    565 	.globl __sdcc_program_startup
                                    566 	.globl __start__stack
                                    567 	.globl __mcs51_genXINIT
                                    568 	.globl __mcs51_genXRAMCLEAR
                                    569 	.globl __mcs51_genRAMCLEAR
                                    570 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  571 	ljmp	__sdcc_program_startup
                                    572 ;--------------------------------------------------------
                                    573 ; Home
                                    574 ;--------------------------------------------------------
                                    575 	.area HOME    (CODE)
                                    576 	.area HOME    (CODE)
      000003                        577 __sdcc_program_startup:
      000003 02 01 40         [24]  578 	ljmp	_main
                                    579 ;	return from main will return to caller
                                    580 ;--------------------------------------------------------
                                    581 ; code
                                    582 ;--------------------------------------------------------
                                    583 	.area CSEG    (CODE)
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'select_program'
                                    586 ;------------------------------------------------------------
                                    587 ;program                   Allocated to registers r7 
                                    588 ;i                         Allocated to registers r5 r6 
                                    589 ;i                         Allocated to registers r5 r6 
                                    590 ;------------------------------------------------------------
                                    591 ;	main.c:20: void select_program(char program)
                                    592 ;	-----------------------------------------
                                    593 ;	 function select_program
                                    594 ;	-----------------------------------------
      000062                        595 _select_program:
                           000007   596 	ar7 = 0x07
                           000006   597 	ar6 = 0x06
                           000005   598 	ar5 = 0x05
                           000004   599 	ar4 = 0x04
                           000003   600 	ar3 = 0x03
                           000002   601 	ar2 = 0x02
                           000001   602 	ar1 = 0x01
                           000000   603 	ar0 = 0x00
      000062 AF 82            [24]  604 	mov	r7,dpl
                                    605 ;	main.c:22: RESET_OPTO = 1;
                                    606 ;	assignBit
      000064 D2 90            [12]  607 	setb	_P10
                                    608 ;	main.c:23: DelayMs(10);
      000066 90 00 0A         [24]  609 	mov	dptr,#0x000a
      000069 C0 07            [24]  610 	push	ar7
      00006B 12 01 7E         [24]  611 	lcall	_DelayMs
                                    612 ;	main.c:24: RESET_OPTO = 0;
                                    613 ;	assignBit
      00006E C2 90            [12]  614 	clr	_P10
                                    615 ;	main.c:25: DelayMs(10);
      000070 90 00 0A         [24]  616 	mov	dptr,#0x000a
      000073 12 01 7E         [24]  617 	lcall	_DelayMs
      000076 D0 07            [24]  618 	pop	ar7
                                    619 ;	main.c:26: if(program>0)
      000078 EF               [12]  620 	mov	a,r7
      000079 70 01            [24]  621 	jnz	00142$
      00007B 22               [24]  622 	ret
      00007C                        623 00142$:
                                    624 ;	main.c:28: if(program<=16)
      00007C EF               [12]  625 	mov	a,r7
      00007D 24 EF            [12]  626 	add	a,#0xff - 0x10
      00007F 40 3B            [24]  627 	jc	00121$
                                    628 ;	main.c:30: for(int i=0; i < program; i++)
      000081 7D 00            [12]  629 	mov	r5,#0x00
      000083 7E 00            [12]  630 	mov	r6,#0x00
      000085                        631 00109$:
      000085 8F 03            [24]  632 	mov	ar3,r7
      000087 7C 00            [12]  633 	mov	r4,#0x00
      000089 C3               [12]  634 	clr	c
      00008A ED               [12]  635 	mov	a,r5
      00008B 9B               [12]  636 	subb	a,r3
      00008C EE               [12]  637 	mov	a,r6
      00008D 64 80            [12]  638 	xrl	a,#0x80
      00008F 8C F0            [24]  639 	mov	b,r4
      000091 63 F0 80         [24]  640 	xrl	b,#0x80
      000094 95 F0            [12]  641 	subb	a,b
      000096 40 01            [24]  642 	jc	00144$
      000098 22               [24]  643 	ret
      000099                        644 00144$:
                                    645 ;	main.c:32: ADD_OPTO = 1;
                                    646 ;	assignBit
      000099 D2 93            [12]  647 	setb	_P13
                                    648 ;	main.c:33: DelayMs(200);
      00009B 90 00 C8         [24]  649 	mov	dptr,#0x00c8
      00009E C0 07            [24]  650 	push	ar7
      0000A0 C0 06            [24]  651 	push	ar6
      0000A2 C0 05            [24]  652 	push	ar5
      0000A4 12 01 7E         [24]  653 	lcall	_DelayMs
                                    654 ;	main.c:34: ADD_OPTO = 0;
                                    655 ;	assignBit
      0000A7 C2 93            [12]  656 	clr	_P13
                                    657 ;	main.c:35: DelayMs(200);
      0000A9 90 00 C8         [24]  658 	mov	dptr,#0x00c8
      0000AC 12 01 7E         [24]  659 	lcall	_DelayMs
      0000AF D0 05            [24]  660 	pop	ar5
      0000B1 D0 06            [24]  661 	pop	ar6
      0000B3 D0 07            [24]  662 	pop	ar7
                                    663 ;	main.c:30: for(int i=0; i < program; i++)
      0000B5 0D               [12]  664 	inc	r5
                                    665 ;	main.c:40: for(int i=0; i < 32-program; i++)
      0000B6 BD 00 CC         [24]  666 	cjne	r5,#0x00,00109$
      0000B9 0E               [12]  667 	inc	r6
      0000BA 80 C9            [24]  668 	sjmp	00109$
      0000BC                        669 00121$:
      0000BC 7D 00            [12]  670 	mov	r5,#0x00
      0000BE 7E 00            [12]  671 	mov	r6,#0x00
      0000C0                        672 00112$:
      0000C0 8F 03            [24]  673 	mov	ar3,r7
      0000C2 7C 00            [12]  674 	mov	r4,#0x00
      0000C4 74 20            [12]  675 	mov	a,#0x20
      0000C6 C3               [12]  676 	clr	c
      0000C7 9B               [12]  677 	subb	a,r3
      0000C8 FB               [12]  678 	mov	r3,a
      0000C9 E4               [12]  679 	clr	a
      0000CA 9C               [12]  680 	subb	a,r4
      0000CB FC               [12]  681 	mov	r4,a
      0000CC C3               [12]  682 	clr	c
      0000CD ED               [12]  683 	mov	a,r5
      0000CE 9B               [12]  684 	subb	a,r3
      0000CF EE               [12]  685 	mov	a,r6
      0000D0 64 80            [12]  686 	xrl	a,#0x80
      0000D2 8C F0            [24]  687 	mov	b,r4
      0000D4 63 F0 80         [24]  688 	xrl	b,#0x80
      0000D7 95 F0            [12]  689 	subb	a,b
      0000D9 50 23            [24]  690 	jnc	00114$
                                    691 ;	main.c:42: SUB_OPTO = 1;
                                    692 ;	assignBit
      0000DB D2 91            [12]  693 	setb	_P11
                                    694 ;	main.c:43: DelayMs(200);
      0000DD 90 00 C8         [24]  695 	mov	dptr,#0x00c8
      0000E0 C0 07            [24]  696 	push	ar7
      0000E2 C0 06            [24]  697 	push	ar6
      0000E4 C0 05            [24]  698 	push	ar5
      0000E6 12 01 7E         [24]  699 	lcall	_DelayMs
                                    700 ;	main.c:44: SUB_OPTO = 0;
                                    701 ;	assignBit
      0000E9 C2 91            [12]  702 	clr	_P11
                                    703 ;	main.c:45: DelayMs(200);
      0000EB 90 00 C8         [24]  704 	mov	dptr,#0x00c8
      0000EE 12 01 7E         [24]  705 	lcall	_DelayMs
      0000F1 D0 05            [24]  706 	pop	ar5
      0000F3 D0 06            [24]  707 	pop	ar6
      0000F5 D0 07            [24]  708 	pop	ar7
                                    709 ;	main.c:40: for(int i=0; i < 32-program; i++)
      0000F7 0D               [12]  710 	inc	r5
      0000F8 BD 00 C5         [24]  711 	cjne	r5,#0x00,00112$
      0000FB 0E               [12]  712 	inc	r6
      0000FC 80 C2            [24]  713 	sjmp	00112$
      0000FE                        714 00114$:
                                    715 ;	main.c:49: }
      0000FE 22               [24]  716 	ret
                                    717 ;------------------------------------------------------------
                                    718 ;Allocation info for local variables in function 'check_request'
                                    719 ;------------------------------------------------------------
                                    720 ;program                   Allocated to registers r7 
                                    721 ;------------------------------------------------------------
                                    722 ;	main.c:51: void check_request()
                                    723 ;	-----------------------------------------
                                    724 ;	 function check_request
                                    725 ;	-----------------------------------------
      0000FF                        726 _check_request:
                                    727 ;	main.c:53: if(!Enter_button)
      0000FF 20 92 3D         [24]  728 	jb	_P12,00111$
                                    729 ;	main.c:55: DelayMs(20);
      000102 90 00 14         [24]  730 	mov	dptr,#0x0014
      000105 12 01 7E         [24]  731 	lcall	_DelayMs
                                    732 ;	main.c:56: if(!Enter_button)
      000108 20 92 34         [24]  733 	jb	_P12,00111$
                                    734 ;	main.c:58: while(!Enter_button);
      00010B                        735 00101$:
      00010B 30 92 FD         [24]  736 	jnb	_P12,00101$
                                    737 ;	main.c:59: char  program = SW_PORT&0x1F;
      00010E E5 80            [12]  738 	mov	a,_P0
      000110 54 1F            [12]  739 	anl	a,#0x1f
                                    740 ;	main.c:60: program = program^0x1F;
      000112 64 1F            [12]  741 	xrl	a,#0x1f
                                    742 ;	main.c:61: if(program>=0 && program<=31) 
      000114 FF               [12]  743 	mov  r7,a
      000115 24 E0            [12]  744 	add	a,#0xff - 0x1f
      000117 40 26            [24]  745 	jc	00111$
                                    746 ;	main.c:63: printf("Program %d\ selected!\n", program);
      000119 8F 05            [24]  747 	mov	ar5,r7
      00011B 7E 00            [12]  748 	mov	r6,#0x00
      00011D C0 07            [24]  749 	push	ar7
      00011F C0 05            [24]  750 	push	ar5
      000121 C0 06            [24]  751 	push	ar6
      000123 74 1A            [12]  752 	mov	a,#___str_0
      000125 C0 E0            [24]  753 	push	acc
      000127 74 0A            [12]  754 	mov	a,#(___str_0 >> 8)
      000129 C0 E0            [24]  755 	push	acc
      00012B 74 80            [12]  756 	mov	a,#0x80
      00012D C0 E0            [24]  757 	push	acc
      00012F 12 02 B6         [24]  758 	lcall	_printf
      000132 E5 81            [12]  759 	mov	a,sp
      000134 24 FB            [12]  760 	add	a,#0xfb
      000136 F5 81            [12]  761 	mov	sp,a
      000138 D0 07            [24]  762 	pop	ar7
                                    763 ;	main.c:64: select_program(program);
      00013A 8F 82            [24]  764 	mov	dpl,r7
                                    765 ;	main.c:69: }
      00013C 02 00 62         [24]  766 	ljmp	_select_program
      00013F                        767 00111$:
      00013F 22               [24]  768 	ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'main'
                                    771 ;------------------------------------------------------------
                                    772 ;	main.c:71: void main(void)
                                    773 ;	-----------------------------------------
                                    774 ;	 function main
                                    775 ;	-----------------------------------------
      000140                        776 _main:
                                    777 ;	main.c:73: DelayInit();
      000140 12 01 72         [24]  778 	lcall	_DelayInit
                                    779 ;	main.c:74: GPIO_Init();
      000143 12 02 3D         [24]  780 	lcall	_GPIO_Init
                                    781 ;	main.c:75: UART0_Init();
      000146 12 01 99         [24]  782 	lcall	_UART0_Init
                                    783 ;	main.c:77: while (1) 
      000149                        784 00102$:
                                    785 ;	main.c:79: check_request();
      000149 12 00 FF         [24]  786 	lcall	_check_request
                                    787 ;	main.c:81: }
      00014C 80 FB            [24]  788 	sjmp	00102$
                                    789 	.area CSEG    (CODE)
                                    790 	.area CONST   (CODE)
                                    791 	.area CONST   (CODE)
      000A1A                        792 ___str_0:
      000A1A 50 72 6F 67 72 61 6D   793 	.ascii "Program %d selected!"
             20 25 64 20 73 65 6C
             65 63 74 65 64 21
      000A2E 0A                     794 	.db 0x0a
      000A2F 00                     795 	.db 0x00
                                    796 	.area CSEG    (CODE)
                                    797 	.area XINIT   (CODE)
                                    798 	.area CABS    (ABS,CODE)
