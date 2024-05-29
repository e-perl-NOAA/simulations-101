#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:11:31 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403491 first rand#: 0.285971
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
1972 1 1 201.454 0.05
1973 1 1 957.601 0.05
1974 1 1 1011.91 0.05
1975 1 1 2014.15 0.05
1976 1 1 3071.92 0.05
1977 1 1 3808.74 0.05
1978 1 1 5035.46 0.05
1979 1 1 5973.41 0.05
1980 1 1 7960.57 0.05
1981 1 1 9801.75 0.05
1982 1 1 9494.83 0.05
1983 1 1 9640.29 0.05
1984 1 1 10738.8 0.05
1985 1 1 9756.85 0.05
1986 1 1 10668 0.05
1987 1 1 9949.53 0.05
1988 1 1 9584.33 0.05
1989 1 1 9458.99 0.05
1990 1 1 7168.2 0.05
1991 1 1 6736.06 0.05
1992 1 1 3547.49 0.05
1993 1 1 4048.4 0.05
1994 1 1 3619.91 0.05
1995 1 1 3761.15 0.05
1996 1 1 3980.61 0.05
1997 1 1 3270.55 0.05
1998 1 1 3147.45 0.05
1999 1 1 3128.4 0.05
2000 1 1 3057.55 0.05
2001 1 1 2890.98 0.05
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 2 0 0 # FISHERY
2 1 0 0 # SURVEY1
3 0 0 0 # SURVEY2
4 34 0 0 # Depletion
#_year month index obs err
2000 7 1 0.136139 0.8 #_orig_obs: 0.2 FISHERY
1977 7 2 185374 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 88912.4 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 133201 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 40826 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 87193 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 56880.4 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 55120.1 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 31219.2 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 32474.1 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 2.61627 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 18.1268 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 3.40704 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 6.58321 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 8.75703 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 0.536406 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 3.62287 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 12.3868 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 6.65267 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 1.51115 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 3.1597 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 1.39364 0.7 #_orig_obs: 1.69379 SURVEY2
2001 7 4 0.151387 0.3 #_orig_obs: 0.3 Depletion
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
1995 7 1  440.314 0.2 #_orig_obs: 255.678 #_ FISHERY
1996 7 1  359.539 0.2 #_orig_obs: 322.972 #_ FISHERY
-9999 0 0 0.0 0.0 # terminator for discard data 
#
1 #_use meanbodysize_data (0/1)
30 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
1995 7 1 2 1 23.7338 0.3 #_orig_obs: 2.31626  #_ FISHERY
1995 7 1 1 1 42.1359 0.3 #_orig_obs: 1.80019  #_ FISHERY
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
0 1e-07 0 0 0 0 1 #_fleet:4_Depletion
25 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 68 72 76 80 90
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 3 0 2 4 1 2 6 3 5 11 5 8 8 0 0 0 0 0 0 0 0 0 0 5 0 2 2 0 2 2 6 3 5 5 13 7 5 6 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 3 0 0 2 2 1 5 2 6 13 9 6 5 3 0 0 0 0 0 0 0 0 0 3 0 1 2 1 1 3 4 3 10 6 12 3 8 8 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 3 4 3 5 4 2 7 11 10 6 0 0 0 0 0 0 0 0 0 0 0 0 0 6 0 3 4 3 3 5 6 12 8 6 4 3 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 2 3 2 1 1 5 5 4 5 9 12 7 7 0 0 0 0 0 0 0 0 0 1 1 0 2 2 0 3 2 7 2 4 5 11 9 3 4 1 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 3 0 1 1 0 0 1 3 1 4 3 4 14 7 12 5 0 0 0 0 0 0 0 0 0 0 0 5 1 0 3 1 5 1 3 8 3 8 17 6 5 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 1 2 4 1 1 4 3 5 5 4 5 9 11 8 4 1 0 0 0 0 0 0 0 4 1 1 0 0 2 2 0 3 5 3 6 2 6 13 4 3 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 3 1 3 2 2 1 1 3 4 10 7 5 9 8 6 4 4 0 0 0 0 0 0 0 1 1 0 0 0 0 1 2 4 4 2 4 6 10 9 3 5 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 0 3 0 1 1 1 0 4 1 7 5 7 4 9 8 3 4 4 0 0 0 0 0 0 0 0 2 0 0 1 1 2 2 4 5 4 4 4 17 8 4 5 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 1 0 4 3 5 2 2 1 5 10 10 5 6 1 0 0 0 0 0 0 0 0 0 2 2 0 2 1 3 0 5 3 9 5 10 8 11 7 2 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 1 1 0 1 6 1 5 1 4 8 13 8 4 3 0 0 0 0 0 0 0 0 0 0 0 0 2 1 4 3 3 5 10 5 14 11 3 6 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 0 3 3 2 3 9 5 5 13 8 7 2 0 0 0 0 0 0 0 0 0 1 2 1 0 1 3 1 3 4 5 2 4 9 14 8 6 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 6 1 1 0 2 0 1 5 7 6 7 10 12 15 0 0 0 0 0 0 0 0 0 0 4 0 0 3 2 1 0 0 1 6 5 3 6 13 4 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 11 2 2 1 4 2 4 2 3 11 10 5 5 0 0 0 0 0 0 0 0 0 0 0 7 1 1 4 0 2 2 3 6 2 8 7 13 7 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 4 0 0 1 3 3 4 3 3 5 4 3 7 9 7 6 8 0 0 0 0 0 0 0 0 0 2 0 1 1 0 1 1 5 1 6 6 6 10 9 6 0 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 7 1 2 3 4 4 7 6 4 1 5 4 7 6 2 3 0 0 0 0 0 0 0 0 3 0 1 1 3 3 5 1 4 6 3 3 6 9 5 6 0 0
 1986 7 1 3 0 125  0 0 0 0 1 1 1 0 2 1 2 2 5 5 4 2 4 4 4 5 5 2 3 0 0 0 0 0 0 0 1 1 3 3 0 1 3 2 5 1 6 6 5 4 13 8 7 3 0 0
 1987 7 1 3 0 125  0 0 0 0 0 1 2 4 4 3 1 2 2 4 2 3 4 5 1 6 7 5 4 0 0 0 0 0 0 0 0 0 6 2 1 2 5 3 2 2 4 4 3 3 9 7 9 3 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 0 1 2 0 2 3 6 7 4 7 5 3 1 3 5 6 2 0 0 0 0 0 0 0 3 1 0 0 2 4 6 7 5 2 8 3 4 2 7 6 7 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 4 1 1 1 3 3 3 4 7 7 8 3 6 2 9 2 1 3 0 0 0 0 0 0 0 0 0 1 1 5 1 7 5 5 5 2 4 1 4 6 5 5 0 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 2 0 1 4 2 8 2 4 3 5 2 4 6 4 1 1 0 0 0 0 0 0 0 0 0 3 2 2 3 4 3 8 4 12 6 4 4 9 5 4 3 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 8 1 2 1 2 3 4 3 5 4 7 3 4 12 5 0 0 0 0 0 0 0 1 1 1 0 2 2 4 4 8 5 4 4 4 3 5 7 2 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 0 0 2 2 2 4 4 4 3 5 2 7 1 4 9 5 3 0 0 0 0 0 0 0 0 0 0 2 0 2 3 4 5 3 7 6 12 7 4 7 3 2 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 1 1 1 2 2 3 4 4 2 2 8 7 3 10 7 5 0 0 0 0 0 0 0 0 0 0 4 2 1 3 2 1 8 4 4 6 10 6 9 1 2 0 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6 4 5 2 3 7 3 9 4 4 11 6 4 0 0 0 0 0 0 0 0 0 0 2 1 2 5 3 3 7 5 4 10 3 1 8 2 0 1 0 0
 1995 7 1 3 0 125  0 0 0 0 3 0 0 2 1 1 4 4 4 7 7 4 4 1 4 11 10 0 0 0 0 0 0 0 0 3 0 2 3 2 1 4 4 5 5 4 3 5 1 4 5 3 4 0 0 0
 1995 7 1 3 1 125  0 0 0 0 8 1 7 9 7 5 6 3 2 1 3 3 7 0 0 4 0 2 0 0 0 0 0 0 0 5 2 5 4 8 5 2 5 5 3 1 2 4 2 2 1 1 0 0 0 0
 1995 7 1 3 2 125  0 0 0 0 0 1 1 1 2 1 4 4 6 7 5 9 3 3 4 5 9 7 0 0 0 0 0 0 0 0 0 0 2 0 2 1 7 6 1 4 4 4 5 4 8 3 2 0 0 0
 1996 7 1 3 0 125  0 0 0 1 0 1 1 1 2 2 3 2 2 5 9 5 3 4 4 8 4 2 0 0 0 0 0 0 0 0 0 3 0 3 1 0 4 9 5 7 6 4 3 7 8 4 2 0 0 0
 1997 7 1 3 0 125  0 0 0 1 0 0 0 0 2 1 1 6 2 6 5 5 6 7 7 7 7 0 0 0 0 0 0 0 0 0 4 1 2 1 2 6 5 4 2 7 5 3 6 0 11 2 1 0 0 0
 1998 7 1 3 0 125  0 0 0 0 3 2 1 3 1 2 1 3 4 2 4 7 7 4 7 7 5 2 1 0 0 0 0 0 0 1 1 1 1 0 4 3 2 0 3 7 7 7 6 3 4 6 3 0 0 0
 1999 7 1 3 0 125  0 0 0 0 2 0 0 0 2 1 2 2 7 2 10 4 6 8 3 7 3 8 0 0 0 0 0 0 0 0 0 4 1 2 2 2 4 3 6 2 8 2 6 7 3 4 2 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 2 0 1 3 3 7 3 6 3 6 2 4 1 6 5 4 0 0 0 0 0 0 0 0 0 1 1 3 2 2 1 2 3 3 6 1 4 7 11 15 4 2 1 0 0
 2001 7 1 3 0 125  0 0 0 0 1 1 1 1 1 4 5 2 3 5 2 10 4 0 7 9 6 5 0 0 0 0 0 0 0 0 0 0 3 2 0 3 5 1 2 8 3 3 6 5 7 7 3 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 1 2 6 3 2 1 4 5 1 7 3 6 4 4 8 2 5 0 0 0 0 0 0 0 0 0 3 2 2 2 2 2 3 3 2 6 5 6 1 9 3 6 3 0 0
 1980 7 2 3 0 125  0 0 0 0 0 4 1 0 2 1 2 2 2 3 3 2 6 0 4 12 10 5 0 0 0 0 0 0 0 1 0 2 1 1 2 2 3 2 2 4 4 6 5 10 11 8 1 1 0 0
 1983 7 2 3 0 125  0 0 0 0 2 3 2 0 5 5 5 4 4 1 1 2 1 2 6 8 4 10 0 0 0 0 0 0 0 0 1 2 6 2 4 4 2 1 1 2 0 4 2 6 10 13 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 9 3 4 1 3 3 4 2 2 2 2 1 0 1 3 3 7 7 1 0 0 0 0 0 0 3 5 3 9 8 6 3 6 1 3 2 2 1 1 1 6 4 3 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 5 5 6 2 3 5 5 7 7 5 4 1 1 1 3 1 1 0 0 0 0 0 0 1 3 1 1 2 5 5 5 8 4 3 7 4 3 3 2 6 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 6 4 4 2 2 4 4 4 7 5 4 1 1 3 5 3 0 0 0 0 0 0 0 0 0 10 5 0 3 3 7 7 3 4 4 3 5 1 1 7 1 2 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2 2 4 2 3 6 3 3 4 4 4 6 4 3 4 5 3 3 0 0 0 0 0 0 0 3 3 3 6 3 10 1 5 5 3 5 2 2 4 2 1 2 0 0 0 0
 1998 7 2 3 0 125  0 0 0 0 2 0 2 3 3 2 5 4 7 2 3 1 4 4 3 4 4 3 0 0 0 0 0 0 0 1 0 2 2 2 1 5 4 7 7 4 5 7 7 4 6 4 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 5 1 5 7 6 8 9 3 4 6 6 1 2 4 3 3 0 0 0 0 0 0 0 0 1 3 1 3 2 4 6 1 5 4 5 2 6 1 4 2 2 0 0 0 0
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
0 1e-07 1 0 0 0 1 #_fleet:4_Depletion
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5 1 1 3 1 2 1 0 3 4 9 2 6 0 0 3 2 2 2 2 0 2 1 1 0 2 2 7 5 6
1972  7 1  3 0 2 1 -1 75  1 3 3 2 1 4 0 1 1 0 3 3 0 0 6 3 5 0 0 1 3 0 2 4 4 4 1 2 1 2 0 6 4 5
1973  7 1  3 0 2 1 -1 75  0 0 1 1 1 1 3 3 3 4 2 0 0 1 3 7 4 0 0 0 4 0 2 3 2 4 4 2 1 2 1 5 4 7
1974  7 1  3 0 2 1 -1 75  0 0 4 2 1 6 1 3 3 1 2 2 1 0 7 3 4 0 0 2 2 2 4 4 3 2 0 0 1 2 1 5 3 4
1975  7 1  3 0 2 1 -1 75  0 0 4 1 1 4 1 0 4 4 1 2 1 0 6 4 3 0 0 0 0 9 1 1 1 0 1 0 1 0 1 10 6 8
1976  7 1  3 0 2 1 -1 75  0 0 3 1 3 2 1 1 1 3 2 2 1 1 9 3 9 0 0 0 0 4 1 1 1 1 3 1 1 2 0 9 9 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 6 3 2 2 3 1 3 3 0 1 5 5 2 0 0 1 3 0 0 2 3 1 6 0 2 1 6 5 2 7
1978  7 1  3 0 2 1 -1 75  0 0 0 2 5 2 3 4 1 2 0 3 0 1 3 5 2 0 0 1 1 1 1 1 5 3 1 3 2 3 2 6 3 9
1979  7 1  3 0 2 1 -1 75  0 0 0 2 2 2 7 5 1 3 1 1 4 2 6 8 0 0 0 0 0 3 2 4 4 1 2 1 1 0 0 4 4 5
1980  7 1  3 0 2 1 -1 75  0 2 0 1 0 1 2 2 3 4 2 2 1 1 8 10 0 0 0 0 0 3 2 2 1 4 2 2 3 1 1 7 2 6
1981  7 1  3 0 2 1 -1 75  0 1 0 1 1 2 2 5 2 0 2 3 1 1 7 3 4 0 0 1 1 0 4 4 2 0 2 2 2 1 1 10 4 6
1982  7 1  3 0 2 1 -1 75  0 2 3 0 0 0 2 0 1 4 5 2 1 3 4 4 8 0 0 0 0 7 1 5 1 2 1 3 1 3 1 3 8 0
1983  7 1  3 0 2 1 -1 75  0 0 0 5 1 0 1 3 3 3 1 4 1 1 6 1 7 0 0 1 0 1 0 2 7 4 4 3 2 2 3 3 1 5
1984  7 1  3 0 2 1 -1 75  0 0 0 7 3 0 0 0 1 4 3 1 2 1 6 3 2 0 0 5 1 4 2 1 3 0 2 4 2 2 0 8 4 4
1985  7 1  3 0 2 1 -1 75  0 0 0 12 3 4 1 1 2 0 2 3 3 2 4 2 1 0 0 0 1 2 3 0 0 2 1 1 2 1 0 12 3 7
1986  7 1  3 0 2 1 -1 75  0 4 2 2 2 5 6 3 2 1 0 3 2 1 7 2 2 0 0 0 0 5 4 4 2 1 1 1 3 1 2 4 3 0
1987  7 1  3 0 2 1 -1 75  0 5 5 5 2 3 4 1 2 1 2 3 0 2 7 4 0 0 0 9 1 0 2 4 0 0 1 0 0 1 3 5 2 1
1988  7 1  3 0 2 1 -1 75  2 1 1 8 3 2 4 2 3 1 1 1 1 2 3 6 0 0 1 1 3 5 1 2 2 4 1 0 1 0 1 6 6 0
1989  7 1  3 0 2 1 -1 75  0 2 1 5 4 8 3 2 2 2 2 1 0 0 4 1 0 0 0 1 6 4 8 2 0 4 1 2 0 1 1 6 2 0
1990  7 1  3 0 2 1 -1 75  0 0 3 2 9 9 3 1 0 3 1 2 0 1 1 3 0 0 0 5 2 7 9 3 1 0 2 3 1 0 0 1 3 0
1991  7 1  3 0 2 1 -1 75  0 0 4 0 5 6 9 6 2 2 0 1 0 0 0 3 0 0 1 1 2 4 5 6 1 2 5 1 1 0 1 5 2 0
1992  7 1  3 0 2 1 -1 75  0 0 4 3 6 4 3 6 7 0 1 1 1 0 0 1 2 0 0 3 4 3 0 9 4 4 3 1 0 1 1 1 2 0
1993  7 1  3 0 2 1 -1 75  0 0 6 2 4 6 1 3 6 2 1 2 2 2 0 0 0 0 0 2 4 5 6 1 6 3 6 3 1 0 0 1 0 0
1994  7 1  3 0 2 1 -1 75  0 0 5 4 2 0 6 4 2 3 3 2 0 0 4 0 0 0 0 0 9 5 3 4 4 3 4 2 0 6 0 0 0 0
1995  7 1  3 0 2 1 -1 75  3 3 2 3 4 2 2 4 5 1 1 0 0 1 0 0 0 0 0 0 7 7 0 3 4 4 5 5 1 5 1 0 2 0
1995  7 1  3 1 2 1 -1 75  0 19 1 4 6 5 1 0 3 1 0 1 0 1 0 0 0 0 10 5 5 4 2 3 2 0 0 0 1 0 1 0 0 0
1995  7 1  3 2 2 1 -1 75  0 1 2 2 1 2 2 4 4 5 3 3 3 2 4 0 0 0 0 0 5 5 2 3 4 5 4 4 0 1 1 3 0 0
1996  7 1  3 0 2 1 -1 75  0 0 8 2 8 6 5 2 1 1 0 2 1 1 1 1 0 0 2 2 10 4 2 1 4 2 0 4 0 0 1 4 0 0
1997  7 1  3 0 2 1 -1 75  0 3 4 4 6 2 3 3 1 2 1 2 1 1 5 0 0 0 0 0 5 6 6 6 5 3 0 1 4 1 0 0 0 0
1998  7 1  3 0 2 1 -1 75  3 0 2 4 4 6 6 4 3 2 0 2 2 3 5 0 0 0 0 2 2 4 6 2 4 1 0 2 0 1 2 2 1 0
1999  7 1  3 0 2 1 -1 75  2 0 1 4 4 4 5 2 3 6 2 3 1 1 3 0 0 0 3 1 3 5 2 6 2 2 2 1 3 0 0 4 0 0
2000  7 1  3 0 2 1 -1 75  0 6 3 2 2 4 4 6 1 4 3 5 0 2 3 0 0 0 0 2 0 5 5 5 3 2 1 3 1 1 0 2 0 0
2001  7 1  3 0 2 1 -1 75  0 1 1 4 1 3 1 7 1 7 2 1 0 1 2 0 0 0 0 6 5 5 1 6 5 1 3 2 2 0 1 6 0 0
1977  7 2  3 0 2 1 -1 75  1 2 2 3 2 3 6 3 2 0 3 1 2 1 7 8 0 0 2 4 1 3 4 0 1 1 1 2 0 1 2 3 4 0
1980  7 2  3 0 2 1 -1 75  3 0 2 0 2 3 1 2 1 4 2 0 3 3 4 1 4 0 2 0 3 5 4 4 1 1 2 1 1 0 2 8 2 4
1983  7 2  3 0 2 1 -1 75  2 3 3 3 4 1 0 0 2 2 1 1 2 0 3 4 0 0 8 2 6 0 3 1 0 2 2 1 0 1 2 4 0 12
1986  7 2  3 0 2 1 -1 75  4 4 6 2 2 7 1 0 1 0 1 5 2 1 2 1 4 0 0 6 4 1 5 1 0 0 0 2 3 1 1 4 4 0
1989  7 2  3 0 2 1 -1 75  4 3 3 4 8 7 3 1 1 0 0 0 0 3 0 0 0 0 2 2 5 15 8 0 2 0 0 0 0 4 0 0 0 0
1992  7 2  3 0 2 1 -1 75  3 6 4 10 4 5 2 1 3 0 0 1 0 1 0 0 0 0 7 3 5 5 3 3 0 5 0 0 1 0 0 3 0 0
1995  7 2  3 0 2 1 -1 75  0 11 2 7 3 1 4 2 3 2 1 0 1 1 1 0 0 0 4 7 6 7 2 3 1 1 0 2 0 0 1 2 0 0
1998  7 2  3 0 2 1 -1 75  2 4 3 2 9 4 1 3 2 2 3 0 0 2 0 0 0 0 6 4 3 6 1 2 1 3 2 4 1 5 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 3 5 6 6 2 5 2 2 1 1 0 1 1 0 0 0 0 3 8 5 3 5 3 7 0 1 0 1 1 0 1 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.6305 39.8454 43.9188 49.4114 52.0073 55.3905 57.8175 59.3819 61.3501 64.8179 64.8681 66.69 67.3638 67.4934 69.4837 74.0819 69.7505 29.9293 39.6488 45.7996 49.0006 51.963 52.7676 56.054 57.713 62.8289 64.3797 64.1617 66.1694 68.1505 69.016 70.9052 65.8633 69.33
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.0127 39.8672 43.6955 46.7207 52.9493 56.9862 57.2657 59.1734 62.1276 63.4225 65.0995 66.6804 69.011 67.5748 70.8468 73.4084 74.4319 30.8653 39.374 45.9705 47.9922 52.6309 55.0295 57.3323 59.4064 61.8125 62.041 63.6056 65.7351 66.9966 67.6221 68.8942 68.8944 69.2565
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 1 1 2 30.7345 37.4699 43.6346 46.6922 50.2458 52.0457 55.9006 57.5452 59.3143 60.2161 61.5442 60.1038 63.1496 65.7611 66.1786 68.4765 71.3063 32.4088 37.7687 43.3665 48.3612 50.1655 52.2679 55.9154 58.0575 59.3233 61.2793 59.8218 62.0305 62.3853 65.5894 66.1505 68.0089 69.0474
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 2 1 2 35.7444 39.5733 45.734 49.5993 53.0109 56.7019 58.6397 60.665 60.5615 63.9392 63.7951 67.4479 66.3587 68.8705 70.5718 68.337 75.2546 33.4972 43.5075 46.1027 50.1806 52.8719 57.1499 57.5497 59.6439 59.5949 62.5919 65.222 62.5509 68.3116 64.8719 66.7787 69.8368 74.3016
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 33.2075 39.8718 43.8426 48.1726 48.4492 54.4881 58.2486 59.377 58.7027 59.5962 62.3637 62.224 66.4567 68.4533 69.1127 71.4003 71.3949 34.1309 41.3994 43.5197 47.4621 48.5551 53.7678 56.2222 56.5619 61.4685 61.5951 62.1712 64.5267 63.1086 66.2588 67.8461 68.2908 72.1522
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.292 40.6557 43.9207 47.1858 50.132 52.1026 53.9192 59.5613 59.2413 62.418 63.7402 67.1983 64.7296 66.5308 68.9526 73.0644 73.021 35.0308 40.2561 44.7908 46.2643 51.1634 53.0335 55.2579 60.654 60.5105 61.088 63.8621 64.6296 68.1145 65.9368 66.8948 71.6601 68.194
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

