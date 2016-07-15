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
0.104067727777
0.268041175991
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
0.158137755943
0.0943555511152
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
0.0209796033853
0.423191651679
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
-0.055511918163
0.425248642932
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
-0.125558973211
0.298251625966
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
-0.0801823805893
0.304526662161
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
-0.0247897727746
0.146032820046
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
0.0398363870867
0.075048610204
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
-0.13742276639
0.162456276591
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
0.0390161232645
-0.0268000209015
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
-0.0501832901028
-0.0450799017552
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
0.0288431571933
-0.0295093720169
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
-0.0388267154296
-0.0538425577268
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
-0.129188503392
-0.0866183477767
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
-0.221992730188
-0.175844788646
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
-0.144480559296
0.0993787623084
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
0.0588410588176
0.596935119872
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
-0.073239808432
0.11730018969
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
0.0507806688969
0.10105916925
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
-0.0221323472596
0.0689716428727
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
-0.0699474315403
0.451585519987
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
0.0401139573531
-0.0862396369917
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
-0.000477794389381
0.296775504073
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
0.0567759608143
0.0862161738988
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
-0.148063354899
0.112608904799
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
0.21926135539
-0.0707760111067
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
0.0585862113443
0.145942415501
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
0.103869524421
-0.0413499131457
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
0.00752707120507
0.0287152542849
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
-0.0364793009986
0.168734508299
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
-0.00699720516937
-0.122400020618
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
-0.0105865575629
-0.000260065094006
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
0.298265915898
0.229263821122
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
0.01536487723
0.0973031920807
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
0.152819119124
0.50010844847
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
-0.00915917300569
-0.0843455508921
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
0.116929609735
-0.0135684299745
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
0.170396933153
0.16875488153
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
-0.175070776536
0.19042647037
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
-0.0900143840806
0.51220259144
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
0.27086143113
0.0759982131545
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
0.100383810243
0.320289650634
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
0.173349785408
0.00382433856035
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
0.0566759092261
-0.0711224798494
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
-0.0233902236668
0.209023626922
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
0.109844150392
0.0364604804434
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
0.167368613386
0.07441031856
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
0.0741356512416
0.295303504303
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
0.0518011175783
0.266710367926
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
0.212411787776
-0.103099710369
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
0.104576691596
-0.039555734141
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
0.0983854150778
-0.105489809077
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
-0.0370001959365
-0.028410882223
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
0.155501760856
0.12010432372
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
0.0514436128893
0.230130999948
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
0.0969722467369
0.198256110166
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
0.288092015203
-0.00836663501547
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
0.043435303131
0.361442157315
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
0.303528920209
0.265340346476
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
0.0737607906193
0.277968135769
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
0.0453719161821
0.380830765348
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
0.0901750451787
0.217178947075
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
-0.0253591911187
0.16379472281
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
0.0988297656854
0.0783367103553
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
0.0915715587706
0.20538772071
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
0.0181170990845
0.135612863491
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
0.116697993719
0.0137729740704
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
-0.0270509201732
0.115096567238
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
0.0482651566493
0.14282791673
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
-0.0433446415963
0.143250157906
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
-0.124054451596
-0.0237320010618
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
0.11065200176
-0.0482614457425
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
-0.0942943251279
0.339116176286
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
0.0533981724662
-0.000666390362722
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
0.0879718957671
0.424736479101
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
0.000521740353767
-0.072518521372
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
0.0644287602783
0.0419886221652
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
-0.0087334321018
0.175793877024
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
0.104064657718
0.0821493639359
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
-0.0434615796572
0.0292636367822
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
0.0350295812044
-0.190190680226
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
0.0567485449849
0.584782217056
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
0.089701952877
0.0902677013946
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
-0.0985592711477
0.105427400027
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
-0.187871779354
0.420782241505
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
0.128774049577
-0.0243338523479
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
0.114946359311
0.101755810345
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
0.0365056614014
-0.11087082199
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
-0.0409318443925
0.0248593133533
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
-0.173659610069
-0.124000501462
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
-0.000528825729962
0.00798609942782
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
-0.0416026366865
0.172208226503
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
0.0559666290098
0.247823437275
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
0.186443218979
0.285228102702
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
0.166983396872
0.270637436536
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
0.129617629391
0.124005785139
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
-0.017107826644
0.268417323187
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
0.24296326648
0.394530161995
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
0.100089948669
0.306799084008
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
0.0788021126508
0.342083399559
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
0.148435754373
0.187763685538
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
0.12610497818
-0.0777144440005
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
-0.0221056145492
0.40477778355
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
0.120992198427
0.0292062698096
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
0.160665857404
0.0882653141745
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
0.115706617598
0.254203024188
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
0.163630443437
0.535112074214
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
-0.0819601493218
0.416871772935
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
0.16072543016
0.377527623252
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
-0.0638148092974
0.27971649367
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
0.157004336484
0.470501193758
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
0.0719664534655
0.189670042711
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
-0.0923329250321
0.421731205617
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
0.0437986773566
0.0357070960735
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
0.359354581707
0.368319293442
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
0.112555997782
0.476176663009
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
0.105880229604
-0.0404226079538
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
0.0490801182239
0.203579573812
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
0.244492779721
0.556108114143
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
0.141056725664
0.137897461903
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
0.285055668098
5.04884540057
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
0.303943104299
4.89202983794
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
0.127305157305
5.23523111329
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
0.388574360338
4.93159252479
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
0.138237485583
4.93693388816
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
0.106649942492
4.82159374529
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


