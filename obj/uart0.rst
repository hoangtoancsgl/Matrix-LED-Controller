                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.9 #13731 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart0
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _putchar
                                     12 	.globl _MOSI
                                     13 	.globl _P00
                                     14 	.globl _MISO
                                     15 	.globl _P01
                                     16 	.globl _RXD_1
                                     17 	.globl _P02
                                     18 	.globl _P03
                                     19 	.globl _STADC
                                     20 	.globl _P04
                                     21 	.globl _P05
                                     22 	.globl _TXD
                                     23 	.globl _P06
                                     24 	.globl _RXD
                                     25 	.globl _P07
                                     26 	.globl _IT0
                                     27 	.globl _IE0
                                     28 	.globl _IT1
                                     29 	.globl _IE1
                                     30 	.globl _TR0
                                     31 	.globl _TF0
                                     32 	.globl _TR1
                                     33 	.globl _TF1
                                     34 	.globl _P10
                                     35 	.globl _P11
                                     36 	.globl _P12
                                     37 	.globl _SCL
                                     38 	.globl _P13
                                     39 	.globl _SDA
                                     40 	.globl _P14
                                     41 	.globl _P15
                                     42 	.globl _TXD_1
                                     43 	.globl _P16
                                     44 	.globl _P17
                                     45 	.globl _RI
                                     46 	.globl _TI
                                     47 	.globl _RB8
                                     48 	.globl _TB8
                                     49 	.globl _REN
                                     50 	.globl _SM2
                                     51 	.globl _SM1
                                     52 	.globl _FE
                                     53 	.globl _SM0
                                     54 	.globl _P20
                                     55 	.globl _EX0
                                     56 	.globl _ET0
                                     57 	.globl _EX1
                                     58 	.globl _ET1
                                     59 	.globl _ES
                                     60 	.globl _EBOD
                                     61 	.globl _EADC
                                     62 	.globl _EA
                                     63 	.globl _P30
                                     64 	.globl _PX0
                                     65 	.globl _PT0
                                     66 	.globl _PX1
                                     67 	.globl _PT1
                                     68 	.globl _PS
                                     69 	.globl _PBOD
                                     70 	.globl _PADC
                                     71 	.globl _I2CPX
                                     72 	.globl _AA
                                     73 	.globl _SI
                                     74 	.globl _STO
                                     75 	.globl _STA
                                     76 	.globl _I2CEN
                                     77 	.globl _CM_RL2
                                     78 	.globl _TR2
                                     79 	.globl _TF2
                                     80 	.globl _P
                                     81 	.globl _OV
                                     82 	.globl _RS0
                                     83 	.globl _RS1
                                     84 	.globl _F0
                                     85 	.globl _AC
                                     86 	.globl _CY
                                     87 	.globl _CLRPWM
                                     88 	.globl _PWMF
                                     89 	.globl _LOAD
                                     90 	.globl _PWMRUN
                                     91 	.globl _ADCHS0
                                     92 	.globl _ADCHS1
                                     93 	.globl _ADCHS2
                                     94 	.globl _ADCHS3
                                     95 	.globl _ETGSEL0
                                     96 	.globl _ETGSEL1
                                     97 	.globl _ADCS
                                     98 	.globl _ADCF
                                     99 	.globl _RI_1
                                    100 	.globl _TI_1
                                    101 	.globl _RB8_1
                                    102 	.globl _TB8_1
                                    103 	.globl _REN_1
                                    104 	.globl _SM2_1
                                    105 	.globl _SM1_1
                                    106 	.globl _FE_1
                                    107 	.globl _SM0_1
                                    108 	.globl _EIPH1
                                    109 	.globl _EIP1
                                    110 	.globl _PMD
                                    111 	.globl _PMEN
                                    112 	.globl _PDTCNT
                                    113 	.globl _PDTEN
                                    114 	.globl _SCON_1
                                    115 	.globl _EIPH
                                    116 	.globl _AINDIDS
                                    117 	.globl _SPDR
                                    118 	.globl _SPSR
                                    119 	.globl _SPCR2
                                    120 	.globl _SPCR
                                    121 	.globl _CAPCON4
                                    122 	.globl _CAPCON3
                                    123 	.globl _B
                                    124 	.globl _EIP
                                    125 	.globl _C2H
                                    126 	.globl _C2L
                                    127 	.globl _PIF
                                    128 	.globl _PIPEN
                                    129 	.globl _PINEN
                                    130 	.globl _PICON
                                    131 	.globl _ADCCON0
                                    132 	.globl _C1H
                                    133 	.globl _C1L
                                    134 	.globl _C0H
                                    135 	.globl _C0L
                                    136 	.globl _ADCDLY
                                    137 	.globl _ADCCON2
                                    138 	.globl _ADCCON1
                                    139 	.globl _ACC
                                    140 	.globl _PWMCON1
                                    141 	.globl _PIOCON0
                                    142 	.globl _PWM3L
                                    143 	.globl _PWM2L
                                    144 	.globl _PWM1L
                                    145 	.globl _PWM0L
                                    146 	.globl _PWMPL
                                    147 	.globl _PWMCON0
                                    148 	.globl _FBD
                                    149 	.globl _PNP
                                    150 	.globl _PWM3H
                                    151 	.globl _PWM2H
                                    152 	.globl _PWM1H
                                    153 	.globl _PWM0H
                                    154 	.globl _PWMPH
                                    155 	.globl _PSW
                                    156 	.globl _ADCMPH
                                    157 	.globl _ADCMPL
                                    158 	.globl _PWM5L
                                    159 	.globl _TH2
                                    160 	.globl _PWM4L
                                    161 	.globl _TL2
                                    162 	.globl _RCMP2H
                                    163 	.globl _RCMP2L
                                    164 	.globl _T2MOD
                                    165 	.globl _T2CON
                                    166 	.globl _TA
                                    167 	.globl _PIOCON1
                                    168 	.globl _RH3
                                    169 	.globl _PWM5H
                                    170 	.globl _RL3
                                    171 	.globl _PWM4H
                                    172 	.globl _T3CON
                                    173 	.globl _ADCRH
                                    174 	.globl _ADCRL
                                    175 	.globl _I2ADDR
                                    176 	.globl _I2CON
                                    177 	.globl _I2TOC
                                    178 	.globl _I2CLK
                                    179 	.globl _I2STAT
                                    180 	.globl _I2DAT
                                    181 	.globl _SADDR_1
                                    182 	.globl _SADEN_1
                                    183 	.globl _SADEN
                                    184 	.globl _IP
                                    185 	.globl _PWMINTC
                                    186 	.globl _IPH
                                    187 	.globl _P2S
                                    188 	.globl _P1SR
                                    189 	.globl _P1M2
                                    190 	.globl _P1S
                                    191 	.globl _P1M1
                                    192 	.globl _P0SR
                                    193 	.globl _P0M2
                                    194 	.globl _P0S
                                    195 	.globl _P0M1
                                    196 	.globl _P3
                                    197 	.globl _IAPCN
                                    198 	.globl _IAPFD
                                    199 	.globl _P3SR
                                    200 	.globl _P3M2
                                    201 	.globl _P3S
                                    202 	.globl _P3M1
                                    203 	.globl _BODCON1
                                    204 	.globl _WDCON
                                    205 	.globl _SADDR
                                    206 	.globl _IE
                                    207 	.globl _IAPAH
                                    208 	.globl _IAPAL
                                    209 	.globl _IAPUEN
                                    210 	.globl _IAPTRG
                                    211 	.globl _BODCON0
                                    212 	.globl _AUXR1
                                    213 	.globl _P2
                                    214 	.globl _CHPCON
                                    215 	.globl _EIE1
                                    216 	.globl _EIE
                                    217 	.globl _SBUF_1
                                    218 	.globl _SBUF
                                    219 	.globl _SCON
                                    220 	.globl _CKEN
                                    221 	.globl _CKSWT
                                    222 	.globl _CKDIV
                                    223 	.globl _CAPCON2
                                    224 	.globl _CAPCON1
                                    225 	.globl _CAPCON0
                                    226 	.globl _SFRS
                                    227 	.globl _P1
                                    228 	.globl _WKCON
                                    229 	.globl _CKCON
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _PCON
                                    237 	.globl _RWK
                                    238 	.globl _RCTRIM1
                                    239 	.globl _RCTRIM0
                                    240 	.globl _DPH
                                    241 	.globl _DPL
                                    242 	.globl _SP
                                    243 	.globl _P0
                                    244 	.globl _UART0_Init
                                    245 	.globl _UART0_SendData
                                    246 	.globl _UART0_SendString
                                    247 	.globl _UART0_GetData
                                    248 	.globl _UART0_EnableInterrupt
                                    249 	.globl _UART0_DisableInterrupt
                                    250 	.globl _UART0_ClearFlag
                                    251 	.globl _UART0_GetFlag
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
                                    500 ; internal ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area DSEG    (DATA)
      000010                        503 _putchar_ch_65536_27:
      000010                        504 	.ds 2
                                    505 ;--------------------------------------------------------
                                    506 ; overlayable items in internal ram
                                    507 ;--------------------------------------------------------
                                    508 	.area	OSEG    (OVR,DATA)
                                    509 	.area	OSEG    (OVR,DATA)
                                    510 ;--------------------------------------------------------
                                    511 ; indirectly addressable internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area ISEG    (DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; absolute internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area IABS    (ABS,DATA)
                                    518 	.area IABS    (ABS,DATA)
                                    519 ;--------------------------------------------------------
                                    520 ; bit data
                                    521 ;--------------------------------------------------------
                                    522 	.area BSEG    (BIT)
                                    523 ;--------------------------------------------------------
                                    524 ; paged external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area PSEG    (PAG,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; uninitialized external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XSEG    (XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; initialized external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT0 (CODE)
                                    541 	.area GSINIT1 (CODE)
                                    542 	.area GSINIT2 (CODE)
                                    543 	.area GSINIT3 (CODE)
                                    544 	.area GSINIT4 (CODE)
                                    545 	.area GSINIT5 (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area CSEG    (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; global & static initialisations
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT  (CODE)
                                    554 	.area GSFINAL (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'UART0_Init'
                                    567 ;------------------------------------------------------------
                                    568 ;	uart0.c:5: void UART0_Init(void)
                                    569 ;	-----------------------------------------
                                    570 ;	 function UART0_Init
                                    571 ;	-----------------------------------------
      000201                        572 _UART0_Init:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
                                    581 ;	uart0.c:8: T3CON |= (1 << 5);
      000201 43 C4 20         [24]  582 	orl	_T3CON,#0x20
                                    583 ;	uart0.c:11: T3CON &= ~0x07;
      000204 53 C4 F8         [24]  584 	anl	_T3CON,#0xf8
                                    585 ;	uart0.c:12: T3CON |= 0x00;
      000207 85 C4 C4         [24]  586 	mov	_T3CON,_T3CON
                                    587 ;	uart0.c:14: EIE1 &= ~(1 << 1);
      00020A 53 9C FD         [24]  588 	anl	_EIE1,#0xfd
                                    589 ;	uart0.c:15: RH3 = 0xff;
      00020D 75 C6 FF         [24]  590 	mov	_RH3,#0xff
                                    591 ;	uart0.c:16: RL3 = 0xcc;
      000210 75 C5 CC         [24]  592 	mov	_RL3,#0xcc
                                    593 ;	uart0.c:17: T3CON |= (1 << 3);
      000213 43 C4 08         [24]  594 	orl	_T3CON,#0x08
                                    595 ;	uart0.c:18: PCON &= ~(1 << 7);
      000216 53 87 7F         [24]  596 	anl	_PCON,#0x7f
                                    597 ;	uart0.c:20: P06 = 1;
                                    598 ;	assignBit
      000219 D2 86            [12]  599 	setb	_P06
                                    600 ;	uart0.c:21: P0M1 &= ~(1 << 6);
      00021B 53 B1 BF         [24]  601 	anl	_P0M1,#0xbf
                                    602 ;	uart0.c:22: P0M2 |= (1 << 6);
      00021E 43 B2 40         [24]  603 	orl	_P0M2,#0x40
                                    604 ;	uart0.c:23: P07 = 1;
                                    605 ;	assignBit
      000221 D2 87            [12]  606 	setb	_P07
                                    607 ;	uart0.c:24: P0M1 &= ~(1 << 7);
      000223 53 B1 7F         [24]  608 	anl	_P0M1,#0x7f
                                    609 ;	uart0.c:25: P0M2 &= ~(1 << 7);
      000226 53 B2 7F         [24]  610 	anl	_P0M2,#0x7f
                                    611 ;	uart0.c:27: PCON &= ~(1 << 6);
      000229 53 87 BF         [24]  612 	anl	_PCON,#0xbf
                                    613 ;	uart0.c:28: SM0 = 0;
                                    614 ;	assignBit
      00022C C2 9F            [12]  615 	clr	_SM0
                                    616 ;	uart0.c:29: SM1 = 1;
                                    617 ;	assignBit
      00022E D2 9E            [12]  618 	setb	_SM1
                                    619 ;	uart0.c:31: REN = 1;
                                    620 ;	assignBit
      000230 D2 9C            [12]  621 	setb	_REN
                                    622 ;	uart0.c:32: }
      000232 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'UART0_SendData'
                                    626 ;------------------------------------------------------------
                                    627 ;u8Data                    Allocated to registers 
                                    628 ;------------------------------------------------------------
                                    629 ;	uart0.c:34: void UART0_SendData(uint8_t u8Data)
                                    630 ;	-----------------------------------------
                                    631 ;	 function UART0_SendData
                                    632 ;	-----------------------------------------
      000233                        633 _UART0_SendData:
      000233 85 82 99         [24]  634 	mov	_SBUF,dpl
                                    635 ;	uart0.c:37: while (UART0_GetFlag(UART0_TX_FLAG) == 0);
      000236                        636 00101$:
      000236 75 82 02         [24]  637 	mov	dpl,#0x02
      000239 12 02 81         [24]  638 	lcall	_UART0_GetFlag
      00023C E5 82            [12]  639 	mov	a,dpl
      00023E 60 F6            [24]  640 	jz	00101$
                                    641 ;	uart0.c:38: UART0_ClearFlag(UART0_TX_FLAG);
      000240 75 82 02         [24]  642 	mov	dpl,#0x02
                                    643 ;	uart0.c:39: }
      000243 02 02 7B         [24]  644 	ljmp	_UART0_ClearFlag
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'UART0_SendString'
                                    647 ;------------------------------------------------------------
                                    648 ;str                       Allocated to registers 
                                    649 ;------------------------------------------------------------
                                    650 ;	uart0.c:41: void UART0_SendString(char *str)
                                    651 ;	-----------------------------------------
                                    652 ;	 function UART0_SendString
                                    653 ;	-----------------------------------------
      000246                        654 _UART0_SendString:
      000246 AD 82            [24]  655 	mov	r5,dpl
      000248 AE 83            [24]  656 	mov	r6,dph
      00024A AF F0            [24]  657 	mov	r7,b
                                    658 ;	uart0.c:43: while (*str) UART0_SendData(*str++);
      00024C                        659 00101$:
      00024C 8D 82            [24]  660 	mov	dpl,r5
      00024E 8E 83            [24]  661 	mov	dph,r6
      000250 8F F0            [24]  662 	mov	b,r7
      000252 12 07 C6         [24]  663 	lcall	__gptrget
      000255 FC               [12]  664 	mov	r4,a
      000256 60 18            [24]  665 	jz	00104$
      000258 8C 82            [24]  666 	mov	dpl,r4
      00025A 0D               [12]  667 	inc	r5
      00025B BD 00 01         [24]  668 	cjne	r5,#0x00,00116$
      00025E 0E               [12]  669 	inc	r6
      00025F                        670 00116$:
      00025F C0 07            [24]  671 	push	ar7
      000261 C0 06            [24]  672 	push	ar6
      000263 C0 05            [24]  673 	push	ar5
      000265 12 02 33         [24]  674 	lcall	_UART0_SendData
      000268 D0 05            [24]  675 	pop	ar5
      00026A D0 06            [24]  676 	pop	ar6
      00026C D0 07            [24]  677 	pop	ar7
      00026E 80 DC            [24]  678 	sjmp	00101$
      000270                        679 00104$:
                                    680 ;	uart0.c:44: }
      000270 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'UART0_GetData'
                                    684 ;------------------------------------------------------------
                                    685 ;	uart0.c:46: uint8_t UART0_GetData(void)
                                    686 ;	-----------------------------------------
                                    687 ;	 function UART0_GetData
                                    688 ;	-----------------------------------------
      000271                        689 _UART0_GetData:
                                    690 ;	uart0.c:48: return SBUF;
      000271 85 99 82         [24]  691 	mov	dpl,_SBUF
                                    692 ;	uart0.c:49: }
      000274 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'UART0_EnableInterrupt'
                                    696 ;------------------------------------------------------------
                                    697 ;	uart0.c:51: void UART0_EnableInterrupt(void)
                                    698 ;	-----------------------------------------
                                    699 ;	 function UART0_EnableInterrupt
                                    700 ;	-----------------------------------------
      000275                        701 _UART0_EnableInterrupt:
                                    702 ;	uart0.c:53: ES = 1;
                                    703 ;	assignBit
      000275 D2 AC            [12]  704 	setb	_ES
                                    705 ;	uart0.c:54: }
      000277 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'UART0_DisableInterrupt'
                                    709 ;------------------------------------------------------------
                                    710 ;	uart0.c:56: void UART0_DisableInterrupt(void)
                                    711 ;	-----------------------------------------
                                    712 ;	 function UART0_DisableInterrupt
                                    713 ;	-----------------------------------------
      000278                        714 _UART0_DisableInterrupt:
                                    715 ;	uart0.c:58: ES = 0;
                                    716 ;	assignBit
      000278 C2 AC            [12]  717 	clr	_ES
                                    718 ;	uart0.c:59: }
      00027A 22               [24]  719 	ret
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'UART0_ClearFlag'
                                    722 ;------------------------------------------------------------
                                    723 ;u8Flag                    Allocated to registers r7 
                                    724 ;------------------------------------------------------------
                                    725 ;	uart0.c:61: void UART0_ClearFlag(uint8_t u8Flag)
                                    726 ;	-----------------------------------------
                                    727 ;	 function UART0_ClearFlag
                                    728 ;	-----------------------------------------
      00027B                        729 _UART0_ClearFlag:
                                    730 ;	uart0.c:63: SCON &= ~(u8Flag);
      00027B E5 82            [12]  731 	mov	a,dpl
      00027D F4               [12]  732 	cpl	a
      00027E 52 98            [12]  733 	anl	_SCON,a
                                    734 ;	uart0.c:64: }
      000280 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'UART0_GetFlag'
                                    738 ;------------------------------------------------------------
                                    739 ;u8Flag                    Allocated to registers r7 
                                    740 ;------------------------------------------------------------
                                    741 ;	uart0.c:66: uint8_t UART0_GetFlag(uint8_t u8Flag)
                                    742 ;	-----------------------------------------
                                    743 ;	 function UART0_GetFlag
                                    744 ;	-----------------------------------------
      000281                        745 _UART0_GetFlag:
                                    746 ;	uart0.c:68: if (SCON & (u8Flag)) {
      000281 E5 82            [12]  747 	mov	a,dpl
      000283 55 98            [12]  748 	anl	a,_SCON
      000285 60 04            [24]  749 	jz	00102$
                                    750 ;	uart0.c:69: return 1;
      000287 75 82 01         [24]  751 	mov	dpl,#0x01
      00028A 22               [24]  752 	ret
      00028B                        753 00102$:
                                    754 ;	uart0.c:71: return 0;
      00028B 75 82 00         [24]  755 	mov	dpl,#0x00
                                    756 ;	uart0.c:73: }
      00028E 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'putchar'
                                    760 ;------------------------------------------------------------
                                    761 ;ch                        Allocated with name '_putchar_ch_65536_27'
                                    762 ;------------------------------------------------------------
                                    763 ;	uart0.c:75: int putchar(int ch)
                                    764 ;	-----------------------------------------
                                    765 ;	 function putchar
                                    766 ;	-----------------------------------------
      00028F                        767 _putchar:
      00028F 85 82 10         [24]  768 	mov	_putchar_ch_65536_27,dpl
      000292 85 83 11         [24]  769 	mov	(_putchar_ch_65536_27 + 1),dph
                                    770 ;	uart0.c:77: UART0_SendString(&ch);
      000295 90 00 10         [24]  771 	mov	dptr,#_putchar_ch_65536_27
      000298 75 F0 40         [24]  772 	mov	b,#0x40
      00029B 12 02 46         [24]  773 	lcall	_UART0_SendString
                                    774 ;	uart0.c:78: return ch;
      00029E 85 10 82         [24]  775 	mov	dpl,_putchar_ch_65536_27
      0002A1 85 11 83         [24]  776 	mov	dph,(_putchar_ch_65536_27 + 1)
                                    777 ;	uart0.c:79: }
      0002A4 22               [24]  778 	ret
                                    779 	.area CSEG    (CODE)
                                    780 	.area CONST   (CODE)
                                    781 	.area XINIT   (CODE)
                                    782 	.area CABS    (ABS,CODE)
