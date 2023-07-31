#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Thu Jun 22 11:07:25 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1687446445 first rand#: 0.935425
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
1972 1 1 199.302 0.01
1973 1 1 986.152 0.01
1974 1 1 984.358 0.01
1975 1 1 1985.49 0.01
1976 1 1 2992.52 0.01
1977 1 1 3994.68 0.01
1978 1 1 5013.76 0.01
1979 1 1 5949.07 0.01
1980 1 1 7973.3 0.01
1981 1 1 9982.55 0.01
1982 1 1 10065.4 0.01
1983 1 1 9863.16 0.01
1984 1 1 10176.7 0.01
1985 1 1 9960.8 0.01
1986 1 1 9967.77 0.01
1987 1 1 10092.3 0.01
1988 1 1 9158.56 0.01
1989 1 1 7973.54 0.01
1990 1 1 7001.95 0.01
1991 1 1 5992.58 0.01
1992 1 1 3989.37 0.01
1993 1 1 4012.82 0.01
1994 1 1 4028.11 0.01
1995 1 1 4033.81 0.01
1996 1 1 3907.85 0.01
1997 1 1 2108.84 0.01
1998 1 1 1257.82 0.01
1999 1 1 866.08 0.01
2000 1 1 589.205 0.01
2001 1 1 352.16 0.01
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
1977 7 2 220375 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 176582 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 101946 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 53349.2 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 41202.8 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 18893.8 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 17630.3 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 2018.3 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 595.034 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 10.2061 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 4.84535 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 0.958814 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 2.15307 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 0.836166 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 1.09897 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 1.35352 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 0.860739 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 0.141125 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 0.185399 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 0.0161887 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 0.0156728 0.7 #_orig_obs: 1.69379 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 1 1 1 3 3 5 2 3 6 10 10 7 9 0 0 0 0 0 0 0 0 0 0 3 0 0 2 2 2 3 1 3 3 6 7 12 10 7 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 1 5 1 1 2 2 2 5 4 13 10 7 8 3 0 0 0 0 0 0 0 0 0 3 0 0 1 3 1 3 0 3 5 3 15 8 7 8 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 2 5 3 3 4 11 12 7 7 8 0 0 0 0 0 0 0 0 0 0 0 0 0 8 2 4 2 0 5 6 0 8 9 8 2 2 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 1 1 3 1 3 6 4 6 4 9 6 12 3 0 0 0 0 0 0 0 0 0 1 1 0 2 1 2 3 8 4 4 5 4 9 6 4 7 3 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1 0 3 1 1 2 3 3 6 3 6 6 12 7 8 8 0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 2 3 3 6 5 4 17 7 3 2 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 1 0 1 3 2 3 5 7 3 11 10 12 7 2 0 0 0 0 0 0 0 1 1 0 1 1 3 2 3 2 4 4 5 2 12 6 5 5 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 0 0 3 0 4 3 1 6 8 11 8 8 1 1 0 0 0 0 0 0 1 0 0 0 0 1 1 6 3 4 8 3 3 7 6 8 10 8 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 2 0 0 0 2 2 3 2 4 1 5 5 7 8 12 6 7 2 0 0 0 0 0 0 0 0 1 0 2 1 0 0 1 1 3 5 8 6 8 9 7 5 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5 3 2 1 0 1 3 6 5 10 6 9 6 7 0 0 0 0 0 0 0 0 0 4 1 1 1 1 3 4 2 2 2 3 13 11 5 5 3 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2 1 0 1 2 0 4 2 4 1 4 6 21 6 3 7 3 0 0 0 0 0 0 0 0 0 3 0 0 2 2 1 1 7 2 2 5 15 9 5 4 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 0 0 3 6 4 4 4 6 4 8 7 4 6 0 0 0 0 0 0 0 4 0 0 1 1 1 2 4 4 0 5 0 5 3 15 8 10 5 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 3 1 2 1 2 2 4 1 4 2 3 7 7 15 0 0 0 0 0 0 0 0 0 0 3 1 1 1 0 4 2 6 4 2 5 3 17 9 9 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 2 1 3 2 2 7 5 3 9 11 4 8 10 0 0 0 0 0 0 0 0 0 0 0 1 2 2 1 1 3 5 1 6 4 8 10 11 3 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 0 1 4 3 5 3 0 5 8 8 8 8 10 0 0 0 0 0 0 0 0 0 2 1 2 0 1 2 2 7 2 2 8 5 11 7 3 6 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 3 0 1 1 4 4 2 4 4 3 3 8 11 5 1 2 0 0 0 0 0 0 0 0 4 1 2 1 1 6 2 5 2 4 7 4 13 10 3 4 0 0
 1986 7 1 3 0 125  0 0 0 1 1 0 0 0 1 2 1 2 1 5 3 3 3 5 4 9 3 4 5 0 0 0 0 0 0 0 1 1 0 0 3 1 3 1 5 9 3 9 4 4 16 4 6 2 0 0
 1987 7 1 3 0 125  0 0 0 0 1 1 1 0 1 1 4 1 2 3 5 6 5 3 2 4 6 8 2 0 0 0 0 0 0 0 0 0 6 1 1 3 3 3 3 3 6 7 4 11 7 4 4 3 0 0
 1988 7 1 3 0 125  0 0 0 0 0 4 0 0 6 1 2 4 5 4 4 7 1 3 4 5 11 4 3 0 0 0 0 0 0 0 5 1 1 0 1 4 5 3 3 1 4 5 1 2 10 2 9 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 3 0 1 2 4 3 7 3 4 12 3 3 2 4 6 8 2 3 0 0 0 0 0 0 0 0 5 1 0 1 6 5 3 6 3 4 4 4 4 5 2 2 0 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 10 2 2 1 5 4 2 9 2 5 4 2 3 2 1 4 0 0 0 0 0 0 0 5 2 1 2 7 5 3 0 4 9 5 7 2 4 6 2 1 2 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 9 1 3 5 7 2 4 5 1 1 1 2 4 1 3 0 0 0 0 0 0 0 6 1 6 2 2 3 6 5 9 3 3 4 10 3 5 7 1 0 0 0 0
 1992 7 1 3 0 125  0 0 0 0 0 0 1 1 2 2 5 8 5 5 10 8 2 6 3 4 0 1 0 0 0 0 0 0 0 0 0 0 6 3 2 4 6 4 9 3 5 6 7 2 3 1 1 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 6 4 1 1 5 7 10 3 4 9 4 2 3 3 3 3 0 0 0 0 0 0 0 0 0 0 6 1 5 2 7 4 4 9 5 1 0 3 5 2 2 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 9 4 4 9 5 5 6 3 3 3 6 1 0 0 0 0 0 0 0 0 0 0 0 6 3 6 5 6 11 7 2 9 3 5 1 1 0 2 0 0 0
 1995 7 1 3 0 125  0 0 0 2 0 2 0 0 3 1 7 5 10 6 9 9 6 5 0 2 3 0 0 0 0 0 0 0 0 2 0 2 0 3 3 3 10 3 9 1 5 8 3 1 2 0 0 0 0 0
 1996 7 1 3 0 125  0 0 0 2 1 3 1 2 0 4 6 7 6 8 6 2 5 3 2 2 3 1 0 0 0 0 0 0 0 0 0 8 0 3 4 3 4 5 2 7 6 8 4 2 4 1 0 0 0 0
 1997 7 1 3 0 125  0 0 0 3 2 1 6 3 4 7 6 8 11 6 1 5 3 3 0 2 1 0 0 0 0 0 0 0 0 0 7 3 6 4 3 3 3 5 4 4 3 3 3 1 1 0 0 0 0 0
 1998 7 1 3 0 125  0 0 0 0 4 4 4 4 11 4 2 6 1 2 5 2 1 1 1 0 0 0 0 0 0 0 0 0 0 1 2 3 6 4 7 10 9 11 6 5 3 1 3 1 1 0 0 0 0 0
 1999 7 1 3 0 125  0 0 0 0 4 4 2 4 3 7 11 8 11 6 5 2 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 3 5 6 5 6 8 6 9 3 3 0 1 1 0 0 0 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 3 2 4 5 7 3 11 9 9 3 5 1 2 2 0 0 0 0 0 0 0 0 0 0 0 3 3 4 8 4 4 5 4 12 4 2 4 2 0 0 0 0 0 0 0
 2001 7 1 3 0 125  0 0 0 0 3 4 2 0 3 4 14 3 5 6 9 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 1 5 3 7 3 4 8 3 7 6 7 7 1 2 2 0 0 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 2 1 1 3 3 3 4 3 6 2 2 2 2 4 12 7 11 0 0 0 0 0 0 0 0 0 1 2 3 2 2 1 2 3 6 2 4 3 3 8 7 4 3 0 0
 1980 7 2 3 0 125  0 0 0 0 0 2 0 1 0 0 2 2 1 1 5 7 1 5 5 9 6 4 4 2 0 0 0 0 0 2 0 2 6 4 2 1 3 3 3 2 4 5 4 2 10 8 4 3 0 0
 1983 7 2 3 0 125  0 0 0 0 3 2 2 3 6 2 4 2 2 3 5 2 5 4 5 5 7 7 0 0 0 0 0 0 0 2 1 4 2 4 2 2 3 3 6 3 2 0 1 3 6 12 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 5 6 1 1 3 1 0 4 2 4 6 6 6 2 4 4 6 2 2 0 0 0 0 0 2 4 3 4 3 2 2 1 1 5 5 3 0 8 2 4 3 6 2 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 1 7 10 3 4 4 5 8 8 2 4 4 1 1 6 1 1 0 0 0 0 0 0 1 0 0 3 3 8 4 5 5 3 2 6 2 1 1 2 9 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 8 3 7 11 4 5 4 5 2 3 3 1 1 0 1 1 0 0 0 0 0 0 0 0 0 2 9 8 6 8 5 4 3 7 3 5 3 2 0 1 0 0 0 0 0
 1995 7 2 3 0 125  0 0 0 0 0 3 2 6 7 6 4 8 10 4 6 2 2 0 1 1 0 0 0 0 0 0 0 0 0 3 4 4 7 7 7 1 5 8 4 4 3 4 2 0 0 0 0 0 0 0
 1998 7 2 3 0 125  0 0 0 0 3 3 7 9 8 11 6 2 6 4 0 1 0 0 0 2 0 0 0 0 0 0 0 0 0 5 5 3 10 9 7 10 2 5 4 2 0 1 0 0 0 0 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 8 8 5 7 13 6 4 6 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 3 0 8 5 6 7 9 10 5 5 1 1 3 0 1 0 0 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5 2 6 0 2 1 2 0 0 3 6 5 5 0 0 2 0 0 2 1 2 1 4 2 4 3 2 7 2 6
1972  7 1  3 0 2 1 -1 75  0 0 0 1 1 1 1 3 2 3 3 3 1 2 8 5 4 0 0 2 1 1 4 1 2 2 8 1 0 3 0 6 2 4
1973  7 1  3 0 2 1 -1 75  0 0 1 3 4 2 0 1 4 2 2 2 1 3 5 2 6 0 0 0 3 3 1 1 0 3 1 1 3 0 0 12 4 5
1974  7 1  3 0 2 1 -1 75  0 0 2 1 1 1 1 0 2 2 2 2 0 2 6 1 9 0 0 1 3 2 2 2 7 2 3 0 2 2 3 7 5 2
1975  7 1  3 0 2 1 -1 75  0 0 1 1 3 3 4 0 3 2 2 2 1 1 6 3 8 0 0 0 0 1 4 1 1 3 4 1 3 2 1 6 2 6
1976  7 1  3 0 2 1 -1 75  0 0 0 1 3 3 2 4 1 3 2 4 0 1 3 3 10 0 0 0 0 2 3 4 0 1 1 1 3 1 2 7 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 4 0 3 1 0 1 2 1 2 1 8 8 3 0 0 0 1 3 1 2 2 2 2 2 2 3 5 3 3 10
1978  7 1  3 0 2 1 -1 75  0 0 1 0 1 0 2 1 4 2 3 4 1 1 11 2 4 0 0 2 1 2 1 3 1 2 3 1 1 1 3 8 4 5
1979  7 1  3 0 2 1 -1 75  0 0 2 1 3 0 2 0 2 4 3 1 0 1 6 12 0 0 0 1 2 0 5 0 3 3 2 2 2 1 2 5 3 7
1980  7 1  3 0 2 1 -1 75  0 1 0 2 1 0 3 4 3 1 1 2 1 0 13 8 0 0 0 0 4 1 2 3 1 2 0 0 2 2 2 8 4 4
1981  7 1  3 0 2 1 -1 75  0 0 0 0 1 0 0 4 2 4 2 1 4 0 9 3 8 0 0 2 0 4 0 2 1 2 2 2 1 2 2 7 1 9
1982  7 1  3 0 2 1 -1 75  0 2 2 1 3 1 1 1 5 3 1 2 2 1 4 3 9 0 0 0 0 7 0 1 2 0 3 0 5 2 2 5 7 0
1983  7 1  3 0 2 1 -1 75  0 0 0 8 1 3 1 1 2 0 0 0 0 5 8 3 3 0 0 3 4 6 2 2 2 2 1 0 2 3 1 5 1 6
1984  7 1  3 0 2 1 -1 75  0 0 0 6 4 1 1 3 0 0 1 1 4 1 5 9 7 0 0 1 3 1 3 2 1 1 2 2 1 2 3 3 0 7
1985  7 1  3 0 2 1 -1 75  0 0 0 3 8 6 4 2 2 1 0 3 1 1 3 1 6 0 0 0 5 2 2 1 1 4 3 3 1 2 1 3 1 5
1986  7 1  3 0 2 1 -1 75  0 3 1 4 1 5 4 5 2 2 2 0 1 1 1 5 4 0 0 0 0 3 2 2 4 5 1 1 2 2 1 2 9 0
1987  7 1  3 0 2 1 -1 75  0 5 4 1 5 5 3 4 2 1 1 3 0 0 4 4 0 0 0 2 1 4 2 6 2 2 1 1 2 0 0 4 2 4
1988  7 1  3 0 2 1 -1 75  6 3 0 2 5 3 2 1 3 2 1 0 1 1 2 5 0 0 2 4 6 1 2 3 2 1 2 4 1 0 0 3 7 0
1989  7 1  3 0 2 1 -1 75  0 5 4 7 0 3 4 6 2 3 1 1 0 0 3 2 0 0 0 4 5 2 2 3 4 4 3 2 0 0 0 2 3 0
1990  7 1  3 0 2 1 -1 75  0 0 8 3 9 7 5 0 1 0 1 4 1 0 0 1 0 0 0 4 8 4 9 3 1 2 1 1 0 0 1 0 1 0
1991  7 1  3 0 2 1 -1 75  0 0 8 4 4 3 3 0 4 1 4 1 0 1 1 0 0 0 8 4 9 3 5 4 2 1 1 2 1 0 1 0 0 0
1992  7 1  3 0 2 1 -1 75  0 0 9 4 7 6 3 3 1 0 0 0 0 2 0 1 1 0 0 6 6 8 2 8 4 1 1 2 0 0 0 0 0 0
1993  7 1  3 0 2 1 -1 75  0 0 9 5 2 4 3 6 2 1 0 2 0 4 0 0 0 0 0 5 5 8 3 5 5 2 0 0 2 1 0 1 0 0
1994  7 1  3 0 2 1 -1 75  0 0 11 5 9 8 4 1 3 2 0 0 0 0 0 0 0 0 0 0 17 2 6 3 3 1 0 0 0 0 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 4 2 5 9 9 4 0 6 1 1 0 0 1 0 0 0 0 0 0 17 6 2 3 2 0 1 0 1 0 0 0 0 0
1996  7 1  3 0 2 1 -1 75  0 0 13 7 6 8 6 1 1 3 0 2 0 0 0 0 0 0 1 1 6 7 9 2 0 1 0 0 1 0 0 0 0 0
1997  7 1  3 0 2 1 -1 75  0 18 5 7 6 1 3 1 1 0 0 0 1 0 0 0 0 0 0 0 19 2 5 3 2 0 1 0 0 0 0 0 0 0
1998  7 1  3 0 2 1 -1 75  11 3 6 5 4 1 1 1 0 0 0 0 0 0 0 0 0 0 0 21 12 4 4 0 2 0 0 0 0 0 0 0 0 0
1999  7 1  3 0 2 1 -1 75  4 6 9 10 8 5 0 1 0 0 0 0 0 0 0 0 0 0 6 6 10 7 3 0 0 0 0 0 0 0 0 0 0 0
2000  7 1  3 0 2 1 -1 75  0 9 11 17 8 5 1 0 0 0 0 0 0 0 0 0 0 0 0 9 5 6 3 0 0 1 0 0 0 0 0 0 0 0
2001  7 1  3 0 2 1 -1 75  0 8 6 5 10 7 2 0 0 0 0 0 0 0 0 0 0 0 0 10 10 6 8 3 0 0 0 0 0 0 0 0 0 0
1977  7 2  3 0 2 1 -1 75  0 1 0 3 2 1 1 2 0 3 2 0 1 2 2 10 0 0 2 3 2 3 1 3 3 1 1 5 3 3 0 7 8 0
1980  7 2  3 0 2 1 -1 75  1 1 3 1 4 2 2 2 2 4 1 2 1 0 5 3 6 0 1 0 3 2 0 1 2 5 2 0 3 0 2 5 4 5
1983  7 2  3 0 2 1 -1 75  0 5 4 2 1 3 3 1 3 1 0 2 3 2 4 5 0 0 4 6 4 2 2 0 3 0 1 1 2 1 0 5 1 4
1986  7 2  3 0 2 1 -1 75  7 1 4 3 2 5 2 0 0 1 2 0 1 0 3 2 1 0 0 8 3 6 4 3 2 3 0 0 1 2 1 3 5 0
1989  7 2  3 0 2 1 -1 75  8 0 6 10 12 3 1 1 0 1 1 0 0 1 0 0 0 0 1 11 5 5 1 1 0 2 2 1 1 1 0 0 0 0
1992  7 2  3 0 2 1 -1 75  7 5 4 7 3 6 1 2 0 0 0 0 0 0 1 0 0 0 8 10 7 5 5 2 1 0 0 0 0 0 0 1 0 0
1995  7 2  3 0 2 1 -1 75  0 6 5 5 13 5 2 1 1 1 0 0 0 0 0 0 0 0 10 3 6 6 6 2 0 3 0 0 0 0 0 0 0 0
1998  7 2  3 0 2 1 -1 75  7 3 11 9 4 2 2 0 0 0 0 0 0 0 0 0 0 0 10 10 5 8 3 0 0 0 1 0 0 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  5 5 4 15 8 3 0 0 0 0 0 0 0 0 0 0 0 0 7 4 10 4 9 1 0 0 0 0 0 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 33.3704 38.4551 42.9154 48.1481 52.0576 55.4571 57.9691 58.4438 61.8404 63.1968 66.047 64.232 66.9146 68.9935 70.777 72.5239 71.9191 32.5729 38.714 44.5131 50.3483 52.9404 55.006 57.7718 59.7563 60.5084 62.1271 63.5023 66.1148 67.282 63.2066 67.757 67.9984 71.6416
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 27.0195 40.4804 43.9061 50.2642 52.3666 54.0025 56.0821 58.5823 61.6307 62.252 65.5404 66.8257 67.5907 65.7813 65.0902 72.981 74.0394 27.9894 40.7825 44.6036 48.7761 53.1117 54.5417 56.7864 60.7697 60.8963 63.8315 64.6929 67.6653 65.9013 68.2163 67.9724 69.971 74.1797
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.8392 38.3999 43.7708 45.4551 49.8594 53.2699 57.2909 59.302 59.6084 59.0816 62.2155 65.3878 66.2706 66.3376 65.8601 71.7864 70.8281 34.5523 38.9677 43.4023 46.8469 52.1913 53.3484 54.5518 57.4336 60.0832 61.8817 63.3746 62.6052 63.0603 63.7113 68.045 69.9258 71.7995
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 32.8627 40.5712 43.3597 47.1103 50.483 53.0004 56.1336 60.421 58.9883 63.2193 64.5617 64.1873 63.7392 66.1224 67.6163 72.8807 72.0629 34.9467 40.6166 43.6694 48.5808 51.3387 52.3511 54.5991 59.251 59.1453 62.0191 63.1332 63.8548 63.6496 66.012 66.5581 68.513 71.9497
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
