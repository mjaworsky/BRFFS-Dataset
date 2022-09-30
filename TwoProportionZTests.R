
R version 3.6.1 (2019-07-05) -- "Action of the Toes"
Copyright (C) 2019 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2009XPT')
> data <- read.csv('LLCP2009.csv')
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'LLCP2009.csv': No such file or directory
> data <- read.csv('LLCP2009XPT.csv')
> lc09 <- subset(data, data$CNCRTYPE == 23)
> head(lc09)
     X_STATE X_GEOSTR X_DENSTR2 PRECALL REPNUM REPDEPTH FMONTH    IDATE IMONTH IDAY IYEAR INTVID DISPCODE      SEQNO      X_PSU NATTMPTS NRECSEL NRECSTR CTELENUM CELLFON PVTRESID NUMADULT NUMMEN NUMWOMEN GENHLTH
1549       1       12         1       1  70130       18      7  7112009      7   11  2009    142      110 2009042228 2009042228        5    1294   32560        1       1        1        1      0        1       2
1886       1        7         1       1  30063       15      3  3232009      3   23  2009    106      110 2009006075 2009006075        3    2078   43524        1       1        1        2      1        1       5
2037       1        7         1       1 120082       26     12 12122009     12   12  2009    129      110 2009054176 2009054176        6    2078   40592        1       1        1        1      1        0       5
2133       1        8         1       1 100104        5     10 10032009     10    3  2009    160      120 2009054815 2009054815        1    2246  175314        1       1        1        1      0        1       5
2294       1       14         1       1  40142       27      4  4172009      4   17  2009    173      110 2009028137 2009028137        2    1111   29172        1       1        1        1      0        1       5
2527       1       10         2       1  20095       19      2  2272009      2   27  2009    146      110 2009008719 2009008719        6    1939  151368        1       1        1        1      1        0       5
     PHYSHLTH MENTHLTH POORHLTH HLTHPLAN PERSDOC2 MEDCOST CHECKUP1 QLREST2 EXERANY2 DIABETE2 BPHIGH4 BPMEDS BLOODCHO CHOLCHK TOLDHI2 CVDINFR4 CVDCRHD4 CVDSTRK3 ASTHMA2 ASTHNOW SMOKE100 SMOKDAY2 STOPSMK2 LASTSMK1 USENOW3
1549       88       88      NaN        1        1       2        1      88        1        3       1      1        1       1       2        2        2        2       2     NaN        1        3      NaN        7       3
1886       30       88        7        1        1       2        1       3        2        1       1      1        1       1       1        2        2        2       2     NaN        1        3      NaN        7       3
2037       30       88       88        1        1       2        1      30        2        3       3    NaN        1       1       2        2        2        2       2     NaN        2      NaN      NaN      NaN       3
2133       30       30       88        1        1       2        2      88        2        3       3    NaN        2     NaN     NaN        2        2        2       2     NaN        1        1        1      NaN       3
2294       30       30       88        1        2       2        1      88        1        3       4    NaN        1       1       2        2        2        2       2     NaN        1        3      NaN        7       3
2527       88       15       15        2        3       1        1       2        2        3       3    NaN        2     NaN     NaN        2        2        2       1       2        1        1        2      NaN       3
     AGE HISPANC2 MRACE ORACE2 VETERAN2 MARITAL CHILDREN EDUCA EMPLOY INCOME2 WEIGHT2 HEIGHT3 WTYRAGO WTCHGINT CTYCODE NUMHHOL2 NUMPHON2 TELSERV2 SEX PREGNANT CAREGIVE QLACTLM2 USEEQUIP DRNKANY4 ALCDAY4 AVEDRNK2
1549  78        2    18    NaN        5       3       88     4      7      99     131     501     131      NaN      33        2      NaN        2   2      NaN        2        2        2        2     NaN      NaN
1886  83        2    18    NaN        5       1       88     6      7       6     137     507     153        2      47        2      NaN        2   2      NaN        2        1        1        2     NaN      NaN
2037  60        2    28    NaN        5       5        1     4      8       2     192     509     192      NaN      47        2      NaN        1   1      NaN        2        2        1        2     NaN      NaN
2133  68        2    18    NaN        5       2       88     4      7      99      97     505      80        2      51        2      NaN        2   2      NaN        2        2        1        1     101       30
2294  79        2    18    NaN        5       3       88     4      5       2     117     500     127        2      55        2      NaN        2   2      NaN        2        2        2        2     NaN      NaN
2527  51        2    18    NaN        5       2       88     2      8      77     115     505     115      NaN      61        2      NaN        1   1      NaN        2        1        2        2     NaN      NaN
     DRNK3GE5 MAXDRNKS FLUSHOT3 FLUSHTMY FLUSPRY2 FLUSPRMY PNEUVAC3 HAVARTH2 LMTJOIN2 ARTHDIS2 ARTHSOCL JOINPAIN FRUITJUI FRUIT GREENSAL POTATOES CARROTS VEGETABL JOBACTIV MODPACT MODPADAY MODPATIM VIGPACT VIGPADAY
1549      NaN      NaN        1   102008        2      NaN        1        1        2        2        3        0      101   101      205      555     203      102      NaN       2      NaN      NaN       2      NaN
1886      NaN      NaN        1   102008        2      NaN        1        1        2        2        3        5      201   201      203      201     402      102      NaN       2      NaN      NaN       2      NaN
2037      NaN      NaN        1    92009        2      NaN        1        2      NaN      NaN      NaN      NaN      202   202      301      202     302      203      NaN       2      NaN      NaN       2      NaN
2133       77       30        2      NaN        2      NaN        2        2      NaN      NaN      NaN      NaN      777   101      101      777     555      555      NaN       2      NaN      NaN       2      NaN
2294      NaN      NaN        2      NaN        2      NaN        2        1        2        2        2        5      555   202      555      101     102      104      NaN       1        1       10       2      NaN
2527      NaN      NaN        2      NaN        2      NaN        2        1        1        1        3        6      555   301      101      101     203      101      NaN       1        7      100       1        4
     VIGPATIM HIVTST5 HIVTSTD2 WHRTST8 HIVRDTST HIVRISK2 EMTSUPRT LSATISFY CNCRHAVE CNCRDIFF CNCRAGE CNCRTYPE CPDEMO1 CPDEMO2 CPDEMO3 CPDEMO4 PDIABTST PREDIAB1 DIABAGE2 INSULIN BLDSUGAR FEETCHK2 DOCTDIAB CHKHEMO3
1549      NaN     NaN      NaN     NaN      NaN      NaN        1        2        1        1      76       23       1     NaN       1       1        1        3      NaN     NaN      NaN      NaN      NaN      NaN
1886      NaN     NaN      NaN     NaN      NaN      NaN        1        3        1        1      83       23       2       2     NaN     NaN      NaN      NaN       83       1      888      888        1        4
2037      NaN       1   772002       8      NaN        2        3        2        1        1      55       23       2       2     NaN     NaN        1        3      NaN     NaN      NaN      NaN      NaN      NaN
2133      NaN     NaN      NaN     NaN      NaN      NaN        1        3        1        1      68       23       2       2     NaN     NaN        7        3      NaN     NaN      NaN      NaN      NaN      NaN
2294      NaN     NaN      NaN     NaN      NaN      NaN        1        2        1        3      56       23       1     NaN       2      10        2        3      NaN     NaN      NaN      NaN      NaN      NaN
2527      100       2      NaN     NaN      NaN        1        3        2        1        2      98       23       2       2     NaN     NaN        2        3      NaN     NaN      NaN      NaN      NaN      NaN
     FEETCHK EYEEXAM DIABEYE DIABEDU PAINACT2 QLMENTL2 QLSTRES2 QLHLTH2 VIDFCLT2 VIREDIF2 VIPRFVS2 VINOCRE2 VIEYEXM2 VIINSUR2 VICTRCT2 VIGLUMA2 VIMACDG2 SLEPTIME SLEPSNOR SLEPDAY SLEPDRIV HAREHAB1 STREHAB1 CVDASPRN
1549     NaN     NaN     NaN     NaN      NaN      NaN      NaN     NaN        1        1        2      NaN        2        1        1        2        2      NaN      NaN     NaN      NaN      NaN      NaN      NaN
1886       4       2       2       2      NaN      NaN      NaN     NaN        4        4        2      NaN      NaN        1        2        2        1      NaN      NaN     NaN      NaN      NaN      NaN      NaN
2037     NaN     NaN     NaN     NaN      NaN      NaN      NaN     NaN        3        4        4        6        4        7        3        2        2      NaN      NaN     NaN      NaN      NaN      NaN      NaN
2133     NaN     NaN     NaN     NaN      NaN      NaN      NaN     NaN        7        3        3        5        7        1        2        2        2      NaN      NaN     NaN      NaN      NaN      NaN      NaN
2294     NaN     NaN     NaN     NaN      NaN      NaN      NaN     NaN        3        2        4        7        4        2        1        2        2      NaN      NaN     NaN      NaN      NaN      NaN      NaN
2527     NaN     NaN     NaN     NaN      NaN      NaN      NaN     NaN        1        4        4        1        4        2        3        2        2      NaN      NaN     NaN      NaN      NaN      NaN      NaN
     ASPUNSAF BPEATHBT BPSALT BPALCHOL BPEXER BPEATADV BPSLTADV BPALCADV BPEXRADV BPMEDADV BPHI2MR HASYMP1 HASYMP2 HASYMP3 HASYMP4 HASYMP5 HASYMP6 STRSYMP1 STRSYMP2 STRSYMP3 STRSYMP4 STRSYMP5 STRSYMP6 FIRSTAID HADMAM
1549      NaN        2      1        1      1        2        1        2        1        1       1       1       1       1       1       1       1        1        1        1        1        1        1        3    NaN
1886      NaN        2      1        1      2        2        1        2        2        1       1       1       1       1       7       7       7        1        1        7        7        7        7        3    NaN
2037      NaN      NaN    NaN      NaN    NaN      NaN      NaN      NaN      NaN      NaN     NaN       7       1       1       1       1       1        2        1        1        1        1        1        3    NaN
2133      NaN      NaN    NaN      NaN    NaN      NaN      NaN      NaN      NaN      NaN     NaN       2       2       2       9     NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN    NaN
2294      NaN      NaN    NaN      NaN    NaN      NaN      NaN      NaN      NaN      NaN     NaN       1       2       1       7       1       1        1        1        7        7        1        1        3    NaN
2527      NaN      NaN    NaN      NaN    NaN      NaN      NaN      NaN      NaN      NaN     NaN       2       2       1       7       1       1        1        1        2        1        1        7        3    NaN
     HOWLONG PROFEXAM LENGEXAM HADPAP2 LASTPAP2 HADHYST2 PSATEST PSATIME DIGRECEX DRETIME PROSTATE BLDSTOOL LSTBLDS3 HADSIGM3 HADSGCO1 LASTSIG3 CSRVTRT CSRVDOC CSRVSUM CSRVRTRN CSRVINST CSRVINSR CSRVDEIN CSRVCLIN
1549     NaN      NaN      NaN     NaN      NaN      NaN     NaN     NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN     NaN     NaN      NaN      NaN      NaN      NaN      NaN
1886     NaN      NaN      NaN     NaN      NaN      NaN     NaN     NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN     NaN     NaN      NaN      NaN      NaN      NaN      NaN
2037     NaN      NaN      NaN     NaN      NaN      NaN     NaN     NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN     NaN     NaN      NaN      NaN      NaN      NaN      NaN
2133     NaN      NaN      NaN     NaN      NaN      NaN     NaN     NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN     NaN     NaN      NaN      NaN      NaN      NaN      NaN
2294     NaN      NaN      NaN     NaN      NaN      NaN     NaN     NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN     NaN     NaN      NaN      NaN      NaN      NaN      NaN
2527     NaN      NaN      NaN     NaN      NaN      NaN     NaN     NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN     NaN     NaN      NaN      NaN      NaN      NaN      NaN
     CSRVPAIN CSRVCTRL ASTHMAGE ASATTACK ASERVIST ASDRVIST ASRCHKUP ASACTLIM ASYMPTOM ASNOSLEP ASTHMED3 ASINHALR ARTTODAY ARTHWGT ARTHEXER ARTHEDU TNSARCV TNSARCNT TNSASHOT HPVADVC HPVADSHT SHINGLES CRGVAGE CRGVGNDR
1549      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN     NaN     NaN      NaN      NaN     NaN      NaN      NaN     NaN      NaN
1886      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN     NaN     NaN      NaN      NaN     NaN      NaN      NaN     NaN      NaN
2037      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN     NaN     NaN      NaN      NaN     NaN      NaN      NaN     NaN      NaN
2133      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN     NaN     NaN      NaN      NaN     NaN      NaN      NaN     NaN      NaN
2294      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN     NaN     NaN      NaN      NaN     NaN      NaN      NaN     NaN      NaN
2527      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN     NaN     NaN      NaN      NaN     NaN      NaN      NaN     NaN      NaN
     CRGVRELT CRGVLONG CRGVPROB CRGVMOST CRGVHRS CRGVDIFF CRGVCHNG GPWELPR3 GP3DYWTR GP3DYFD1 GP3DYPRS GPBATRAD GPFLSLIT GPEMRCM1 GPEMRIN1 GPVACPL1 GPMNDEVC GPNOTEV1 RRCLASS2 RRCOGNT2 RRATWRK2 RRHCARE3 RRPHYSM2 RREMTSM2
1549      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
1886      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
2037      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
2133      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
2294      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
2527      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
     MISNERVS MISHOPLS MISRSTLS MISDEPRD MISEFFRT MISWTLES MISNOWRK MISTMNT MISTRHLP MISPHLPF IAQCODT1 CMDGPPWR CMDGPBAT CMDGPGEN CMDGPDSL CMDGPLOC CMDGPRUN CMDGPOWN RENTHOM1 SCNTMONY SCNTMEAL SCNTPAID SCNTWORK SCNTLPAD
1549      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN        1        5        5      NaN      NaN        2
1886      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN        1        5        5      NaN      NaN        2
2037      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN        1        1        1      NaN      NaN      NaN
2133      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN
2294      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN        1        3        5      NaN      NaN      NaN
2527      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN        1        3        4      NaN      NaN      NaN
     SCNTLWRK SCNTVOTE ACEDEPRS ACEDRINK ACEDRUGS ACEPRISN ACEDIVRC ACEPUNCH ACEHURT ACESWEAR ACETOUCH ACETTHEM ACEHVSEX RCSBIRTH RCSGENDR RCHISLAT RCSRACE RCSBRACE RCSRLTN2 CASTHDX2 CASTHNO2 FLUSHCH1 RCVFVCH3 HPVCHVC
1549       98        1      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN       NA      NaN      NaN      NA      NaN      NaN      NaN      NaN      NaN      NaN     NaN
1886       98        1      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN       NA      NaN      NaN      NA      NaN      NaN      NaN      NaN      NaN      NaN     NaN
2037       10        1      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN       NA      NaN      NaN      NA      NaN      NaN      NaN      NaN      NaN      NaN     NaN
2133      NaN      NaN      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN       NA      NaN      NaN      NA      NaN      NaN      NaN      NaN      NaN      NaN     NaN
2294       98        1      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN       NA      NaN      NaN      NA      NaN      NaN      NaN      NaN      NaN      NaN     NaN
2527       98        2      NaN      NaN      NaN      NaN      NaN      NaN     NaN      NaN      NaN      NaN      NaN       NA      NaN      NaN      NA      NaN      NaN      NaN      NaN      NaN      NaN     NaN
     HPVCHSHT TNSCRCV TNSCRCNT TNSCSHOT CALLBACK QSTVER QSTLANG X_STSTR  X_STRWT X_RAW    X_WT2 X_POSTSTR X_FINALWT X_REGION X_AGEG_ X_SEXG_ X_RACEG3_ X_IMPAGE X_IMPNPH MSCODE CHILDAGE X_CIMPAGE X_RFHLTH X_HCVU65
1549      NaN     NaN      NaN      NaN      NaN      0       1    1121 25.76362     1 25.76362  4.854117 125.05966        1       7       2         0       78        1      3      NaN       NaN        1        9
1886      NaN     NaN      NaN      NaN      NaN      0       1    1071 19.68438     2 39.36875  2.059769  81.09053        7      13       2         1       83        1      5      NaN       NaN        2        9
2037      NaN     NaN      NaN      NaN      NaN      0       1    1071 19.68438     1 19.68438  5.084195 100.07919        7       5       1         2       60        1      5      NaN       NaN        2        1
2133      NaN     NaN      NaN      NaN      NaN      0       1    1081 78.30433     1 78.30433  2.764644 216.48356        8      13       2         1       68        1      3      NaN       NaN        2        9
2294      NaN     NaN      NaN      NaN      NaN      0       1    1141 26.19968     1 26.19968  4.208479 110.26081        5       0       2         1       79        1      1      NaN       NaN        2        9
2527      NaN     NaN      NaN      NaN      NaN      0       1    1102 79.43254     1 79.43254  6.301205 500.52078       10       4       1         1       51        1      3      NaN       NaN        2        2
     X_TOTINDA X_RFHYPE5 X_CHOLCHK X_RFCHOL X_LTASTHM X_CASTHMA X_ASTHMST X_SMOKER3 X_RFSMOK3 MRACEORG MRACEASC X_PRACE X_MRACE RACE2 X_RACEG2 X_RACEGR2 X_RACE_G X_CNRACE X_CNRACEC X_AGEG5YR X_AGE65YR X_AGE_G HTIN3 HTM3
1549         1         2         1        1         1         1         3         3         1        1        1       1       1     1        1         1        1        1         1        12         2       6    61  155
1886         2         2         1        2         1         1         3         3         1        1        1       1       1     1        1         1        1        1         1        13         2       6    67  170
2037         2         1         1        1         1         1         3         4         1        2        2       2       2     2        2         2        2        1         1         9         1       5    69  175
2133         2         1         3      NaN         1         1         3         1         2        1        1       1       1     1        1         1        1        1         1        10         2       6    65  165
2294         1         1         1        1         1         1         3         3         1        1        1       1       1     1        1         1        1        1         1        12         2       6    60  152
2527         2         1         3      NaN         2         1         2         1         2        1        1       1       1     1        1         1        1        1         1         7         1       4    65  165
     WTKG2 X_BMI4 X_BMI4CAT X_RFBMI4 X_CHLDCNT X_EDUCAG X_INCOMG DROCDY2_ X_RFBING4 X_DRNKDY3 X_DRNKMO3 X_RFDRHV3 X_RFDRMN3 X_RFDRWM3 X_FLSHOT3 X_PNEUMO2 X_DRDXART FTJUDAY_ FRUTDAY_ GNSLDAY_ POTADAY_ CRTSDAY_ VEGEDAY_
1549  5955   2480         1        1         1        2        9        0         1         0         0         1       NaN         1         1         1         1       10       10        7        0        4       20
1886  6227   2150         1        1         1        4        4        0         1         0         0         1       NaN         1         1         1         1        1        1        4        1        0       20
2037  8727   2841         2        2         2        2        1        0         1         0         0         1         1       NaN       NaN       NaN         2        3        3        0        3        1        4
2133  4409   1618         1        1         1        2        9       14         9       429       129         2       NaN         2         2         2         2      990       10       10      990        0        0
2294  5318   2290         1        1         1        2        1        0         1         0         0         1       NaN         1         2         2         1        0        3        0       10       20       40
2527  5227   1918         1        1         1        1        9        0         1         0         0         1         1       NaN       NaN       NaN         1        0        0       10       10        4       10
     X_FRTSERV X_FRTINDX X_FV5SRV X_MODPAMN X_VIGPAMN MODCAT_ VIGCAT_ PACAT_ X_RFPAMOD X_RFPAVIG X_RFPAREC X_RFNOPA X_MODMNWK X_VIGMNWK X_TOTMNWK X_PA150RC X_PA300RC X_AIDTST2 CPCOUNTY    X_ITSCF1 X_ITSCF2 X_ITSPOST
1549       514         4        2         0         0       3       3      5         2         2         3        1         0         0         0         3         3       NaN          3321939.121 131.0137 0.9545540
1886       286         2        1         0         0       3       3      5         2         2         3        2         0         0         0         3         3       NaN          3321939.121 200.1988 0.3887180
2037       139         2        1         0         0       3       3      5         2         2         3        2         0         0         0         3         3         1          3321939.121 212.1616 0.7901663
2133       200         2        1         0         0       3       3      5         2         2         3        2         0         0         0         3         3       NaN          3321939.121 398.1948 0.5302854
2294       729         4        2        10         0       2       3      4         2         2         2        1        10         0        10         2         2       NaN          3321939.121 133.2311 0.7740412
2527       346         3        1        60        60       1       1      1         1         1         1        1       420       240       900         1         1         2          3321939.121 856.1377 1.1955609
      X_ITSFINL CRACEORG CRACEASC X_CRACE X_CSEXG_ X_CRACEG_ X_CAGEG_ X_RAWCH X_WT2CH X_POSTCH X_CHILDWT X_RAWHH  X_WT2HH X_POSTHH X_HOUSEWT POPSIZE CT10000 KEEPCHIM KEEPRCSM  X
1549  125.05966       NA      NaN     NaN      NaN       NaN      NaN     NaN     NaN      NaN       NaN       1 25.76362 5.752171 148.19679     NaN     NaN      NaN      NaN NA
1886   77.82087       NA      NaN     NaN      NaN       NaN      NaN     NaN     NaN      NaN       NaN       1 19.68438 4.906784  96.58697     NaN     NaN      NaN      NaN NA
2037  167.64296       NA      NaN     NaN      NaN       NaN      NaN     NaN     NaN      NaN       NaN       1 19.68438 4.906784  96.58697     NaN     NaN      NaN      NaN NA
2133  211.15687       NA      NaN     NaN      NaN       NaN      NaN     NaN     NaN      NaN       NaN       1 78.30433 5.156850 403.80371     NaN     NaN      NaN      NaN NA
2294  103.12638       NA      NaN     NaN      NaN       NaN      NaN     NaN     NaN      NaN       NaN       1 26.19968 4.919721 128.89510     NaN     NaN      NaN      NaN NA
2527 1023.56481       NA      NaN     NaN      NaN       NaN      NaN     NaN     NaN      NaN       NaN       1 79.43254 5.797386 460.50115     NaN     NaN      NaN      NaN NA
> mean(lc09$AGE)
[1] 68.94888
> prop.test(x = c(490, 400), n = c(500, 500))

        2-sample test for equality of proportions with continuity correction

data:  c(490, 400) out of c(500, 500)
X-squared = 80.909, df = 1, p-value < 2.2e-16
alternative hypothesis: two.sided
95 percent confidence interval:
 0.1408536 0.2191464
sample estimates:
prop 1 prop 2 
  0.98   0.80 

> prop.test(x = c(432607, 400), n = c(500, 500))
Error in prop.test(x = c(432607, 400), n = c(500, 500)) : 
  elements of 'x' must not be greater than those of 'n'
> prop.test(x = c(432607, 268646), n = c(500, 500))
Error in prop.test(x = c(432607, 268646), n = c(500, 500)) : 
  elements of 'x' must not be greater than those of 'n'
> prop.test(x = c(432607, 268646), n = c(1252, 772))
Error in prop.test(x = c(432607, 268646), n = c(1252, 772)) : 
  elements of 'x' must not be greater than those of 'n'
> prop.test(x = c(1252, 772), n = c(432607, 268646))

        2-sample test for equality of proportions with continuity correction

data:  c(1252, 772) out of c(432607, 268646)
X-squared = 0.017424, df = 1, p-value = 0.895
alternative hypothesis: two.sided
95 percent confidence interval:
 -0.0002406712  0.0002814943
sample estimates:
     prop 1      prop 2 
0.002894082 0.002873670 

> prop.test(x = c(171, 108), n = c(451075, 280961))

        2-sample test for equality of proportions with continuity correction

data:  c(171, 108) out of c(451075, 280961)
X-squared = 0.0026449, df = 1, p-value = 0.959
alternative hypothesis: two.sided
95 percent confidence interval:
 -1.002804e-04  8.967915e-05
sample estimates:
      prop 1       prop 2 
0.0003790944 0.0003843950 

> prop.test(x = c(120, 66), n = c(475687, 283950))

        2-sample test for equality of proportions with continuity correction

data:  c(120, 66) out of c(475687, 283950)
X-squared = 0.2104, df = 1, p-value = 0.6465
alternative hypothesis: two.sided
95 percent confidence interval:
 -5.495621e-05  9.461908e-05
sample estimates:
      prop 1       prop 2 
0.0002522667 0.0002324353 

> prop.test(x = c(139, 86), n = c(464425, 271694))

        2-sample test for equality of proportions with continuity correction

data:  c(139, 86) out of c(464425, 271694)
X-squared = 0.11505, df = 1, p-value = 0.7345
alternative hypothesis: two.sided
95 percent confidence interval:
 -1.035145e-04  6.903902e-05
sample estimates:
      prop 1       prop 2 
0.0002992948 0.0003165326 

> prop.test(x = c(124, 86), n = c(486303, 275631))

        2-sample test for equality of proportions with continuity correction

data:  c(124, 86) out of c(486303, 275631)
X-squared = 1.8745, df = 1, p-value = 0.171
alternative hypothesis: two.sided
95 percent confidence interval:
 -1.396233e-04  2.557069e-05
sample estimates:
      prop 1       prop 2 
0.0002549851 0.0003120113 

> prop.test(x = c(156, 94), n = c(450016, 251007))

        2-sample test for equality of proportions with continuity correction

data:  c(156, 94) out of c(450016, 251007)
X-squared = 0.27652, df = 1, p-value = 0.599
alternative hypothesis: two.sided
95 percent confidence interval:
 -1.241457e-04  6.847128e-05
sample estimates:
      prop 1       prop 2 
0.0003466543 0.0003744915 

> prop.test(x = c(151, 92), n = c(43736, 238911))

        2-sample test for equality of proportions with continuity correction

data:  c(151, 92) out of c(43736, 238911)
X-squared = 401.38, df = 1, p-value < 2.2e-16
alternative hypothesis: two.sided
95 percent confidence interval:
 0.002498600 0.003636305
sample estimates:
      prop 1       prop 2 
0.0034525334 0.0003850806 

> prop.test(x = c(15, 8), n = c(418268, 228419))

        2-sample test for equality of proportions with continuity correction

data:  c(15, 8) out of c(418268, 228419)
X-squared = 1.361e-27, df = 1, p-value = 1
alternative hypothesis: two.sided
95 percent confidence interval:
 -3.030416e-05  3.198179e-05
sample estimates:
      prop 1       prop 2 
3.586217e-05 3.502336e-05 

> prop.test(x = c(151, 92), n = c(437436, 238911))

        2-sample test for equality of proportions with continuity correction

data:  c(151, 92) out of c(437436, 238911)
X-squared = 0.57794, df = 1, p-value = 0.4471
alternative hypothesis: two.sided
95 percent confidence interval:
 -1.391424e-04  5.936785e-05
sample estimates:
      prop 1       prop 2 
0.0003451934 0.0003850806 

> 
> mean(lc09$AGE)
[1] 68.94888
> t.test(data$AGE,lc09$AGE)

        Welch Two Sample t-test

data:  data$AGE and lc09$AGE
t = -41.024, df = 1266.6, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -14.20680 -12.91004
sample estimates:
mean of x mean of y 
 55.39047  68.94888 
 
 > setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2010XPT')
> data <- read.csv('LLCP2010XPT.csv')
> lc10 <- subset(data, data$CNCRTYPE == 23)
> lc10$AGE
  [1] 62 72 79 58 62 73 80 76 67 87 75 80 69 80 76 69 74 60 69  9 65 57 82 84 74 84 68 49 71 84 55 78 79 82 83 62 54 63 87 61 52 60 71 62 84 57 77 80 77 70 58 61 58 75 63 79 79 81 64 66 86 68 45 74 68 68 85 57 66 78 71
 [72] 55 62 72 83 69 75 86 87 83 81 51 79 80 75 69 80 81 58 74 64 73 72 76 87 67 75 77 58 65 65 68 79 73 71 50 66 51 67 56 73 67 68 62 85 82 76 64 69 80 66 45 46 62 57 55 67 65 52 70 65 75 67 60 69 68 61 77 81 78 71 52
[143] 73 80 60 76 81 83 78 65 69 80 32 59 51 63 87 65 77 69 93 60 69 61 83 43 53 62 74 77 48
> t.test(data$AGE,lc10$AGE)

        Welch Two Sample t-test

data:  data$AGE and lc10$AGE
t = -14.02, df = 170.27, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -14.47927 -10.90518
sample estimates:
mean of x mean of y 
 56.34287  69.03509 


> setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2012XPT')
> data <- read.csv('LLCP2012XPT.csv')
> lc12 <- subset(data, data$CNCRTYPE == 24)
> lc12$AGE
integer(0)
> head(lc12)
  [1] X_STATE   X_GEOSTR  X_DENSTR2 PRECALL   REPNUM    REPDEPTH  FMONTH    IDATE     IMONTH    IDAY      IYEAR     INTVID    DISPCODE  SEQNO     X_PSU     NATTMPTS  NRECSEL   NRECSTR   CTELENUM  PVTRESID  COLGHOUS 
 [22] CELLFON   LADULT    NUMADULT  NUMMEN    NUMWOMEN  GENHLTH   PHYSHLTH  MENTHLTH  POORHLTH  HLTHPLN1  PERSDOC2  MEDCOST   CHECKUP1  EXERANY2  CVDINFR4  CVDCRHD4  CVDSTRK3  ASTHMA3   ASTHNOW   CHCSCNCR  CHCOCNCR 
 [43] CHCCOPD1  HAVARTH3  ADDEPEV2  CHCKIDNY  CHCVISN1  DIABETE3  LASTDEN3  RMVTETH3  AGE       HISPANC2  MRACE     ORACE2    VETERAN3  MARITAL   CHILDREN  EDUCA     EMPLOY    INCOME2   WEIGHT2   HEIGHT3   CTYCODE1 
 [64] NUMHHOL2  NUMPHON2  CPDEMO1   CPDEMO4   RENTHOM1  SEX       PREGNANT  QLACTLM2  USEEQUIP  SMOKE100  SMOKDAY2  STOPSMK2  LASTSMK2  USENOW3   ALCDAY5   AVEDRNK2  DRNK3GE5  MAXDRNKS  FLUSHOT5  FLSHTMY2  IMFVPLAC 
 [85] PNEUVAC3  FALL12MN  FALLINJ2  SEATBELT  DRNKDRI2  HADMAM    HOWLONG   PROFEXAM  LENGEXAM  HADPAP2   LASTPAP2  HADHYST2  PCPSAAD1  PCPSADI1  PCPSARE1  PSATEST1  PSATIME   PCPSARS1  BLDSTOOL  LSTBLDS3  HADSIGM3 
[106] HADSGCO1  LASTSIG3  HIVTST6   HIVTSTD3  HIVRISK3  PDIABTST  PREDIAB1  DIABAGE2  INSULIN   BLDSUGAR  FEETCHK2  DOCTDIAB  CHKHEMO3  FEETCHK   EYEEXAM   DIABEYE   DIABEDU   PAINACT2  QLMENTL2  QLSTRES2  QLHLTH2  
[127] VIDFCLT2  VIREDIF2  VIPRFVS2  VINOCRE2  VIEYEXM2  VIINSUR2  VICTRCT4  VIGLUMA2  VIMACDG2  SSBSUGR1  SSBFRUT1  SSBCALRI  NUMBURN2  QLREST2   SLEPTIME  SLEPSNOR  SLEPDAY   SLEPDRIV  FRUITJU1  FRUIT1    FVBEANS  
[148] FVGREEN   FVORANG   VEGETAB1  ASTHMAGE  ASATTACK  ASERVIST  ASDRVIST  ASRCHKUP  ASACTLIM  ASYMPTOM  ASNOSLEP  ASTHMED3  ASINHALR  WRKHCF1   DIRCONT1  DRHPAD1   HAVHPAD   SHINGLE1  TNSARCV   TNSARCNT  TNSASHT1 
[169] HPVADVC2  HPVADSHT  PCPSADEC  PCDMDECN  CNCRDIFF  CNCRAGE   CNCRTYP1  CSRVTRT1  CSRVDOC1  CSRVSUM   CSRVRTRN  CSRVINST  CSRVINSR  CSRVDEIN  CSRVCLIN  CSRVPAIN  CSRVCTL1  RRCLASS2  RRCOGNT2  RRATWRK2  RRHCARE3 
[190] RRPHYSM2  RREMTSM2  MISNERVS  MISHOPLS  MISRSTLS  MISDEPRD  MISEFFRT  MISWTLES  MISNOWRK  MISTMNT   MISTRHLP  MISPHLPF  SCNTMONY  SCNTMEAL  SCNTPAID  SCNTWRK1  SCNTLPAD  SCNTLWK1  GPWELPR3  GP3DYWTR  GP3DYFD1 
[211] GP3DYPRS  GPBATRAD  GPFLSLIT  GPEMRCM1  GPEMRIN1  GPVACPL1  GPMNDEVC  GPNOTEV1  VHCOMBAT  VHDRPTSD  VHDRTBI   VHCOUNSL  VHTAKLIF  VHSUICID  COPDTEST  COPDQOL   COPDDOC   COPDHOSP  COPDMEDS  ACEDEPRS  ACEDRINK 
[232] ACEDRUGS  ACEPRISN  ACEDIVRC  ACEPUNCH  ACEHURT   ACESWEAR  ACETOUCH  ACETTHEM  ACEHVSEX  RCSBIRTH  RCSGENDR  RCHISLAT  RCSRACE   RCSBRACE  RCSRLTN2  CASTHDX2  CASTHNO2  FLUSHCH2  RCVFVCH4  WHRTST8   HIVRDTST 
[253] EMTSUPRT  LSATISFY  CALLBACK  ADLTCHLD  CTELNUM1  CELLFON2  CADULT    PVTRESD2  CCLGHOUS  CSTATE    RSPSTATE  LANDLINE  PCTCELL   QSTVER    QSTLANG   MSCODE    X_STSTR   X_STRWT   X_RAW     X_WT2     X_RAWRAKE
[274] X_WT2RAKE X_REGION  X_IMPAGE  X_IMPRACE X_IMPNPH  O_STATE   CRACEORG  CRACEASC  X_CRACE   X_RAWCH   X_WT2CH   CHILDAGE  X_CLCPM01 X_CLCPM02 X_CLCPM03 X_CLCPM04 X_CLCPM05 X_CLLCPWT X_DUALUSE X_DUALCOR X_LLCPM01
[295] X_LLCPM02 X_LLCPM03 X_LLCPM04 X_LLCPM05 X_LLCPM06 X_LLCPM07 X_LLCPM08 X_LLCPM09 X_LLCPM10 X_LLCPM11 X_LLCPM12 X_LLCPWT  X_RFHLTH  X_HCVU651 X_TOTINDA X_LTASTH1 X_CASTHM1 X_ASTHMS1 X_DRDXAR1 X_EXTETH2 X_ALTETH2
[316] X_DENVST2 MRACEORG  MRACEASC  X_PRACE   X_MRACE   RACE2     X_RACEG2  X_RACEGR2 X_RACE_G  X_CNRACE  X_CNRACEC X_AGEG5YR X_AGE65YR X_AGE_G   HTIN4     HTM4      WTKG3     X_BMI5    X_BMI5CAT X_RFBMI5  X_CHLDCNT
[337] X_EDUCAG  X_INCOMG  X_SMOKER3 X_RFSMOK3 DRNKANY5  DROCDY3_  X_RFBING5 X_DRNKDY4 X_DRNKMO4 X_RFDRHV4 X_RFDRMN4 X_RFDRWM4 X_FLSHOT5 X_PNEUMO2 X_RFSEAT2 X_RFSEAT3 X_RFMAM2Y X_MAM502Y X_RFPAP32 X_RFPSA21 X_RFBLDS2
[358] X_RFSIGM2 X_AIDTST3
<0 rows> (or 0-length row.names)
> lc12 <- subset(data, data$CNCRTYP1 == 24)
> lc12$AGE
  [1] 77 72 73 63 80 62 79 81 61 70 71 52 54 76 67 59 81 60 74 75 21 81 77 65 51 62 56 66 77 65 70 68 68 82 62 65 75 82 81 35 75 75 49 74 78 84 78 75 73 84 51 77 72 50 70 70 78 80 48 53 64 71 78 60 74 88 65 66 86 70 89
 [72] 79 83 76 82 72 72 74 73 74 82 66 60 55 74 57 65 60 73 71 66 71 79 72 84 53 70 69 81 82 63 64 29 76 50 79 76 71 71 68 60 60 65 49 68 78 73 58 67 81
> t.test(data$AGE,lc12$AGE)

        Welch Two Sample t-test

data:  data$AGE and lc12$AGE
t = -13.548, df = 119.15, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -16.44416 -12.25048
sample estimates:
mean of x mean of y 
 54.66935  69.01667 

> 
> setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2014XPT')
> data <- read.csv('LLCP2014XPT.csv')
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'LLCP2014XPT.csv': No such file or directory
> data <- read.csv('LLCP2014.csv')
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'LLCP2014.csv': No such file or directory
> data <- read.csv('LLCP2014XPT_v2.csv')
> lc14 <- subset(data, data$CNCRTYP1 == 24)
> lc14$AGE
NULL
> lc14$X_AGE80
  [1] 57 79 74 65 66 79 71 75 76 64 80 80 80 65 56 80 63 71 62 80 79 68 72 53 51 78 79 63 80 75 67 77 74 62 76 74 68 57 80 70 80 67 62 80 66 59 66 77 67 69 68 80 66 64 76 73 80 56 73 66 80 80 77 72 55 55 77 58 60 75 59
 [72] 73 53 80 53 71 70 78 73 70 68 77 80 67 70 29 62 61 61 54 65 77 76 68 70 71 80 71 56 77 72 76 80 68 60 80 72 80 58 80 77 68 64 80 76 69 80 75 77 79 62 78 55 58 73 63 53 75 66 77 68 61 61 80 70 79 64 64 68
> t.test(data$X_AGE80,lc14$X_AGE80)

        Welch Two Sample t-test

data:  data$X_AGE80 and lc14$X_AGE80
t = -18.568, df = 138.31, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -15.59978 -12.59708
sample estimates:
mean of x mean of y 
 55.51308  69.61151 

> setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2016XPT')
> data <- read.csv('LLCP2016.csv')
> lc16$X_AGE80
Error: object 'lc16' not found
> lc16 <- subset(data, data$CNCRTYP1 == 24)
> lc16$X_AGE80
  [1] 69 67 80 80 74 70 80 75 67 69 43 73 65 58 71 76 77 80 76 77 70 71 80 76 80 73 80 76 66 76 69 67 59 70 77 78 69 72 77 54 72 78 79 71 79 67 62 67 80 71 80 53 56 58 60 50 68 55 79 80 66 80 60 44 75 72 76 64 61 68 76
 [72] 71 71 67 74 73 66 80 69 50 58 74 75 57 67 62 73 72 71 80 80 76 74 61 70 67 72 74 66 41 67 67 74 49 71 75 56 61 68 60 60 58 67 69 76 75 60 61 80 70 59 74 68 73 80 79 80 72 71 77 76 73 67 68 78 76 68 71 69 60 78 63
[143] 70 76 64 60 80 80 78 80 77 73 71 80 76 80 80 60 79 69 60 58 67 77 77 65 76 68 65 56 80 77 54 79 74 76 74 77 66 57 80 72 69
> t.test(data$X_AGE80,lc16$X_AGE80)

        Welch Two Sample t-test

data:  data$X_AGE80 and lc16$X_AGE80
t = -23.35, df = 182.57, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -15.76568 -13.30889
sample estimates:
mean of x mean of y 
 55.44086  69.97814 
 
 
> setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2017XPT')
> data <- read.csv('LLCP2017_v2.csv')
> lc17 <- subset(data, data$CNCRTYP1 == 24)
> lc17$X_AGE80
  [1] 76 71 52 58 79 61 67 73 80 80 69 68 75 63 75 78 78 78 60 80 61 73 66 59 70 70 58 74 66 57 61 80 80 80 78 74 80 74 69 80 80 67 63 58 56 32 80 58 61 36 63 76 59 62 74 56 76 76 69 63 74 47 77 66 70 70 75 78 60 63 65
 [72] 58 80 76 67 79 69 77 58 80 80 55 79 63 77 74 69 72 69 49 54 80 72 63 71 60 80 79 71 54 48 53 64 80 80 63 70 46 66 70 75 60 80 75 78 71 80 76 70 69 80 71 68 69 68 62 77 79 80 70 69 69 69 58 71 63 59 80 70 76 75 68
[143] 79 80 59 71 80 69 74 65 74 66 80 67 80 72
> t.test(data$X_AGE80,lc17$X_AGE80)

        Welch Two Sample t-test

data:  data$X_AGE80 and lc17$X_AGE80
t = -18.786, df = 155.37, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -15.63230 -12.65765
sample estimates:
mean of x mean of y 
 55.06657  69.21154 

> setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2018XPT')
> data <- read.csv('LLCP2018XPT.csv')
> lc18 <- subset(data, data$CNCRTYP1 == 24)
> lc18$X_AGE80
  [1] 70 63 75 56 73 60 60 74 73 41 67 75 58 40 66 64 60 66 75 73 80 70 68 77 55 80 80 69 75 80 66 68 67 52 80 76 58 74 72 62 70 65 66 62 66 75 35 73 32 80 76 57 60 74 64 67 80 68 70 67 78 62 71 75 53 80 60 80 78 62 76
 [72] 67 73 72 80 77 71 66 76 63 64 49 63 68 80 70 57 74 64 61 67 56 68 71 80 61 68 49 70 54 58 79 71 74 80 73 78 67 66 75 62 80 80 62 51 68 67 62 73 54 63 76 80 80 80 80 75 58 67 68 80 76 80 76 80 69 80 68 75 71 80 74
[143] 52 60 63 65 80 80 62 75 18
> t.test(data$X_AGE80,lc18$X_AGE80)

        Welch Two Sample t-test

data:  data$X_AGE80 and lc18$X_AGE80
t = -15.551, df = 150.29, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -14.92457 -11.55964
sample estimates:
mean of x mean of y 
 54.90359  68.14570 
 
 > setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2019XPT')
> data <- read.csv('LLCP2019.csv')
> lc19 <- subset(data, data$CNCRTYP1 == 24)
> lc19$X_AGE80
 [1] 66 77 80 71 67 80 72 71 74 80 76 72 72 80 76
> t.test(data$X_AGE80,lc19$X_AGE80)

        Welch Two Sample t-test

data:  data$X_AGE80 and lc19$X_AGE80
t = -15.725, df = 14.014, p-value = 2.682e-10
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -21.46772 -16.31487
sample estimates:
mean of x mean of y 
 55.37537  74.26667 
