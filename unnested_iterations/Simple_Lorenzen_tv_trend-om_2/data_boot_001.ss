#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:17:51 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403871 first rand#: 0.440058
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1971 #_StartYr
2001 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
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
1972 1 1 199.458 0.01
1973 1 1 1005.44 0.01
1974 1 1 991.991 0.01
1975 1 1 1963.26 0.01
1976 1 1 2967.07 0.01
1977 1 1 3979.67 0.01
1978 1 1 5021.4 0.01
1979 1 1 6067.2 0.01
1980 1 1 8189.02 0.01
1981 1 1 9874.07 0.01
1982 1 1 9762.78 0.01
1983 1 1 10034.8 0.01
1984 1 1 10004.1 0.01
1985 1 1 9996.87 0.01
1986 1 1 10136.3 0.01
1987 1 1 10026.3 0.01
1988 1 1 9055.98 0.01
1989 1 1 7763.78 0.01
1990 1 1 7004.72 0.01
1991 1 1 6026.63 0.01
1992 1 1 4043.22 0.01
1993 1 1 3951.1 0.01
1994 1 1 3962.75 0.01
1995 1 1 3976.42 0.01
1996 1 1 3994.78 0.01
1997 1 1 3019.96 0.01
1998 1 1 3010.47 0.01
1999 1 1 3014.96 0.01
2000 1 1 2992.29 0.01
2001 1 1 2987.68 0.01
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 1 0 0 # FISHERY
2 1 0 1 # SURVEY1
3 0 0 0 # SURVEY2
#_year month index obs err
1977 7 2 267733 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 224415 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 122133 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 126327 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 97538.4 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 84795.2 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 50024.6 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 40368.9 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 28266.9 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 1.04594 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 3.38842 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 5.87469 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 1.54384 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 4.97375 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 7.16687 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 1.50796 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 7.10528 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 3.48376 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 1.60345 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 5.90642 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 7.50077 0.7 #_orig_obs: 1.69379 SURVEY2
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
#_combM+F: males and females treated as combined sex below this bin number 
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 6 3 2 2 2 6 3 10 8 6 6 0 0 0 0 0 0 0 0 0 0 3 0 1 3 2 3 7 4 7 4 7 13 8 7 2 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 0 1 2 0 4 2 5 2 2 19 10 8 2 3 0 0 0 0 0 0 0 0 0 2 1 1 1 1 4 2 2 5 6 5 8 15 3 2 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 2 2 1 4 3 4 0 17 11 4 8 0 0 0 0 0 0 0 0 0 0 0 0 0 4 4 1 4 2 4 7 7 15 8 7 2 4 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 0 0 2 5 4 3 4 11 11 6 6 9 0 0 0 0 0 0 0 0 0 3 0 0 0 0 3 5 3 2 4 6 5 13 8 8 3 0 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 0 1 1 2 5 2 7 5 5 10 9 12 6 0 0 0 0 0 0 0 0 0 0 0 1 3 2 1 2 3 4 5 5 3 14 10 3 3 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 3 0 2 2 2 1 0 2 5 3 3 10 7 6 7 6 1 0 0 0 0 0 0 0 1 1 0 0 0 1 2 2 4 1 6 3 6 21 10 4 3 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 4 0 1 2 1 2 1 2 2 5 6 2 14 7 5 4 4 0 0 0 0 0 0 1 0 0 2 0 1 3 2 0 3 3 5 6 5 9 11 9 3 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 2 0 3 0 2 0 2 2 3 2 6 6 3 12 8 6 8 2 0 0 0 0 0 0 0 0 1 1 1 2 1 2 4 3 1 3 10 6 6 8 5 4 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 4 1 1 2 3 5 2 5 11 12 6 4 2 0 0 0 0 0 0 0 0 0 4 2 1 0 2 2 2 5 6 3 4 10 12 6 3 1 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 2 4 1 1 4 8 5 2 6 12 7 6 5 2 0 0 0 0 0 0 0 0 0 4 0 0 3 0 6 4 4 6 2 6 7 4 3 9 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 2 0 1 0 3 1 4 2 4 2 3 7 4 9 6 8 0 0 0 0 0 0 0 2 1 1 0 1 1 0 5 1 4 3 8 6 3 14 5 8 6 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 5 0 0 2 2 0 7 2 4 7 5 9 6 12 0 0 0 0 0 0 0 0 0 0 4 1 3 2 2 6 1 7 4 1 3 5 8 8 6 3 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 10 3 1 3 3 1 3 5 4 12 7 7 3 0 0 0 0 0 0 0 0 0 0 0 6 1 4 5 3 6 4 2 2 4 9 8 8 1 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 3 1 1 1 1 2 3 4 3 2 4 4 5 13 6 2 4 0 0 0 0 0 0 0 0 0 6 1 1 2 0 4 1 5 4 4 8 3 14 7 3 3 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 3 2 3 5 4 7 4 5 2 4 4 6 15 6 3 0 0 0 0 0 0 0 0 0 0 2 2 1 2 2 3 4 7 6 3 1 10 3 4 2 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 1 0 1 0 1 5 3 2 6 7 1 7 7 4 8 3 6 0 0 0 0 0 0 0 1 0 0 0 1 1 2 5 6 6 5 4 4 5 10 9 2 2 0 0
 1987 7 1 3 0 125  0 0 0 0 2 0 0 0 1 2 2 3 5 4 1 6 5 7 3 9 9 1 3 0 0 0 0 0 0 0 0 0 2 1 3 2 2 1 7 4 4 10 3 2 10 5 4 2 0 0
 1988 7 1 3 0 125  0 0 0 0 0 2 1 0 1 3 1 4 5 3 4 5 6 4 5 7 5 4 2 0 0 0 0 0 0 0 5 1 1 1 1 1 0 0 8 5 4 5 4 10 10 4 3 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 5 0 1 1 3 0 3 10 0 5 6 2 2 5 12 6 7 2 0 0 0 0 0 0 0 0 6 0 1 0 2 3 0 4 8 5 5 4 4 6 3 3 1 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 9 1 3 1 1 3 2 5 4 2 6 4 9 6 6 2 0 0 0 0 0 0 0 2 0 1 6 2 3 2 3 2 0 1 5 7 3 12 5 5 2 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 7 2 3 3 5 5 3 5 3 2 2 1 12 2 1 0 0 0 0 0 0 0 0 1 0 2 0 4 3 4 5 6 3 5 5 6 6 7 8 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 1 0 2 1 1 1 8 5 5 7 10 4 7 2 3 5 4 0 0 0 0 0 0 0 0 0 0 2 2 2 3 2 7 4 3 5 5 6 3 8 2 4 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 1 0 2 1 1 7 5 6 7 9 1 5 4 5 4 7 0 0 0 0 0 0 0 0 0 0 3 1 1 2 0 6 5 3 9 5 6 4 7 4 3 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 2 3 3 2 6 4 5 7 7 11 6 2 5 0 0 0 0 0 0 0 0 0 2 1 3 1 1 4 5 10 3 3 5 2 12 2 4 1 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 0 2 2 2 2 3 1 7 6 7 6 6 4 10 5 0 0 0 0 0 0 0 0 7 0 1 1 0 4 1 0 2 4 4 1 5 11 8 5 6 2 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 1 1 2 0 0 4 3 3 1 2 3 7 3 6 11 3 6 0 0 0 0 0 0 0 0 0 4 0 0 0 7 0 4 2 6 4 8 6 7 12 5 4 0 0 0
 1997 7 1 3 0 125  0 0 0 0 1 1 0 0 3 2 4 1 2 2 3 9 6 4 3 11 19 0 0 0 0 0 0 0 0 0 3 3 1 3 0 1 3 2 2 3 3 3 7 2 5 9 4 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 0 1 1 0 1 1 3 5 4 4 4 4 8 4 8 8 2 0 0 0 0 0 0 0 3 0 0 0 2 4 0 5 3 3 1 3 8 3 5 13 7 6 1 0 0
 1999 7 1 3 0 125  0 0 0 0 0 0 0 0 1 3 5 5 5 3 5 6 3 3 6 9 4 4 0 0 0 0 0 0 0 0 0 2 1 1 2 3 3 3 3 7 3 6 6 5 8 3 7 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 2 0 5 1 3 1 4 4 4 5 6 4 7 3 10 5 0 0 0 0 0 0 0 0 0 2 0 3 2 1 2 2 1 8 3 2 3 8 7 5 7 3 2 0 0
 2001 7 1 3 0 125  0 0 0 0 3 0 1 0 1 3 2 4 3 5 6 4 5 3 9 4 3 1 0 0 0 0 0 0 0 0 6 1 2 2 1 0 7 1 4 5 6 9 7 2 8 3 4 0 0 0
 1977 7 2 3 0 125  0 0 0 0 3 1 0 2 2 4 2 2 4 1 1 2 8 7 0 6 6 7 0 0 0 0 0 0 0 0 0 6 3 2 2 2 4 3 1 2 3 3 6 3 8 9 6 4 0 0
 1980 7 2 3 0 125  0 0 0 0 2 2 1 2 3 3 3 2 4 3 2 5 1 1 3 9 5 1 2 2 0 0 0 0 0 2 1 3 3 0 0 0 3 5 3 6 6 2 4 1 9 10 6 5 0 0
 1983 7 2 3 0 125  0 0 0 0 3 2 4 3 0 3 2 3 4 2 2 2 2 2 7 6 1 2 0 0 0 0 0 0 0 1 3 1 3 7 1 5 3 1 11 5 3 0 5 6 3 17 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 4 2 1 2 2 2 2 6 5 5 3 7 1 3 0 9 4 3 1 0 0 0 0 0 0 0 3 0 0 2 2 0 3 3 12 1 3 5 7 4 5 6 7 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 8 6 5 4 4 1 1 5 2 1 7 4 3 5 4 1 2 0 0 0 0 0 0 4 1 2 4 4 2 3 5 0 8 4 4 2 0 4 5 10 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 6 2 2 4 6 4 4 5 2 6 3 1 2 3 4 7 0 0 0 0 0 0 0 0 0 2 0 6 6 3 5 3 3 6 4 5 5 5 3 4 3 1 0 0 0
 1995 7 2 3 0 125  0 0 0 0 5 0 5 3 0 1 4 4 8 4 4 5 2 3 4 7 7 2 0 0 0 0 0 0 0 8 3 2 2 4 1 2 2 2 5 6 3 5 3 6 1 1 1 0 0 0
 1998 7 2 3 0 125  0 0 0 0 1 2 2 7 10 10 1 2 2 4 5 1 2 4 3 5 2 3 0 0 0 0 0 0 0 1 4 3 2 5 7 2 4 0 2 3 3 5 4 4 3 5 2 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 4 1 5 2 4 7 1 5 5 6 2 2 5 5 5 5 0 0 0 0 0 0 0 0 2 1 0 3 4 6 5 4 2 6 9 2 4 2 1 3 7 0 0 0 0
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
#_combM+F: males and females treated as combined sex below this bin number 
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 4 1 2 2 0 2 1 2 1 1 3 5 7 0 0 4 1 2 3 1 1 2 1 1 1 2 1 11 7 6
1972  7 1  3 0 2 1 -1 75  0 0 0 0 0 2 2 1 4 0 2 1 2 3 3 1 11 0 0 1 1 2 3 4 4 0 1 3 1 2 1 5 9 6
1973  7 1  3 0 2 1 -1 75  0 0 2 1 2 1 1 4 1 2 1 2 1 2 2 2 6 0 0 0 3 2 2 3 5 5 4 1 1 2 0 4 7 6
1974  7 1  3 0 2 1 -1 75  0 0 0 1 2 4 5 2 2 2 0 3 0 2 6 3 9 0 0 0 3 1 1 1 5 2 2 1 1 0 0 7 3 7
1975  7 1  3 0 2 1 -1 75  0 0 2 0 0 3 0 4 2 4 0 1 1 1 3 3 10 0 0 0 0 5 3 1 2 0 1 4 2 1 1 7 7 7
1976  7 1  3 0 2 1 -1 75  0 0 3 3 1 2 4 0 1 1 3 2 1 1 4 3 14 0 0 0 0 3 0 1 3 0 2 2 1 2 1 7 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 6 2 2 1 3 3 2 1 2 1 7 9 5 0 0 3 2 1 1 0 5 2 1 2 1 0 0 8 2 3
1978  7 1  3 0 2 1 -1 75  0 0 4 1 1 1 1 1 5 2 2 1 2 2 1 3 11 0 0 1 2 0 0 2 1 2 1 0 1 1 3 7 4 12
1979  7 1  3 0 2 1 -1 75  1 1 0 2 3 0 1 3 1 2 0 1 0 2 7 14 0 0 0 1 6 2 2 1 1 2 0 2 0 3 0 3 5 9
1980  7 1  3 0 2 1 -1 75  0 3 0 4 5 2 2 2 3 2 1 0 2 2 5 8 0 0 0 0 6 3 4 0 1 2 1 1 1 0 0 2 6 7
1981  7 1  3 0 2 1 -1 75  0 3 0 0 1 2 5 1 2 2 3 1 0 1 5 4 10 0 0 4 2 2 4 3 0 3 1 1 1 0 3 1 3 7
1982  7 1  3 0 2 1 -1 75  0 4 1 1 2 0 6 2 1 0 1 1 2 1 11 3 2 0 0 0 0 11 2 7 0 1 0 3 1 0 1 3 8 0
1983  7 1  3 0 2 1 -1 75  0 0 0 13 4 2 1 6 2 1 0 0 0 0 3 1 8 0 0 5 0 0 2 2 6 2 2 1 1 1 1 2 1 8
1984  7 1  3 0 2 1 -1 75  0 0 0 8 3 2 2 1 4 2 2 0 0 1 2 4 8 0 0 2 1 1 5 2 2 3 2 1 1 0 0 5 4 7
1985  7 1  3 0 2 1 -1 75  0 0 0 12 3 0 3 3 3 5 2 1 0 0 4 4 2 0 0 0 5 5 4 2 2 2 4 0 3 0 0 2 0 4
1986  7 1  3 0 2 1 -1 75  0 2 0 3 3 2 3 2 0 0 4 2 0 3 2 2 5 0 0 0 0 12 1 5 6 4 4 1 0 0 0 6 3 0
1987  7 1  3 0 2 1 -1 75  0 3 1 0 3 2 2 5 3 3 1 1 2 2 4 6 0 0 0 3 1 7 4 3 5 2 2 1 2 0 0 2 1 4
1988  7 1  3 0 2 1 -1 75  2 3 2 1 4 5 4 5 3 0 1 1 1 1 7 5 0 0 2 0 0 2 5 1 1 2 2 2 1 1 1 4 6 0
1989  7 1  3 0 2 1 -1 75  0 3 2 4 4 4 3 0 4 2 5 3 1 2 2 3 0 0 0 5 1 2 3 2 7 0 3 1 1 2 0 3 3 0
1990  7 1  3 0 2 1 -1 75  0 0 5 2 5 0 3 8 5 2 2 3 1 0 2 6 0 0 3 4 1 3 2 1 4 2 1 2 2 1 1 1 3 0
1991  7 1  3 0 2 1 -1 75  0 0 10 1 3 5 0 0 1 4 2 2 3 4 1 3 0 0 0 3 5 4 4 4 1 4 2 2 1 0 2 2 2 0
1992  7 1  3 0 2 1 -1 75  0 0 6 3 7 3 1 1 1 2 2 0 2 1 0 2 1 0 0 3 13 3 3 5 2 2 3 2 1 1 0 1 4 0
1993  7 1  3 0 2 1 -1 75  0 0 3 4 3 11 2 3 1 2 1 0 2 4 0 0 0 0 0 1 1 5 6 11 2 6 0 2 0 1 2 2 0 0
1994  7 1  3 0 2 1 -1 75  0 0 0 2 3 7 7 3 4 5 6 0 2 2 2 1 0 0 0 0 0 5 5 5 4 6 1 0 2 3 0 0 0 0
1995  7 1  3 0 2 1 -1 75  0 3 2 2 1 2 7 3 4 5 0 1 0 4 0 0 0 0 0 0 2 3 5 4 13 4 4 1 2 0 0 2 0 1
1996  7 1  3 0 2 1 -1 75  0 0 4 0 3 1 3 10 5 5 1 0 0 0 4 2 0 0 1 3 1 2 1 2 5 7 7 0 2 1 0 5 0 0
1997  7 1  3 0 2 1 -1 75  0 3 3 3 2 1 1 1 4 5 1 3 0 2 2 0 0 0 0 0 7 8 3 0 8 4 5 2 1 0 6 0 0 0
1998  7 1  3 0 2 1 -1 75  0 4 2 5 3 1 1 3 0 2 1 1 0 0 2 0 0 0 0 8 1 6 5 1 2 4 7 6 4 2 2 2 0 0
1999  7 1  3 0 2 1 -1 75  2 0 3 5 5 3 3 2 0 0 3 4 2 1 4 0 0 0 4 3 2 3 2 1 1 0 2 5 6 5 1 3 0 0
2000  7 1  3 0 2 1 -1 75  0 3 0 3 4 5 6 3 2 0 7 2 3 1 0 0 0 0 0 0 7 3 3 6 3 3 0 1 4 4 1 1 0 0
2001  7 1  3 0 2 1 -1 75  0 1 2 2 3 7 4 2 1 3 0 0 1 3 4 0 0 0 0 4 1 8 7 8 2 0 2 2 2 1 1 4 0 0
1977  7 2  3 0 2 1 -1 75  4 5 1 3 1 1 2 1 1 2 2 0 1 2 2 9 0 0 4 7 3 1 3 0 3 3 0 1 2 1 0 1 9 0
1980  7 2  3 0 2 1 -1 75  2 1 5 3 7 4 1 0 2 1 1 2 1 2 2 4 2 0 0 4 3 3 1 2 1 1 2 1 2 1 3 2 2 7
1983  7 2  3 0 2 1 -1 75  4 4 4 3 1 2 1 3 0 2 1 0 3 0 2 2 0 0 6 2 6 5 4 3 2 3 1 1 1 0 0 2 2 5
1986  7 2  3 0 2 1 -1 75  3 0 3 4 8 2 4 3 3 4 1 0 0 0 3 2 1 0 0 4 2 5 4 3 4 2 1 1 0 1 0 4 3 0
1989  7 2  3 0 2 1 -1 75  5 4 5 7 2 1 4 3 1 3 2 1 1 6 0 0 0 0 8 3 2 1 2 1 0 4 1 2 2 4 0 0 0 0
1992  7 2  3 0 2 1 -1 75  2 3 4 8 5 6 4 0 2 1 1 1 0 0 1 0 0 0 2 3 8 8 7 4 2 0 1 0 1 0 1 0 0 0
1995  7 2  3 0 2 1 -1 75  0 10 2 2 3 9 6 4 2 1 2 0 2 1 2 0 0 0 1 4 1 2 6 3 3 2 0 0 1 1 1 4 0 0
1998  7 2  3 0 2 1 -1 75  3 5 7 4 6 4 3 1 0 2 6 0 0 0 0 0 0 0 5 4 5 8 4 0 1 0 2 4 1 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  6 3 2 2 8 3 3 1 1 0 2 2 0 2 3 0 0 0 2 2 3 2 8 6 4 2 1 1 1 1 2 2 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.3912 37.9317 44.2089 49.4098 55.5493 55.9634 58.0607 58.9539 61.8328 63.9196 66.4939 65.218 67.7164 69.6153 69.6168 69.2309 72.2732 31.2544 40.1583 46.3657 50.1628 54.1539 55.3143 59.6624 62.57 61.6348 63.2362 61.7729 66.3049 66.3321 63.692 65.9157 68.0801 68.0371
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 29.5119 37.9706 45.7591 49.0515 54.2847 54.5214 58.5943 60.165 59.8854 61.7005 66.9131 63.5595 66.9808 67.1592 68.7621 71.3552 71.2297 30.7601 39.9532 46.9612 53.0086 53.3296 53.4819 58.9503 58.9974 63.8657 64.9484 65.3152 66.3758 65.1431 64.2094 68.1652 67.0389 70.8207
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.0918 39.1549 44.1175 44.9688 51.0621 55.1204 57.5251 59.729 60.3032 61.9109 67.421 64.6796 64.7707 65.4404 68.9638 69.6395 69.1134 33.6054 39.6718 43.7793 48.0178 51.2249 56.1923 60.7381 59.5002 58.5781 60.3594 62.5745 61.4328 65.1694 63.3165 65.3417 68.1537 68.037
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 32.4167 39.3533 42.9966 47.6734 51.5923 52.9053 57.649 57.0919 60.6134 61.9141 61.9038 63.5481 64.7176 64.1392 66.9221 69.3371 69.3952 34.1938 39.6901 45.3452 47.804 51.2533 53.6791 57.779 58.5441 60.2463 62.8216 62.7736 63.355 64.7897 68.6892 66.1019 66.7096 66.8855
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

