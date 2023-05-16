#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Fri May  5 16:51:57 2023
#_expected_values
#C data file for simple example
#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1971 #_StartYr
2001 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
40 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
3 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 FISHERY  # 1
 3 1 1 2 0 SURVEY1  # 2
 3 1 1 2 0 SURVEY2  # 3
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 0.01
1971 1 1 0 0.01
1972 1 1 200 0.01
1973 1 1 1000 0.01
1974 1 1 1000 0.01
1975 1 1 2000 0.01
1976 1 1 3000 0.01
1977 1 1 4000 0.01
1978 1 1 5000 0.01
1979 1 1 6000 0.01
1980 1 1 8000 0.01
1981 1 1 10000 0.01
1982 1 1 10000 0.01
1983 1 1 10000 0.01
1984 1 1 10000 0.01
1985 1 1 10000 0.01
1986 1 1 10000 0.01
1987 1 1 10000 0.01
1988 1 1 9000 0.01
1989 1 1 8000 0.01
1990 1 1 7000 0.01
1991 1 1 6000 0.01
1992 1 1 4000 0.01
1993 1 1 4000 0.01
1994 1 1 4000 0.01
1995 1 1 4000 0.01
1996 1 1 4000 0.01
1997 1 1 3000 0.01
1998 1 1 3000 0.01
1999 1 1 3000 0.01
2000 1 1 3000 0.01
2001 1 1 3000 0.01
-9999 0 0 0 0
#
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # FISHERY
2 1 0 1 # SURVEY1
3 0 0 0 # SURVEY2
#_year month index obs err
1977 7 2 174946 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 147573 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 108254 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 77730.1 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 52840.5 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 38701.1 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 45350.6 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 48285.6 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 45161.9 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 5.43932 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 6.80237 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 22.1423 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 1.2855 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 6.74652 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 2.9236 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 2.56854 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 3.02429 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 3.46022 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 2.90338 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 3.82523 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 4.21732 0.7 #_orig_obs: 1.69379 SURVEY2
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
10 # minimum size in the population (lower edge of first bin and size at age 0.00) 
94 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1/2) where 2 invokes new comp_comtrol format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 0 0 0 0 1 #_fleet:1_FISHERY
0 1e-07 0 0 0 0 1 #_fleet:2_SURVEY1
0 1e-07 0 0 0 0 1 #_fleet:3_SURVEY2
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
25 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 68 72 76 80 90
#_yr month fleet sex part Nsamp datavector(female-male)
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3.29772 1.15611 1.48561 1.87455 2.31922 2.80908 3.32563 3.84098 4.31622 4.7022 9.9408 9.26561 7.0625 7.33358 0 0 0 0 0 0 0 0 0 0 2.38496 0.898752 1.18579 1.54313 1.97516 2.48194 3.05388 3.66637 4.27543 4.81636 5.2103 10.655 9.14244 6.13987 4.84081 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3.14033 1.15979 1.49025 1.88028 2.32616 2.8173 3.33516 3.85179 4.32817 4.71503 9.96751 9.29014 7.08103 4.29974 3.05296 0 0 0 0 0 0 0 0 0 2.21323 0.901549 1.18955 1.54794 1.98118 2.48934 3.06279 3.67686 4.28744 4.8297 5.22455 10.6837 9.16681 6.15612 4.85355 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7.37535 2.34322 2.83692 3.35713 3.87583 4.35389 4.74187 10.0214 9.33797 7.11639 7.38847 0 0 0 0 0 0 0 0 0 0 0 0 0 5.51458 1.99537 2.50735 3.08392 3.70089 4.31406 4.85835 5.25438 10.7421 9.21494 6.18766 3.18479 1.69315 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2.4298 1.07416 1.4531 1.8856 2.36081 2.8694 3.39758 3.92105 4.40228 4.79217 10.1218 9.42655 7.1816 7.45426 0 0 0 0 0 0 0 0 0 1.11335 0.516946 0.757881 1.08427 1.49353 1.9754 2.51988 3.11623 3.74412 4.36369 4.91197 5.31004 10.8505 9.30378 6.24566 3.21413 1.70854 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1.06581 0.460884 0.658446 0.938792 1.31229 1.77312 2.29952 2.86179 3.43104 3.97943 4.4734 4.86883 10.2758 9.56193 7.28089 7.55412 0 0 0 0 0 0 0 0 0 0 0 2.15898 0.949603 1.34552 1.84886 2.44295 3.09722 3.77322 4.42408 4.98909 5.39416 11.0162 9.43945 6.33398 4.99058 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 1.07466 0.424587 0.602259 0.847707 1.18131 1.61738 2.15181 2.75699 3.38864 3.99742 4.53545 4.95566 10.4687 9.73283 7.40432 4.4907 3.18557 0 0 0 0 0 0 0 0.763617 0.291889 0.421943 0.605488 0.863009 1.2189 1.6936 2.28998 2.98322 3.72213 4.43789 5.05273 5.48681 11.2221 9.61131 6.4447 5.07472 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1.48079 0.403688 0.557047 0.778267 1.08271 1.48424 1.99035 2.59107 3.25161 3.91543 4.51577 4.98752 10.61 9.88046 7.51028 4.55108 3.22608 0 0 0 0 0 0 0.951184 0.228462 0.301085 0.406498 0.562976 0.79388 1.12053 1.56202 2.13047 2.81781 3.58359 4.35374 5.03232 5.52042 11.3706 9.76004 6.54148 5.14647 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1.71908 0.378254 0.461136 0.583257 0.763018 1.02156 1.37856 1.84581 2.41948 3.07411 3.75973 4.40579 4.93321 10.6339 9.97189 7.58527 4.59288 3.25248 0 0 0 0 0 0 0 0 2.12907 0.474207 0.600422 0.788969 1.06651 1.4596 1.98684 2.64695 3.40779 4.20069 4.92553 5.46958 11.4008 9.85331 6.61201 5.1983 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5.14983 1.07822 1.35893 1.75202 2.26289 2.87544 3.54586 4.20456 4.76657 10.4333 9.89909 7.55829 4.57725 3.23809 0 0 0 0 0 0 0 0 0 3.48994 0.855769 0.952918 1.14574 1.4558 1.90259 2.49433 3.20971 3.98668 4.72511 5.30505 11.2067 9.78853 6.59432 3.38933 1.79715 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2.39581 1.09368 1.31299 1.43424 1.50616 1.62044 1.84995 2.22246 2.72765 3.32537 3.94803 4.50765 9.99726 9.6136 7.38916 4.48313 3.16981 0 0 0 0 0 0 0 0 0 3.39294 1.35874 1.5301 1.63781 1.77711 2.04142 2.47574 3.07008 3.76644 4.46584 5.04401 10.7757 9.52278 6.45541 5.08854 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 1.55144 0.67069 0.967238 1.35116 1.75835 2.08909 2.29175 2.41267 2.56049 2.82594 3.2296 3.72183 4.21061 9.36933 9.10512 7.05367 7.33278 0 0 0 0 0 0 0 1.05613 0.450407 0.655346 0.947719 1.33682 1.77598 2.16976 2.45122 2.64867 2.86749 3.20658 3.6873 4.241 4.74254 10.1492 9.04732 6.17645 4.88829 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 3.27588 1.23381 1.68021 2.18082 2.65055 3.00036 3.20616 3.33398 3.48655 3.72236 4.01759 8.71438 8.45286 13.477 0 0 0 0 0 0 0 0 0 0 2.36121 0.870183 1.22643 1.68426 2.21375 2.74011 3.17628 3.48662 3.71896 3.95965 4.25144 4.55057 9.4968 8.43659 5.78914 4.60546 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 6.6326 2.08294 2.64045 3.16957 3.58161 3.83144 3.94726 4.00503 4.06533 8.26582 7.76684 6.04288 6.34741 0 0 0 0 0 0 0 0 0 0 0 5.06067 1.59688 2.11692 2.71209 3.30287 3.80155 4.155 4.37206 4.50189 4.57825 9.03802 7.79414 5.33145 4.25903 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2.72195 0.895811 1.11647 1.37058 1.68351 2.08207 2.57269 3.11537 3.62558 4.01298 4.2281 4.28277 4.22979 8.07875 7.14305 5.44386 5.71308 0 0 0 0 0 0 0 0 0 3.58345 1.13763 1.40751 1.73638 2.15257 2.66777 3.25081 3.82253 4.28908 4.58788 4.70918 4.6797 8.78239 7.19778 4.82914 3.84979 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 5.3834 1.658 1.99066 2.35009 2.74106 3.16701 3.60339 3.99021 4.25646 4.35811 4.29785 7.9535 6.62185 4.85063 2.93091 2.08589 0 0 0 0 0 0 0 0 3.96972 1.38031 1.69807 2.05513 2.44702 2.8746 3.34011 3.82156 4.2603 4.58032 4.72414 4.67527 8.53976 6.66802 4.32639 3.40026 0 0
 1986 7 1 3 0 125  0 0 0 0.832324 0.402181 0.650919 0.957505 1.28653 1.62849 1.99346 2.37615 2.75632 3.11815 3.45419 3.75824 4.0155 4.19576 4.26148 4.18842 7.64246 6.10211 4.27129 4.28127 0 0 0 0 0 0 0 1.79102 0.931919 1.28267 1.6483 2.03649 2.44837 2.86586 3.27056 3.65263 4.00297 4.3023 4.51497 4.59624 4.51227 8.11031 6.11326 3.82303 2.92409 0 0
 1987 7 1 3 0 125  0 0 0 0 1.5488 0.514236 0.732633 1.12165 1.64176 2.21366 2.76145 3.23979 3.63082 3.92697 4.12603 4.23266 4.25243 4.18408 4.02072 7.16921 5.5366 3.71978 3.57005 0 0 0 0 0 0 0 0 0 3.81289 1.59886 2.20575 2.80799 3.34548 3.79197 4.13916 4.38436 4.52825 4.57021 4.50226 4.3118 7.55071 5.51307 3.33309 2.46082 0 0
 1988 7 1 3 0 125  0 0 0 0 0 2.11006 0.916306 1.15236 1.48286 1.99022 2.67029 3.40289 4.03244 4.45666 4.65315 4.65429 4.51049 4.26621 3.95092 6.74812 4.9893 3.22441 2.94754 0 0 0 0 0 0 0 2.03603 0.919303 1.16572 1.48972 1.9775 2.65633 3.4289 4.13186 4.63723 4.90069 4.94505 4.81897 4.56624 4.21525 7.06862 4.94414 4.93993 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1.72476 0.984356 1.36181 1.75099 2.17209 2.66839 3.27193 3.9459 4.5607 4.96006 5.05959 4.88065 4.5089 4.03531 6.53383 4.54603 2.80699 2.43559 0 0 0 0 0 0 0 0 2.56633 1.34749 1.76581 2.21239 2.72498 3.33704 4.02641 4.67981 5.13811 5.29477 5.14864 4.77539 4.2673 6.79796 4.48576 2.51305 1.71087 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3.66495 1.63304 2.2862 2.93107 3.52789 4.07946 4.58073 4.97524 5.16812 5.08892 4.74424 4.21244 6.57034 4.27968 2.49514 2.0391 0 0 0 0 0 0 0 1.94296 0.616247 0.994907 1.56835 2.25508 2.95797 3.61562 4.21375 4.7445 5.15903 5.36909 5.30149 4.95281 4.39333 6.7627 4.19882 2.23168 1.44512 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 4.52112 1.33173 1.84687 2.58698 3.42869 4.20084 4.7853 5.14203 5.26959 5.1675 4.84003 4.32135 6.68928 4.17318 4.03659 0 0 0 0 0 0 0 1.91199 0.691106 0.853898 1.04982 1.33555 1.81878 2.54547 3.42039 4.26488 4.92851 5.34137 5.49045 5.37955 5.02219 4.45936 6.79756 4.05678 3.29128 0 0 0
 1992 7 1 3 0 125  0 0 0 0 3.59531 0.801236 1.01935 1.28554 1.57139 1.89851 2.33182 2.92797 3.66286 4.40026 4.95867 5.21666 5.15512 4.82523 4.30226 6.64815 4.0785 3.6663 0 0 0 0 0 0 0 0 0 0 6.6982 1.60559 1.94976 2.38629 2.97559 3.71193 4.47752 5.08635 5.39035 5.34475 4.99334 4.42067 6.6976 3.92145 2.99546 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 7.20437 1.51128 1.79349 2.1374 2.5199 2.93532 3.39892 3.91026 4.40395 4.75625 4.8529 4.65471 4.20701 6.53711 3.98721 3.41663 0 0 0 0 0 0 0 0 0 0 8.85942 1.83633 2.19483 2.60161 3.0446 3.52802 4.04838 4.54669 4.90371 4.99947 4.78361 4.29605 6.5432 3.79965 1.80206 0.985628 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 15.3806 2.89901 3.1465 3.44956 3.75083 4.01816 4.21317 4.27751 4.15474 3.82741 6.07813 3.7424 1.90296 1.21053 0 0 0 0 0 0 0 0 0 9.62451 3.05222 3.00851 3.07846 3.30588 3.61609 3.93345 4.20914 4.39638 4.43569 4.27318 3.89508 6.04599 3.5397 1.65956 0.874591 0 0
 1995 7 1 3 0 125  0 0 0 1.10443 0.560807 0.8604 1.49695 2.46975 3.50902 4.24259 4.48743 4.37459 4.17429 4.05157 4.00817 3.97352 3.88276 3.69426 3.38789 5.44379 6.2393 0 0 0 0 0 0 0 0 1.60543 0.805817 1.37575 2.32552 3.44547 4.35146 4.76975 4.74189 4.52998 4.35479 4.26469 4.19534 4.06785 3.8304 3.46359 5.40923 3.21328 2.28825 0 0 0
 1996 7 1 3 0 125  0 0 0 0.698246 0.436753 0.670492 1.0038 1.5056 2.29069 3.38505 4.56654 5.4408 5.73372 5.48899 4.97326 4.43517 3.97189 3.56243 3.15524 4.97655 3.13673 2.60605 0 0 0 0 0 0 0 0 0 2.68447 1.45515 2.20189 3.27431 4.51392 5.5404 6.01188 5.88101 5.37804 4.78062 4.23275 3.73937 3.25387 4.96611 2.94359 1.39257 0.712052 0 0
 1997 7 1 3 0 125  0 0 0 0.579939 0.280701 0.434738 0.693706 1.08824 1.6504 2.4281 3.44686 4.6187 5.68251 6.30191 6.29088 5.74333 4.93238 4.10725 3.38322 4.98999 5.56889 0 0 0 0 0 0 0 0 0 1.23882 0.658849 1.04526 1.60376 2.37763 3.39455 4.58603 5.71822 6.45444 6.56273 6.07882 5.25268 4.35351 3.53241 5.02545 2.86045 2.03466 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0.876224 0.339243 0.495203 0.756667 1.16735 1.77656 2.6126 3.65446 4.79882 5.83514 6.49087 6.56706 6.06599 5.18631 4.19001 5.76139 3.23628 1.62045 0.987922 0 0 0 0 0 0 0.854338 0.332475 0.479316 0.731077 1.13217 1.73559 2.57665 3.6374 4.81442 5.89877 6.61644 6.75376 6.28713 5.3958 4.34367 5.8298 3.06451 1.39222 0.705907 0 0
 1999 7 1 3 0 125  0 0 0 0 0.927133 0.357135 0.473969 0.649983 0.919018 1.34139 1.97613 2.84666 3.91014 5.03293 5.99776 6.56592 6.58024 6.04738 5.13427 7.15214 3.8067 2.85604 0 0 0 0 0 0 0 0 0 1.72844 0.645579 0.912065 1.32901 1.96255 2.84414 3.93384 5.09406 6.09769 6.69464 6.71876 6.17174 5.22055 7.15358 3.61113 2.30728 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 1.36498 0.52443 0.691135 0.903136 1.20437 1.65293 2.30181 3.17096 4.2056 5.25354 6.09336 6.51212 6.39592 5.78096 8.59798 8.01674 0 0 0 0 0 0 0 0 0 1.32986 0.51978 0.6939 0.913705 1.2203 1.67553 2.33693 3.22732 4.29166 5.37017 6.22739 6.6379 6.48499 5.81298 8.47802 4.41323 1.83919 0.857186 0 0
 2001 7 1 3 0 125  0 0 0 0 1.15612 0.403837 0.535894 0.722133 0.956756 1.24658 1.61487 2.10296 2.75716 3.58869 4.53061 5.42672 6.07131 6.28883 6.01067 9.63696 5.64988 4.00197 0 0 0 0 0 0 0 0 1.534 0.529941 0.718155 0.962027 1.26702 1.65667 2.17138 2.85623 3.7211 4.69283 5.60229 6.22977 6.39406 6.03491 9.43121 5.25423 3.24222 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1.35252 0.929733 1.2199 1.43565 1.59789 1.76767 1.97306 2.21614 2.49701 2.81264 3.14871 3.47918 3.77258 3.99867 4.13127 8.18039 7.16717 10.5809 0 0 0 0 0 0 0 0 0 3.51482 1.4417 1.60901 1.78648 2.01264 2.29355 2.62785 3.01064 3.42424 3.83438 4.1949 4.45607 4.5727 8.76942 7.08202 4.58506 3.52337 0 0
 1980 7 2 3 0 125  0 0 0 0 1.52702 1.52651 2.4723 3.33854 3.73744 3.59705 3.13901 2.66126 2.35307 2.25622 2.33066 2.51838 2.76455 3.01626 3.22134 6.64827 6.0157 4.46681 2.65854 1.85589 0 0 0 0 0 1.48169 1.45973 2.34402 3.22585 3.73208 3.72234 3.34877 2.89386 2.58057 2.48972 2.59625 2.83452 3.13123 3.41188 3.60469 7.16836 5.96088 3.90341 3.00532 0 0
 1983 7 2 3 0 125  0 0 0 0 2.30123 1.90134 2.48826 2.79863 2.9326 3.07603 3.27894 3.48813 3.63386 3.66356 3.5595 3.35217 3.10924 2.89864 2.75174 5.20705 4.60164 7.00326 0 0 0 0 0 0 0 2.25828 1.89943 2.50039 2.83803 2.97809 3.10954 3.3126 3.54497 3.73236 3.81752 3.77793 3.6351 3.44374 3.25819 3.09896 5.69551 10.0535 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 1.99298 2.37173 3.60245 4.32952 4.52946 4.44417 4.2311 3.96148 3.68219 3.42497 3.20322 3.01225 2.83321 2.64367 2.42984 4.12906 3.09844 2.09392 2.0475 0 0 0 0 0 0.768271 1.09401 2.24692 3.50613 4.31646 4.58453 4.54004 4.35962 4.11883 3.86208 3.62165 3.41173 3.22734 3.04872 2.85133 2.61775 4.3828 3.10528 3.27535 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 3.86091 3.52158 4.35752 4.63033 4.6032 4.51589 4.46859 4.42744 4.29667 4.01679 3.60614 3.13095 2.65686 2.22312 3.35378 2.19151 2.41124 0 0 0 0 0 0 0.595228 0.919148 2.05717 3.38794 4.31163 4.66945 4.68859 4.61165 4.55747 4.51763 4.40869 4.16078 3.7736 3.30278 2.8139 2.35101 7.60081 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 6.78016 3.63748 4.10325 4.14544 4.01432 3.93798 3.99116 4.10276 4.13916 4.01031 3.71396 3.30419 2.84164 2.36957 3.41461 3.65874 0 0 0 0 0 0 0 0 0 6.78043 3.63118 4.14006 4.23568 4.12271 4.03001 4.05607 4.15767 4.21174 4.11349 3.83757 3.42575 2.9407 2.43486 3.44076 1.89288 1.38371 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2.2862 2.38004 4.27574 6.31033 7.4111 7.18302 6.06906 4.7758 3.7445 3.05179 2.59533 2.26465 1.99211 1.74144 1.49358 2.2376 1.32029 1.04272 0 0 0 0 0 0 0 2.22428 2.22904 3.92945 5.94162 7.27663 7.36714 6.4508 5.1768 4.06363 3.28025 2.76147 2.39112 2.08713 1.80569 1.52703 2.22404 1.24167 0.846885 0 0 0
 1998 7 2 3 0 125  0 0 0 0.672372 0.742622 1.24832 1.88158 2.57172 3.27941 4.00075 4.70001 5.3075 5.72796 5.85008 5.59578 4.98461 4.14587 3.25734 2.46145 3.15864 1.66646 1.28508 0 0 0 0 0 0 0 1.3872 1.22342 1.82122 2.48473 3.18056 3.90846 4.6353 5.28267 5.74653 5.91382 5.70397 5.12627 4.29699 3.38892 2.55175 3.19701 1.57846 1.03515 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 3.71211 2.26946 2.73559 2.99585 3.12901 3.23801 3.40398 3.66765 4.00939 4.35237 4.58986 4.62381 4.40143 3.935 5.88459 5.44306 0 0 0 0 0 0 0 0 2.02961 1.64975 2.24424 2.72051 3.01234 3.1803 3.32181 3.51471 3.79943 4.15733 4.50823 4.73839 4.74455 4.47514 3.95094 5.76027 4.80126 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
17 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 20 25
2 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5 21.5 22.5 23.5 24.5 25.5 26.5 27.5 28.5 29.5 30.5 31.5 32.5 33.5 34.5 35.5 36.5 37.5 38.5 39.5 40.5
 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5 21.5 22.5 23.5 24.5 25.5 26.5 27.5 28.5 29.5 30.5 31.5 32.5 33.5 34.5 35.5 36.5 37.5 38.5 39.5 40.5
 0.5 0.65 0.67 0.7 0.73 0.76 0.8 0.84 0.88 0.92 0.97 1.03 1.09 1.16 1.23 1.32 1.41 1.51 1.62 1.75 1.89 2.05 2.23 2.45 2.71 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  parm number for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 1 0 0 0 1 #_fleet:1_FISHERY
0 1e-07 1 0 0 0 1 #_fleet:2_SURVEY1
0 1e-07 1 0 0 0 1 #_fleet:3_SURVEY2
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5.29818 1.94514 2.08249 2.12958 2.10837 2.03102 1.92095 1.80034 1.67526 1.54924 6.02764 3.61867 5.85251 0 0 1.59104 1.40483 1.75432 1.98169 2.09699 2.12558 2.09084 2.00476 1.88974 1.76677 1.64108 1.5156 5.88328 3.52447 5.6896
1972  7 1  3 0 2 1 -1 75  0.617569 0.537249 0.931967 1.34115 1.70232 1.95102 2.0886 2.13568 2.11429 2.03663 1.92618 1.80519 1.67974 1.55336 6.04347 3.62807 5.86762 0 0 1.57262 1.40934 1.75978 1.98767 2.10314 2.13167 2.09672 2.01032 1.89492 1.77156 1.6455 1.51965 5.89885 3.53371 5.70444
1973  7 1  3 0 2 1 -1 75  0 0 1.83767 1.35037 1.71632 1.96587 2.10333 2.14973 2.12738 2.04862 1.93707 1.81505 1.68867 1.56144 6.07365 3.64554 5.89527 0 0 0 2.82964 1.77412 2.00269 2.11791 2.1457 2.10978 2.02227 1.90577 1.78141 1.65442 1.52773 5.92909 3.55125 5.73225
1974  7 1  3 0 2 1 -1 75  0 0 1.53424 1.28761 1.73696 1.99426 2.13155 2.17654 2.15222 2.07123 1.95747 1.83345 1.70526 1.5764 6.12929 3.6776 5.94593 0 0 1.12483 1.35079 1.79497 2.03136 2.14613 2.17236 2.13443 2.0447 1.92603 1.7997 1.67094 1.54264 5.98467 3.58336 5.78307
1975  7 1  3 0 2 1 -1 75  0 0 1.38187 1.02408 1.64637 2.02738 2.1756 2.21849 2.19096 2.10634 1.98899 1.86176 1.73071 1.59929 6.21395 3.72619 6.02254 0 0 0 0 3.75651 2.06432 2.19017 2.21405 2.17283 2.07949 1.95729 1.82782 1.69626 1.56544 6.06927 3.63205 5.85999
1976  7 1  3 0 2 1 -1 75  0 0 1.41322 0.876513 1.32415 1.91394 2.22108 2.27751 2.24471 2.15404 2.031 1.89883 1.76352 1.62841 6.31909 3.78517 6.11434 0 0 0 0 3.22087 1.9452 2.23491 2.2726 2.22605 2.12676 1.99902 1.86474 1.72905 1.59463 6.17528 9.64536 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 3.8448 1.55287 2.07893 2.31811 2.30303 2.20452 2.07372 1.9351 1.79452 1.65509 6.40957 3.83282 6.18576 0 0 0.935893 0.886639 1.18709 1.57664 2.0885 2.31199 2.28363 2.17673 2.04152 1.90107 1.7603 1.62171 6.26847 3.74178 6.02918
1978  7 1  3 0 2 1 -1 75  0 0 2.50388 0.801272 1.106 1.36202 1.70057 2.15261 2.33197 2.25612 2.11638 1.9694 1.82225 1.67767 6.4772 3.86343 6.22694 0 0 1.22897 0.840429 1.14029 1.3842 1.70708 2.14419 2.31138 2.22768 2.08397 1.93558 1.78856 1.64506 6.34096 3.77627 6.07768
1979  7 1  3 0 2 1 -1 75  1.16521 0.989684 0.985377 0.943394 1.05723 1.29413 1.4892 1.76171 2.13451 2.25293 2.14203 1.98756 1.8332 1.68343 6.47064 10.0317 0 0 0 2.12148 0.992185 1.09044 1.31421 1.49556 1.75378 2.11376 2.22401 2.10962 1.95431 1.80054 1.65217 6.34252 3.76458 6.04888
1980  7 1  3 0 2 1 -1 75  0 1.7466 1.74682 1.56344 1.26892 1.24759 1.39707 1.53376 1.74231 2.02771 2.10156 1.98172 1.82245 1.66743 6.36765 9.80299 0 0 0 0 4.43411 1.31208 1.26742 1.40189 1.52697 1.72475 2.00082 2.07003 1.94966 1.79156 1.63836 6.25214 3.69278 5.91942
1981  7 1  3 0 2 1 -1 75  0 1.63037 1.45207 2.61462 2.16149 1.52525 1.35658 1.41952 1.50333 1.64726 1.85572 1.90265 1.78333 1.62702 6.15494 3.60938 5.7685 0 0 2.22238 2.74372 2.24096 1.55237 1.36137 1.41216 1.48812 1.62548 1.82832 1.87328 1.75524 1.60121 6.05754 3.55196 5.67388
1982  7 1  3 0 2 1 -1 75  0 1.92498 1.13788 2.11614 3.38367 2.63554 1.68413 1.38504 1.37229 1.40702 1.50178 1.65185 1.6763 1.56395 5.86297 3.40056 5.40581 0 0 0 0 7.60185 2.68526 1.69188 1.37755 1.35756 1.38843 1.48026 1.62775 1.6521 1.54192 5.78637 8.69915 0
1983  7 1  3 0 2 1 -1 75  0 0 0 5.36362 2.69318 3.83528 2.90358 1.73989 1.33965 1.26499 1.26735 1.32957 1.43168 1.43951 5.50836 3.15357 4.97873 0 0 2.18592 1.79796 2.75251 3.87763 2.91571 1.73109 1.32467 1.2477 1.24934 1.31119 1.41292 1.4218 5.45239 3.12795 4.94225
1984  7 1  3 0 2 1 -1 75  0 0 0 6.3629 2.23823 3.03659 3.93405 2.93385 1.69058 1.22854 1.11638 1.10263 1.14041 1.20404 5.03478 2.86469 4.48261 0 0 2.83239 1.89114 2.2937 3.05615 3.92495 2.91454 1.67108 1.21105 1.10028 1.08785 1.12686 1.19151 4.99932 2.85453 4.47437
1985  7 1  3 0 2 1 -1 75  0 0 0 7.50717 2.36873 2.54313 3.1069 3.72425 2.75408 1.54836 1.07475 0.949897 0.925774 0.944038 4.38747 2.54088 3.93048 0 0 0 5.97458 2.43065 2.56284 3.09009 3.68192 2.71676 1.52489 1.05865 0.93731 0.9156 0.935939 4.37187 2.54494 3.94806
1986  7 1  3 0 2 1 -1 75  0 3.08926 2.33957 2.92753 3.065 2.69315 2.5877 2.91474 3.27411 2.40338 1.33669 0.897847 0.773684 0.744044 3.59734 2.18214 3.32593 0 0 0 0 10.2328 2.71631 2.57397 2.87561 3.21971 2.36223 1.31499 0.885592 0.765701 0.738831 3.59868 5.56345 0
1987  7 1  3 0 2 1 -1 75  0 3.0264 2.49942 3.48365 3.73118 3.42183 2.73946 2.41624 2.53966 2.68335 1.96944 1.10245 0.719599 0.604146 2.80356 4.52926 0 0 0 3.84014 3.63201 3.81729 3.44588 2.72473 2.38205 2.49438 2.63363 1.93462 1.08595 0.71213 0.60075 2.8168 1.83949 2.77049
1988  7 1  3 0 2 1 -1 75  1.86682 1.3299 1.94789 3.60091 4.40841 4.1257 3.419 2.55442 2.10736 2.08145 2.08394 1.54005 0.876976 0.558316 2.13288 3.62624 0 0 1.42786 2.05587 3.7354 4.50052 4.14388 3.39308 2.51569 2.06708 2.0417 2.04708 1.51583 0.866686 0.555239 2.15185 3.72197 0
1989  7 1  3 0 2 1 -1 75  0 2.95959 2.40487 2.85413 4.37386 4.79559 4.07188 3.12533 2.2161 1.72942 1.62681 1.56304 1.16072 0.67489 1.67761 2.8415 0 0 0 4.16409 2.95835 4.44005 4.80438 4.03109 3.07046 2.16973 1.69343 1.59774 1.53993 1.14688 0.670134 1.69678 2.94163 0
1990  7 1  3 0 2 1 -1 75  0 0 5.36129 3.59173 3.5864 4.59989 4.66817 3.69739 2.67714 1.82151 1.36372 1.2343 1.14352 0.854233 1.51791 2.1947 0 0 1.03411 2.69505 3.7418 3.6471 4.58508 4.60896 3.62403 2.61452 1.77905 1.33652 1.21608 1.13165 0.848456 1.53418 2.2915 0
1991  7 1  3 0 2 1 -1 75  0 0 5.42043 3.55583 4.48838 3.92666 4.35122 4.16896 3.1466 2.17363 1.43846 1.04919 0.917563 0.824021 1.57609 1.67969 0 0 1.30225 1.74543 3.67503 4.57469 3.92489 4.27962 4.07555 3.06603 2.11739 1.40522 1.03106 0.908019 0.819901 1.59013 1.76809 0
1992  7 1  3 0 2 1 -1 75  0 0 8.2386 2.29768 4.04536 4.65794 3.76256 3.73203 3.42076 2.4954 1.67034 1.09232 0.782817 0.661953 1.59506 0.485732 0.783653 0 0 3.97173 2.37837 4.09414 4.65852 3.71034 3.63878 3.32441 2.42434 1.62633 1.06869 0.771755 0.65794 1.6078 1.34465 0
1993  7 1  3 0 2 1 -1 75  0 0 10.5184 2.89646 2.68046 3.93319 4.26427 3.2922 3.00822 2.65306 1.89912 1.25286 0.814351 3.05797 0 0 0 0 0 5.16067 3.02961 2.72795 3.91435 4.20497 3.21617 2.91833 2.57092 1.8434 1.22081 0.798433 0.569298 2.55459 0 0
1994  7 1  3 0 2 1 -1 75  0 0 11.2131 3.42935 3.29027 2.67401 3.36863 3.49241 2.62493 2.24016 1.9161 1.36336 0.891155 0.576312 1.33867 0.294327 0.443425 0 0 0 11.6035 3.37233 2.67914 3.31149 3.41032 2.54922 2.1684 1.85589 1.3246 3.56884 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1.9961 2.43011 5.82499 4.94735 3.81426 3.20485 2.39456 2.67018 2.66898 1.97265 1.59604 1.33524 0.949374 2.40095 0 0 0 0 0 0 13.997 3.90671 3.22532 2.36885 2.60388 2.59093 1.91008 1.54472 1.29491 0.924418 0.604807 1.20321 0.272117 0.347455
1996  7 1  3 0 2 1 -1 75  0 0 6.22531 7.35344 5.82476 3.79822 2.87368 2.03425 2.05771 1.9848 1.46182 1.14142 0.932972 0.664517 1.1673 0.484417 0 0 1.35765 3.6198 7.67207 6.00307 3.82576 2.85107 1.994 1.99735 1.92127 1.41436 1.10613 0.906922 0.648981 1.67696 0 0
1997  7 1  3 0 2 1 -1 75  0 2.1004 1.97842 4.26249 8.13555 6.16671 3.59425 2.50882 1.71592 1.6032 1.50342 1.11604 0.850086 0.679898 1.68357 0 0 0 0 0 7.5702 8.31119 6.24085 3.57289 2.46424 1.67175 1.5524 1.45378 1.08015 0.825171 2.35857 0 0 0
1998  7 1  3 0 2 1 -1 75  1.1105 0.688786 1.54682 2.68827 4.8056 8.18477 6.14156 3.35317 2.19276 1.46513 1.28697 1.18404 0.88993 0.665647 1.81877 0 0 0 0 2.37633 2.80198 4.87396 8.21788 6.12498 3.30188 2.13978 1.42217 1.24486 1.14489 0.862001 0.647167 1.39079 0.428635 0
1999  7 1  3 0 2 1 -1 75  1.192 0.694158 1.12857 2.09219 3.25554 5.06521 7.82934 5.88195 3.10204 1.91695 1.26528 1.06254 0.956018 0.726991 1.99043 0 0 0 0.745776 1.19764 2.17579 3.32991 5.0661 7.76027 5.80277 3.03457 1.86328 1.2259 1.02784 0.925212 0.705177 1.98057 0 0
2000  7 1  3 0 2 1 -1 75  0 2.05965 1.18068 1.61276 2.5324 3.56913 5.07281 7.23561 5.46698 2.83536 1.67526 1.10067 0.891861 0.785383 2.23539 0 0 0 0 2.10976 1.68326 2.58671 3.59167 5.02012 7.10872 5.35385 2.76204 1.62506 1.06591 0.863518 0.76125 2.21418 0 0
2001  7 1  3 0 2 1 -1 75  0 2.29525 1.35383 1.7257 2.03394 2.77876 3.64567 4.87148 6.50093 4.93527 2.55477 1.46632 0.959946 0.753139 2.50364 0 0 0 0 2.3254 1.80704 2.08562 2.79529 3.62336 4.785 6.35134 4.81141 2.48292 1.42153 0.930144 0.73033 2.47194 0 0
1977  7 2  3 0 2 1 -1 75  2.1178 1.31879 1.63536 1.89853 1.96209 2.08326 2.39436 2.41484 2.21 1.98757 1.78509 1.60905 1.45338 1.31345 4.91184 7.37298 0 0 1.40155 1.68093 1.91559 1.96657 2.08289 2.39266 2.41345 2.20954 1.98802 1.78624 1.61067 1.45528 1.31548 4.92145 7.3913 0
1980  7 2  3 0 2 1 -1 75  2.29942 2.65818 4.89432 3.5114 2.00628 1.50316 1.4057 1.37372 1.4245 1.56283 1.55759 1.42192 1.27375 1.14181 4.21027 2.41424 3.80926 0 2.77368 5.01198 3.55826 2.01053 1.50019 1.40197 1.37084 1.42314 1.56318 1.55964 1.42536 1.27815 1.14675 4.23523 2.43196 3.84079
1983  7 2  3 0 2 1 -1 75  3.77128 2.76445 3.05476 3.20009 3.59022 4.31712 2.96943 1.54729 1.06016 0.930086 0.888182 0.898237 0.94319 0.931998 3.44952 4.88818 0 0 2.93641 3.13912 3.21694 3.57576 4.28702 2.94803 1.53772 1.05619 0.929359 0.890128 0.90291 0.95045 0.941034 3.49819 1.9505 3.03605
1986  7 2  3 0 2 1 -1 75  3.37441 3.96979 5.23756 4.85818 3.88072 2.70989 2.14091 2.10272 2.1989 1.5562 0.824354 0.526432 0.438501 0.412288 1.92417 1.13495 1.70058 0 0 9.54231 4.87796 3.85639 2.68063 2.1149 2.08056 2.18025 1.54639 0.822811 0.528758 0.442989 0.418548 1.97254 2.9444 0
1989  7 2  3 0 2 1 -1 75  2.79173 3.90118 5.29606 4.37526 4.88604 4.5254 3.28355 2.23467 1.44632 1.04293 0.927968 0.864858 0.631816 2.60187 0 0 0 0 4.08573 5.4202 4.38116 4.82132 4.44774 3.22211 2.19467 1.4251 1.03382 0.926454 0.868146 3.36392 0 0 0 0
1992  7 2  3 0 2 1 -1 75  6.25099 4.17836 4.71693 3.49403 4.39582 4.40296 3.02637 2.58409 2.20895 1.52219 0.971226 0.611366 0.423572 0.349322 1.44022 0 0 0 4.41567 4.84364 3.50171 4.33024 4.31853 2.9598 2.52496 2.16222 1.49582 0.959867 0.608781 0.42601 0.354835 1.5215 0 0
1995  7 2  3 0 2 1 -1 75  0 7.59984 10.0569 7.01017 3.73743 2.49188 1.54257 1.46158 1.376 0.960765 0.733366 0.594539 0.41326 0.263269 0.722118 0 0 0 4.5815 10.2436 7.07341 3.71242 2.4563 1.51399 1.42994 1.34584 0.941254 0.721218 0.587185 0.410428 0.263392 0.755922 0 0
1998  7 2  3 0 2 1 -1 75  2.22499 1.82188 3.18195 4.29926 5.34096 7.87065 5.49129 2.60895 1.53275 0.951577 0.783821 0.700904 0.515106 1.36539 0 0 0 0 1.92094 3.24116 4.31109 5.295 7.76825 5.41215 2.56541 1.50516 0.934587 0.77074 0.690336 1.8957 0 0 0 0
2001  7 2  3 0 2 1 -1 75  3.26344 2.47454 3.37356 3.22436 2.77822 2.93658 3.32899 3.89842 4.88508 3.60971 1.78677 0.978791 0.619978 0.473231 1.51601 0 0 0 2.61546 3.45792 3.24685 2.76872 2.91042 3.29113 3.84643 4.81556 3.55789 1.76153 0.965788 0.612809 0.46899 1.53283 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes: 0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.0486 39.4392 44.5447 48.7788 52.2932 55.2405 57.7409 59.8812 61.7237 63.315 64.6916 65.8835 66.9154 67.8089 69.6528 71.6512 73.0004 32.5012 40.0183 45.1247 49.2861 52.6878 55.5002 57.8514 59.8331 61.5118 62.9379 64.1509 65.1835 66.0625 66.8108 68.3023 69.8365 70.7628
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.3372 39.4392 44.5447 48.7788 52.2932 55.2405 57.7409 59.8812 61.7237 63.315 64.6916 65.8835 66.9154 67.8089 69.6311 71.6075 72.9654 32.7929 40.0183 45.1247 49.2861 52.6878 55.5002 57.8514 59.8331 61.5118 62.9379 64.1509 65.1835 66.0625 66.8108 68.2933 69.8073 70.7428
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.5663 39.3385 43.2304 46.9122 50.3054 53.334 55.9893 58.2976 60.2969 62.0254 63.5187 64.8082 65.9214 66.8824 68.8445 70.9785 72.4044 34.9359 39.7594 43.7073 47.3843 50.7027 53.6069 56.1078 58.2455 60.0668 61.6159 62.9326 64.0513 65.0016 65.8087 67.4032 69.0508 70.0374
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.6376 39.3385 43.2304 46.9122 50.3054 53.334 55.9893 58.2976 60.2969 62.0254 63.5187 64.8082 65.9214 66.8824 68.8217 70.9321 72.3674 35.0059 39.7594 43.7073 47.3843 50.7027 53.6069 56.1078 58.2455 60.0668 61.6159 62.9326 64.0513 65.0016 65.8087 67.3938 69.0196 70.0161
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999
