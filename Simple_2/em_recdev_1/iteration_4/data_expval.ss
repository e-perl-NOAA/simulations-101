#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:40:22 2023
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
1972 1 1 198.261 0.01
1973 1 1 996.734 0.01
1974 1 1 982.427 0.01
1975 1 1 2025.52 0.01
1976 1 1 3025.02 0.01
1977 1 1 3921.89 0.01
1978 1 1 4859.54 0.01
1979 1 1 5993.56 0.01
1980 1 1 8088.49 0.01
1981 1 1 10080.8 0.01
1982 1 1 10145.9 0.01
1983 1 1 9998.23 0.01
1984 1 1 9899.75 0.01
1985 1 1 9823 0.01
1986 1 1 10023.9 0.01
1987 1 1 9975.82 0.01
1988 1 1 8913.53 0.01
1989 1 1 7973.64 0.01
1990 1 1 7046.45 0.01
1991 1 1 5912.57 0.01
1992 1 1 4046.74 0.01
1993 1 1 3976.7 0.01
1994 1 1 3954.15 0.01
1995 1 1 4020.86 0.01
1996 1 1 4025.03 0.01
1997 1 1 3080.51 0.01
1998 1 1 2986.28 0.01
1999 1 1 2949.25 0.01
2000 1 1 2959.01 0.01
2001 1 1 3013.56 0.01
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
1977 7 2 209909 0.3 #_orig_obs: 312723 SURVEY1
1980 7 2 182562 0.3 #_orig_obs: 313649 SURVEY1
1983 7 2 139388 0.3 #_orig_obs: 99397.1 SURVEY1
1986 7 2 107896 0.3 #_orig_obs: 58417.5 SURVEY1
1989 7 2 74832.4 0.3 #_orig_obs: 96655.4 SURVEY1
1992 7 2 54330.6 0.3 #_orig_obs: 53644.6 SURVEY1
1995 7 2 43652.3 0.3 #_orig_obs: 27557 SURVEY1
1998 7 2 42640 0.3 #_orig_obs: 49622.8 SURVEY1
2001 7 2 43998.3 0.3 #_orig_obs: 47520.6 SURVEY1
1990 7 3 3.98829 0.7 #_orig_obs: 2.71907 SURVEY2
1991 7 3 5.64205 0.7 #_orig_obs: 8.14933 SURVEY2
1992 7 3 3.68005 0.7 #_orig_obs: 1.53197 SURVEY2
1993 7 3 7.98487 0.7 #_orig_obs: 7.96503 SURVEY2
1994 7 3 17.0431 0.7 #_orig_obs: 7.35974 SURVEY2
1995 7 3 7.02485 0.7 #_orig_obs: 6.98065 SURVEY2
1996 7 3 2.89342 0.7 #_orig_obs: 1.1361 SURVEY2
1997 7 3 9.80583 0.7 #_orig_obs: 33.473 SURVEY2
1998 7 3 10.035 0.7 #_orig_obs: 14.7904 SURVEY2
1999 7 3 4.11835 0.7 #_orig_obs: 6.48208 SURVEY2
2000 7 3 3.56809 0.7 #_orig_obs: 3.23987 SURVEY2
2001 7 3 7.6481 0.7 #_orig_obs: 15.4377 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3.60301 1.21044 1.54047 1.9281 2.37073 2.85922 3.37622 3.89362 4.37029 4.75315 9.99552 9.19121 6.8511 6.73594 0 0 0 0 0 0 0 0 0 0 2.64456 0.948056 1.23424 1.58566 2.00591 2.49506 3.04448 3.63198 4.21728 4.74002 5.12516 10.5035 9.06953 6.14667 4.92891 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3.44312 1.21429 1.54528 1.934 2.37784 2.86763 3.38597 3.90466 4.38251 4.76627 10.0227 9.2159 6.86935 4.04477 2.70901 0 0 0 0 0 0 0 0 0 0 3.42426 1.23816 1.59061 2.01204 2.50254 3.05342 3.64245 4.22923 4.75327 5.13933 10.5322 9.09401 6.16314 4.94205 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7.9745 2.38901 2.88009 3.39948 3.91901 4.3974 4.78137 10.0519 9.24056 6.88677 6.77013 0 0 0 0 0 0 0 0 0 0 0 0 0 6.06489 2.02143 2.51413 3.06655 3.65686 4.24468 4.7694 5.15569 10.5633 9.11902 6.17934 3.21563 1.73895 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3.12784 1.12437 1.50064 1.92783 2.39664 2.89966 3.42437 3.94628 4.42577 4.81002 10.1067 9.28656 6.91906 6.80031 0 0 0 0 0 0 0 0 0 1.73732 0.569255 0.810905 1.13444 1.53383 1.99797 2.51802 3.08545 3.68277 4.27376 4.79994 5.18654 10.6214 9.16544 6.20925 3.2307 1.7469 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1.99579 0.613835 0.764698 1.01155 1.36374 1.80823 2.3194 2.86781 3.42604 3.96645 4.45351 4.83946 10.1614 9.32972 6.94789 6.82603 0 0 0 0 0 0 0 0 0 0 0 3.39351 1.0299 1.39518 1.86949 2.42967 3.04465 3.67956 4.29268 4.8286 5.2178 10.6795 9.20951 6.23652 4.99784 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2.04889 0.734344 0.922077 1.11974 1.36989 1.72013 2.18614 2.74246 3.33964 3.92344 4.442 4.84414 10.18 9.33928 6.94929 4.08741 2.73525 0 0 0 0 0 0 0 1.47821 0.540184 0.736534 0.941287 1.15782 1.42602 1.7988 2.30191 2.91553 3.58561 4.24278 4.8128 5.2207 10.6986 9.22121 6.24014 4.99782 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3.8506 1.20149 1.50588 1.83471 2.21693 2.68346 3.23152 3.81489 4.36127 4.7951 10.1367 9.31343 6.92498 4.07001 2.72186 0 0 0 0 0 0 1.28524 0.411178 0.528135 0.696392 0.928662 1.22095 1.55329 1.92119 2.35072 2.87339 3.48633 4.13521 4.72891 5.16788 10.6518 9.19779 6.22138 4.97868 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1.66383 0.666591 0.800044 0.974039 1.21636 1.53049 1.90186 2.31268 2.75749 3.24196 3.75957 4.27002 4.70169 10.0022 9.2346 6.87064 4.03538 2.69637 0 0 0 0 0 0 0 0 2.30149 0.818189 0.996098 1.24451 1.57437 1.97698 2.43735 2.9474 3.50448 4.08918 4.64373 5.0765 10.5167 9.12237 6.17594 4.93894 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5.42618 1.67768 1.99811 2.38448 2.82533 3.29852 3.78084 4.2417 4.632 9.82543 9.0966 6.78197 3.98355 2.65944 0 0 0 0 0 0 0 0 0 2.78912 1.18375 1.45091 1.7413 2.08868 2.51416 3.01168 3.55536 4.10778 4.61668 5.01011 10.3466 8.99272 6.1003 3.16934 1.70963 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 1.77957 0.778712 1.12259 1.50137 1.87855 2.23924 2.59732 2.97818 3.39322 3.82738 4.2431 4.5886 9.64175 8.89141 6.63363 3.89867 2.60131 0 0 0 0 0 0 0 0 0 2.4999 1.11308 1.51404 1.92601 2.3306 2.7391 3.1771 3.65572 4.1527 4.61323 4.96286 10.1651 8.80194 5.97361 4.78043 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 0 2.88604 0.886787 1.30125 1.7957 2.31116 2.79459 3.22474 3.61233 3.97505 4.3101 4.58457 9.4852 8.65741 6.43925 6.30588 0 0 0 0 0 0 0 1.60528 0.314983 0.398127 0.577885 0.87416 1.29454 1.81172 2.3697 2.91301 3.41397 3.87474 4.30232 4.67931 4.95511 10.0055 8.58396 5.80898 4.64666 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 4.07731 0.866304 1.115 1.53315 2.08205 2.68681 3.26403 3.7554 4.14277 4.4327 4.62729 9.34787 8.37569 12.2176 0 0 0 0 0 0 0 0 0 0 3.31158 0.81282 0.899474 1.13609 1.55488 2.12564 2.7764 3.42075 3.99015 4.45023 4.78821 4.98756 9.85789 8.31692 5.58896 4.45849 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 7.84404 1.67954 1.97697 2.44683 3.02675 3.60822 4.09603 4.43882 4.62348 9.17406 8.02716 5.84591 5.66901 0 0 0 0 0 0 0 0 0 0 0 6.32961 1.60292 1.7705 2.07294 2.55846 3.1772 3.81815 4.37069 4.76146 4.9555 9.65153 7.97766 5.29693 4.19963 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2.85974 0.97696 1.30221 1.67016 2.0164 2.28308 2.48103 2.69223 2.9997 3.41314 3.85943 4.23434 4.45844 8.84704 7.61415 5.45224 5.2252 0 0 0 0 0 0 0 0 0 3.79766 1.2976 1.67998 2.0579 2.36975 2.6134 2.86172 3.20014 3.64655 4.12924 4.53256 4.75793 9.2726 7.56374 4.95005 3.88371 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 5.38158 1.73535 2.15044 2.58723 2.96584 3.24065 3.43305 3.60891 3.81459 4.0325 4.19381 8.31285 7.11255 5.02251 4.73817 0 0 0 0 0 0 0 0 0 3.92558 1.41856 1.75625 2.17973 2.64186 3.06434 3.39518 3.64458 3.86807 4.10581 4.33535 4.48076 8.69678 7.0563 4.56591 3.5349 0 0
 1986 7 1 3 0 125  0 0 0 0 0 1.38432 0.812324 1.17125 1.57365 1.99049 2.40761 2.82815 3.24403 3.61138 3.87561 4.01972 4.07549 4.08653 4.06508 7.78245 6.55078 4.57761 4.24905 0 0 0 0 0 0 0 1.32427 0.786585 1.15128 1.56998 2.01157 2.45635 2.90239 3.34488 3.74846 4.06108 4.25761 4.35555 4.38443 4.34659 8.14856 6.49704 4.1652 3.18262 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 1.67317 0.921414 1.37887 1.93984 2.54705 3.12749 3.62612 4.01578 4.28345 4.41945 4.42492 4.32138 4.14074 7.51049 6.05067 4.151 3.79026 0 0 0 0 0 0 0 0 0 2.50271 1.34825 1.92095 2.55709 3.1806 3.72741 4.16263 4.4712 4.64436 4.68057 4.59209 4.39894 7.85138 6.00636 3.78261 2.85078 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1.31478 0.437981 0.675808 1.04781 1.57847 2.25591 3.01418 3.74585 4.34041 4.72633 4.88771 4.85029 4.65785 4.35593 7.54502 5.73877 3.8038 3.39537 0 0 0 0 0 0 0 0 1.72742 0.655584 1.02007 1.54811 2.23546 3.02227 3.80116 4.45411 4.89735 5.10409 5.09395 4.90752 4.58692 7.84193 5.6937 6.03809 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1.7139 0.505741 0.646656 0.878273 1.25622 1.82221 2.56625 3.41246 4.22925 4.87075 5.23346 5.2911 5.08728 4.69991 7.86818 5.66272 3.58671 3.09284 0 0 0 0 0 0 0 0 2.21223 0.648675 0.875698 1.24607 1.80891 2.56304 3.43777 4.3009 4.99863 5.41405 5.50731 5.31302 4.90597 8.1168 5.60072 3.27865 2.34764 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3.36103 1.08003 1.29737 1.65623 2.20237 2.9329 3.77216 4.57528 5.17771 5.46227 5.40047 5.04708 8.361 5.77184 3.48458 2.86809 0 0 0 0 0 0 0 1.60406 0.770575 0.947277 1.10951 1.32749 1.68367 2.23159 2.97399 3.83924 4.68099 5.32555 5.64231 5.59081 5.21967 8.55139 5.67938 3.184 2.18809 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 3.1501 1.35562 1.68224 1.9881 2.3325 2.79828 3.41826 4.13178 4.79894 5.25901 5.39943 5.19763 8.77675 5.98207 6.18461 0 0 0 0 0 0 0 0.962864 0.436504 0.671765 0.99132 1.35302 1.70891 2.04605 2.41369 2.89431 3.5287 4.26183 4.95109 5.42659 5.56556 5.33917 8.90195 5.84642 5.24493 0 0 0
 1992 7 1 3 0 125  0 0 0 0 0 0 2.05294 0.827787 1.19991 1.66992 2.18389 2.67558 3.12162 3.55753 4.02907 4.52382 4.94974 5.18016 5.12433 8.95813 6.21837 6.19137 0 0 0 0 0 0 0 0 0 0 2.82691 1.17825 1.65587 2.19607 2.73178 3.22835 3.70809 4.20961 4.71924 5.14416 5.35477 5.25813 9.03741 6.03364 5.25355 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 2.33316 0.816317 1.0785 1.45927 1.97713 2.59022 3.21568 3.77466 4.23212 4.59486 4.86723 5.01419 4.97251 8.89512 6.36517 6.29317 0 0 0 0 0 0 0 0 0 0 3.11273 1.07962 1.45685 1.97801 2.61185 3.27907 3.89475 4.4092 4.81208 5.0955 5.22014 5.12575 8.97009 6.14392 3.30114 2.02998 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6.79699 1.86414 2.38557 2.99769 3.63829 4.21232 4.64135 4.89174 4.96144 4.85175 8.64987 6.29286 3.67332 2.61486 0 0 0 0 0 0 0 0 0 4.2493 1.09813 1.45173 1.88705 2.4239 3.05843 3.7348 4.35659 4.83276 5.1113 5.17523 5.02123 8.748 6.06458 3.30079 2.01401 0 0
 1995 7 1 3 0 125  0 0 0 2.35654 0.908196 0.904369 0.942249 1.04276 1.20462 1.46143 1.83259 2.30061 2.83683 3.40975 3.96829 4.43742 4.74207 4.83732 4.71753 8.33702 12.1708 0 0 0 0 0 0 0 0 3.23351 0.940918 0.97253 1.07227 1.23367 1.48676 1.86069 2.34514 2.90895 3.51539 4.10973 4.61235 4.93907 5.03279 4.87912 8.44504 5.84171 5.15993 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 3.74936 1.74254 1.9422 1.99328 2.02672 2.15028 2.40023 2.76899 3.21889 3.68752 4.10227 4.39393 4.50825 4.41845 7.81594 5.65754 5.72591 0 0 0 0 0 0 0 0 0 5.37213 2.01209 2.09686 2.13286 2.24669 2.49169 2.86656 3.33522 3.83165 4.27358 4.58026 4.68793 4.56459 7.91412 5.46142 2.9945 1.83556 0 0
 1997 7 1 3 0 125  0 0 0 1.22579 0.528507 0.910308 1.46007 2.11005 2.72153 3.14403 3.31326 3.31019 3.29316 3.37332 3.56121 3.79517 3.98979 4.07028 3.99084 7.0839 10.3405 0 0 0 0 0 0 0 0 0 2.55617 1.4037 2.07105 2.73177 3.22724 3.46602 3.50105 3.48823 3.55895 3.74185 3.97786 4.17257 4.23946 4.12513 7.17083 4.95878 4.38749 0 0 0
 1998 7 1 3 0 125  0 0 0 0 2.30979 0.609908 0.862398 1.37023 2.11385 2.97999 3.77286 4.29411 4.46069 4.35321 4.14337 3.9679 3.85939 3.76766 3.62092 6.38192 4.63656 4.71007 0 0 0 0 0 0 0 2.29787 0.612835 0.835303 1.31523 2.04974 2.93928 3.79412 4.40263 4.65193 4.59558 4.39833 4.20867 4.07329 3.94673 3.75443 6.46645 4.47356 2.45833 1.51083 0 0
 1999 7 1 3 0 125  0 0 0 0 2.26803 0.882803 1.05071 1.26091 1.59763 2.18293 3.02882 3.96961 4.74251 5.13761 5.11108 4.78522 4.34336 3.91411 3.52976 5.9267 4.22382 4.29326 0 0 0 0 0 0 0 0 0 4.17274 1.28254 1.60786 2.16642 2.9991 3.96572 4.80422 5.28233 5.32545 5.03394 4.58677 4.12118 3.68097 6.02743 4.07893 3.61556 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 2.39922 1.23971 1.57113 1.87722 2.2202 2.68923 3.3427 4.13376 4.87724 5.33681 5.37585 5.03237 4.46449 3.83668 5.95193 7.94051 0 0 0 0 0 0 0 0 0 0 3.53068 1.58571 1.91782 2.2752 2.74582 3.3931 4.18482 4.9516 5.45651 5.54344 5.22712 4.65318 3.98753 6.06804 3.85057 2.06921 1.27062 0 0
 2001 7 1 3 0 125  0 0 0 0 0 0 0 0 6.09636 2.46461 2.97379 3.45555 3.96569 4.51645 5.01824 5.31155 5.26964 4.88382 4.26081 6.40678 3.9692 3.74041 0 0 0 0 0 0 0 0 1.86053 0.866565 1.33078 1.89387 2.48339 3.03919 3.55953 4.09018 4.64694 5.15052 5.448 5.40986 5.01805 4.37131 6.49048 3.84957 3.15833 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1.64241 1.41039 1.85829 2.16789 2.38084 2.55777 2.68521 2.74596 2.77806 2.84555 2.98458 3.18329 3.39827 3.58012 3.68776 7.26159 6.27359 8.80268 0 0 0 0 0 0 0 0 0 4.9334 2.17479 2.38724 2.57261 2.72869 2.83242 2.909 3.01728 3.19581 3.43429 3.68361 3.88191 3.97446 7.63237 6.19717 4.04442 3.1563 0 0
 1980 7 2 3 0 125  0 0 0 0 0 1.64027 1.40074 2.05794 2.64918 3.08617 3.32976 3.39922 3.3644 3.30788 3.28641 3.31618 3.38229 3.45524 3.50057 6.85115 5.94054 4.27644 2.46266 1.62063 0 0 0 0 0 0 0 2.95311 1.9843 2.58604 3.06001 3.35784 3.48508 3.50165 3.48842 3.50589 3.5727 3.66976 3.75666 3.7861 7.22479 5.88228 3.85176 3.00594 0 0
 1983 7 2 3 0 125  0 0 0 0 1.86027 1.986 3.02219 3.69801 3.80059 3.48075 3.03601 2.72859 2.66644 2.79708 2.99777 3.16483 3.24851 3.24378 3.16511 5.85117 4.81223 6.57592 0 0 0 0 0 0 0 1.82417 1.94015 2.95954 3.67713 3.85868 3.60777 3.19224 2.87637 2.79588 2.92467 3.14673 3.34891 3.4663 3.47954 3.39242 6.15701 10.2172 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 1.32376 1.79821 2.9682 3.88041 4.3397 4.43534 4.32734 4.14667 3.9488 3.72568 3.46379 3.18114 2.9158 2.69354 2.50965 4.47657 3.5412 2.38702 2.15896 0 0 0 0 0 0 0 2.98814 2.87413 3.8142 4.32954 4.48228 4.41491 4.25548 4.0715 3.86703 3.62946 3.36932 3.11612 2.8899 2.6835 4.68829 3.51313 3.79129 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 3.49498 2.00095 2.31949 2.62187 3.02977 3.54468 4.07223 4.49559 4.72219 4.71155 4.48279 4.09746 3.6296 3.14078 4.90307 3.31396 3.72466 0 0 0 0 0 0 0.862154 1.06961 1.59515 2.01785 2.32674 2.61419 3.00526 3.51874 4.06705 4.52882 4.80207 4.83514 4.63739 4.26484 3.79065 3.27851 11.4802 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 3.00397 2.18766 2.89565 3.4939 3.9291 4.14503 4.14294 4.01303 3.87616 3.80319 3.78144 3.74097 3.60751 3.34306 5.45052 6.93209 0 0 0 0 0 0 0 0 0 2.98003 2.14279 2.83026 3.43081 3.89601 4.16809 4.22991 4.1502 4.0402 3.97362 3.94482 3.88794 3.72916 3.43041 5.49966 3.45031 2.86954 0 0 0
 1995 7 2 3 0 125  0 0 0 0 4.37355 3.06545 3.42483 3.43638 3.3042 3.2388 3.27581 3.35466 3.43406 3.49816 3.52694 3.49237 3.37428 3.17137 2.89709 4.77363 3.25837 3.13981 0 0 0 0 0 0 0 4.42357 3.18934 3.5349 3.53364 3.38391 3.29492 3.32603 3.41955 3.52133 3.6065 3.65262 3.63002 3.51445 3.29955 2.99639 4.83659 3.14369 2.65323 0 0 0
 1998 7 2 3 0 125  0 0 0 0 2.3358 1.82655 2.76941 3.98964 5.12338 5.83643 5.96096 5.53518 4.77398 3.94875 3.256 2.76101 2.42791 2.18378 1.96593 3.23082 2.20564 2.13854 0 0 0 0 0 0 0 2.36099 1.83533 2.6824 3.82945 4.96794 5.75661 5.99444 5.67496 4.97859 4.16858 3.45636 2.92857 2.56251 2.28761 2.03847 3.27435 2.12859 1.80457 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 3.2089 3.01801 4.14719 4.82902 5.02856 4.89432 4.63957 4.4205 4.26699 4.10761 3.8503 3.45397 2.94959 2.4106 3.38311 3.73758 0 0 0 0 0 0 0 0 0 3.0912 2.89896 4.03662 4.78195 5.06683 5.00193 4.77918 4.55929 4.39028 4.21589 3.9492 3.54587 3.03066 2.47313 3.42785 3.40535 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5.56192 1.96496 2.08856 2.1254 2.09738 2.01608 1.90408 1.78282 1.65789 1.53252 5.95898 3.57595 5.78169 0 0 1.65992 1.43325 1.77256 1.99002 2.09781 2.12148 2.08387 1.99638 1.88087 1.75794 1.63259 1.5076 5.8518 3.50575 5.65993
1972  7 1  3 0 2 1 -1 75  0 0 2.26685 1.38907 1.73774 1.97092 2.09473 2.13153 2.10332 2.0217 1.90933 1.78769 1.66239 1.53665 5.97486 3.58539 5.79687 0 0 1.64057 1.43785 1.77809 1.99605 2.104 2.12761 2.08978 2.00196 1.88608 1.76277 1.63704 1.51168 5.86749 3.51507 5.6749
1973  7 1  3 0 2 1 -1 75  0 0 2.20124 1.39484 1.74737 1.98071 2.10404 2.14008 2.11101 2.02852 1.91535 1.79301 1.66711 1.54085 5.99004 3.59389 5.81006 0 0 0 0 4.70711 2.00589 2.11332 2.13614 2.09747 2.00879 1.89212 1.76813 1.64181 1.51594 5.88295 3.52377 5.68847
1974  7 1  3 0 2 1 -1 75  0 0 0 3.48462 1.75982 1.99966 2.12216 2.15663 2.1258 2.04154 1.92675 1.80304 1.67596 1.54868 6.01815 3.60954 5.83427 0 0 1.2588 1.37076 1.80026 2.0249 2.13138 2.15261 2.11218 2.02178 1.90353 1.77818 1.65071 1.52384 5.91145 3.53973 5.71328
1975  7 1  3 0 2 1 -1 75  0 0 2.30905 1.0729 1.65587 2.01264 2.1444 2.17646 2.14284 2.05594 1.93885 1.81326 1.68467 1.55614 6.04321 3.62255 5.85354 0 0 0 0 4.26923 2.03752 2.15351 2.17228 2.12911 2.03613 1.91566 1.7885 1.65955 1.53146 5.93743 3.55345 5.73385
1976  7 1  3 0 2 1 -1 75  0 0 2.68659 1.12085 1.35399 1.87477 2.1521 2.19623 2.15823 2.06715 1.9467 1.8186 1.68815 1.5583 6.04438 3.61959 5.84557 0 0 0 0 4.29181 1.89562 2.16056 2.19179 2.14436 2.04737 1.92369 1.79414 1.66342 1.53406 5.94087 9.28111 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 5.76326 1.55493 1.98681 2.19453 2.17344 2.077 1.95177 1.82017 1.68729 1.55582 6.02348 3.60138 5.81132 0 0 1.65341 1.591 1.50376 1.57208 1.99251 2.18938 2.15933 2.05722 1.929 1.79615 1.66314 1.53225 5.92349 3.53656 5.6995
1978  7 1  3 0 2 1 -1 75  0 0 2.77159 1.39018 1.93703 1.72891 1.67256 2.01094 2.15966 2.08541 1.95485 1.81847 1.68233 1.54876 5.97963 3.56694 5.74889 0 0 1.93621 1.43553 1.98087 1.75274 1.67749 2.00456 2.14505 2.06555 1.93233 1.79498 1.65891 1.52605 5.88434 3.50566 5.64358
1979  7 1  3 0 2 1 -1 75  0 1.28641 1.35161 1.54648 1.7698 2.19875 1.8928 1.72217 1.96841 2.06009 1.95654 1.8155 1.67481 1.53831 5.91573 9.17651 0 0 0 2.13589 1.60217 1.80656 2.22374 1.90173 1.71698 1.95397 2.04015 1.93423 1.79258 1.65224 1.51665 5.82637 3.46047 5.56238
1980  7 1  3 0 2 1 -1 75  0 1.34304 1.12296 1.95232 2.02685 2.04614 2.32449 1.96073 1.71028 1.86409 1.91507 1.80491 1.66085 1.52052 5.81357 8.96157 0 0 0 0 3.62685 2.07421 2.06716 2.33049 1.95666 1.69807 1.84557 1.8934 1.78279 1.63944 1.50026 5.73222 3.38934 5.43613
1981  7 1  3 0 2 1 -1 75  0 2.02137 0.708237 1.59717 2.49535 2.39414 2.21352 2.34183 1.94997 1.64553 1.72322 1.75007 1.64012 1.49804 5.6801 3.33739 5.33855 0 0 1.23045 1.64367 2.54616 2.42217 2.21769 2.33309 1.93688 1.62969 1.70399 1.72945 1.62025 1.47963 5.60929 3.29494 5.26804
1982  7 1  3 0 2 1 -1 75  0 2.71985 0.88053 1.04122 2.00326 2.84582 2.60281 2.26247 2.25676 1.85762 1.53454 1.55782 1.56409 1.45944 5.49155 3.19568 5.08799 0 0 0 0 5.14887 2.87028 2.60886 2.25291 2.23901 1.83999 1.51805 1.5403 1.54644 1.44316 5.43291 8.19776 0
1983  7 1  3 0 2 1 -1 75  0 0 0 6.14998 1.33925 2.2299 2.95726 2.62715 2.18592 2.06727 1.6955 1.38833 1.36892 1.35896 5.21723 3.00226 4.75153 0 0 3.19957 1.45513 1.36184 2.24114 2.95601 2.61538 2.16783 2.04618 1.67725 1.37334 1.35456 1.34528 5.17105 2.97916 4.71682
1984  7 1  3 0 2 1 -1 75  0 0 0 7.71665 1.91325 1.53337 2.26759 2.85422 2.4923 2.00468 1.81324 1.49255 1.21974 1.1698 4.8255 2.7644 4.34188 0 0 3.17888 2.8554 1.96008 1.54319 2.26056 2.8351 2.47005 1.9835 1.79311 1.4764 1.20759 1.15925 4.79179 2.75091 4.32501
1985  7 1  3 0 2 1 -1 75  0 0 0 7.57946 3.47278 2.27554 1.60842 2.15384 2.5978 2.23695 1.76136 1.54305 1.27269 1.03931 4.29845 2.49784 3.88537 0 0 0 6.1979 3.54092 2.30217 1.60554 2.13535 2.57033 2.21153 1.7413 1.52637 1.26016 1.03063 4.27677 2.49321 3.88494
1986  7 1  3 0 2 1 -1 75  0 2.26065 2.2715 2.7198 3.43076 3.83164 2.44621 1.59171 1.94514 2.2508 1.92741 1.50292 1.27998 1.05709 3.76763 2.22523 3.4189 0 0 0 0 9.91699 3.8578 2.44879 1.57958 1.92228 2.22282 1.90406 1.48646 1.26786 1.0487 3.75588 5.66143 0
1987  7 1  3 0 2 1 -1 75  0 1.67356 1.98738 3.28589 3.48318 3.78406 3.87105 2.44177 1.50601 1.68701 1.88387 1.61772 1.25676 1.04498 3.37843 4.94116 0 0 0 2.89811 3.38461 3.54399 3.79871 3.85925 2.42517 1.48895 1.66513 1.86018 1.59925 1.24497 1.03749 3.37382 1.97545 3.0021
1988  7 1  3 0 2 1 -1 75  1.22162 0.593444 1.33299 2.81302 4.12551 3.96442 3.85502 3.67541 2.30857 1.37502 1.42787 1.55113 1.33665 1.0365 3.11282 4.31577 0 0 0 2.00702 2.88489 4.18865 3.98459 3.83564 3.63921 2.28112 1.35688 1.40976 1.53341 1.32378 1.02928 3.1131 4.3669 0
1989  7 1  3 0 2 1 -1 75  0 2.32902 1.04283 1.91713 3.48154 4.59438 4.1495 3.72116 3.34925 2.10214 1.23107 1.19888 1.2669 1.09771 2.99089 3.78659 0 0 0 1.87822 1.96424 3.52129 4.60682 4.13051 3.67979 3.30245 2.07137 1.21432 1.18529 1.25503 1.08991 2.9937 3.84808 0
1990  7 1  3 0 2 1 -1 75  0 0 3.9289 1.56277 2.40454 3.83739 4.69267 4.07325 3.44024 2.93887 1.85871 1.09002 0.999848 1.02804 2.99509 3.33048 0 0 1.21986 1.44131 1.60652 2.43064 3.83629 4.66101 4.0271 3.38925 2.89192 1.82981 1.07597 0.990643 1.02121 2.99905 3.39859 0
1991  7 1  3 0 2 1 -1 75  0 0 4.28531 2.12068 2.0272 2.67312 3.87401 4.48 3.79272 3.05579 2.50004 1.60706 0.955108 0.826895 2.94271 2.94854 0 0 0 3.21826 2.18904 2.05702 2.67181 3.83968 4.42124 3.73388 3.00491 2.45895 1.5827 0.944207 0.821405 2.94787 3.01983 0
1992  7 1  3 0 2 1 -1 75  0 0 3.83804 2.94033 2.77126 2.31717 2.72583 3.6783 4.08277 3.39474 2.65026 2.10596 1.37563 0.830065 2.77129 1.09883 1.56577 0 0 2.63852 3.02799 2.82252 2.32466 2.7018 3.62466 4.01321 3.33419 2.6043 2.07204 1.35611 0.82194 2.776 2.73582 0
1993  7 1  3 0 2 1 -1 75  0 0 3.80907 2.41448 3.62665 3.16226 2.4227 2.62488 3.34576 3.58359 2.95863 2.27072 1.75884 6.3082 0 0 0 0 0 2.34614 2.4773 3.6833 3.18189 2.4091 2.5871 3.28544 3.51503 2.90296 2.23156 1.73196 1.1523 5.21017 0 0
1994  7 1  3 0 2 1 -1 75  0 0 5.27915 1.93937 2.91458 3.91773 3.26411 2.36392 2.39743 2.89719 3.01692 2.49398 1.89405 1.43671 2.84244 1.02569 1.23786 0 0 0 4.56385 2.95192 3.93115 3.25225 2.33569 2.35484 2.84023 2.95744 2.44763 8.44387 0 0 0 0
1995  7 1  3 0 2 1 -1 75  3.97075 1.51689 1.60846 2.12942 2.39659 3.104 3.82819 3.10037 2.16716 2.07469 2.39817 2.4506 2.03003 6.7 0 0 0 0 0 0 5.46705 2.43539 3.10913 3.8059 3.0672 2.13254 2.03471 2.35072 2.40394 1.9949 1.50672 3.10286 2.11364 0
1996  7 1  3 0 2 1 -1 75  0 0 8.4295 2.28515 2.54684 2.56471 2.96911 3.41781 2.7184 1.85556 1.69692 1.89025 1.89721 1.5763 3.3378 1.78396 0 0 2.82689 2.76577 2.35671 2.58834 2.57571 2.94905 3.37639 2.67715 1.82215 1.66429 1.855 1.86444 1.55249 5.1561 0 0
1997  7 1  3 0 2 1 -1 75  0 4.37803 4.26224 3.75182 2.73591 2.60701 2.43431 2.59619 2.82525 2.21665 1.49901 1.32637 1.42733 1.41081 4.96592 0 0 0 0 0 10.6604 2.78622 2.61785 2.42227 2.56376 2.78013 2.1776 1.47106 1.3021 1.40324 6.37854 0 0 0
1998  7 1  3 0 2 1 -1 75  2.73496 1.19932 3.24458 5.53885 4.48386 2.86327 2.41789 2.14555 2.15475 2.22962 1.74304 1.18664 1.02229 1.06264 4.69599 0 0 0 0 4.62802 5.71163 4.58029 2.88282 2.40595 2.12117 2.12022 2.1895 1.71056 1.16479 1.00498 1.04678 4.71006 0 0
1999  7 1  3 0 2 1 -1 75  2.83092 1.53787 1.86256 4.05357 6.23707 4.73755 2.77225 2.13346 1.82061 1.73968 1.72596 1.35702 0.936385 0.786452 4.26576 0 0 0 1.61822 1.93776 4.15492 6.34112 4.77881 2.76529 2.1094 1.79248 1.70859 1.69375 1.33185 0.920058 0.774555 4.27607 0 0
2000  7 1  3 0 2 1 -1 75  0 3.81893 2.48616 2.5172 4.47919 6.26168 4.6077 2.55757 1.82578 1.50466 1.38573 1.3326 1.05374 0.738206 3.79515 0 0 0 0 4.58137 2.59063 4.53133 6.28855 4.60029 2.53366 1.79779 1.47807 1.36016 1.30817 1.03515 0.72647 3.80408 0 0
2001  7 1  3 0 2 1 -1 75  0 2.94685 2.9118 3.42328 3.00976 4.48101 5.82511 4.21883 2.27359 1.52389 1.22345 1.09794 1.02585 0.817116 3.45364 0 0 0 0 4.41637 3.53964 3.061 4.48454 5.79565 4.18043 2.24178 1.49708 1.20082 1.07809 1.00814 0.803942 3.46039 0 0
1977  7 2  3 0 2 1 -1 75  2.73703 1.92935 2.52871 3.17577 2.42659 1.93866 2.10824 2.11103 1.9313 1.7376 1.56116 1.40764 1.27177 1.14955 4.30025 6.45714 0 0 2.02651 2.57899 3.19597 2.4324 1.93866 2.10721 2.11023 1.93107 1.73792 1.56191 1.40867 1.27296 1.15081 4.30625 6.46864 0
1980  7 2  3 0 2 1 -1 75  0 2.51846 2.80602 3.95158 3.29197 2.56048 2.49094 1.91858 1.5055 1.53508 1.51659 1.38478 1.24202 1.11455 4.11717 2.36431 3.73324 0 1.30417 2.84588 3.97188 3.29523 2.55716 2.48642 1.91566 1.50447 1.53536 1.51799 1.38709 1.24496 1.11785 4.13385 2.37622 3.75456
1983  7 2  3 0 2 1 -1 75  0 6.37731 4.88235 2.96441 1.82989 2.37507 2.82312 2.30034 1.7384 1.54202 1.21749 0.956725 0.915411 0.892514 3.31573 4.73316 0 0 3.45323 4.97965 2.99393 1.82769 2.36472 2.81049 2.29155 1.73448 1.54104 1.21857 0.959651 0.919961 0.898173 3.3465 1.87389 2.92256
1986  7 2  3 0 2 1 -1 75  2.23468 3.07591 5.06426 4.63253 4.23749 3.98544 2.28931 1.24837 1.36014 1.50613 1.24737 0.93749 0.776004 0.629085 2.1571 1.2371 1.86927 0 0 8.33718 4.6536 4.22064 3.95869 2.27269 1.24042 1.35423 1.50222 1.24679 0.940012 0.780446 0.634276 2.1898 3.18132 0
1989  7 2  3 0 2 1 -1 75  3.19502 2.09873 2.42403 3.17702 4.47419 5.0408 3.99417 3.13378 2.61886 1.57548 0.865378 0.799826 0.827893 4.82281 0 0 0 0 2.20367 2.46907 3.17599 4.44272 4.99342 3.95383 3.10385 2.59685 1.56482 0.863396 0.802161 5.78223 0 0 0 0
1992  7 2  3 0 2 1 -1 75  2.50281 2.10346 3.73292 5.12752 3.94586 2.54911 2.43778 2.9472 3.07633 2.43602 1.80974 1.39259 0.891967 0.524608 3.23184 0 0 0 2.19292 3.78195 5.13296 3.92846 2.52587 2.4097 2.91292 3.04319 2.4143 1.7994 1.38882 0.892193 0.527737 3.33982 0 0
1995  7 2  3 0 2 1 -1 75  0 11.0381 3.5521 3.52563 3.03702 3.03828 3.29614 2.46386 1.56354 1.3748 1.51857 1.51304 1.22832 0.906692 2.92068 0 0 0 4.06104 3.63256 3.5359 3.02443 3.01269 3.26312 2.43778 1.54708 1.3621 1.50747 1.50514 1.22533 0.908007 3.0006 0 0
1998  7 2  3 0 2 1 -1 75  3.556 2.47439 5.68678 8.14333 5.51854 2.73177 1.87378 1.47627 1.34225 1.3172 0.997288 0.653721 0.542658 2.90515 0 0 0 0 2.57198 5.74762 8.15687 5.50206 2.71153 1.85534 9.23547 0 0 0 0 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2.29668 3.01096 5.79178 5.55376 3.58458 3.94261 4.62896 3.1345 1.54413 0.949413 0.723304 0.623915 0.569316 0.446725 1.79593 0 0 0 3.11298 5.87899 5.58092 3.57429 3.91015 4.58514 3.10356 1.52905 0.941177 0.718414 0.62128 0.568098 0.446629 1.83277 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes: 0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.7149 39.2478 44.3902 48.6513 52.1856 55.1452 57.6494 59.7853 61.6167 63.1915 64.548 65.7173 66.7253 67.5943 69.3723 71.2748 72.5256 32.0458 39.6725 44.8148 49.0216 52.4718 55.33 57.7222 59.7394 61.4485 62.9004 64.1356 65.1871 66.0824 66.8447 68.3649 69.9304 70.8783
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.0937 39.2478 44.3902 48.6513 52.1856 55.1452 57.6494 59.7853 61.6166 63.1915 64.548 65.7173 66.7253 67.5943 69.0012 71.2002 72.4997 32.428 39.6725 44.8148 49.0216 52.4718 55.33 57.7222 59.7394 61.4485 62.9004 64.1356 65.1871 66.0824 66.8447 68.0551 69.8728 70.8612
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.7588 39.3578 43.1978 46.879 50.2818 53.3117 55.9574 58.2479 60.2236 61.925 63.3891 64.6486 65.7318 66.6633 68.5507 70.5792 71.9004 35.0253 39.6571 43.5423 47.222 50.5687 53.5049 56.035 58.1984 60.0419 61.6105 62.9442 64.0779 65.0413 65.8599 67.4787 69.154 70.1605
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.8236 39.3578 43.1978 46.879 50.2818 53.3117 55.9574 58.2479 60.2236 61.925 63.3891 64.6486 65.7318 66.6633 68.1524 70.5003 71.873 35.089 39.6571 43.5423 47.222 50.5687 53.5049 56.035 58.1984 60.0419 61.6105 62.9442 64.0779 65.0413 65.8599 67.1452 69.093 70.1423
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
