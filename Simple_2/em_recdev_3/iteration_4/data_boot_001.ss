#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:59:23 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684267163 first rand#: -1.87341
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
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 0.01
1971 1 1 0 0.01
1972 1 1 199.858 0.01
1973 1 1 1006.87 0.01
1974 1 1 999.938 0.01
1975 1 1 2031.73 0.01
1976 1 1 3010.88 0.01
1977 1 1 3854.39 0.01
1978 1 1 4863.46 0.01
1979 1 1 5964.47 0.01
1980 1 1 8030.35 0.01
1981 1 1 9864.14 0.01
1982 1 1 10125.2 0.01
1983 1 1 10100.2 0.01
1984 1 1 9895.72 0.01
1985 1 1 9678.09 0.01
1986 1 1 9859.33 0.01
1987 1 1 9941.53 0.01
1988 1 1 8921.65 0.01
1989 1 1 7832.32 0.01
1990 1 1 7152.23 0.01
1991 1 1 5882.61 0.01
1992 1 1 3964.69 0.01
1993 1 1 3954.33 0.01
1994 1 1 3969.44 0.01
1995 1 1 4010.53 0.01
1996 1 1 3999.77 0.01
1997 1 1 3121.64 0.01
1998 1 1 3028.25 0.01
1999 1 1 2906.72 0.01
2000 1 1 2907.29 0.01
2001 1 1 3028.4 0.01
-9999 0 0 0 0
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
1977 7 2 355787 0.3 #_orig_obs: 312723 SURVEY1
1980 7 2 182043 0.3 #_orig_obs: 313649 SURVEY1
1983 7 2 116385 0.3 #_orig_obs: 99397.1 SURVEY1
1986 7 2 98325.8 0.3 #_orig_obs: 58417.5 SURVEY1
1989 7 2 49965.4 0.3 #_orig_obs: 96655.4 SURVEY1
1992 7 2 52423.1 0.3 #_orig_obs: 53644.6 SURVEY1
1995 7 2 55686.2 0.3 #_orig_obs: 27557 SURVEY1
1998 7 2 36409.4 0.3 #_orig_obs: 49622.8 SURVEY1
2001 7 2 23100.2 0.3 #_orig_obs: 47520.6 SURVEY1
1990 7 3 6.04883 0.7 #_orig_obs: 2.71907 SURVEY2
1991 7 3 9.41215 0.7 #_orig_obs: 8.14933 SURVEY2
1992 7 3 8.24848 0.7 #_orig_obs: 1.53197 SURVEY2
1993 7 3 7.2276 0.7 #_orig_obs: 7.96503 SURVEY2
1994 7 3 16.3893 0.7 #_orig_obs: 7.35974 SURVEY2
1995 7 3 3.39094 0.7 #_orig_obs: 6.98065 SURVEY2
1996 7 3 4.1432 0.7 #_orig_obs: 1.1361 SURVEY2
1997 7 3 2.71722 0.7 #_orig_obs: 33.473 SURVEY2
1998 7 3 11.1561 0.7 #_orig_obs: 14.7904 SURVEY2
1999 7 3 3.84373 0.7 #_orig_obs: 6.48208 SURVEY2
2000 7 3 2.03105 0.7 #_orig_obs: 3.23987 SURVEY2
2001 7 3 8.62351 0.7 #_orig_obs: 15.4377 SURVEY2
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
25 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 68 72 76 80 90
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 0 0 3 2 2 6 2 5 3 15 8 7 5 0 0 0 0 0 0 0 0 0 0 3 3 0 1 0 5 3 6 5 2 5 10 9 5 5 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 1 1 3 1 4 1 4 3 7 13 8 10 5 3 0 0 0 0 0 0 0 0 0 0 1 1 2 0 0 1 4 6 7 8 8 10 3 6 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 5 1 2 2 2 4 5 10 10 8 10 0 0 0 0 0 0 0 0 0 0 0 0 0 9 1 3 4 5 5 5 4 11 10 6 2 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 3 1 2 3 2 1 3 6 5 7 9 7 8 0 0 0 0 0 0 0 0 0 0 2 1 1 3 3 1 3 3 8 2 2 10 8 10 4 6 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 3 0 0 3 1 1 2 7 5 7 4 3 12 8 3 6 0 0 0 0 0 0 0 0 0 0 0 3 1 0 2 2 2 5 6 3 3 14 8 3 8 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 0 2 1 3 1 5 6 5 4 13 9 5 3 1 0 0 0 0 0 0 0 2 1 1 1 3 1 0 3 5 2 1 4 5 8 12 9 7 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 1 1 3 8 1 5 1 2 4 20 17 5 4 3 0 0 0 0 0 0 1 1 0 1 0 1 1 1 0 3 0 3 6 6 11 5 4 3 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 2 0 2 0 0 0 2 1 1 4 5 7 6 7 10 7 3 7 0 0 0 0 0 0 0 0 3 0 1 2 0 3 1 3 3 6 5 4 11 5 7 7 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 6 0 1 5 3 6 2 2 5 14 7 7 6 4 0 0 0 0 0 0 0 0 0 5 1 0 3 2 1 3 4 2 3 4 8 10 7 4 0 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2 1 2 0 3 2 3 7 3 10 3 1 9 8 5 8 0 0 0 0 0 0 0 0 0 0 2 0 0 2 4 2 2 3 2 3 7 12 10 4 5 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 0 4 2 1 2 1 3 4 5 2 8 5 1 5 8 5 0 0 0 0 0 0 0 2 1 1 1 0 3 4 3 3 3 4 2 2 7 12 9 4 8 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 6 0 2 1 2 2 1 5 4 5 7 9 9 8 0 0 0 0 0 0 0 0 0 0 4 1 0 3 1 3 4 5 5 1 7 2 10 7 7 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 7 2 2 1 4 1 6 2 1 5 11 10 6 0 0 0 0 0 0 0 0 0 0 0 9 1 1 2 3 3 7 3 3 6 13 6 4 6 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 3 2 1 0 1 2 2 6 3 2 5 4 9 12 5 3 3 0 0 0 0 0 0 0 0 0 6 2 1 3 5 4 1 2 4 2 4 7 7 7 5 2 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 5 4 1 2 2 2 2 4 5 3 5 8 7 6 5 0 0 0 0 0 0 0 0 0 5 1 1 1 3 2 4 4 3 6 2 6 14 3 6 3 0 0
 1986 7 1 3 0 125  0 0 0 0 0 2 2 0 0 1 4 3 3 1 8 4 3 9 7 10 9 2 6 0 0 0 0 0 0 0 1 0 1 1 5 0 4 1 3 2 2 4 5 5 7 3 4 3 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 2 0 2 0 2 2 6 3 2 3 5 2 3 9 4 5 5 0 0 0 0 0 0 0 0 0 3 1 2 2 4 7 5 3 7 4 1 7 12 7 5 0 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 0 0 2 2 2 2 6 3 7 6 4 4 5 9 9 3 3 0 0 0 0 0 0 0 0 0 2 3 2 1 1 8 5 1 2 6 6 1 8 4 7 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 0 4 1 0 0 2 1 4 7 4 5 4 4 5 8 6 3 1 0 0 0 0 0 0 0 0 4 2 0 2 0 1 5 0 4 4 5 4 3 9 15 6 2 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 4 2 0 0 2 5 2 5 6 6 7 7 9 2 4 3 0 0 0 0 0 0 0 2 1 0 1 1 2 1 3 2 5 6 4 7 3 9 4 3 7 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 5 3 2 2 2 3 5 2 5 4 5 5 5 10 9 0 0 0 0 0 0 0 1 0 0 0 2 1 2 1 2 2 1 7 4 3 3 16 9 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 0 0 4 0 1 3 2 3 5 7 7 6 6 6 5 6 6 8 0 0 0 0 0 0 0 0 0 0 4 0 2 0 5 4 5 5 0 4 2 4 5 5 5 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 2 1 2 1 2 4 3 4 5 2 6 3 6 5 5 7 0 0 0 0 0 0 0 0 0 0 4 2 0 2 3 7 3 4 4 6 8 4 10 5 1 4 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 2 2 4 3 3 7 6 6 4 7 5 6 2 0 0 0 0 0 0 0 0 0 1 1 3 1 2 4 6 5 7 5 6 5 7 1 3 4 0 0
 1995 7 1 3 0 125  0 0 0 2 1 1 1 1 0 0 0 1 4 4 4 6 6 4 5 12 14 0 0 0 0 0 0 0 0 2 1 0 1 2 0 4 4 4 1 5 5 6 5 4 5 6 4 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 3 0 3 3 2 3 6 3 2 5 2 2 7 8 6 10 5 0 0 0 0 0 0 0 0 0 1 0 0 2 2 2 2 4 4 7 2 6 5 13 2 1 2 0 0
 1997 7 1 3 0 125  0 0 0 1 0 2 2 2 3 8 4 3 2 9 2 6 3 3 3 4 5 0 0 0 0 0 0 0 0 0 1 2 1 2 2 4 6 4 2 2 4 5 4 4 9 7 4 0 0 0
 1998 7 1 3 0 125  0 0 0 0 4 0 2 0 0 5 0 1 3 9 1 2 4 5 3 6 6 1 0 0 0 0 0 0 0 3 2 0 0 1 4 4 6 2 7 4 5 5 3 2 9 9 3 4 0 0
 1999 7 1 3 0 125  0 0 0 0 2 1 0 1 1 2 4 3 7 5 9 7 1 5 1 10 5 4 0 0 0 0 0 0 0 0 0 5 2 1 2 2 6 5 3 4 4 3 3 8 2 4 3 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 0 0 3 3 3 3 3 2 4 3 8 4 8 5 5 7 0 0 0 0 0 0 0 0 0 0 5 3 1 2 1 4 3 6 2 5 7 5 5 10 3 1 1 0 0
 2001 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 4 3 4 11 4 2 4 6 5 5 2 2 0 0 0 0 0 0 0 0 2 3 0 4 0 6 5 4 7 7 5 5 6 6 7 2 1 0 0 0
 1977 7 2 3 0 125  0 0 0 0 2 1 1 2 1 3 1 2 2 1 4 3 5 3 4 7 12 13 0 0 0 0 0 0 0 0 0 5 4 1 1 0 4 2 6 1 2 5 2 10 5 7 3 0 0 0
 1980 7 2 3 0 125  0 0 0 0 0 1 3 2 3 6 2 7 4 7 2 2 6 4 3 5 6 3 1 1 0 0 0 0 0 0 0 5 4 1 2 1 6 2 3 5 4 2 2 6 6 5 1 2 0 0
 1983 7 2 3 0 125  0 0 0 0 2 2 3 2 1 3 3 3 3 4 4 3 6 1 7 6 10 4 0 0 0 0 0 0 0 1 1 5 1 3 4 2 4 3 4 2 8 2 4 4 2 8 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 0 1 3 6 4 5 5 5 2 4 4 1 1 4 2 4 7 3 2 0 0 0 0 0 0 0 3 3 4 3 9 1 4 2 5 3 6 5 3 1 5 1 4 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 4 4 1 3 4 1 2 6 4 6 2 1 3 3 6 2 6 0 0 0 0 0 0 1 1 1 0 6 5 1 3 4 1 5 8 5 4 3 2 17 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 3 2 0 4 3 4 4 5 9 7 5 1 3 3 2 6 0 0 0 0 0 0 0 0 0 3 0 6 7 5 3 6 3 2 6 5 3 3 1 7 3 1 0 0 0
 1995 7 2 3 0 125  0 0 0 0 1 3 6 7 2 5 1 0 5 3 5 2 3 3 2 5 2 7 0 0 0 0 0 0 0 3 3 4 3 1 3 5 4 3 4 4 4 3 3 1 8 5 2 0 0 0
 1998 7 2 3 0 125  0 0 0 0 4 2 3 6 3 7 6 5 8 3 2 2 0 4 1 3 4 3 0 0 0 0 0 0 0 3 3 5 4 3 4 7 4 3 5 2 4 2 3 4 1 1 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 3 4 6 4 4 6 5 4 5 5 5 4 1 2 7 6 0 0 0 0 0 0 0 0 0 3 3 9 1 3 4 1 7 3 2 0 7 2 1 5 3 0 0 0 0
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
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 4 3 1 2 2 3 5 2 1 2 7 2 7 0 0 2 1 1 1 4 1 2 2 2 3 1 1 1 1 11
1972  7 1  3 0 2 1 -1 75  0 0 4 1 3 2 2 1 1 3 2 1 3 3 1 3 7 0 0 3 1 1 2 2 3 2 0 3 1 4 1 2 6 7
1973  7 1  3 0 2 1 -1 75  0 0 3 2 1 4 2 1 2 2 1 1 3 1 6 7 7 0 0 0 0 5 2 4 3 1 1 2 2 3 1 4 3 1
1974  7 1  3 0 2 1 -1 75  0 0 0 2 0 4 1 1 2 5 1 2 1 1 5 7 10 0 0 2 2 2 1 3 2 1 2 4 0 0 1 4 4 5
1975  7 1  3 0 2 1 -1 75  0 0 3 2 1 0 2 2 4 2 1 2 3 0 10 5 6 0 0 0 0 4 2 2 0 6 3 1 2 0 1 4 3 4
1976  7 1  3 0 2 1 -1 75  0 0 2 4 3 0 3 1 1 2 1 2 0 2 4 6 4 0 0 0 0 1 4 1 6 1 1 4 3 3 0 6 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 3 2 1 1 2 5 1 1 2 3 6 4 5 0 0 3 2 2 2 0 5 1 2 0 3 5 0 7 3 4
1978  7 1  3 0 2 1 -1 75  0 0 3 1 5 1 3 0 3 0 3 0 2 0 5 4 7 0 0 1 3 5 0 3 1 2 1 3 1 2 1 6 5 4
1979  7 1  3 0 2 1 -1 75  0 2 0 0 0 1 1 0 4 1 2 1 2 1 8 8 0 0 0 6 3 2 1 2 4 2 1 0 1 0 1 10 4 7
1980  7 1  3 0 2 1 -1 75  0 0 0 6 2 2 0 2 0 2 0 2 1 4 3 6 0 0 0 0 4 2 1 2 2 4 1 4 0 3 4 10 2 6
1981  7 1  3 0 2 1 -1 75  0 2 0 3 2 2 4 4 2 1 0 3 2 2 7 3 7 0 0 0 1 4 1 1 2 1 3 2 0 0 1 7 2 6
1982  7 1  3 0 2 1 -1 75  0 1 1 1 6 2 1 1 2 0 1 1 2 0 5 6 7 0 0 0 0 5 5 2 0 3 2 1 1 1 3 6 9 0
1983  7 1  3 0 2 1 -1 75  0 0 0 7 2 4 1 1 1 2 3 0 0 2 8 4 8 0 0 5 1 0 2 2 4 3 1 0 0 2 1 3 2 6
1984  7 1  3 0 2 1 -1 75  0 0 0 14 1 1 2 3 1 1 0 2 1 1 3 3 2 0 0 1 6 5 1 0 2 3 2 6 3 0 1 4 3 3
1985  7 1  3 0 2 1 -1 75  0 0 0 7 7 2 2 3 0 0 1 0 1 1 2 3 5 0 0 0 6 4 0 2 5 1 1 2 1 3 2 7 3 4
1986  7 1  3 0 2 1 -1 75  0 4 6 3 5 2 1 1 3 2 2 1 1 0 2 3 4 0 0 0 0 5 5 3 1 1 4 2 2 3 0 2 7 0
1987  7 1  3 0 2 1 -1 75  0 1 3 3 3 4 3 2 1 1 3 1 0 0 4 4 0 0 0 4 4 2 2 2 2 1 1 2 1 2 2 9 5 3
1988  7 1  3 0 2 1 -1 75  1 0 1 1 7 4 4 6 2 2 0 2 1 3 1 3 0 0 0 3 4 4 0 6 1 1 0 3 2 1 2 6 4 0
1989  7 1  3 0 2 1 -1 75  0 2 1 2 2 5 2 3 5 7 3 2 4 0 2 5 0 0 0 1 1 5 4 1 1 4 3 1 0 2 0 3 4 0
1990  7 1  3 0 2 1 -1 75  0 0 1 2 1 3 3 4 8 4 0 1 0 2 4 5 0 0 3 3 0 3 6 6 2 0 3 3 1 1 0 2 4 0
1991  7 1  3 0 2 1 -1 75  0 0 4 3 1 2 3 7 5 1 1 2 1 0 2 2 0 0 0 7 3 1 1 3 6 7 1 3 1 2 0 2 4 0
1992  7 1  3 0 2 1 -1 75  0 0 6 4 0 2 3 4 4 1 2 1 0 2 2 0 3 0 0 5 1 4 2 1 5 9 3 3 4 0 0 3 1 0
1993  7 1  3 0 2 1 -1 75  0 0 1 3 4 4 1 1 8 0 4 5 0 7 0 0 0 0 0 2 1 4 4 4 6 2 4 3 2 1 1 3 0 0
1994  7 1  3 0 2 1 -1 75  0 0 4 1 0 6 1 2 2 4 5 3 4 1 1 2 1 0 0 0 3 3 6 4 2 4 5 2 3 6 0 0 0 0
1995  7 1  3 0 2 1 -1 75  4 2 1 1 4 3 5 1 1 0 2 5 0 10 0 0 0 0 0 0 7 1 3 4 2 1 4 1 2 5 4 2 0 0
1996  7 1  3 0 2 1 -1 75  0 0 13 0 6 1 2 4 1 3 2 1 0 3 7 2 0 0 0 4 2 2 2 2 4 4 0 2 2 2 2 2 0 0
1997  7 1  3 0 2 1 -1 75  0 6 6 2 3 2 1 3 1 2 0 2 2 2 2 0 0 0 0 0 12 5 3 1 2 3 4 2 2 2 5 0 0 0
1998  7 1  3 0 2 1 -1 75  4 1 3 5 2 1 3 4 2 3 2 2 1 1 6 0 0 0 0 3 4 7 3 1 4 1 3 1 1 0 2 5 0 0
1999  7 1  3 0 2 1 -1 75  6 2 3 2 4 6 2 5 3 2 2 1 0 3 2 0 0 0 3 1 6 2 3 3 3 1 1 1 0 0 3 5 0 0
2000  7 1  3 0 2 1 -1 75  0 5 7 2 1 3 3 1 2 3 1 4 2 0 2 0 0 0 0 9 2 8 7 3 0 1 3 2 0 1 0 3 0 0
2001  7 1  3 0 2 1 -1 75  0 6 4 2 5 1 7 4 4 1 3 0 3 0 3 0 0 0 0 3 2 2 3 5 3 4 2 0 0 2 1 5 0 0
1977  7 2  3 0 2 1 -1 75  1 2 0 4 0 5 2 2 2 3 1 1 0 1 8 2 0 0 1 4 5 3 1 1 2 2 0 5 3 1 0 5 8 0
1980  7 2  3 0 2 1 -1 75  0 1 4 6 4 0 5 0 0 5 2 0 0 1 0 2 3 0 1 4 4 2 1 3 1 0 6 2 3 1 0 6 4 4
1983  7 2  3 0 2 1 -1 75  0 5 4 4 2 1 1 3 4 1 2 0 2 1 2 4 0 0 3 8 3 1 1 2 2 1 2 1 1 1 4 4 1 4
1986  7 2  3 0 2 1 -1 75  0 3 5 7 7 1 2 2 0 2 0 1 0 1 0 1 5 0 0 9 2 3 4 4 1 2 2 1 0 0 0 8 2 0
1989  7 2  3 0 2 1 -1 75  4 3 1 0 3 4 3 1 2 2 4 0 0 6 0 0 0 0 4 4 2 8 4 6 6 1 1 0 1 5 0 0 0 0
1992  7 2  3 0 2 1 -1 75  4 1 3 8 6 1 6 4 1 6 1 0 0 0 6 0 0 0 1 5 2 5 1 3 3 1 0 2 0 2 0 3 0 0
1995  7 2  3 0 2 1 -1 75  0 21 2 1 2 4 2 4 0 2 1 1 2 0 6 0 0 0 5 2 1 2 5 2 2 0 0 1 1 0 1 5 0 0
1998  7 2  3 0 2 1 -1 75  2 5 9 6 7 3 1 1 2 1 5 0 0 0 0 0 0 0 3 4 4 7 1 3 11 0 0 0 0 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  1 3 7 1 2 8 7 2 2 1 1 1 1 0 2 0 0 0 2 6 8 6 3 2 3 1 1 0 1 1 0 2 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.7668 40.2765 44.4668 48.3863 51.209 53.7454 56.8741 60.535 61.4896 63.8119 64.7868 64.3455 67.4881 67.1625 70.4936 72.2323 73.1018 30.8104 39.2814 43.65 49.3047 52.392 53.9664 56.9706 61.183 63.8152 61.2437 64.2249 66.6643 65.6279 66.386 68.2905 67.7729 71.4382
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.491 40.0569 44.7951 48.2184 51.8906 55.2524 58.082 57.1159 62.2393 64.7318 65.1716 66.928 65.6316 65.7427 70.9617 72.3456 73.0721 32.498 38.7832 44.0633 50.4556 53.9316 53.3649 58.9973 57.3702 62.2243 63.1879 64.3609 66.8014 67.0033 66.5058 64.8998 68.5284 69.7498
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.1353 40.058 43.6388 47.6188 50.2369 52.7323 57.8886 54.9895 61.0853 61.8651 63.581 62.7294 65.8437 68.3356 68.791 67.3926 71.0493 34.8538 40.5092 43.4121 46.4881 50.1036 55.3575 57.7805 59.7955 59.9087 63.3496 62.4253 63.3306 65.6461 66.152 68.8167 70.446 69.8202
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 35.0606 38.7134 43.0398 48.0994 50.2696 52.4977 56.4192 58.5867 61.4903 64.1192 63.4887 62.97 63.4646 65.3893 69.7185 73.4067 74.6618 34.9097 39.9624 42.8216 45.6516 50.6579 52.5422 57.3372 61.267 58.2846 60.3087 63.9111 61.9843 65.928 65.6345 66.0064 71.4395 69.1068
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

