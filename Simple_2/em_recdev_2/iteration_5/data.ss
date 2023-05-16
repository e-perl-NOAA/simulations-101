#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon May 15 11:09:55 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684163395 first rand#: 0.775848
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
1972 1 1 201.072 0.01
1973 1 1 1005.71 0.01
1974 1 1 982.63 0.01
1975 1 1 1979.28 0.01
1976 1 1 2981.95 0.01
1977 1 1 3996.24 0.01
1978 1 1 4932.52 0.01
1979 1 1 5978.93 0.01
1980 1 1 8040.61 0.01
1981 1 1 9944.23 0.01
1982 1 1 9931.99 0.01
1983 1 1 10032.9 0.01
1984 1 1 10132.2 0.01
1985 1 1 10159.9 0.01
1986 1 1 9973.22 0.01
1987 1 1 10167.4 0.01
1988 1 1 9001.84 0.01
1989 1 1 7858.88 0.01
1990 1 1 6977.39 0.01
1991 1 1 6007.22 0.01
1992 1 1 4031.08 0.01
1993 1 1 3980.52 0.01
1994 1 1 4043.82 0.01
1995 1 1 3963.15 0.01
1996 1 1 3978.28 0.01
1997 1 1 3003.09 0.01
1998 1 1 2960.4 0.01
1999 1 1 2985.86 0.01
2000 1 1 2937.86 0.01
2001 1 1 2985.69 0.01
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
1977 7 2 141789 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 199606 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 60453.6 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 70199.5 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 73805.1 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 32355.7 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 61009.2 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 37741.9 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 54907.9 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 5.45003 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 2.86001 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 6.15186 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 10.1056 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 1.29982 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 13.6582 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 7.40479 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 5.26818 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 3.60135 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 1.3337 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 23.3125 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 6.92894 0.7 #_orig_obs: 1.69379 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 1 3 2 1 3 1 7 3 3 10 12 9 8 0 0 0 0 0 0 0 0 0 0 3 1 1 0 4 1 2 5 3 4 6 6 15 4 3 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 3 2 4 7 1 1 4 5 5 8 7 7 4 4 0 0 0 0 0 0 0 0 0 1 0 1 1 2 2 0 7 3 4 3 16 6 6 7 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 2 3 4 2 1 5 13 11 8 10 0 0 0 0 0 0 0 0 0 0 0 0 0 11 1 1 3 5 4 5 3 6 11 5 3 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 2 2 1 4 1 2 6 4 4 8 17 8 8 0 0 0 0 0 0 0 0 0 1 0 0 1 2 0 2 4 1 4 1 5 12 12 6 5 0 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 0 1 2 0 3 2 3 4 7 10 8 9 9 0 0 0 0 0 0 0 0 0 0 0 4 1 1 1 4 6 3 2 3 7 11 13 8 1 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 1 0 0 3 0 1 3 4 4 4 4 7 14 4 5 3 0 0 0 0 0 0 0 3 0 0 0 1 0 3 2 4 3 3 2 7 11 10 7 10 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 5 0 0 1 1 3 2 5 5 4 3 10 9 12 7 3 1 0 0 0 0 0 0 2 0 0 0 0 1 4 1 0 1 3 7 8 2 7 9 6 3 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 0 2 0 2 1 1 0 3 2 2 2 4 10 14 12 4 6 0 0 0 0 0 0 0 0 2 0 3 0 2 3 0 5 3 1 4 8 13 11 2 2 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 6 2 6 2 1 4 1 4 5 11 8 7 0 1 0 0 0 0 0 0 0 0 0 3 3 3 1 1 2 3 2 10 5 7 11 4 10 1 1 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 3 1 2 3 1 3 3 2 1 3 4 4 9 8 5 3 7 0 0 0 0 0 0 0 0 0 2 0 3 5 2 2 3 4 1 11 2 9 7 7 5 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 1 0 2 0 0 5 3 1 3 3 4 6 12 15 5 5 0 0 0 0 0 0 0 2 1 3 1 0 0 0 4 5 4 4 3 8 4 5 7 6 3 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 5 1 0 0 3 5 6 7 6 7 4 10 8 9 0 0 0 0 0 0 0 0 0 0 3 1 0 2 3 3 2 3 8 2 2 3 9 5 6 2 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 1 3 3 5 9 6 0 8 9 11 7 2 0 0 0 0 0 0 0 0 0 0 0 1 1 1 4 3 2 2 4 6 7 5 11 4 6 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 1 0 0 1 3 0 2 3 5 3 6 3 4 7 6 4 7 0 0 0 0 0 0 0 0 0 3 1 2 0 0 6 2 3 6 11 4 3 10 11 8 0 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 2 0 2 3 3 1 5 2 5 9 5 11 9 4 6 4 0 0 0 0 0 0 0 0 3 2 1 0 2 1 2 5 3 7 6 2 5 9 5 1 0 0
 1986 7 1 3 0 125  0 0 0 0 0 2 1 0 1 0 1 1 2 8 3 3 4 2 4 13 8 5 3 0 0 0 0 0 0 0 1 0 0 0 1 0 3 1 3 6 9 2 8 4 6 9 5 6 0 0
 1987 7 1 3 0 125  0 0 0 0 1 0 0 0 0 2 1 1 6 3 5 4 3 3 4 14 8 5 4 0 0 0 0 0 0 0 0 0 3 0 1 1 4 1 4 3 8 5 3 6 7 7 5 3 0 0
 1988 7 1 3 0 125  0 0 0 0 0 2 2 2 1 0 2 1 3 3 3 2 11 4 6 4 5 7 4 0 0 0 0 0 0 0 1 2 3 2 1 1 4 4 3 5 3 2 6 5 12 4 5 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1 0 0 2 2 2 1 2 1 2 3 3 6 6 10 9 3 5 0 0 0 0 0 0 0 0 8 1 3 5 4 3 1 4 5 4 4 3 0 7 7 5 3 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3 2 3 3 2 10 9 2 7 5 3 2 6 8 4 2 0 0 0 0 0 0 0 1 1 1 2 4 2 3 2 4 5 2 3 7 5 5 4 2 1 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 2 0 4 5 6 4 6 5 5 9 2 5 0 0 0 0 0 0 0 1 0 2 0 3 1 4 5 1 7 9 3 8 5 1 7 5 8 0 0 0
 1992 7 1 3 0 125  0 0 0 0 2 0 1 1 1 1 6 3 5 1 2 5 7 2 3 7 2 4 0 0 0 0 0 0 0 0 0 0 3 0 2 4 7 5 4 6 7 6 5 8 10 3 2 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 3 0 1 2 1 6 4 1 8 5 3 10 3 6 8 4 0 0 0 0 0 0 0 0 0 0 3 2 2 1 2 1 5 11 4 7 9 4 5 0 2 2 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 0 2 2 4 4 4 9 3 3 8 6 2 0 0 0 0 0 0 0 0 0 0 5 1 0 1 6 5 5 3 5 8 7 7 9 5 4 0 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 1 1 0 2 3 1 3 7 6 0 4 7 8 11 7 0 0 0 0 0 0 0 0 4 0 2 2 2 6 3 1 2 0 2 3 6 6 7 7 9 2 0 0 0
 1996 7 1 3 0 125  0 0 0 1 0 0 1 1 1 4 2 2 5 4 5 8 2 6 8 5 8 6 0 0 0 0 0 0 0 0 0 2 2 1 3 2 3 4 2 3 5 5 6 5 7 4 1 1 0 0
 1997 7 1 3 0 125  0 0 0 1 1 0 1 1 2 1 1 2 4 2 8 8 3 4 2 12 15 0 0 0 0 0 0 0 0 0 2 1 1 0 5 4 1 2 2 7 4 2 5 1 11 3 6 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 1 1 1 1 2 4 0 0 4 3 2 8 7 8 9 8 1 3 0 0 0 0 0 0 1 0 1 1 0 1 2 2 3 3 8 3 3 5 8 9 7 5 0 0 0
 1999 7 1 3 0 125  0 0 0 0 3 0 0 0 2 2 2 3 2 2 5 6 4 5 6 6 8 2 0 0 0 0 0 0 0 0 0 6 0 3 3 2 4 2 1 6 7 6 6 8 7 3 3 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 1 0 2 2 3 3 3 2 5 6 4 5 1 1 7 12 0 0 0 0 0 0 0 0 0 0 0 3 1 4 0 4 5 2 10 3 9 6 3 9 1 5 3 0 0
 2001 7 1 3 0 125  0 0 0 0 2 1 0 0 2 5 1 1 2 5 9 0 5 6 5 7 2 3 0 0 0 0 0 0 0 0 0 2 0 1 3 0 6 2 5 2 3 8 4 7 13 8 5 0 0 0
 1977 7 2 3 0 125  0 0 0 0 3 2 1 4 2 4 2 2 5 3 2 3 2 2 2 8 6 11 0 0 0 0 0 0 0 0 0 9 1 2 1 2 1 2 2 3 2 3 4 4 7 13 2 3 0 0
 1980 7 2 3 0 125  0 0 0 0 2 1 0 0 5 3 5 6 6 4 3 2 3 2 5 5 5 6 2 3 0 0 0 0 0 0 2 2 2 3 5 0 2 9 6 4 2 1 1 2 4 7 3 2 0 0
 1983 7 2 3 0 125  0 0 0 0 2 4 1 4 2 2 2 3 3 3 10 6 6 3 1 8 8 9 0 0 0 0 0 0 0 0 0 2 4 3 2 1 1 3 7 3 3 3 0 6 4 6 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 3 5 4 7 1 1 4 3 1 3 4 5 3 4 0 7 5 3 1 0 0 0 0 0 1 2 2 0 4 4 1 1 2 3 4 3 6 4 3 2 9 6 4 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 4 0 3 3 4 7 3 4 1 5 1 1 4 0 7 3 8 0 0 0 0 0 0 3 1 1 2 5 3 4 5 4 7 6 5 4 4 1 4 8 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 5 3 6 2 5 3 6 1 3 1 2 6 3 3 5 6 0 0 0 0 0 0 0 0 0 3 4 2 9 2 5 4 5 4 3 5 3 1 1 3 8 3 0 0 0
 1995 7 2 3 0 125  0 0 0 0 3 3 3 2 9 5 3 3 3 3 3 3 4 3 4 2 1 2 0 0 0 0 0 0 0 5 5 1 5 7 6 3 3 2 3 3 5 1 4 3 3 3 4 0 0 0
 1998 7 2 3 0 125  0 0 0 2 0 1 3 7 4 4 4 8 8 2 0 2 3 2 3 6 4 4 0 0 0 0 0 0 0 1 3 2 6 2 1 2 8 2 4 4 3 4 5 2 5 3 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 0 2 0 2 3 4 3 5 5 3 0 7 8 3 5 5 0 0 0 0 0 0 0 0 3 1 1 3 4 4 5 7 4 4 6 1 9 5 3 6 4 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5 1 3 2 1 3 2 0 2 2 5 5 2 0 0 2 2 2 1 1 0 3 3 4 2 0 1 5 7 9
1972  7 1  3 0 2 1 -1 75  0 0 0 2 2 1 2 2 1 1 5 5 3 0 8 6 4 0 0 4 0 1 0 1 1 2 2 2 2 3 2 5 3 5
1973  7 1  3 0 2 1 -1 75  0 0 0 1 1 1 3 2 1 1 5 3 0 1 2 6 6 0 0 0 2 1 4 1 3 4 1 3 3 2 3 5 7 3
1974  7 1  3 0 2 1 -1 75  0 0 1 0 2 6 1 4 2 3 2 1 1 1 5 5 10 0 0 3 0 2 1 1 3 1 2 2 2 0 3 3 4 4
1975  7 1  3 0 2 1 -1 75  0 0 0 0 3 3 1 2 2 2 0 1 1 1 4 5 5 0 0 0 0 4 4 3 2 1 2 1 1 2 2 5 7 11
1976  7 1  3 0 2 1 -1 75  0 0 0 1 1 2 1 1 3 0 1 2 2 1 10 1 9 0 0 0 0 5 5 0 4 5 2 1 2 1 2 4 9 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 8 2 1 3 0 4 1 0 3 2 7 2 8 0 0 2 1 2 2 1 1 3 1 2 3 0 3 5 5 3
1978  7 1  3 0 2 1 -1 75  0 0 4 2 0 0 0 4 0 1 1 2 0 1 5 5 5 0 0 4 2 2 2 1 2 2 2 4 1 5 2 7 6 3
1979  7 1  3 0 2 1 -1 75  0 1 1 1 3 4 1 0 0 2 0 3 4 1 3 11 0 0 0 2 2 3 1 2 1 4 2 2 0 2 4 7 4 4
1980  7 1  3 0 2 1 -1 75  0 1 1 3 1 2 0 0 2 0 2 1 3 4 5 11 0 0 0 0 3 1 2 1 1 2 2 2 2 2 5 6 3 7
1981  7 1  3 0 2 1 -1 75  0 2 1 2 7 3 3 1 5 0 1 2 2 2 4 3 3 0 0 3 3 2 6 2 1 1 1 1 1 1 1 4 2 5
1982  7 1  3 0 2 1 -1 75  0 3 0 5 3 2 0 0 3 0 3 0 3 1 8 1 6 0 0 0 0 4 5 4 1 1 0 2 3 0 1 5 11 0
1983  7 1  3 0 2 1 -1 75  0 0 0 2 4 0 4 6 5 1 0 1 0 3 5 3 9 0 0 1 2 3 4 3 1 3 2 1 0 0 1 4 6 1
1984  7 1  3 0 2 1 -1 75  0 0 0 9 1 4 2 3 5 3 1 1 0 2 5 5 7 0 0 1 4 3 2 3 4 2 1 0 0 0 1 2 1 3
1985  7 1  3 0 2 1 -1 75  0 0 0 6 2 6 2 0 11 0 0 1 1 1 3 2 0 0 0 0 3 4 2 3 5 5 2 2 1 1 0 7 2 3
1986  7 1  3 0 2 1 -1 75  0 3 2 3 2 6 1 3 2 3 3 2 0 0 7 3 3 0 0 0 0 8 4 2 3 0 2 2 1 1 2 3 4 0
1987  7 1  3 0 2 1 -1 75  0 2 0 1 2 4 3 2 5 2 2 0 2 1 3 8 0 0 0 2 2 7 4 2 3 1 2 3 4 0 0 2 2 4
1988  7 1  3 0 2 1 -1 75  2 2 2 3 4 2 3 1 1 3 1 2 2 3 3 5 0 0 1 1 2 2 2 3 5 4 1 2 4 2 2 4 1 0
1989  7 1  3 0 2 1 -1 75  0 3 2 4 3 3 2 2 0 1 5 1 1 0 1 2 0 0 0 8 7 3 4 4 1 1 4 3 2 2 2 1 3 0
1990  7 1  3 0 2 1 -1 75  0 0 4 7 5 4 1 2 0 2 2 3 0 2 6 0 0 0 1 3 3 5 2 3 5 2 1 0 1 3 1 4 3 0
1991  7 1  3 0 2 1 -1 75  0 0 7 4 4 6 4 4 2 3 1 1 1 0 2 0 0 0 0 4 4 5 5 1 1 3 3 2 2 0 1 2 3 0
1992  7 1  3 0 2 1 -1 75  0 0 5 7 4 4 3 3 2 0 1 2 2 1 4 0 1 0 0 3 3 2 3 3 6 2 1 3 0 0 2 6 2 0
1993  7 1  3 0 2 1 -1 75  0 0 7 1 9 5 5 4 1 1 1 3 1 2 0 0 0 0 0 2 2 6 7 3 5 3 2 2 0 1 1 1 0 0
1994  7 1  3 0 2 1 -1 75  0 0 4 2 2 3 6 4 6 2 0 0 0 1 2 2 1 0 0 0 6 3 3 6 3 9 2 2 2 4 0 0 0 0
1995  7 1  3 0 2 1 -1 75  3 1 1 3 2 1 3 5 6 1 3 0 1 5 0 0 0 0 0 0 6 5 1 4 2 8 6 4 2 0 0 2 0 0
1996  7 1  3 0 2 1 -1 75  0 0 8 0 2 3 5 4 0 4 3 2 0 0 4 3 0 0 0 2 1 5 4 2 7 4 4 1 2 0 1 4 0 0
1997  7 1  3 0 2 1 -1 75  0 5 6 1 4 6 3 0 3 1 1 0 0 0 2 0 0 0 0 0 5 5 4 4 4 3 4 4 2 3 5 0 0 0
1998  7 1  3 0 2 1 -1 75  1 0 1 1 6 1 1 1 1 6 4 4 1 1 9 0 0 0 0 4 4 3 5 3 2 0 4 5 1 3 3 0 0 0
1999  7 1  3 0 2 1 -1 75  4 2 3 2 5 3 1 2 3 2 1 0 4 0 7 0 0 0 1 0 3 5 4 7 6 0 2 0 1 2 2 3 0 0
2000  7 1  3 0 2 1 -1 75  0 0 4 0 2 3 5 4 3 3 4 6 5 1 5 0 0 0 0 3 5 4 4 2 0 5 2 0 1 2 1 1 0 0
2001  7 1  3 0 2 1 -1 75  0 3 2 3 1 4 3 4 3 1 1 4 3 0 5 0 0 0 0 4 2 4 4 2 3 3 3 3 1 2 0 7 0 0
1977  7 2  3 0 2 1 -1 75  6 3 1 3 3 2 0 0 2 1 1 2 2 1 4 9 0 0 4 3 2 0 1 3 2 4 1 4 0 2 0 5 4 0
1980  7 2  3 0 2 1 -1 75  1 3 2 5 5 2 1 1 1 2 2 1 0 1 4 2 4 0 4 1 5 4 3 2 0 2 1 3 1 2 0 5 4 1
1983  7 2  3 0 2 1 -1 75  5 5 6 3 0 2 4 3 2 0 0 1 0 0 3 4 0 0 2 2 5 3 3 6 1 1 2 0 0 1 2 0 3 6
1986  7 2  3 0 2 1 -1 75  4 4 2 1 5 6 2 3 3 1 4 1 1 0 3 1 4 0 0 6 2 4 1 0 4 3 3 2 1 0 0 1 3 0
1989  7 2  3 0 2 1 -1 75  4 6 7 2 5 5 0 2 2 1 0 1 2 2 0 0 0 0 2 8 5 3 4 1 2 4 1 1 0 5 0 0 0 0
1992  7 2  3 0 2 1 -1 75  1 2 8 4 5 3 5 3 2 1 0 2 1 0 3 0 0 0 4 4 7 5 2 5 1 0 1 1 2 1 0 2 0 0
1995  7 2  3 0 2 1 -1 75  0 16 3 4 4 4 1 3 1 1 2 1 0 0 3 0 0 0 2 7 4 2 1 4 1 3 1 1 0 0 1 5 0 0
1998  7 2  3 0 2 1 -1 75  6 3 6 2 6 1 3 3 1 1 0 2 1 6 0 0 0 0 2 4 4 2 3 6 2 0 4 2 0 5 0 0 0 0
2001  7 2  3 0 2 1 -1 75  1 1 3 8 1 5 3 6 1 1 2 0 2 0 1 0 0 0 2 4 4 5 4 3 3 5 1 0 3 3 1 2 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.1037 38.7814 45.231 48.7116 52.6218 53.4769 57.6791 61.0819 62.4796 62.9894 62.6697 65.684 68.9097 67.6258 70.3532 70.2438 72.2751 33.3657 40.1748 46.2275 49.1117 51.4135 57.4925 57.6154 62.6012 59.5827 63.4964 64.4537 64.0764 66.1962 65.2526 69.4403 68.3104 70.6586
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 31.744 37.6039 43.7434 48.2698 51.6554 54.8838 58.4651 58.7441 61.3604 62.5776 64.7682 66.8698 67.3618 66.3352 69.8952 72.8695 72.7435 31.4975 42.2317 45.7004 50.0916 52.5406 56.2257 58.8705 60.0648 63.5556 64.0855 65.3689 65.4029 65.4744 69.5126 65.5199 68.1484 69.5554
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 33.7972 39.3177 42.7876 47.7547 50.1806 52.7223 56.2733 58.9778 59.5545 63.2337 63.1536 62.8984 64.7725 67.3171 67.691 72.092 72.8464 34.7982 39.0357 43.73 46.9839 51.1222 55.1038 54.9673 59.6111 59.8883 62.6642 64.1262 63.5538 67.6545 66.5283 66.7234 66.6295 70.0291
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.2244 39.1808 43.9534 48.6516 49.287 52.0752 57.0073 57.6461 59.5565 60.4897 62.3911 64.0829 65.2327 67.2676 69.1483 69.8509 71.7478 35.0597 40.2895 43.6153 46.0404 49.2676 55.0143 55.4377 58.6444 58.1973 63.6368 63.2379 63.0549 64.0817 65.1082 67.1494 70.418 71.8542
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
