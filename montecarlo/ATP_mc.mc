1                          ; yes, add rf
4                          ; basic sbd
5                          ; 7th risk factor = statins
1                ; modify inputs
7                ; beta file
2                ; select b_mc for b8sad
                 ; exit
22               ; modify beta coefficients for stroke
2                ; select bstk_mc.dat
                 ; exit
25               ; modify beta coefficients for diabetes
4                ; use bdia_mc.dat                 
                 ; exit bdia menu
18               ; modify IPF joint marginal (xprfp)
5                ; use xprfpDS.dat
                 ; exit xprfp menu
                 ; exit modify file list
2                ; no modify inputs
2016                       ; start year
2025                       ; end year
2                          ; interval printing
1                          ; every year
3                          ; exit print specs
3                          ; output to dos
junkATP.out                  ; new output file
1                          ; yes sum
2016                       ; start printout
2025                       ; end printout
1                          ; yes
.03                        ; 
2016                       ; start discounting 2016
1                          ; yes delimited ascii file
ATP3 with LDL checks for all persons 55-74
2                          ; don't append to existing out file
1                          ; YES, DE intervention
2016                       ; begin intervention 2016
1                          ; yes DH adjustments
2016                       ; lowest risk
2                          ; LDL
1                          ; yes 10 year risk threshold
0.0703858411535
-0.0979460784602
1                          ; percent
.1                        ; reduce Quarter-Low
2,3,4                      ; age >45 (CELL 3- M 1RF- age)----------
1                          ; sex M [1]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No [page 3]
2,3                        ; HDL >35
                           ; all BMI levels
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case [ok 1]
21.35                      ; $ 21.35 per case
1                          ;  reduces quality of life
.000051725511               ; .000051725511 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -------Quarter-Switch-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
0.00675234330275
0.235467175415
1                          ; percent
.0369                      ; reduce Quarter-switch
2,3,4                      ; age >45 (CELL 3- M 1RF- age)----------
1                          ; sex M [2]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
24.91                      ; $ 24.91 per case
1                          ;  reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
0.00454138137039
0.0512850520949
1                          ; percent
.1                      ; reduce Quarter-Low
3,4                        ; age >55 (CELL 7- F 1RF- age)---------- 
2                          ; sex F [3]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
21.35                      ; $ 21.35 per case
1                          ;  reduces quality of life
.000051725511               ; .000051725511 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -----QuarterSwi
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
-0.0113482426928
0.0705245704268
1                          ; percent
.0369                      ; reduce Quarter-Switch
3,4                        ; age >55 (CELL 7- F 1RF- age)----------
2                          ; sex F [4]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI levels
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
24.91                      ; $ 24.91 per case
1                          ;  reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.108160078744
0.0741356128719
1                          ; percent
.4                        ; reduce Low
2,3,4                      ; age >45 (CELL 1-age,d.,lbp,smok,hdl) [gap?]
1                          ; sex M [5]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes 
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes [ok 3]
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.15246122167
0.141814721173
1                          ; percent
.2462                     ; reduce SWITCH
2,3,4                      ; age >45 (CELL 1-age,dbp,smok,hdl)
1                          ; sex M [6]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0766803559181
0.403320635623
1                          ; percent
.4                      ; reduce .4    
2,3,4                      ; age >45 (CELL 2-age,dbp,smok) [7]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes [ok]
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.173721398868
0.261558111437
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 2-age,dbp,smok) [8]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0420106961956
0.167779687646
1                          ; percent
.4                      ; reduce .4    
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [9]
1                          ; sex M
3                          ; SBP >140 
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users [ok]
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.107094895769
0.0588916747844
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [10]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.161328593824
-0.29890698437
1                          ; percent
.4                      ; reduce .4    
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [11]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case [ok]
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.120126477971
-0.164748523382
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [12]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0565178824036
0.353034065909
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 5-age,dbp) [13]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case  [ok]
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.136805627001
0.0605740648061
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 5-age,dbp) [14]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO 
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.119203975857
0.058972897128
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 6-age,smok) [15]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life [ok]
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0395339604159
0.243413710596
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 6-age,smok) [16]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0379735466498
-0.18820668516
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 7-age,hdl) [17]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification [ok]
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-5.45976821456e-05
0.205240427189
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 7-age,hdl) [18]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states 
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------Female DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.170580061607
0.224929761212
1                          ; percent
.4                        ; reduce Low
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [19]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 [forty-three]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.101311884974
0.416502650347
1                          ; percent
.2462                     ; reduce SWITCH
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [20]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.175729718021
0.140769278104
1                          ; percent
.4                      ; reduce .4  
3,4                        ; age >55 (CELL 13-age,dbp,smok) [21]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0311537307457
0.167251484344
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 13-age,dbp,smok) [22]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.15957278433
0.235711847681
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [23]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL        [ok]
1                          ; Yes 10 year risk threshold
-0.0563354582465
-0.108050707738
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [24]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.121229702927
-0.0173123954616
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (CELL 15-age,smok,hdl) [25]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold [ok]
0.0684381765252
0.302163725557
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 15-age,smok,hdl) [26]
2                          ; sex F 
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
3                          ; all BMI states
2,3                        ; NO diabetes [stoppo- success]
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.15491701466
0.540600445926
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (CELL 16-age,dbp) [27]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states 
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.267224370375
0.333510527703
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 16-age,dbp) [28]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.144074236781
0.116355468608
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (mistake?) (CELL 17-age,smok) [29]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0318215768484
0.29612306812
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 17-age,smok) [30]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0692227677898
-0.00521334370054
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (mistake?) (CELL 18-age,hdl) [31]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0722545151776
0.00551112731137
1                          ; percent [ok]
.2462                     ; reduce .3147
3,4                        ; age >55 (CELL 18-age,hdl) [32]
2                          ; sex F [fifty-six]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another.
2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.1886666409
0.0392722699177
1                          ; percent
.4                        ; reduce Low
3,4                      ; age >55 (CELL 1-age,dbp,smok,hdl) [33]
1                          ; sex M  [sixty-five] [men]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.127089234042
0.299133814827
1                          ; percent
.2462                     ; reduce SWITCH
3,4                      ; age >55 (CELL 1-age,dbp,smok,hdl) [ok] [34]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users [stop]
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0870061086051
0.184756682912
1                          ; percent
.4                      ; reduce .4  
3,4                      ; age >55 (CELL 2-age,dbp,smok) [35]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.240035226106
0.557740555723
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 2-age,dbp,smok) [36]
1                          ; sex M [ok]
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.152198013311
0.273876846093
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [37]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.00424844970361
0.157681101008
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [38]
1                          ; sex M
3                          ; DBP >90 [ok]
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states 
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.135235926453
0.262416735729
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [39]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.261282731985
0.394452663505
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [40]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130  [ok]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0651937729248
0.628223209778
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 5-age,dbp) [41]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0444751114349
0.437908412475
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 5-age,dbp) [42]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO                [ok]
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0194751802297
0.519278240492
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 6-age,smok) [43]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0641332925295
0.248143770097
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 6-age,smok) [44]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35                    [ok]
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0544163532306
0.480265163661
1                          ; percent
.4                      ; reduce .4  
2,3,4                      ; age >45 (CELL 7-age,hdl) [45]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.176713952952
0.434597717425
1                          ; percent
.2462                     ; reduce .3147
2,3,4                      ; age >45 (CELL 7-age,hdl) [46]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes              [ok]
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016 [women]
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.118079338351
0.306776715786
1                          ; percent
.4                        ; reduce Low
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [47]
2                          ; sex F [eighty-seven]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.100968417371
0.433331808994
1                          ; percent
.2462                      ; reduce SWITCH
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [48]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users             [ok]
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0245886135897
0.0457832175862
1                          ; percent
.4                      ; reduce .4  
3,4                        ; age >55 (CELL 13-age,dbp,smok) [49]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
                           ; HDL >35
1,2                        ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.10728711082
-0.0260537494555
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 13-age,dbp,smok) [50]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes    
2,3                        ; HDL >35     
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case [ok]
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0142326603602
0.255991747596
1                          ; percent
.4                      ; reduce .4  
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [51]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.159417920804
0.0616171015312
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [52]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no     [discrepancy]!
1                          ; HDL <35    [discrepancy]!
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0942933545382
0.432337598654
1                          ; percent
.4                      ; reduce .4  
3,4                        ; age >55 (CELL 15-age,smok,hdl) [53]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0872597602574
0.450340964493
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 15-age,smok,hdl) [54]
2                          ; sex F
1,2                        ; SBP <140 [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes  [discrepancy]!
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63 per case
1                          ; does reduce quality of life [ok]
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.125207276352
0.292670224932
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (CELL 16-age,dbp) [55]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.182438451544
0.0350945607691
1                          ; percent
.2462                     ; reduce .3147
3,4                        ; age >55 (CELL 16-age,dbp) [56]
2                          ; sex F
3                          ; DBP >90 [discrepancy]!
2 3                        ; LDL > 130
1,2                        ; smoking NO [discrepancy]!
2,3                        ; HDL >35  [discrepancy]!
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.184243528862
0.0757095709161
1                          ; percent
.4                      ; reduce .4  
3,4                        ; age >55 (mistake?) (CELL 17-age,smok) [57]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.22094610752
0.178738987387
1                          ; percent
.2462                     ; reduce .3147
3,4                        ; age >55 (CELL 17-age,smok) [58]
2                          ; sex F
1,2                        ; SBP <140   [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes [discrepancy]!
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification [ok pause]
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0405149841077
0.224447045491
1                          ; percent
.4                      ; reduce .4
3,4                        ; age >55 (mistake?) (CELL 18-age,hdl) [59]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.108463419972
0.160311950198
1                          ; percent
.2462                      ; reduce .2462
3,4                        ; age >55 (CELL 18-age,hdl) [60]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level
1                          ; yes more de rf interventions
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
-0.0907692168313
0.201299937791
1                          ; percent
.1                        ; reduce Quarter-Low
5,6                      ; age >75 (CELL 3- M 1RF- age)----------
1                          ; sex M [1]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No [page 3]
2,3                        ; HDL >35
                           ; all BMI levels
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case [ok 1]
21.35                      ; $ 21.35 per case
1                          ;  reduces quality of life
.000051725511               ; .000051725511 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -------Quarter-Switch-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
-0.0306771303031
0.128002937827
1                          ; percent
.0369                      ; reduce Quarter-switch
5,6                      ; age >75 (CELL 3- M 1RF- age)----------
1                          ; sex M [2]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
24.91                      ; $ 24.91 per case
1                          ;  reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
-0.154952201781
0.527375308262
1                          ; percent
.1                      ; reduce Quarter-Low
5,6                        ; age >75 (CELL 7- F 1RF- age)---------- 
2                          ; sex F [3]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
21.35                      ; $ 21.35 per case
1                          ;  reduces quality of life
.000051725511               ; .000051725511 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -----QuarterSwi
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; yes 10 year risk threshold
-0.00738213204372
-0.193986000827
1                          ; percent
.0369                      ; reduce Quarter-Switch
5,6                        ; age >75 (CELL 7- F 1RF- age)----------
2                          ; sex F [4]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI levels
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
24.91                      ; $ 24.91 per case
1                          ;  reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0029999392803
-0.0237238127359
1                          ; percent
.4                        ; reduce Low
5,6                      ; age >75 (CELL 1-age,d.,lbp,smok,hdl) [gap?]
1                          ; sex M [5]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes 
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes [ok 3]
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0528075024624
-0.0594406673073
1                          ; percent
.2462                     ; reduce SWITCH
5,6                      ; age >75 (CELL 1-age,dbp,smok,hdl)
1                          ; sex M [6]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0207222759131
-0.0416193798972
1                          ; percent
.4                      ; reduce .4    
5,6                      ; age >75 (CELL 2-age,dbp,smok) [7]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes [ok]
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.100355178809
0.0505129295415
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 2-age,dbp,smok) [8]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0335262099184
0.376106848912
1                          ; percent
.4                      ; reduce .4    
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [9]
1                          ; sex M
3                          ; SBP >140 
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users [ok]
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.124215508867
0.0664504084939
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [10]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.170407247806
0.165430046913
1                          ; percent
.4                      ; reduce .4    
5,6                      ; age >75 (CELL 4-age,smok,hdl) [11]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case [ok]
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.320769032438
0.362981064121
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 4-age,smok,hdl) [12]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0794787128379
0.0923280643856
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 5-age,dbp) [13]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case  [ok]
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.116293538242
0.31427638511
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 5-age,dbp) [14]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO 
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0910515371659
-0.076429697253
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 6-age,smok) [15]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life [ok]
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.21819340237
0.411325050061
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 6-age,smok) [16]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0592171844531
0.288807270288
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 7-age,hdl) [17]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification [ok]
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0139191855594
-0.0454707868776
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 7-age,hdl) [18]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states 
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------Female DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0374287572566
-0.333482205321
1                          ; percent
.4                        ; reduce Low
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [19]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 [forty-three]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0151736169533
0.345081631091
1                          ; percent
.2462                     ; reduce SWITCH
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [20]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0820303332178
0.131779248208
1                          ; percent
.4                      ; reduce .4  
5,6                        ; age >75 (CELL 13-age,dbp,smok) [21]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.129047498392
-0.201107413353
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 13-age,dbp,smok) [22]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0737516512443
-0.102837333394
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [23]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL        [ok]
1                          ; Yes 10 year risk threshold
0.078232033356
-0.245524386643
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [24]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.00844619406296
-0.350389900752
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (CELL 15-age,smok,hdl) [25]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold [ok]
0.0255759632394
-0.0163767386492
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 15-age,smok,hdl) [26]
2                          ; sex F 
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
3                          ; all BMI states
2,3                        ; NO diabetes [stoppo- success]
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0912943597406
0.0813762449179
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (CELL 16-age,dbp) [27]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states 
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.127001048554
0.411821429123
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 16-age,dbp) [28]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.00478266901027
0.104177954983
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (mistake?) (CELL 17-age,smok) [29]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0758126755975
0.162750444932
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 17-age,smok) [30]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0633508672507
0.231687016358
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (mistake?) (CELL 18-age,hdl) [31]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0235045572377
-0.0208264894804
1                          ; percent [ok]
.2462                     ; reduce .3147
5,6                        ; age >75 (CELL 18-age,hdl) [32]
2                          ; sex F [fifty-six]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another.
2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0286810748564
0.0794361686146
1                          ; percent
.4                        ; reduce Low
5,6                      ; age >75 (CELL 1-age,dbp,smok,hdl) [33]
1                          ; sex M  [sixty-five] [men]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.251033746346
-0.0816898362138
1                          ; percent
.2462                     ; reduce SWITCH
5,6                      ; age >75 (CELL 1-age,dbp,smok,hdl) [ok] [34]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users [stop]
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0324072738293
0.20616079725
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 2-age,dbp,smok) [35]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.201726197938
0.154100147429
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 2-age,dbp,smok) [36]
1                          ; sex M [ok]
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.160724606812
0.0476682255833
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [37]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.126616356665
0.510603290884
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [38]
1                          ; sex M
3                          ; DBP >90 [ok]
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states 
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.00405190130638
0.362197629816
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 4-age,smok,hdl) [39]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0186981390979
0.483850087433
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 4-age,smok,hdl) [40]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130  [ok]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.179163779287
0.272141926182
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 5-age,dbp) [41]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0172509855433
0.731433049615
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 5-age,dbp) [42]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO                [ok]
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.148345682553
0.197595280949
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 6-age,smok) [43]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0961047552699
0.0605973280319
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 6-age,smok) [44]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35                    [ok]
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0351486249349
0.347629509268
1                          ; percent
.4                      ; reduce .4  
5,6                      ; age >75 (CELL 7-age,hdl) [45]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.099224633042
0.190511372235
1                          ; percent
.2462                     ; reduce .3147
5,6                      ; age >75 (CELL 7-age,hdl) [46]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes              [ok]
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016 [women]
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0406023881407
0.363376008907
1                          ; percent
.4                        ; reduce Low
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [47]
2                          ; sex F [eighty-seven]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.183392444029
0.0843753042035
1                          ; percent
.2462                      ; reduce SWITCH
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [48]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users             [ok]
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0687263668004
0.584872971033
1                          ; percent
.4                      ; reduce .4  
5,6                        ; age >75 (CELL 13-age,dbp,smok) [49]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
                           ; HDL >35
1,2                        ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.120652759288
0.109527658081
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 13-age,dbp,smok) [50]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes    
2,3                        ; HDL >35     
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case [ok]
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0499917217965
0.399936649158
1                          ; percent
.4                      ; reduce .4  
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [51]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0614280446941
0.383516691442
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [52]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no     [discrepancy]!
1                          ; HDL <35    [discrepancy]!
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.00489797424941
0.589997907252
1                          ; percent
.4                      ; reduce .4  
5,6                        ; age >75 (CELL 15-age,smok,hdl) [53]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.034538078441
0.118121960422
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 15-age,smok,hdl) [54]
2                          ; sex F
1,2                        ; SBP <140 [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes  [discrepancy]!
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63 per case
1                          ; does reduce quality of life [ok]
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0284463742806
0.296234448979
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (CELL 16-age,dbp) [55]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.145028668041
0.206562190503
1                          ; percent
.2462                     ; reduce .3147
5,6                        ; age >75 (CELL 16-age,dbp) [56]
2                          ; sex F
3                          ; DBP >90 [discrepancy]!
2 3                        ; LDL > 130
1,2                        ; smoking NO [discrepancy]!
2,3                        ; HDL >35  [discrepancy]!
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
-0.0732892785165
0.253649702495
1                          ; percent
.4                      ; reduce .4  
5,6                        ; age >75 (mistake?) (CELL 17-age,smok) [57]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39 per case
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.11259635694
0.189183662191
1                          ; percent
.2462                     ; reduce .3147
5,6                        ; age >75 (CELL 17-age,smok) [58]
2                          ; sex F
1,2                        ; SBP <140   [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes [discrepancy]!
2,3                        ; HDL >35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level modification [ok pause]
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.132585634022
-0.15437244346
1                          ; percent
.4                      ; reduce .4
5,6                        ; age >75 (mistake?) (CELL 18-age,hdl) [59]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
85.39                      ; $ 85.39
1                          ; does reduce quality of life
.000206902042              ; .000206902042 reduction in quality of life
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
2                          ; LDL
1                          ; Yes 10 year risk threshold
0.0742633067703
0.267651817196
1                          ; percent
.2462                      ; reduce .2462
5,6                        ; age >75 (CELL 18-age,hdl) [60]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
2,3                        ; NO diabetes
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; $ 99.63
1                          ; does reduce quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more DE risk factor level
1                          ; yes more de rf interventions [ok look]
2016
2                          ; LDL DE >20 high
1                          ; risk threshold = 20
0.288618265624
4.94210840795
1                          ; percent
0.5477                     ; reduce LDL 54.77 %
3,4                        ; age 55-74   [61]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
2                          ; non-diabetics
2                          ; non-statin users 
1                          ; yes, enter prevention cost per case
185.02                     ; 185.02 per case
1                          ; reduces quality of life
0.000206902042              ; 0.000206902042 reduction in quality of life 
2                          ; No additional levels
1                          ; yes more de rf interventions
2016
2                          ; LDL DE >20 SWITCH 
1                          ; yes 10 year risk threshold
0.294443960822
5.04347875561
1                          ; percent
0.2462                     ; reduce LDL .2462%
3,4                        ; age 55-74 [62]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
2                          ; non-diabetics
1                          ; YES statin users [error here- should be YES not NO]
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more levels
1                          ; yes more de rf interventions
2016
2                          ; LDL DE >20 high
1                          ; risk threshold = 20
0.281335372313
4.57949335577
1                          ; percent
0.5477                     ; reduce LDL 54.77 %
2                          ; age 45-54 [63]
1                          ; men only
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
2                          ; non-diabetics
2                          ; non-statin users
1                          ; yes, enter prevention cost per case
185.02                     ; 208.12 per case
1                          ; reduces quality of life
0.000206902042              ; 0.000206902042 reduction in quality of life 
2                          ; No additional levels
1                          ; yes more de rf interventions
2016
2                          ; LDL DE >20 SWITCH 
1                          ; yes 10 year risk threshold
0.0365812909565
4.76224484472
1                          ; percent
0.2462                     ; reduce LDL .2462%
2                          ; age 45-54 [64]
1                          ; men only
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
2                          ; non-diabetics
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more levels
1                          ; yes more de rf interventions
2016
2                          ; LDL DE >20 high
1                          ; risk threshold = 20
0.0742004898467
5.05182549018
1                          ; percent
0.5477                     ; reduce LDL 54.77 %
5 6                        ; age 75-94   [61]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
2                          ; non-diabetics
2                          ; non-statin users 
1                          ; yes, enter prevention cost per case
185.02                     ; 185.02 per case
1                          ; reduces quality of life
0.000206902042              ; 0.000206902042 reduction in quality of life 
2                          ; No additional levels
1                          ; yes more de rf interventions
2016
2                          ; LDL DE >20 SWITCH 
1                          ; yes 10 year risk threshold
0.20777797597
5.06110718963
1                          ; percent
0.2462                     ; reduce LDL .2462%
5 6                        ; age 75-94 [62]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
2                          ; non-diabetics
1                          ; YES statin users
1                          ; yes, enter prevention cost per case
99.63                     ; 99.63 per case
1                          ; reduces quality of life
0.0                        ; 0.0 reduction in quality of life
2                          ; No more levels
1                          ; YES, DE intervention
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 3- M 1RF- age)----------
1                          ; sex M [1]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No [page 3]
2,3                        ; HDL >35
                           ; all BMI levels
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -------Quarter-Switch-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 3- M 1RF- age)----------
1                          ; sex M [2]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 7- F 1RF- age)---------- 
2                          ; sex F [3]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -----QuarterSwi
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 7- F 1RF- age)----------
2                          ; sex F [4]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI levels
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 1-age,d.,lbp,smok,hdl) [gap?]
1                          ; sex M [5]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes 
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 1-age,dbp,smok,hdl)
1                          ; sex M [6]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
2,3,4                      ; age >45 (CELL 2-age,dbp,smok) [7]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 2-age,dbp,smok) [8]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use  
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [9]
1                          ; sex M
3                          ; SBP >140 
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users [ok]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [10]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use   
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [11]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [12]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 5-age,dbp) [13]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 5-age,dbp) [14]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use  
2,3,4                      ; age >45 (CELL 6-age,smok) [15]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 6-age,smok) [16]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 7-age,hdl) [17]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification [ok]
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 7-age,hdl) [18]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states 
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------Female DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [19]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 [forty-three]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [20]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 13-age,dbp,smok) [21]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 13-age,dbp,smok) [22]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [23]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [24]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 15-age,smok,hdl) [25]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 15-age,smok,hdl) [26]
2                          ; sex F 
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
3                          ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 16-age,dbp) [27]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states 
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 16-age,dbp) [28]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (mistake?) (CELL 17-age,smok) [29]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 17-age,smok) [30]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (mistake?) (CELL 18-age,hdl) [31]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 18-age,hdl) [32]
2                          ; sex F [fifty-six]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another.
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                      ; age >55 (CELL 1-age,dbp,smok,hdl) [33]
1                          ; sex M  [sixty-five] [men]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                      ; age >55 (CELL 1-age,dbp,smok,hdl) [ok] [34]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users [stop]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                    ; age >55 (CELL 2-age,dbp,smok) [35]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 2-age,dbp,smok) [36]
1                          ; sex M [ok]
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [37]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 3-age,dbp,hdl) [38]
1                          ; sex M
3                          ; DBP >90 [ok]
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states 
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [39]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 4-age,smok,hdl) [40]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130  [ok]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
2,3,4                      ; age >45 (CELL 5-age,dbp) [41]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 5-age,dbp) [42]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO                [ok]
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 6-age,smok) [43]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 6-age,smok) [44]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35                    [ok]
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 7-age,hdl) [45]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
2,3,4                      ; age >45 (CELL 7-age,hdl) [46]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016 [women]
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [47]
2                          ; sex F [eighty-seven]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 12-age,dbp,smok,hdl) [48]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users             [ok]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use  
3,4                        ; age >55 (CELL 13-age,dbp,smok) [49]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
                           ; HDL >35
1,2                        ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 13-age,dbp,smok) [50]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes    
2,3                        ; HDL >35     
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [51]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 14-age,dbp,hdl) [52]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no     [discrepancy]!
1                          ; HDL <35    [discrepancy]!
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 15-age,smok,hdl) [53]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 15-age,smok,hdl) [54]
2                          ; sex F
1,2                        ; SBP <140 [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes  [discrepancy]!
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 16-age,dbp) [55]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 16-age,dbp) [56]
2                          ; sex F
3                          ; DBP >90 [discrepancy]!
2 3                        ; LDL > 130
1,2                        ; smoking NO [discrepancy]!
2,3                        ; HDL >35  [discrepancy]!
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (mistake?) (CELL 17-age,smok) [57]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 17-age,smok) [58]
2                          ; sex F
1,2                        ; SBP <140   [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes [discrepancy]!
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification [ok pause]
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (mistake?) (CELL 18-age,hdl) [59]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age >55 (CELL 18-age,hdl) [60]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level
1                          ; yes more de rf interventions
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 3- M 1RF- age)----------
1                          ; sex M [1]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No [page 3]
2,3                        ; HDL >35
                           ; all BMI levels
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -------Quarter-Switch-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 3- M 1RF- age)----------
1                          ; sex M [2]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 7- F 1RF- age)---------- 
2                          ; sex F [3]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention -----QuarterSwi
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 7- F 1RF- age)----------
2                          ; sex F [4]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
2,3                        ; HDL >35
                           ; all BMI levels
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another 
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 1-age,d.,lbp,smok,hdl) [gap?]
1                          ; sex M [5]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes 
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 1-age,dbp,smok,hdl)
1                          ; sex M [6]
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use  
5,6                      ; age >75 (CELL 2-age,dbp,smok) [7]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 2-age,dbp,smok) [8]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [9]
1                          ; sex M
3                          ; SBP >140 
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users [ok]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [10]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use  
5,6                      ; age >75 (CELL 4-age,smok,hdl) [11]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 4-age,smok,hdl) [12]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use  
5,6                      ; age >75 (CELL 5-age,dbp) [13]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 5-age,dbp) [14]
1                          ; sex M
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 6-age,smok) [15]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 6-age,smok) [16]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 7-age,hdl) [17]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification [ok]
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 7-age,hdl) [18]
1                          ; sex M
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states 
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------Female DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [19]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 [forty-three]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [20]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
5,6                        ; age >75 (CELL 13-age,dbp,smok) [21]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016 [ok]
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 13-age,dbp,smok) [22]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [23]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [24]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 15-age,smok,hdl) [25]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 15-age,smok,hdl) [26]
2                          ; sex F 
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
1                          ; HDL <35
3                          ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 16-age,dbp) [27]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states 
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 16-age,dbp) [28]
2                          ; sex F
3                          ; DBP >90
3                          ; LDL > 160
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (mistake?) (CELL 17-age,smok) [29]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 17-age,smok) [30]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (mistake?) (CELL 18-age,hdl) [31]
2                          ; sex F
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 18-age,hdl) [32]
2                          ; sex F [fifty-six]
1,2                        ; SBP <140
3                          ; LDL > 160
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another.
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 1-age,dbp,smok,hdl) [33]
1                          ; sex M  [sixty-five] [men]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 1-age,dbp,smok,hdl) [ok] [34]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users [stop]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 2-age,dbp,smok) [35]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 2-age,dbp,smok) [36]
1                          ; sex M [ok]
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [37]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 3-age,dbp,hdl) [38]
1                          ; sex M
3                          ; DBP >90 [ok]
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states 
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
5,6                      ; age >75 (CELL 4-age,smok,hdl) [39]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 4-age,smok,hdl) [40]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130  [ok]
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 5-age,dbp) [41]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 5-age,dbp) [42]
1                          ; sex M
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO                [ok]
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
5,6                      ; age >75 (CELL 6-age,smok) [43]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 6-age,smok) [44]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35                    [ok]
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 7-age,hdl) [45]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                      ; age >75 (CELL 7-age,hdl) [46]
1                          ; sex M
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016 [women]
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [47]
2                          ; sex F [eighty-seven]
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 12-age,dbp,smok,hdl) [48]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130 
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users             [ok]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention --------anotherDE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 13-age,dbp,smok) [49]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes
                           ; HDL >35
1,2                        ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 13-age,dbp,smok) [50]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
3                          ; smoking Yes    
2,3                        ; HDL >35     
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE---
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [51]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 14-age,dbp,hdl) [52]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking no     [discrepancy]!
1                          ; HDL <35    [discrepancy]!
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 15-age,smok,hdl) [53]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 15-age,smok,hdl) [54]
2                          ; sex F
1,2                        ; SBP <140 [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes  [discrepancy]!
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 16-age,dbp) [55]
2                          ; sex F
3                          ; DBP >90
2 3                        ; LDL > 130
1,2                        ; smoking NO
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                       ; yes, there's a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 16-age,dbp) [56]
2                          ; sex F
3                          ; DBP >90 [discrepancy]!
2 3                        ; LDL > 130
1,2                        ; smoking NO [discrepancy]!
2,3                        ; HDL >35  [discrepancy]!
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------another DE-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use 
5,6                        ; age >75 (mistake?) (CELL 17-age,smok) [57]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
3                          ; smoking Yes
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 17-age,smok) [58]
2                          ; sex F
1,2                        ; SBP <140   [discrepancy]!
2 3                        ; LDL > 130
3                          ; smoking Yes [discrepancy]!
2,3                        ; HDL >35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification [ok pause]
1                          ; YES, DE intervention ----------another DE----- 
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (mistake?) (CELL 18-age,hdl) [59]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level modification
1                          ; YES, DE intervention ----------SWITCH-----
2016                       ; begin intervention 2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5,6                        ; age >75 (CELL 18-age,hdl) [60]
2                          ; sex F
1,2                        ; SBP <140
2 3                        ; LDL > 130
1,2                        ; smoking No
1                          ; HDL <35
                           ; all BMI states
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more DE risk factor level
1                          ; yes more de rf interventions [ok look]
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age 55-74   [61]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
                           ; all diabetic states
2                          ; non-statin users 
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No additional levels
1                          ; yes more de rf interventions
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
3,4                        ; age 55-74 [62]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
                           ; all diabetic states
1                          ; YES statin users [error here- should be YES not NO]
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more levels
1                          ; yes more de rf interventions
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold
3                      ; 1=pct 2=abs 3=redefine
1                      ; add statin use
2                          ; age 45-54 [63]
1                          ; men only
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
                           ; all diabetic states
2                          ; non-statin users
1                      ; yes, there’s a cost
0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction 
2                          ; No additional levels
1                          ; yes more de rf interventions
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold 
3                      ; 1=pct 2=abs 3=redefine
1                      ; add statin use
2                          ; age 45-54 [64]
1                          ; men only
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
                           ; all diabetic stateateateates
1                          ; YES statin users
1                      ; yes, there’s a cost
0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction 
2                          ; No more levels
1                          ; yes more de rf interventions
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold
3                      ; 1=pct 2=abs 3=redefine
1                      ; add statin use
5 6                        ; age 75-94   [61]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
                           ; all diabetic states
2                          ; non-statin users 
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction 
2                          ; No additional levels
1                          ; yes more de rf interventions
2016
7                      ; STATIN intervention
2                      ; no, no risk threshold

3                      ; 1=pct 2=abs 3=redefine

1                      ; add statin use
5 6                        ; age 75-94 [62]
                           ; sex
                           ; DBP
                           ; all LDL levels
                           ; smoking
                           ; HDL
                           ; all BMI levels
                           ; all diabetic states
1                          ; YES statin users
1                      ; yes, there’s a cost

0.0                    ; 0 dollars
1                      ; yes, there’s a qaly reduction
0.0                    ; 0.0 qaly reduction
2                          ; No more levels
1                ; yes DE intervention
2016
2                : LDL intervention
2                ; no, no risk threshold
1                ; 1=pct 2=abs 3=redefine
0.5477           ; reduce LDL 54.77 %
                 ; all ages
                 ; men and women
                 ; all SBP levels
                 ; all LDL levels
                 ; all smoking levels
                 ; all HDL levels
                 ; all BMI states
1                ; YES diabetes
2                ; non-statin users                
1                ; yes, there's a cost
185.02                     ; 185.02 per case
1                          ; yes, there's a qaly reduction
0.000206902042
2                ; no more RF levels
2                ; no more DE interventions
2                          ; modify secondary DH variables
1                          ; modify risk factors
2                          ; LDL intervention
1                          ; 1=pct 2=abs 3=redefine
0.5477           ; reduce LDL 54.77 %
                           ; all ages   [65]
                           ; men and women
                           ; all SBP levels
                           ; all LDL levels
                           ; all smoking levels
                           ; all HDL levels
                           ; all BMI levels
                           ; all DM states
2                          ; non-statin users
1                          ; yes, there's a cost
185.02                     ; 185.02 per case
1                          ; yes, there's a qaly reduction
0.000206902042
2                          ; no more RF levels
2                          ; no more DE interventions
2                          ; no further adjustments


