#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Fri Jul  7 10:56:17 2023
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
 1 1 1 1 0 FISHERY1  # 1
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
1 1 0 0 # FISHERY1
2 1 0 0 # SURVEY1
3 0 0 0 # SURVEY2
#_year month index obs err
1977 7 2 211472 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 178193 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 144538 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 107956 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 71130.7 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 57405.8 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 44433.2 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 47687 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 52077.2 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 2.86205 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 3.1595 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 1.12384 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 5.09631 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 21.5333 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 5.65103 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 3.17028 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 1.68425 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 3.27397 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 4.98067 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 6.86635 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 3.65588 0.7 #_orig_obs: 1.69379 SURVEY2
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
0 # use length composition data (0/1/2) where 2 invokes new comp_comtrol format
# see manual for format of length composition data 
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
0 1e-07 1 0 0 0 1 #_fleet:1_FISHERY1
0 1e-07 1 0 0 0 1 #_fleet:2_SURVEY1
0 1e-07 1 0 0 0 1 #_fleet:3_SURVEY2
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5.66442 1.90626 1.88319 1.98384 2.23805 2.27012 2.09321 1.89725 1.71958 1.55819 5.85413 3.41005 5.42378 0 0 1.58257 1.45106 1.82665 1.90626 1.88319 1.98384 2.23805 2.27012 2.09321 1.89725 1.71958 1.55819 5.85413 3.41005 5.42378
1972  7 1  3 0 2 1 -1 75  0.610097 0.624576 0.936272 1.45655 1.8334 1.9132 1.88994 1.99071 2.24548 2.27751 2.09999 1.9034 1.72515 1.56324 5.87309 3.4211 5.44135 0 0 1.56084 1.45655 1.8334 1.9132 1.88994 1.99071 2.24548 2.27751 2.09999 1.9034 1.72515 1.56324 5.87309 3.4211 5.44135
1973  7 1  3 0 2 1 -1 75  0 0 2.36327 1.45642 1.83714 1.91628 1.89232 1.99205 2.24521 2.276 2.09813 1.90162 1.72353 1.56178 5.86759 3.41789 5.43625 0 0 0 2.84875 1.83714 1.91628 1.89232 1.99205 2.24521 2.276 2.09813 1.90162 1.72353 1.56178 5.86759 3.41789 5.43625
1974  7 1  3 0 2 1 -1 75  0 0 2.71604 1.3927 1.8259 1.90758 1.88237 1.98042 2.23014 2.25781 2.07926 1.88384 1.70731 1.54707 5.81234 3.38571 5.38506 0 0 1.72893 1.3927 1.8259 1.90758 1.88237 1.98042 2.23014 2.25781 2.07926 1.88384 1.70731 1.54707 5.81234 3.38571 5.38506
1975  7 1  3 0 2 1 -1 75  0 0 2.84379 1.24044 1.70779 1.9174 1.90224 1.99865 2.24768 2.27297 2.0904 1.89197 1.71402 1.55303 5.83467 3.39871 5.40575 0 0 0 0 4.75299 1.9174 1.90224 1.99865 2.24768 2.27297 2.0904 1.89197 1.71402 1.55303 5.83467 3.39871 5.40575
1976  7 1  3 0 2 1 -1 75  0 0 2.93452 1.80847 1.6702 1.74277 1.86792 1.97811 2.21938 2.23914 2.05548 1.8576 1.68115 1.52262 5.71985 3.33182 5.29935 0 0 0 0 5.5564 1.74277 1.86792 1.97811 2.21938 2.23914 2.05548 1.8576 1.68115 1.52262 5.71985 8.63117 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 6.84104 1.84143 1.72608 1.9558 2.21287 2.22566 2.03683 1.83689 1.65995 1.50189 5.63899 3.2846 5.22425 0 0 1.78045 1.78933 2.2987 1.84143 1.72608 1.9558 2.21287 2.22566 2.03683 1.83689 1.65995 1.50189 5.63899 3.2846 5.22425
1978  7 1  3 0 2 1 -1 75  0 0 3.02553 1.86429 2.24925 2.32914 1.82087 1.80267 2.15686 2.18655 1.99349 1.79184 1.61576 1.45976 5.473 3.18732 5.06951 0 0 1.97383 1.86429 2.24925 2.32914 1.82087 1.80267 2.15686 2.18655 1.99349 1.79184 1.61576 1.45976 5.473 3.18732 5.06951
1979  7 1  3 0 2 1 -1 75  0.904088 0.814725 1.13264 1.61454 2.31862 2.39988 2.31529 1.98046 2.06679 2.15727 1.97939 1.77238 1.5929 1.43597 5.37018 8.09691 0 0 0 1.94736 1.61454 2.31862 2.39988 2.31529 1.98046 2.06679 2.15727 1.97939 1.77238 1.5929 1.43597 5.37018 3.12559 4.97133
1980  7 1  3 0 2 1 -1 75  0 1.87415 1.26318 1.9364 2.1145 2.39397 2.34171 2.23562 2.03184 1.97493 1.92749 1.75684 1.57476 1.41495 5.27018 7.93555 0 0 0 0 3.98162 2.1145 2.39397 2.34171 2.23562 2.03184 1.97493 1.92749 1.75684 1.57476 1.41495 5.27018 3.0633 4.87226
1981  7 1  3 0 2 1 -1 75  0 1.85307 1.1921 1.94737 2.45524 2.24212 2.33668 2.51973 2.65387 2.16822 1.75598 1.6338 1.49112 1.33744 4.95102 2.8705 4.56549 0 0 2.09767 1.94737 2.45524 2.24212 2.33668 2.51973 2.65387 2.16822 1.75598 1.6338 1.49112 1.33744 4.95102 2.8705 4.56549
1982  7 1  3 0 2 1 -1 75  0 1.35012 1.28291 1.89731 2.49205 2.61238 2.25591 2.37466 2.65608 2.54922 1.96363 1.56139 1.43565 1.31264 4.83646 2.79198 4.44012 0 0 0 0 6.39734 2.61238 2.25591 2.37466 2.65608 2.54922 1.96363 1.56139 1.43565 1.31264 4.83646 7.2321 0
1983  7 1  3 0 2 1 -1 75  0 0 0 5.03345 2.46104 2.5701 2.56159 2.45036 2.72903 2.62815 2.19327 1.66861 1.32892 1.20685 4.52107 2.59588 4.12676 0 0 1.73473 2.14858 2.46104 2.5701 2.56159 2.45036 2.72903 2.62815 2.19327 1.66861 1.32892 1.20685 4.52107 2.59588 4.12676
1984  7 1  3 0 2 1 -1 75  0 0 0 5.53726 2.72196 2.6441 2.50916 2.50008 2.47975 2.51234 2.26935 1.86922 1.44047 1.15012 4.28133 2.45603 3.901 0 0 2.17897 1.81397 2.72196 2.6441 2.50916 2.50008 2.47975 2.51234 2.26935 1.86922 1.44047 1.15012 4.28133 2.45603 3.901
1985  7 1  3 0 2 1 -1 75  0 0 0 5.12362 2.20483 2.81038 2.6523 2.69884 2.90752 2.55474 2.20404 1.92739 1.58597 1.23553 4.05191 2.31418 3.66925 0 0 0 4.24262 2.20483 2.81038 2.6523 2.69884 2.90752 2.55474 2.20404 1.92739 1.58597 1.23553 4.05191 2.31418 3.66925
1986  7 1  3 0 2 1 -1 75  0 1.49356 1.77248 2.68401 2.20316 2.29317 2.73415 2.72885 2.87181 2.73973 2.20113 1.84366 1.6032 1.32192 3.89182 2.1426 3.38669 0 0 0 0 7.32933 2.29317 2.73415 2.72885 2.87181 2.73973 2.20113 1.84366 1.6032 1.32192 3.89182 5.52929 0
1987  7 1  3 0 2 1 -1 75  0 1.9245 1.29266 2.94926 3.5548 2.4522 2.20005 2.65286 2.80261 2.63256 2.26254 1.80184 1.50072 1.29594 3.75687 4.97159 0 0 0 2.11515 2.94926 3.5548 2.4522 2.20005 2.65286 2.80261 2.63256 2.26254 1.80184 1.50072 1.29594 3.75687 1.93149 3.0401
1988  7 1  3 0 2 1 -1 75  1.64127 1.00496 1.13682 1.80035 3.48497 3.69075 2.48685 2.39295 2.97582 2.7409 2.22575 1.84591 1.4817 1.22853 3.68956 4.49354 0 0 1.00496 1.13682 1.80035 3.48497 3.69075 2.48685 2.39295 2.97582 2.7409 2.22575 1.84591 1.4817 1.22853 3.68956 4.49354 0
1989  7 1  3 0 2 1 -1 75  0 2.872 1.67503 2.00375 2.29629 3.48491 3.59631 2.58769 2.48624 2.66855 2.28294 1.8268 1.5071 1.21758 3.6251 4.07098 0 0 0 3.1445 2.00375 2.29629 3.48491 3.59631 2.58769 2.48624 2.66855 2.28294 1.8268 1.5071 1.21758 3.6251 4.07098 0
1990  7 1  3 0 2 1 -1 75  0 0 4.1503 2.69252 2.76044 2.54355 3.33915 3.4038 2.58447 2.26355 2.2176 1.89401 1.52155 1.25008 3.63275 3.76857 0 0 1.07126 2.03434 2.69252 2.76044 2.54355 3.33915 3.4038 2.58447 2.26355 2.2176 1.89401 1.52155 1.25008 3.63275 3.76857 0
1991  7 1  3 0 2 1 -1 75  0 0 3.65473 3.42749 3.45827 2.75251 2.37616 3.2632 3.67295 2.61697 1.85406 1.6844 1.44519 1.16533 3.36162 3.24696 0 0 0.891314 1.80374 3.42749 3.45827 2.75251 2.37616 3.2632 3.67295 2.61697 1.85406 1.6844 1.44519 1.16533 3.36162 3.24696 0
1992  7 1  3 0 2 1 -1 75  0 0 2.98606 2.58266 4.11384 3.60815 2.69942 2.6183 3.51719 3.40292 2.2147 1.51321 1.3381 1.15346 3.26709 1.25379 1.70519 0 0 2.03795 2.58266 4.11384 3.60815 2.69942 2.6183 3.51719 3.40292 2.2147 1.51321 1.3381 1.15346 3.26709 2.95898 0
1993  7 1  3 0 2 1 -1 75  0 0 2.76091 2.1134 3.20492 4.23295 3.58024 2.63849 2.54718 3.10205 2.89631 1.93731 1.33064 7.504 0 0 0 0 0 2.06414 2.1134 3.20492 4.23295 3.58024 2.63849 2.54718 3.10205 2.89631 1.93731 1.33064 1.14728 6.35672 0 0
1994  7 1  3 0 2 1 -1 75  0 0 3.04003 1.96247 2.66114 3.31033 4.04913 3.6367 2.99611 2.56719 2.60105 2.36118 1.62873 1.12343 3.42097 1.28246 1.50184 0 0 0 3.71704 2.66114 3.31033 4.04913 3.6367 2.99611 2.56719 2.60105 2.36118 8.9574 0 0 0 0
1995  7 1  3 0 2 1 -1 75  5.43492 1.70375 1.14108 1.78279 2.31286 2.53867 2.91563 3.58417 3.4666 2.67275 2.05671 1.96772 1.77079 6.869 0 0 0 0 0 0 4.62761 2.31286 2.53867 2.91563 3.58417 3.4666 2.67275 2.05671 1.96772 1.77079 1.25797 3.14309 1.18021 1.28775
1996  7 1  3 0 2 1 -1 75  0 0 11.4761 1.41835 1.88471 2.10086 2.21623 2.84177 3.62911 3.07446 2.03248 1.49822 1.39094 1.24333 2.86366 2.06022 0 0 4.40563 2.60961 1.41835 1.88471 2.10086 2.21623 2.84177 3.62911 3.07446 2.03248 1.49822 1.39094 1.24333 4.92387 0 0
1997  7 1  3 0 2 1 -1 75  0 4.67694 5.04634 3.66798 1.94095 1.85391 1.95866 2.12799 2.70634 3.07082 2.47731 1.64812 1.21907 1.10075 4.92046 0 0 0 0 0 11.56 1.94095 1.85391 1.95866 2.12799 2.70634 3.07082 2.47731 1.64812 1.21907 6.0212 0 0 0
1998  7 1  3 0 2 1 -1 75  0.834194 1.2093 4.14025 7.84685 4.98101 1.91396 1.4881 1.66108 1.90406 2.08289 2.09373 1.68085 1.14201 0.844153 4.09466 0 0 0 0 5.34954 7.84685 4.98101 1.91396 1.4881 1.66108 1.90406 2.08289 2.09373 1.68085 1.14201 0.844153 2.53912 1.55555 0
1999  7 1  3 0 2 1 -1 75  0.869104 0.631202 1.69992 5.40936 8.79126 5.19491 1.80689 1.35567 1.56904 1.60999 1.59461 1.55193 1.25682 0.872743 3.72111 0 0 0 0.631202 1.69992 5.40936 8.79126 5.19491 1.80689 1.35567 1.56904 1.60999 1.59461 1.55193 1.25682 0.872743 3.72111 0 0
2000  7 1  3 0 2 1 -1 75  0 2.24983 1.02866 2.44684 5.82789 8.27574 4.96545 1.90864 1.47836 1.46271 1.33514 1.28438 1.22986 1.00475 3.71401 0 0 0 0 1.85397 2.44684 5.82789 8.27574 4.96545 1.90864 1.47836 1.46271 1.33514 1.28438 1.22986 1.00475 3.71401 0 0
2001  7 1  3 0 2 1 -1 75  0 3.46163 1.19898 1.48269 2.84291 5.73773 7.67423 4.69446 1.87231 1.30909 1.21909 1.11037 1.0612 1.00204 3.90757 0 0 0 0 2.512 1.48269 2.84291 5.73773 7.67423 4.69446 1.87231 1.30909 1.21909 1.11037 1.0612 1.00204 3.90757 0 0
1977  7 2  3 0 2 1 -1 75  2.57516 1.87198 3.17365 3.37682 3.76993 2.34605 1.97187 2.0453 1.77791 1.5481 1.3799 1.24252 1.1228 1.01589 3.81425 5.75544 0 0 1.87198 3.17365 3.37682 3.76993 2.34605 1.97187 2.0453 1.77791 1.5481 1.3799 1.24252 1.1228 1.01589 3.81425 5.75544 0
1980  7 2  3 0 2 1 -1 75  3.00006 2.12036 3.21199 3.21872 2.53991 1.86289 2.40643 2.68129 1.96178 1.51584 1.40764 1.27941 1.14676 1.03038 3.8378 2.23073 3.54803 0 2.12036 3.21199 3.21872 2.53991 1.86289 2.40643 2.68129 1.96178 1.51584 1.40764 1.27941 1.14676 1.03038 3.8378 2.23073 3.54803
1983  7 2  3 0 2 1 -1 75  3.25786 1.61669 2.67632 3.46872 3.41302 2.56691 2.82666 2.59924 2.21379 1.90961 1.56555 1.18975 0.947527 0.860486 3.22353 4.79325 0 0 1.61669 2.67632 3.46872 3.41302 2.56691 2.82666 2.59924 2.21379 1.90961 1.56555 1.18975 0.947527 0.860486 3.22353 1.85087 2.94239
1986  7 2  3 0 2 1 -1 75  2.2292 1.99757 4.37569 4.20614 2.67778 2.12538 2.98682 2.87218 2.28826 1.88573 1.47541 1.23363 1.0727 0.884492 2.604 1.43361 2.26602 0 0 6.37325 4.20614 2.67778 2.12538 2.98682 2.87218 2.28826 1.88573 1.47541 1.23363 1.0727 0.884492 2.604 3.69963 0
1989  7 2  3 0 2 1 -1 75  3.22698 3.43593 4.10637 3.17924 2.18414 2.55339 3.69078 2.83293 2.00245 1.87517 1.57659 1.26032 1.03974 6.14947 0 0 0 0 3.43593 4.10637 3.17924 2.18414 2.55339 3.69078 2.83293 2.00245 1.87517 1.57659 1.26032 7.18921 0 0 0 0
1992  7 2  3 0 2 1 -1 75  2.23702 1.89286 3.07727 4.3512 6.00471 3.75891 2.55302 2.28627 2.40009 2.17543 1.40336 0.958207 0.847313 0.730392 3.94246 0 0 0 1.89286 3.07727 4.3512 6.00471 3.75891 2.55302 2.28627 2.40009 2.17543 1.40336 0.958207 0.847313 0.730392 3.94246 0 0
1995  7 2  3 0 2 1 -1 75  0 16.7194 2.02651 2.36695 2.64255 1.98693 2.70219 3.48931 2.73132 1.72459 1.2529 1.19362 1.07409 0.763031 3.40341 0 0 0 3.56578 2.02651 2.36695 2.64255 1.98693 2.70219 3.48931 2.73132 1.72459 1.2529 1.19362 1.07409 0.763031 3.40341 0 0
1998  7 2  3 0 2 1 -1 75  1.66773 2.46466 6.2896 8.92315 5.86927 2.19802 1.47505 1.44257 1.25738 1.19948 1.17951 0.945821 0.642602 2.77902 0 0 0 0 2.46466 6.2896 8.92315 5.86927 2.19802 1.47505 1.44257 1.25738 1.19948 1.17951 0.945821 3.42162 0 0 0 0
2001  7 2  3 0 2 1 -1 75  4.5186 2.61706 2.7147 2.25493 2.87768 4.96464 7.76502 4.97036 1.62064 0.796829 0.68667 0.622896 0.595273 0.562086 2.19191 0 0 0 2.61706 2.7147 2.25493 2.87768 4.96464 7.76502 4.97036 1.62064 0.796829 0.68667 0.622896 0.595273 0.562086 2.19191 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
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
