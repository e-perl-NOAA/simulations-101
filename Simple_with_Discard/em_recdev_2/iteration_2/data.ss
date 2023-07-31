#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Thu Jun 22 12:45:44 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1687452344 first rand#: -1.77387
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
4 #_Nfleets (including surveys)
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
 3 1 1 2 0 Depletion  # 4
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
-999 1 1 0 0.05
1971 1 1 0 0.05
1972 1 1 204.202 0.05
1973 1 1 992.686 0.05
1974 1 1 1068.58 0.05
1975 1 1 2016.33 0.05
1976 1 1 2999.14 0.05
1977 1 1 3559.85 0.05
1978 1 1 5127.14 0.05
1979 1 1 6137.86 0.05
1980 1 1 7454.47 0.05
1981 1 1 10860.1 0.05
1982 1 1 9368.28 0.05
1983 1 1 8670.85 0.05
1984 1 1 11135.8 0.05
1985 1 1 9582.54 0.05
1986 1 1 9721.96 0.05
1987 1 1 9704.49 0.05
1988 1 1 9285.15 0.05
1989 1 1 7697.97 0.05
1990 1 1 7007.11 0.05
1991 1 1 6052.34 0.05
1992 1 1 4224.21 0.05
1993 1 1 4109.42 0.05
1994 1 1 3985.57 0.05
1995 1 1 4350.03 0.05
1996 1 1 3588.8 0.05
1997 1 1 3034.53 0.05
1998 1 1 3390.67 0.05
1999 1 1 2914.09 0.05
2000 1 1 3098.62 0.05
2001 1 1 3073.39 0.05
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 2 0 0 # FISHERY
2 1 0 0 # SURVEY1
3 0 0 0 # SURVEY2
4 34 0 0 # Depletion
#_year month index obs err
2000 7 1 0.0732915 0.8 #_orig_obs: 0.2 FISHERY
1977 7 2 135278 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 170770 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 93303.3 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 36473.4 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 40613.8 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 40681 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 44146.3 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 82225.5 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 54914.8 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 8.45515 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 14.9819 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 2.78904 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 6.00738 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 1.41779 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 3.77303 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 7.5821 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 7.19536 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 4.61474 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 1.67442 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 3.82286 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 5.00412 0.7 #_orig_obs: 1.69379 SURVEY2
2001 7 4 0.25648 0.3 #_orig_obs: 0.3 Depletion
-9999 1 1 1 1 # terminator for survey observations 
#
1 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
1 1 0 # FISHERY
#_yr month fleet obs stderr
1995 7 1  368.316 0.2 #_orig_obs: 255.678 #_ FISHERY
1996 7 1  314.688 0.2 #_orig_obs: 322.972 #_ FISHERY
-9999 0 0 0.0 0.0 # terminator for discard data 
#
1 #_use meanbodysize_data (0/1)
30 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
1995 7 1 2 1 52.7186 0.3 #_orig_obs: 2.31626  #_ FISHERY
1995 7 1 1 1 31.3774 0.3 #_orig_obs: 1.80019  #_ FISHERY
 -9999 0 0 0 0 0 0 # terminator for mean body size data 
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
0 1e-07 0 0 0 0 1 #_fleet:4_Depletion
25 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 68 72 76 80 90
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6 1 2 3 4 2 4 7 3 5 7 8 4 5 0 0 0 0 0 0 0 0 0 0 6 0 2 1 2 3 5 2 2 3 2 7 11 9 9 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 0 0 0 6 5 1 4 1 6 11 7 8 3 3 0 0 0 0 0 0 0 0 0 2 2 2 2 2 2 6 4 4 4 3 11 14 3 5 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 5 2 2 6 3 4 2 7 10 12 10 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 2 2 7 5 1 1 14 14 7 3 0 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 1 2 3 6 2 5 3 7 12 9 11 7 0 0 0 0 0 0 0 0 0 3 0 1 0 0 3 3 3 4 0 5 4 11 9 5 4 1 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1 2 0 1 2 1 2 3 2 4 2 7 16 8 4 7 0 0 0 0 0 0 0 0 0 0 0 2 0 1 0 4 6 3 3 5 9 8 14 8 0 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 4 2 0 0 3 3 3 2 6 3 4 5 6 13 4 4 6 0 0 0 0 0 0 0 3 0 0 0 0 0 0 2 3 5 4 5 5 10 13 4 3 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 4 1 5 7 9 7 7 7 2 0 0 0 0 0 0 1 0 0 0 0 0 2 2 1 2 1 3 8 5 17 16 4 9 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 4 0 2 0 0 1 3 3 2 1 5 2 6 10 13 9 6 2 0 0 0 0 0 0 0 0 1 0 1 3 0 1 2 2 3 5 3 8 7 8 6 6 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 7 1 3 5 0 5 2 1 4 11 8 5 2 5 0 0 0 0 0 0 0 0 0 5 0 2 0 2 1 1 3 2 5 7 20 8 4 4 2 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 8 1 0 2 0 2 4 2 3 3 2 5 8 7 7 8 2 0 0 0 0 0 0 0 0 0 6 1 0 0 2 2 2 4 6 4 5 12 6 5 6 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 2 1 3 2 0 2 1 1 4 2 4 1 9 9 8 8 0 0 0 0 0 0 0 2 0 2 2 2 2 3 1 4 1 4 2 5 9 14 5 5 5 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 7 2 3 7 1 2 3 4 4 2 2 6 5 11 0 0 0 0 0 0 0 0 0 0 1 2 1 5 3 4 4 2 7 4 2 5 7 9 6 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 6 3 3 6 1 6 3 3 2 7 7 4 5 0 0 0 0 0 0 0 0 0 0 0 4 0 2 5 5 5 9 7 4 5 11 5 3 4 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2 0 0 0 0 3 6 9 1 1 7 5 5 6 7 5 6 0 0 0 0 0 0 0 0 0 1 1 1 1 5 4 4 5 4 3 5 3 7 9 5 4 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 1 2 2 2 7 6 8 4 5 9 4 7 3 7 3 0 0 0 0 0 0 0 0 0 1 1 2 2 2 5 3 5 6 3 2 2 10 4 4 3 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 0 0 1 2 2 1 5 1 5 4 7 4 6 8 13 3 2 0 0 0 0 0 0 0 0 0 0 1 2 1 4 3 3 2 2 5 9 10 2 7 6 4 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 3 2 2 4 4 6 4 7 7 8 8 7 2 0 0 0 0 0 0 0 0 0 0 0 1 0 0 2 4 3 6 9 7 7 10 5 2 2 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 0 0 0 1 1 2 1 3 7 8 5 12 3 11 3 4 3 0 0 0 0 0 0 0 0 1 0 0 0 2 1 2 6 3 2 6 6 4 10 6 11 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1 0 0 1 1 3 1 2 3 2 5 4 7 4 15 5 2 6 0 0 0 0 0 0 0 0 1 0 1 0 0 1 3 4 2 3 12 6 4 14 4 4 4 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 5 2 3 4 1 1 1 3 0 9 9 4 8 9 3 1 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 5 5 2 9 4 4 14 4 7 2 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 7 2 3 3 3 3 1 2 3 2 3 7 8 8 3 0 0 0 0 0 0 0 4 0 0 1 1 1 3 4 3 1 0 9 8 6 1 9 5 11 0 0 0
 1992 7 1 3 0 125  0 0 0 0 2 1 0 2 1 1 3 1 3 2 2 5 1 2 4 9 4 12 0 0 0 0 0 0 0 0 0 0 5 2 2 2 1 4 7 1 4 4 6 5 7 8 12 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 3 2 3 2 1 2 3 4 6 1 3 7 5 14 4 5 0 0 0 0 0 0 0 0 0 0 9 2 2 4 1 1 2 2 2 8 6 3 7 7 2 2 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 11 2 4 7 6 2 3 6 4 3 10 7 5 1 0 0 0 0 0 0 0 0 0 3 1 0 6 3 4 4 6 1 6 2 0 9 6 3 0 0 0
 1995 7 1 3 0 125  0 0 0 0 1 0 1 0 0 4 3 2 9 6 4 6 2 3 1 7 9 0 0 0 0 0 0 0 0 0 0 3 4 2 4 1 5 3 6 7 5 3 6 2 7 6 3 0 0 0
 1995 7 1 3 1 125  0 0 0 0 3 2 3 0 6 11 6 8 5 4 2 3 0 1 1 2 1 0 0 0 0 0 0 0 0 3 3 5 6 7 4 8 4 4 4 3 3 4 5 2 1 1 0 0 0 0
 1995 7 1 3 2 125  0 0 0 0 1 1 1 0 1 1 7 3 2 8 4 5 2 3 1 9 6 4 0 0 0 0 0 0 0 0 0 0 0 0 4 3 5 4 10 4 5 5 6 4 7 2 7 0 0 0
 1996 7 1 3 0 125  0 0 0 1 0 0 2 1 2 1 3 4 7 3 6 6 5 5 3 7 6 5 0 0 0 0 0 0 0 0 0 4 0 2 2 4 6 2 5 6 6 2 3 3 6 4 3 0 0 0
 1997 7 1 3 0 125  0 0 0 0 0 2 0 1 1 0 1 3 3 2 6 5 7 6 4 9 8 0 0 0 0 0 0 0 0 0 2 0 0 2 1 4 2 3 9 9 8 4 8 3 6 3 3 0 0 0
 1998 7 1 3 0 125  0 0 0 0 1 1 1 0 0 0 3 3 4 3 2 5 6 5 6 10 8 2 4 0 0 0 0 0 0 2 0 0 3 0 1 0 3 4 2 6 10 3 2 11 7 3 4 0 0 0
 1999 7 1 3 0 125  0 0 0 0 1 0 1 2 4 8 0 2 3 1 3 1 5 4 7 6 2 3 0 0 0 0 0 0 0 0 0 2 2 0 2 1 3 5 9 2 8 5 10 4 9 6 4 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 3 1 0 0 2 5 4 2 8 4 2 8 4 10 9 11 0 0 0 0 0 0 0 0 0 0 2 0 0 1 2 3 6 9 4 1 5 3 4 4 5 3 0 0 0
 2001 7 1 3 0 125  0 0 0 0 1 0 0 1 3 2 3 1 3 5 1 8 4 4 5 8 8 4 0 0 0 0 0 0 0 0 3 1 3 3 2 3 3 7 6 4 4 5 3 2 9 4 2 0 0 0
 1977 7 2 3 0 125  0 0 0 0 6 2 3 1 2 3 4 1 2 0 1 2 2 1 5 8 6 13 0 0 0 0 0 0 0 0 0 6 1 2 2 4 3 1 4 1 1 4 7 8 11 5 1 2 0 0
 1980 7 2 3 0 125  0 0 0 0 5 4 7 4 3 3 3 0 2 0 1 1 2 5 0 3 8 3 1 1 0 0 0 0 0 3 2 5 12 5 3 1 2 3 4 2 0 3 5 3 6 6 2 2 0 0
 1983 7 2 3 0 125  0 0 0 0 0 2 0 1 4 3 8 3 6 8 1 6 3 4 0 2 2 6 0 0 0 0 0 0 0 1 1 3 4 5 3 3 10 5 5 3 6 1 0 1 5 10 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 1 0 1 1 0 2 4 1 6 3 8 6 2 5 1 9 5 2 6 0 0 0 0 0 1 1 1 1 0 0 2 1 2 5 8 6 9 5 2 4 7 4 3 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 4 3 6 2 5 6 1 1 5 2 2 4 3 5 12 3 4 0 0 0 0 0 0 1 1 2 4 2 10 2 0 1 1 3 7 6 1 2 5 9 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 7 3 2 9 1 2 3 4 4 2 1 2 1 1 5 6 0 0 0 0 0 0 0 0 0 14 0 5 2 6 9 4 2 4 1 3 0 2 5 5 4 6 0 0 0
 1995 7 2 3 0 125  0 0 0 0 1 1 5 3 3 4 8 7 3 4 5 2 1 3 1 2 7 2 0 0 0 0 0 0 0 1 0 1 1 9 5 3 3 6 4 8 2 3 9 3 0 3 2 0 0 0
 1998 7 2 3 0 125  0 0 0 7 3 4 1 0 1 1 6 3 8 2 1 8 5 3 1 6 2 1 0 0 0 0 0 0 0 8 4 0 5 3 2 0 5 5 3 5 4 6 3 1 5 3 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 2 3 2 7 8 1 4 3 3 4 3 3 5 3 1 4 0 0 0 0 0 0 0 0 0 1 1 4 6 4 2 9 6 3 1 6 9 6 3 3 5 0 0 0 0
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
0 1e-07 1 0 0 0 1 #_fleet:4_Depletion
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1971  7 1  3 0 2 1 -1 75  0 0 0 0 7 0 1 2 4 3 2 1 1 0 7 3 7 0 0 3 2 3 1 2 1 1 0 2 1 1 1 6 3 10
1972  7 1  3 0 2 1 -1 75  0 0 1 1 1 0 2 2 0 1 2 2 1 4 7 5 3 0 0 4 3 2 4 3 3 4 0 3 1 1 1 5 6 3
1973  7 1  3 0 2 1 -1 75  0 0 2 0 3 2 5 3 2 0 0 2 1 2 4 3 3 0 0 0 4 2 1 2 3 1 3 5 2 2 2 4 8 4
1974  7 1  3 0 2 1 -1 75  0 0 1 2 2 4 1 2 2 0 2 2 1 2 7 7 4 0 0 1 3 2 1 0 2 2 3 1 1 3 2 7 4 4
1975  7 1  3 0 2 1 -1 75  0 0 0 0 2 1 2 5 3 2 1 3 2 3 3 7 4 0 0 0 0 3 0 2 0 2 3 3 1 4 4 7 3 5
1976  7 1  3 0 2 1 -1 75  0 0 3 1 3 2 1 0 2 2 2 3 1 2 4 1 8 0 0 0 0 4 2 1 7 3 1 2 2 0 1 9 8 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 2 2 0 1 3 1 1 5 0 0 4 5 9 0 0 3 3 0 2 4 1 4 3 0 0 0 3 9 2 8
1978  7 1  3 0 2 1 -1 75  0 0 7 0 0 0 1 3 0 1 2 1 1 2 10 4 6 0 0 0 2 2 0 2 4 1 4 0 3 1 1 12 2 3
1979  7 1  3 0 2 1 -1 75  2 0 0 2 2 1 3 0 1 0 3 0 0 2 7 12 0 0 0 4 4 2 1 3 1 5 2 1 1 0 2 5 4 5
1980  7 1  3 0 2 1 -1 75  0 5 0 1 1 4 1 2 2 1 5 2 1 0 5 7 0 0 0 0 3 5 1 0 0 0 1 2 2 3 0 7 6 8
1981  7 1  3 0 2 1 -1 75  0 3 4 1 3 2 4 0 3 1 1 4 4 3 6 1 4 0 0 1 1 3 7 1 2 0 1 3 1 0 3 2 4 2
1982  7 1  3 0 2 1 -1 75  0 2 1 4 3 4 1 1 2 1 0 0 3 0 7 4 4 0 0 0 0 14 1 0 3 0 2 2 1 1 1 5 8 0
1983  7 1  3 0 2 1 -1 75  0 0 0 6 6 3 2 6 1 1 0 2 2 0 3 2 6 0 0 1 3 6 1 4 2 2 1 2 0 0 1 6 2 4
1984  7 1  3 0 2 1 -1 75  0 0 0 4 1 7 5 2 2 1 2 2 2 1 4 0 5 0 0 2 2 5 9 3 1 2 1 0 0 1 1 3 3 4
1985  7 1  3 0 2 1 -1 75  0 0 0 5 2 3 7 6 3 0 0 1 0 0 3 2 4 0 0 0 1 3 5 9 2 2 1 2 1 1 1 5 3 3
1986  7 1  3 0 2 1 -1 75  0 1 0 0 0 2 2 10 8 1 1 1 0 2 5 2 3 0 0 0 0 3 5 3 4 6 1 2 2 1 0 5 5 0
1987  7 1  3 0 2 1 -1 75  0 0 0 0 1 4 3 4 7 1 2 3 0 0 3 4 0 0 0 2 1 3 4 6 7 7 2 0 2 3 0 4 0 2
1988  7 1  3 0 2 1 -1 75  2 0 1 0 3 0 0 5 7 7 4 2 1 0 1 3 0 0 0 0 2 1 2 4 10 5 2 2 1 3 0 2 5 0
1989  7 1  3 0 2 1 -1 75  0 3 1 0 0 1 1 3 4 3 7 5 1 1 1 7 0 0 0 2 1 2 3 0 2 5 2 3 6 1 1 4 5 0
1990  7 1  3 0 2 1 -1 75  0 0 4 4 0 3 1 2 2 3 7 5 5 1 2 4 0 0 2 0 0 1 2 3 1 2 5 6 3 1 0 3 3 0
1991  7 1  3 0 2 1 -1 75  0 0 7 3 0 1 1 2 3 2 1 3 4 2 4 1 0 0 2 2 4 3 1 0 0 2 4 0 3 5 6 5 4 0
1992  7 1  3 0 2 1 -1 75  0 0 6 2 2 2 4 2 1 1 2 6 4 4 4 3 1 0 0 5 0 2 3 1 2 2 3 3 2 2 4 1 1 0
1993  7 1  3 0 2 1 -1 75  0 0 7 4 3 3 3 1 0 2 1 1 3 14 0 0 0 0 0 1 4 1 5 3 1 1 2 0 2 5 1 7 0 0
1994  7 1  3 0 2 1 -1 75  0 0 9 1 5 5 1 2 1 3 1 0 1 2 6 1 2 0 0 0 8 5 3 5 1 3 1 1 0 8 0 0 0 0
1995  7 1  3 0 2 1 -1 75  0 1 5 4 7 5 4 2 3 1 0 1 1 6 0 0 0 0 0 0 13 3 4 5 0 2 1 0 2 1 2 2 0 0
1995  7 1  3 1 2 1 -1 75  0 3 6 12 2 3 1 0 1 0 0 1 1 1 2 0 0 0 3 11 10 5 6 0 2 0 1 0 1 0 0 3 0 0
1995  7 1  3 2 2 1 -1 75  0 1 4 5 4 5 4 2 3 1 2 0 1 2 6 0 0 0 0 0 6 7 2 4 2 1 4 1 2 1 0 5 0 0
1996  7 1  3 0 2 1 -1 75  0 0 2 4 7 2 5 5 4 0 1 2 1 0 3 1 0 0 0 3 2 4 4 1 2 4 2 3 0 1 2 10 0 0
1997  7 1  3 0 2 1 -1 75  0 1 1 2 9 5 4 6 1 4 3 1 0 2 5 0 0 0 0 0 4 3 9 5 2 0 2 0 0 0 6 0 0 0
1998  7 1  3 0 2 1 -1 75  2 0 1 0 2 8 7 7 2 2 1 0 1 0 2 0 0 0 0 4 2 3 4 4 9 5 3 0 1 0 1 3 1 0
1999  7 1  3 0 2 1 -1 75  1 2 1 4 3 3 4 6 3 4 0 3 2 1 3 0 0 0 0 2 0 6 2 5 4 6 2 1 1 2 1 3 0 0
2000  7 1  3 0 2 1 -1 75  0 3 0 2 0 1 5 4 3 2 4 1 1 0 6 0 0 0 0 3 1 4 2 6 4 5 7 4 2 1 0 4 0 0
2001  7 1  3 0 2 1 -1 75  0 2 1 4 4 2 1 0 5 5 2 2 1 2 7 0 0 0 0 2 4 2 0 4 1 4 4 8 3 0 0 5 0 0
1977  7 2  3 0 2 1 -1 75  3 4 2 3 4 2 0 2 1 3 3 2 1 0 4 5 0 0 3 2 2 1 1 1 2 2 1 5 0 1 3 5 7 0
1980  7 2  3 0 2 1 -1 75  3 5 6 3 0 2 2 2 1 0 2 2 0 2 2 3 3 0 7 3 4 4 3 1 2 0 1 1 2 0 1 2 0 6
1983  7 2  3 0 2 1 -1 75  2 4 2 4 5 7 4 4 1 0 2 0 3 3 2 4 0 0 1 5 3 5 3 3 1 2 1 0 2 0 0 1 0 1
1986  7 2  3 0 2 1 -1 75  2 1 1 1 3 6 5 6 4 1 1 3 1 0 2 3 0 0 0 1 4 1 3 1 5 3 1 2 1 1 0 4 8 0
1989  7 2  3 0 2 1 -1 75  1 0 0 6 2 4 2 5 3 6 1 0 0 7 0 0 0 0 3 3 5 5 2 4 3 1 3 1 2 6 0 0 0 0
1992  7 2  3 0 2 1 -1 75  8 5 4 2 0 4 0 5 1 0 1 1 1 0 1 0 0 0 5 11 7 3 1 4 0 0 1 1 3 2 1 3 0 0
1995  7 2  3 0 2 1 -1 75  0 7 2 9 4 3 6 3 0 0 0 0 0 0 3 0 0 0 3 4 11 4 3 6 4 1 1 0 0 0 0 1 0 0
1998  7 2  3 0 2 1 -1 75  6 3 4 4 2 5 5 9 1 0 3 1 0 2 0 0 0 0 2 1 3 1 9 1 2 2 4 2 1 2 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 0 3 6 4 1 3 1 3 2 2 2 0 2 1 0 0 0 1 1 10 7 2 2 1 4 6 4 0 2 0 3 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.8246 39.3157 45.5242 50.6962 51.6037 55.0534 58.9199 59.7369 60.7545 64.5424 65.1867 65.7467 65.375 65.8821 69.6579 69.2023 76.4416 34.467 40.4159 45.6795 50.3438 53.7448 55.3527 57.961 59.4838 63.0923 63.7967 61.2612 66.5945 65.754 66.6985 68.6077 67.5008 70.2517
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 30.0583 40.1361 45.4222 48.5813 52.4277 55.8208 57.6131 58.5517 62.6235 65.1924 65.4639 66.5455 65.7215 68.9325 69.9494 74.6472 72.2486 31.1469 40.0376 45.8598 48.3564 51.8398 54.1128 57.2933 59.9899 62.4305 62.6625 63.267 64.0266 64.579 67.3502 69.9953 68.9214 71.0913
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 1 1 2 29.3396 39.0086 42.5807 45.3022 48.2003 53.4071 54.642 58.449 59.483 59.9676 63.3774 64.2857 65.3162 66.5435 66.7526 68.375 68.9195 29.6065 38.6625 43.652 46.1322 49.5193 51.6025 54.5085 54.3724 57.9873 60.7808 59.08 62.0904 63.0296 63.22 67.4105 65.8666 66.4787
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 2 1 2 33.0658 39.0168 45.7564 48.4205 52.3257 53.1383 60.8796 58.3208 60.6355 63.1811 66.6027 67.1484 64.1645 65.2552 70.0503 70.3875 72.2506 35.0929 40.9067 46.3284 49.9655 54.982 55.642 57.3051 58.9431 61.7092 62.578 63.9779 64.1627 68.8953 67.3218 66.3974 68.1827 72.4803
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.3249 38.3706 43.6506 46.4832 49.2574 52.5791 56.3972 60.6793 61.2794 61.3684 63.8932 63.4777 65.313 66.846 70.181 69.194 73.5589 35.011 39.8594 44.1544 48.3151 52.4017 54.0938 53.1735 57.1271 60.1139 60.7463 62.4643 61.9173 62.8505 66.5238 66.65 69.9112 69.7249
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 35.4645 38.7454 44.1442 47.838 50.9217 53.2146 55.3085 56.9755 58.1873 62.9636 65.8007 65.7659 66.376 65.6354 67.6444 69.4206 73.5217 35.1278 39.8803 42.2575 46.0857 48.9035 51.4552 57.4906 58.486 58.2428 60.1478 60.1464 64.6747 64.4393 66.1579 68.6333 66.1724 72.8286
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
