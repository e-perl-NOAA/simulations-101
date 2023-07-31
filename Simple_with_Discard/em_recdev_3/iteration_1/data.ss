#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Thu Jun 22 12:45:18 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1687452318 first rand#: -0.800103
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
1972 1 1 208.334 0.05
1973 1 1 1065.08 0.05
1974 1 1 1003.92 0.05
1975 1 1 2079.32 0.05
1976 1 1 3020.38 0.05
1977 1 1 3848.67 0.05
1978 1 1 5498.6 0.05
1979 1 1 5549.38 0.05
1980 1 1 8206.15 0.05
1981 1 1 9767.28 0.05
1982 1 1 9775.04 0.05
1983 1 1 10402.7 0.05
1984 1 1 10339.5 0.05
1985 1 1 10187.7 0.05
1986 1 1 9460.13 0.05
1987 1 1 10143.2 0.05
1988 1 1 9399.57 0.05
1989 1 1 7539.1 0.05
1990 1 1 7320.25 0.05
1991 1 1 5736.99 0.05
1992 1 1 3903.52 0.05
1993 1 1 4442.13 0.05
1994 1 1 3845.02 0.05
1995 1 1 3922.95 0.05
1996 1 1 3619.88 0.05
1997 1 1 3191.5 0.05
1998 1 1 2946.16 0.05
1999 1 1 3084.95 0.05
2000 1 1 2762.01 0.05
2001 1 1 3074.87 0.05
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
2000 7 1 0.0792784 0.8 #_orig_obs: 0.2 FISHERY
1977 7 2 183552 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 151174 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 219690 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 87046.7 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 50667.4 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 36540.1 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 65443.4 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 43183.9 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 46025.5 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 2.7929 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 5.04949 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 13.8543 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 7.46925 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 6.24446 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 0.379442 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 3.30392 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 12.9699 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 3.25773 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 0.631761 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 8.62588 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 6.82158 0.7 #_orig_obs: 1.69379 SURVEY2
2001 7 4 0.184119 0.3 #_orig_obs: 0.3 Depletion
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
1995 7 1  218.1 0.2 #_orig_obs: 255.678 #_ FISHERY
1996 7 1  201.351 0.2 #_orig_obs: 322.972 #_ FISHERY
-9999 0 0 0.0 0.0 # terminator for discard data 
#
1 #_use meanbodysize_data (0/1)
30 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
1995 7 1 2 1 29.807 0.3 #_orig_obs: 2.31626  #_ FISHERY
1995 7 1 1 1 45.4018 0.3 #_orig_obs: 1.80019  #_ FISHERY
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 2 1 0 2 3 3 4 0 1 15 15 9 2 0 0 0 0 0 0 0 0 0 0 3 0 2 2 2 3 2 5 2 5 6 11 9 2 7 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 1 2 1 3 2 3 5 4 9 5 7 4 3 0 0 0 0 0 0 0 0 0 0 2 0 3 1 3 6 3 3 5 10 6 9 13 6 2 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 5 1 4 3 4 5 8 11 5 12 8 0 0 0 0 0 0 0 0 0 0 0 0 0 6 2 1 5 2 2 8 6 9 4 7 6 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 2 2 0 2 3 3 8 1 3 8 5 9 6 0 0 0 0 0 0 0 0 0 2 1 3 2 0 1 1 2 6 4 5 5 14 8 5 8 1 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 2 4 4 4 3 4 10 2 2 7 11 4 5 0 0 0 0 0 0 0 0 0 0 0 6 2 0 2 3 2 5 5 3 5 7 11 6 3 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 1 1 2 0 3 4 4 4 1 6 3 10 15 3 6 1 0 0 0 0 0 0 0 0 3 0 0 1 1 4 5 3 3 3 2 5 11 9 4 5 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 2 1 1 4 2 2 4 4 4 5 3 9 12 6 2 0 0 0 0 0 0 0 0 0 1 2 2 4 3 2 7 3 5 5 4 3 9 6 6 1 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 0 1 0 3 1 1 2 6 4 3 6 3 11 12 4 4 3 0 0 0 0 0 0 0 0 1 2 1 4 2 2 2 1 1 1 3 6 10 12 7 5 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 2 3 4 5 3 5 5 4 9 12 4 7 2 0 0 0 0 0 0 0 0 0 0 2 0 1 0 3 2 1 10 12 2 6 5 5 4 3 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 0 3 3 1 1 3 1 2 3 2 6 5 9 6 9 2 4 0 0 0 0 0 0 0 0 0 4 2 0 1 0 4 5 4 6 5 5 12 9 6 2 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 1 0 3 3 8 6 5 4 7 6 7 9 4 0 0 0 0 0 0 0 1 0 0 1 1 2 2 2 2 6 3 5 6 2 13 5 5 5 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 1 2 2 1 3 5 2 3 4 14 5 12 0 0 0 0 0 0 0 0 0 0 3 1 1 1 3 2 2 5 2 5 4 9 10 10 7 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5 1 1 4 2 6 2 3 9 11 11 9 11 0 0 0 0 0 0 0 0 0 0 0 1 0 3 1 2 3 2 3 7 5 13 3 3 4 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 0 0 1 2 2 2 1 3 2 5 3 3 4 13 9 4 3 0 0 0 0 0 0 0 0 0 3 0 0 1 2 1 3 5 5 8 6 6 7 8 6 7 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 3 0 1 2 3 4 4 0 5 3 0 9 13 10 1 2 0 0 0 0 0 0 0 0 0 1 0 0 2 3 4 6 9 4 3 2 10 11 4 6 0 0
 1986 7 1 3 0 125  0 0 0 0 1 1 1 1 1 0 3 1 0 2 5 1 0 5 8 9 11 7 5 0 0 0 0 0 0 0 3 1 2 0 2 1 2 1 2 3 4 3 4 6 10 7 8 4 0 0
 1987 7 1 3 0 125  0 0 0 0 4 0 0 0 1 1 1 2 3 3 2 0 1 7 2 15 10 7 6 0 0 0 0 0 0 0 0 0 5 0 1 0 0 0 2 5 4 4 3 4 9 14 6 3 0 0
 1988 7 1 3 0 125  0 0 0 0 0 2 0 3 2 5 3 1 0 1 5 6 1 4 8 6 8 9 5 0 0 0 0 0 0 0 2 1 0 4 4 1 2 2 3 3 3 2 6 4 4 7 8 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 2 2 4 1 7 3 2 2 2 2 4 1 3 5 8 10 2 6 0 0 0 0 0 0 0 0 5 1 3 1 1 8 1 3 2 2 6 4 2 8 7 3 2 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 2 2 1 6 5 2 3 0 5 3 6 1 5 8 3 6 0 0 0 0 0 0 0 0 1 1 4 1 3 6 3 4 4 6 4 6 1 11 3 5 4 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 4 1 1 5 1 3 4 4 5 1 1 3 12 3 9 0 0 0 0 0 0 0 0 0 0 1 2 5 3 4 7 10 4 8 3 3 4 6 5 3 0 0 0
 1992 7 1 3 0 125  0 0 0 0 2 0 2 0 0 2 3 1 2 7 8 6 7 2 3 8 6 7 0 0 0 0 0 0 0 0 0 0 1 1 5 0 7 1 4 5 9 4 4 5 2 6 5 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 4 2 0 1 5 2 4 4 7 2 5 5 2 9 5 5 0 0 0 0 0 0 0 0 0 0 1 0 2 2 4 6 6 5 4 6 5 5 12 2 0 3 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 12 2 4 3 3 4 5 5 7 6 8 7 1 1 0 0 0 0 0 0 0 0 0 3 4 1 1 3 5 4 2 3 3 8 5 8 4 1 2 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 3 2 2 1 4 1 2 3 4 9 7 6 6 8 9 0 0 0 0 0 0 0 0 0 1 1 0 2 2 0 5 7 1 6 4 5 4 3 12 4 1 0 0 0
 1995 7 1 3 1 125  0 0 0 0 9 1 6 6 6 6 5 7 1 6 3 2 1 2 2 4 0 1 0 0 0 0 0 0 0 5 1 7 2 3 11 5 3 3 2 3 7 1 2 0 2 0 0 0 0 0
 1995 7 1 3 2 125  0 0 0 0 0 0 0 0 1 2 2 3 3 2 6 8 4 5 6 11 3 4 0 0 0 0 0 0 0 0 0 0 2 1 1 3 1 3 3 6 6 3 12 2 9 8 5 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 0 1 1 1 2 4 2 5 5 3 3 7 12 5 8 1 2 0 0 0 0 0 0 0 0 0 1 1 1 4 3 2 4 6 4 4 4 5 6 9 6 3 0 0 0
 1997 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 3 2 6 9 4 5 5 9 3 6 8 0 0 0 0 0 0 0 0 0 2 1 0 0 4 2 2 5 6 2 10 8 7 3 5 3 4 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 0 0 1 1 2 4 2 3 1 2 3 7 2 8 6 6 1 2 0 0 0 0 0 0 2 1 1 0 0 2 4 4 3 6 8 5 5 4 5 9 9 4 2 0 0
 1999 7 1 3 0 125  0 0 0 0 3 4 0 1 4 0 2 3 1 6 5 5 5 3 8 9 8 6 0 0 0 0 0 0 0 0 0 1 0 1 1 2 0 6 1 2 5 3 7 6 6 5 6 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 5 0 2 2 1 2 2 0 3 3 8 8 6 6 5 14 0 0 0 0 0 0 0 0 0 1 0 4 2 3 0 2 1 0 3 3 4 6 9 11 5 0 4 0 0
 2001 7 1 3 0 125  0 0 0 0 2 0 0 3 0 4 6 6 2 4 0 3 2 6 4 13 8 8 0 0 0 0 0 0 0 0 1 0 0 1 3 2 1 4 4 1 7 3 5 6 8 4 4 0 0 0
 1977 7 2 3 0 125  0 0 0 0 2 1 2 1 4 2 2 7 1 3 4 4 3 2 3 6 3 3 0 0 0 0 0 0 0 0 0 3 6 4 1 1 6 6 2 3 3 2 8 5 6 6 6 4 0 0
 1980 7 2 3 0 125  0 0 0 0 0 1 2 0 2 0 7 5 5 5 6 2 4 5 1 6 11 4 1 4 0 0 0 0 0 0 1 2 2 3 1 0 1 1 8 4 3 5 4 4 4 5 2 4 0 0
 1983 7 2 3 0 125  0 0 0 0 2 0 1 3 1 1 5 3 2 0 3 2 3 6 0 11 6 9 0 0 0 0 0 0 0 2 1 3 2 2 1 1 1 5 5 7 2 5 4 3 16 7 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 3 4 4 0 3 5 3 1 4 4 1 2 5 2 2 8 4 4 3 0 0 0 0 0 1 1 1 2 3 5 3 1 5 1 2 4 9 5 4 3 6 6 1 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 1 4 5 4 5 7 2 1 2 1 1 2 2 3 6 2 5 0 0 0 0 0 0 3 2 2 8 3 5 6 4 7 0 2 2 2 2 2 5 17 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 2 1 2 3 3 3 5 4 6 6 6 7 3 2 10 5 0 0 0 0 0 0 0 0 0 3 2 2 6 3 5 3 3 0 4 6 6 6 1 3 2 2 0 0 0
 1995 7 2 3 0 125  0 0 0 0 1 2 5 4 8 1 6 4 2 3 4 7 3 3 1 4 4 3 0 0 0 0 0 0 0 2 2 1 5 6 10 5 3 3 4 6 2 2 3 2 1 2 1 0 0 0
 1998 7 2 3 0 125  0 0 0 3 1 1 2 3 7 6 2 4 1 6 6 2 2 3 5 8 2 2 0 0 0 0 0 0 0 4 2 1 4 2 1 3 4 9 2 4 5 5 3 1 3 3 3 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 1 4 2 1 6 2 4 5 4 3 4 6 5 2 6 6 0 0 0 0 0 0 0 0 5 2 2 2 6 6 3 3 5 3 3 2 3 2 2 10 5 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 6 0 2 1 4 1 3 4 1 1 9 1 2 0 0 2 2 2 3 2 2 3 7 4 1 2 1 2 1 6
1972  7 1  3 0 2 1 -1 75  1 1 2 3 2 3 1 3 1 3 2 1 2 3 7 1 7 0 0 2 1 0 3 3 1 0 3 2 0 1 0 5 5 6
1973  7 1  3 0 2 1 -1 75  0 0 4 0 0 3 3 2 2 1 1 2 0 1 2 3 4 0 0 0 7 3 2 0 3 3 3 2 4 0 1 8 7 4
1974  7 1  3 0 2 1 -1 75  0 0 2 0 2 2 1 1 4 2 0 0 2 1 16 3 3 0 0 2 0 2 1 2 2 2 0 0 1 1 2 9 3 9
1975  7 1  3 0 2 1 -1 75  0 0 1 3 1 0 3 0 3 2 0 2 2 0 4 4 5 0 0 0 0 8 1 2 1 6 1 1 3 1 2 8 4 7
1976  7 1  3 0 2 1 -1 75  0 0 1 0 2 0 1 3 1 0 1 2 1 1 4 3 9 0 0 0 0 7 1 5 4 1 2 4 3 1 2 6 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 8 2 0 2 2 3 4 3 3 2 8 5 2 0 0 0 0 1 6 1 1 0 2 0 1 3 0 8 1 7
1978  7 1  3 0 2 1 -1 75  0 0 0 0 3 5 6 6 2 1 0 3 2 0 7 4 9 0 0 1 2 2 1 2 4 4 0 1 2 2 2 1 1 2
1979  7 1  3 0 2 1 -1 75  0 0 0 0 1 2 1 5 1 3 0 0 2 1 5 9 0 0 0 0 1 3 3 6 2 1 1 6 4 2 3 4 1 8
1980  7 1  3 0 2 1 -1 75  0 1 0 1 4 3 3 3 4 0 0 1 1 1 5 8 0 0 0 0 5 4 5 1 0 2 1 1 2 3 0 3 5 8
1981  7 1  3 0 2 1 -1 75  0 1 3 2 1 5 4 0 0 4 3 1 1 2 4 4 6 0 0 0 1 0 3 3 1 2 2 3 3 2 2 2 2 8
1982  7 1  3 0 2 1 -1 75  0 2 0 2 2 0 2 3 1 0 1 3 1 3 8 3 4 0 0 0 0 2 1 7 6 0 1 5 1 1 0 8 8 0
1983  7 1  3 0 2 1 -1 75  0 0 0 3 2 0 4 0 8 4 3 1 1 2 5 5 3 0 0 1 2 2 1 1 4 4 2 2 1 2 4 5 2 1
1984  7 1  3 0 2 1 -1 75  0 0 0 3 4 4 3 2 3 3 0 1 2 2 3 3 6 0 0 1 3 1 1 1 3 2 0 5 4 1 2 6 3 3
1985  7 1  3 0 2 1 -1 75  0 0 0 8 2 2 4 1 3 4 1 3 0 0 5 2 7 0 0 0 0 3 5 1 3 3 1 2 1 2 2 6 2 2
1986  7 1  3 0 2 1 -1 75  0 2 0 3 1 3 5 2 1 2 2 2 1 3 3 0 2 0 0 0 0 5 1 2 4 2 4 3 3 3 2 5 9 0
1987  7 1  3 0 2 1 -1 75  0 5 2 0 1 2 4 2 2 4 1 4 1 1 3 4 0 0 0 3 4 2 3 3 2 2 1 5 1 1 0 4 4 4
1988  7 1  3 0 2 1 -1 75  2 2 2 2 4 4 2 3 2 4 0 2 1 2 4 5 0 0 1 2 1 2 3 1 3 2 2 1 2 2 3 2 7 0
1989  7 1  3 0 2 1 -1 75  0 0 7 3 2 2 3 1 6 2 1 0 0 1 6 7 0 0 0 3 5 2 0 4 5 2 2 1 1 1 2 3 3 0
1990  7 1  3 0 2 1 -1 75  0 0 5 5 3 3 5 2 2 1 3 2 1 0 3 5 0 0 3 3 5 4 2 3 1 2 1 0 1 2 1 4 3 0
1991  7 1  3 0 2 1 -1 75  0 0 5 0 6 7 2 1 2 1 2 0 1 1 3 2 0 0 1 3 3 8 6 1 3 1 2 2 1 0 0 5 6 0
1992  7 1  3 0 2 1 -1 75  0 0 4 2 9 7 7 0 4 1 3 3 0 0 2 3 1 0 0 2 3 7 4 3 1 0 1 0 1 1 0 3 3 0
1993  7 1  3 0 2 1 -1 75  0 0 8 1 3 3 6 9 1 0 1 4 0 4 0 0 0 0 0 3 2 5 4 3 2 2 6 1 3 0 1 3 0 0
1994  7 1  3 0 2 1 -1 75  0 0 6 0 2 4 5 5 4 2 1 2 0 1 1 2 3 0 0 0 5 3 8 6 4 3 3 0 0 5 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 2 0 2 2 1 0 6 9 5 1 0 0 2 0 0 0 0 0 0 9 1 5 4 6 5 5 3 1 0 1 3 1 0
1995  7 1  3 1 2 1 -1 75  0 10 9 3 1 4 4 6 2 2 2 0 0 0 2 0 0 0 5 7 4 2 5 1 3 1 0 1 0 0 0 1 0 0
1995  7 1  3 2 2 1 -1 75  0 0 2 1 1 2 3 5 4 2 0 0 0 1 11 0 0 0 0 0 4 4 2 10 2 4 3 3 0 1 1 9 0 0
1996  7 1  3 0 2 1 -1 75  0 0 7 5 3 3 4 5 4 4 1 1 1 2 2 2 0 0 1 2 1 4 1 1 4 8 3 3 1 0 0 2 0 0
1997  7 1  3 0 2 1 -1 75  0 3 3 5 4 5 4 6 4 3 3 1 0 2 4 0 0 0 0 0 8 2 1 3 1 0 2 7 3 0 1 0 0 0
1998  7 1  3 0 2 1 -1 75  0 1 0 2 5 4 7 3 4 1 2 2 3 2 1 0 0 0 0 4 0 5 4 3 3 3 1 3 7 1 0 2 2 0
1999  7 1  3 0 2 1 -1 75  2 0 1 2 1 1 7 8 4 1 4 1 1 1 7 0 0 0 1 2 4 1 3 4 5 3 1 0 1 2 4 3 0 0
2000  7 1  3 0 2 1 -1 75  0 1 2 1 2 5 3 8 1 0 3 0 4 5 4 0 0 0 0 1 3 0 2 9 6 5 1 0 4 0 2 3 0 0
2001  7 1  3 0 2 1 -1 75  0 6 1 5 2 4 2 6 2 3 1 1 2 0 6 0 0 0 0 2 5 1 2 2 6 7 1 1 1 0 0 6 0 0
1977  7 2  3 0 2 1 -1 75  3 1 6 7 2 5 2 2 3 0 1 3 1 0 4 7 0 0 3 3 3 2 1 4 4 0 1 0 0 2 0 2 3 0
1980  7 2  3 0 2 1 -1 75  1 1 3 1 2 6 4 3 2 3 2 0 3 3 3 2 3 0 1 1 3 1 2 4 2 3 3 0 1 1 0 5 1 5
1983  7 2  3 0 2 1 -1 75  3 0 3 1 4 1 4 3 6 3 1 4 4 0 8 6 0 0 0 2 1 0 3 2 2 0 3 0 0 1 1 5 1 3
1986  7 2  3 0 2 1 -1 75  5 3 1 5 2 1 2 4 3 2 5 1 0 2 4 1 1 0 0 5 4 3 2 2 2 2 1 0 3 0 0 6 3 0
1989  7 2  3 0 2 1 -1 75  6 4 10 7 3 1 2 2 1 0 3 0 1 8 0 0 0 0 4 5 3 3 1 1 3 0 0 1 0 6 0 0 0 0
1992  7 2  3 0 2 1 -1 75  3 1 3 8 9 12 4 1 0 1 0 1 1 0 4 0 0 0 2 0 5 2 7 4 0 0 1 0 2 0 1 3 0 0
1995  7 2  3 0 2 1 -1 75  0 5 8 1 2 0 7 4 2 5 4 1 1 1 2 0 0 0 1 3 6 1 5 2 5 4 2 1 0 0 0 2 0 0
1998  7 2  3 0 2 1 -1 75  6 0 2 4 6 1 5 1 2 4 2 1 1 2 0 0 0 0 3 2 4 4 6 3 3 2 3 2 1 5 0 0 0 0
2001  7 2  3 0 2 1 -1 75  8 1 7 9 2 2 3 2 4 0 2 0 1 2 3 0 0 0 4 2 2 6 2 0 2 2 1 1 0 1 2 4 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 29.9966 39.7662 44.2245 49.9716 50.0811 54.1925 57.7951 60.8126 62.9859 63.9361 67.1064 65.6299 67.6205 67.5287 69.7695 69.0739 72.1085 28.1517 40.7649 45.5482 48.6539 52.6824 57.9877 58.2578 59.795 61.0081 63.0055 64.1869 64.6674 64.2457 68.8201 71.564 67.0822 72.6312
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 33.5082 40.2818 43.7765 48.6424 52.8829 54.8935 58.2456 58.3165 59.6749 62.4061 63.3221 65.1236 65.2968 67.896 70.7678 70.7299 69.5879 33.3864 39.8664 44.7307 49.2346 54.0715 54.903 56.9302 58.8001 62.1401 64.6788 66.4997 64.7067 66.1271 67.1171 66.4315 69.9518 71.3071
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 1 1 2 32.9013 39.7386 42.8568 46.5662 52.1747 51.8928 54.9047 56.3524 57.7666 59.0313 60.4956 62.6491 63.7458 67.0775 67.3204 69.2385 72.0065 32.9689 39.2279 43.3154 48.4035 52.7215 52.0736 54.6882 57.9317 57.3619 60.2137 59.285 62.7061 62.3653 65.3841 63.874 66.1453 72.4895
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 2 1 2 33.5074 41.0633 46.7132 49.1703 52.5234 56.2097 58.6619 59.9425 59.8695 63.8337 62.8515 67.6188 69.3059 68.0088 68.7257 71.5193 73.2061 34.3098 41.3728 44.2507 48.7535 53.4348 56.7987 55.445 59.1799 61.8554 62.8943 65.2122 67.1547 66.1244 66.1053 69.4926 71.2491 69.6826
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 33.5865 38.806 44.8429 48.3244 49.7908 56.2905 55.2368 59.3828 58.1372 62.5342 64.2225 63.5012 63.9522 64.5272 67.1605 70.9296 69.2818 33.9095 39.1211 43.7902 46.8211 51.1673 52.8857 54.2348 58.7808 60.0866 65.602 64.0542 62.7072 65.2403 66.1781 66.1089 68.7927 65.8281
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 35.4407 39.4666 43.6028 47.8768 50.1354 52.8763 54.9786 58.6292 57.7564 60.3013 65.8857 64.5097 65.7175 67.6758 67.7633 72.2171 70.0015 34.7266 39.0371 42.1836 47.5925 51.1548 53.7284 55.5293 58.0288 62.0905 61.2804 63.8372 65.1112 65.407 65.0417 68.0275 69.2949 67.2374
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
