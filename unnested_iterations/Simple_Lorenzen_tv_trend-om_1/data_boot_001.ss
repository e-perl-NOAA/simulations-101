#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:17:48 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403868 first rand#: -0.757338
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
1972 1 1 197.968 0.01
1973 1 1 1009.29 0.01
1974 1 1 982.096 0.01
1975 1 1 2004.62 0.01
1976 1 1 3001.67 0.01
1977 1 1 4077.23 0.01
1978 1 1 4928.11 0.01
1979 1 1 5954.26 0.01
1980 1 1 7978.24 0.01
1981 1 1 10055 0.01
1982 1 1 10237.8 0.01
1983 1 1 9999.34 0.01
1984 1 1 9953.69 0.01
1985 1 1 9978.19 0.01
1986 1 1 9977.76 0.01
1987 1 1 10090.9 0.01
1988 1 1 8982.37 0.01
1989 1 1 7961.84 0.01
1990 1 1 7041.24 0.01
1991 1 1 6027.49 0.01
1992 1 1 3916.32 0.01
1993 1 1 4029.29 0.01
1994 1 1 4013.28 0.01
1995 1 1 4001.26 0.01
1996 1 1 3971.88 0.01
1997 1 1 2963.13 0.01
1998 1 1 2980.76 0.01
1999 1 1 2969.58 0.01
2000 1 1 3032.2 0.01
2001 1 1 3008.44 0.01
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
1977 7 2 203260 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 219012 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 91769.1 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 100567 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 47747.7 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 33758.2 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 60376.5 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 36751.5 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 49474.7 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 12.5219 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 2.24846 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 10.9786 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 2.27285 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 2.32236 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 11.3272 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 3.93516 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 9.9573 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 7.05553 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 3.67661 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 2.90281 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 3.74615 0.7 #_orig_obs: 1.69379 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 2 0 2 1 2 6 2 5 6 9 14 11 6 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 3 3 1 6 7 6 12 9 6 3 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 1 0 2 1 3 4 7 3 6 12 9 3 1 5 0 0 0 0 0 0 0 0 0 3 1 1 2 3 2 2 3 4 10 3 9 9 8 3 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 11 4 2 6 4 4 5 12 8 5 3 0 0 0 0 0 0 0 0 0 0 0 0 0 6 2 4 5 3 4 5 5 8 9 5 2 3 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 2 1 0 3 2 3 5 7 5 14 12 5 4 0 0 0 0 0 0 0 0 0 1 1 1 0 1 3 3 2 3 8 4 4 11 6 6 4 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 3 0 1 0 5 1 3 3 5 1 6 4 8 10 7 7 0 0 0 0 0 0 0 0 0 0 0 6 2 1 3 5 3 1 7 4 3 6 11 5 4 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 2 1 6 1 3 2 5 5 4 8 9 2 6 2 0 0 0 0 0 0 0 5 0 0 0 0 1 2 3 4 5 4 2 7 17 6 8 4 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 2 2 3 1 5 1 0 2 7 4 2 8 6 9 3 3 0 0 0 0 0 0 0 0 0 3 1 4 4 2 2 4 3 2 7 3 11 9 5 6 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 0 1 0 0 3 5 2 3 2 2 5 10 5 7 9 3 1 0 0 0 0 0 0 0 0 2 1 2 2 1 2 2 6 7 8 3 3 7 8 6 6 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 1 2 5 1 0 4 6 4 3 12 7 9 1 1 0 0 0 0 0 0 0 0 0 2 0 0 2 4 3 4 7 7 7 7 10 6 6 2 2 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 3 1 2 0 1 2 1 2 2 5 5 5 7 7 8 5 1 0 0 0 0 0 0 0 0 0 3 0 0 0 1 1 2 8 8 5 7 16 12 3 2 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 2 1 0 1 3 1 2 1 1 5 1 4 9 15 7 5 5 0 0 0 0 0 0 0 2 0 0 0 0 1 3 1 0 2 3 6 7 4 11 10 6 6 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 1 2 0 0 0 1 3 7 7 9 11 7 0 0 0 0 0 0 0 0 0 0 4 0 0 2 1 3 1 1 7 3 10 9 8 15 9 3 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 0 1 0 2 4 2 8 4 7 11 4 3 0 0 0 0 0 0 0 0 0 0 0 4 2 0 0 4 3 5 4 8 6 15 15 1 8 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 1 0 0 0 2 2 0 1 0 5 6 7 3 9 9 5 4 0 0 0 0 0 0 0 0 0 2 0 2 0 4 3 5 2 2 8 5 11 9 11 3 4 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 0 1 2 3 4 5 6 7 7 9 7 4 5 4 0 0 0 0 0 0 0 0 2 0 1 0 0 4 2 2 2 6 2 8 11 7 6 5 0 0
 1986 7 1 3 0 125  0 0 0 3 1 2 0 1 1 0 1 1 0 6 0 0 3 1 3 6 16 5 7 0 0 0 0 0 0 0 8 1 0 1 1 1 1 2 4 1 5 2 5 2 11 10 8 5 0 0
 1987 7 1 3 0 125  0 0 0 0 4 0 1 2 4 0 0 0 1 1 5 2 4 1 2 12 8 9 5 0 0 0 0 0 0 0 0 0 6 2 2 1 0 0 3 5 4 4 6 6 11 8 3 3 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 5 2 2 3 1 2 6 1 2 3 5 4 9 7 5 4 4 0 0 0 0 0 0 0 2 0 4 2 1 2 4 0 1 2 3 5 2 4 13 8 6 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 2 3 1 2 4 3 6 3 5 3 3 4 3 2 4 6 2 4 0 0 0 0 0 0 0 0 2 2 3 3 3 3 5 8 3 5 5 2 3 5 6 2 5 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 4 4 1 4 4 7 6 4 6 5 1 2 4 2 2 0 0 0 0 0 0 0 0 1 4 1 2 4 4 6 5 5 5 7 3 3 2 7 4 3 3 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 2 0 1 3 4 4 8 3 10 8 8 2 5 5 5 0 0 0 0 0 0 0 0 0 1 1 1 1 2 5 4 3 6 2 9 3 4 4 7 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 2 1 0 2 0 0 1 3 7 4 3 6 5 2 5 5 5 5 0 0 0 0 0 0 0 0 0 0 2 1 4 4 1 6 2 4 11 9 4 8 10 2 1 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 3 2 0 2 1 2 11 3 9 9 6 5 5 3 4 3 0 0 0 0 0 0 0 0 0 0 2 0 2 2 3 3 4 6 5 1 6 6 8 3 5 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 2 5 3 5 6 8 5 6 6 5 6 2 3 0 0 0 0 0 0 0 0 0 2 1 0 2 2 4 1 6 5 6 8 6 7 4 2 0 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 0 0 2 2 2 3 4 2 8 6 8 4 7 4 13 0 0 0 0 0 0 0 0 1 0 0 0 1 3 4 1 3 4 3 4 6 2 8 13 4 3 0 0 0
 1996 7 1 3 0 125  0 0 0 1 2 1 0 0 0 3 1 1 3 2 9 8 7 4 3 12 7 5 0 0 0 0 0 0 0 0 0 2 1 3 0 2 3 4 4 2 3 6 5 3 11 3 1 3 0 0
 1997 7 1 3 0 125  0 0 0 2 0 0 2 1 0 1 2 3 5 2 4 5 5 4 9 7 11 0 0 0 0 0 0 0 0 0 1 1 1 0 0 2 3 3 2 10 6 4 8 6 4 6 5 0 0 0
 1998 7 1 3 0 125  0 0 0 0 1 1 1 2 1 1 2 4 3 1 4 3 5 2 2 12 8 5 1 0 0 0 0 0 0 4 1 1 2 0 2 3 1 2 6 4 3 5 4 10 10 3 4 1 0 0
 1999 7 1 3 0 125  0 0 0 0 2 0 1 3 2 2 3 2 2 0 5 4 7 2 2 15 5 4 0 0 0 0 0 0 0 0 0 3 4 1 2 3 4 3 4 5 4 3 6 4 9 6 3 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 3 2 0 1 2 2 1 4 4 4 6 2 4 3 7 13 0 0 0 0 0 0 0 0 0 3 0 0 2 4 2 4 8 3 6 5 7 5 8 5 1 2 2 0 0
 2001 7 1 3 0 125  0 0 0 0 2 0 0 1 2 3 1 3 3 7 3 6 7 4 10 6 8 0 0 0 0 0 0 0 0 0 2 0 1 2 2 1 1 7 3 4 5 6 5 8 5 4 3 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 2 3 1 7 4 1 2 2 4 1 2 5 4 3 10 8 9 0 0 0 0 0 0 0 0 0 4 1 2 4 2 3 6 3 5 2 4 3 4 3 0 5 5 0 0
 1980 7 2 3 0 125  0 0 0 0 2 0 0 2 4 1 4 3 1 5 4 2 8 5 2 7 3 3 3 1 0 0 0 0 0 1 0 2 0 2 1 3 2 3 4 5 2 4 8 7 3 9 5 4 0 0
 1983 7 2 3 0 125  0 0 0 0 0 0 2 1 4 2 1 1 2 4 5 2 6 4 2 8 5 7 0 0 0 0 0 0 0 1 1 5 2 2 1 2 3 8 2 5 1 3 6 2 11 14 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 3 7 8 2 3 1 0 3 3 2 1 5 4 4 4 5 5 2 4 0 0 0 0 0 3 2 2 4 2 1 0 0 1 4 5 0 1 3 6 2 9 5 9 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 6 3 5 4 4 2 4 3 5 4 1 2 3 2 1 3 1 0 0 0 0 0 0 1 1 2 4 4 8 7 7 5 4 2 5 5 1 4 2 10 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 3 3 4 3 1 8 9 5 9 4 1 8 3 1 4 7 0 0 0 0 0 0 0 0 0 6 3 4 3 1 3 3 2 2 3 6 3 3 6 4 0 0 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2 1 3 3 3 5 5 3 5 7 4 3 4 3 3 3 3 1 0 0 0 0 0 0 0 2 2 3 2 3 6 5 3 9 3 8 3 3 1 1 4 5 1 0 0 0
 1998 7 2 3 0 125  0 0 0 1 3 3 2 4 5 7 1 0 3 2 7 3 5 2 3 6 4 1 0 0 0 0 0 0 0 4 3 3 2 4 3 2 5 5 1 2 2 6 6 5 5 5 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 2 4 2 3 8 4 3 3 6 7 5 3 4 4 2 7 0 0 0 0 0 0 0 0 3 1 1 5 5 5 4 5 5 4 5 2 2 4 2 1 4 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 3 2 1 1 2 2 5 1 3 5 2 5 6 0 0 2 2 1 2 2 3 2 1 2 1 2 2 7 3 5
1972  7 1  3 0 2 1 -1 75  1 0 1 1 0 2 1 0 4 1 2 2 2 1 4 7 5 0 0 0 0 1 2 0 1 3 2 1 2 2 2 11 6 8
1973  7 1  3 0 2 1 -1 75  0 0 5 1 0 3 3 1 3 4 3 0 2 1 4 2 11 0 0 0 3 0 1 4 2 1 0 3 0 1 2 6 1 8
1974  7 1  3 0 2 1 -1 75  0 0 3 1 2 1 1 2 1 1 1 0 1 1 5 2 12 0 0 7 0 2 0 0 1 3 2 1 2 1 3 5 6 8
1975  7 1  3 0 2 1 -1 75  0 0 7 1 3 0 3 1 1 3 1 0 4 1 8 7 5 0 0 0 0 3 2 3 1 1 2 0 1 2 2 4 3 6
1976  7 1  3 0 2 1 -1 75  0 0 3 0 4 1 1 1 2 2 1 3 2 0 3 2 8 0 0 0 0 12 1 0 2 2 2 3 1 4 0 6 9 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 8 1 1 1 2 3 3 3 1 1 5 4 9 0 0 2 6 2 1 1 0 0 1 1 0 2 0 5 5 7
1978  7 1  3 0 2 1 -1 75  0 0 3 1 1 1 0 2 1 3 0 1 0 1 4 5 5 0 0 2 2 8 6 4 2 3 1 0 0 1 1 5 3 9
1979  7 1  3 0 2 1 -1 75  0 1 0 2 4 5 1 0 3 1 1 1 2 5 3 7 0 0 0 0 3 2 5 5 2 3 0 2 0 1 1 5 3 7
1980  7 1  3 0 2 1 -1 75  0 0 0 2 2 2 4 2 4 0 3 3 2 2 3 10 0 0 0 0 1 1 6 3 1 2 1 1 0 0 0 8 5 7
1981  7 1  3 0 2 1 -1 75  0 2 1 2 2 1 4 2 1 2 0 1 2 1 3 3 7 0 0 0 1 3 1 1 3 5 4 1 0 0 0 6 7 9
1982  7 1  3 0 2 1 -1 75  0 0 0 0 1 0 5 1 1 6 2 2 1 1 2 5 7 0 0 0 0 4 3 3 3 6 6 2 0 0 0 4 10 0
1983  7 1  3 0 2 1 -1 75  0 0 0 2 0 1 2 1 1 4 3 4 1 1 6 4 9 0 0 1 1 1 1 3 2 6 1 0 0 2 0 7 3 8
1984  7 1  3 0 2 1 -1 75  0 0 0 3 2 0 2 0 1 2 2 2 0 0 7 2 7 0 0 3 1 0 1 4 1 5 5 2 4 0 4 6 4 5
1985  7 1  3 0 2 1 -1 75  0 0 0 2 0 3 1 3 3 4 2 0 4 2 6 4 5 0 0 0 2 2 3 0 5 0 2 0 2 5 4 3 2 6
1986  7 1  3 0 2 1 -1 75  0 2 0 1 3 2 2 2 2 1 2 2 1 3 3 1 9 0 0 0 0 4 3 3 2 1 2 2 1 2 1 6 12 0
1987  7 1  3 0 2 1 -1 75  0 11 2 2 1 3 2 3 0 1 2 1 1 1 3 5 0 0 0 3 1 2 2 1 5 2 2 1 0 1 5 5 1 6
1988  7 1  3 0 2 1 -1 75  3 2 6 3 2 1 2 0 2 0 3 0 2 2 4 7 0 0 3 7 5 1 2 3 0 0 1 1 0 1 1 4 7 0
1989  7 1  3 0 2 1 -1 75  0 4 6 3 3 2 0 1 0 2 1 1 0 0 6 5 0 0 0 11 8 3 3 1 1 0 4 1 1 0 2 6 0 0
1990  7 1  3 0 2 1 -1 75  0 0 6 7 8 1 3 1 0 0 0 2 1 2 4 3 0 0 1 1 6 10 6 3 4 1 1 1 0 0 1 1 1 0
1991  7 1  3 0 2 1 -1 75  0 0 4 3 8 8 6 0 1 1 0 2 1 0 1 1 0 0 2 2 4 4 7 4 3 2 0 2 0 2 1 1 5 0
1992  7 1  3 0 2 1 -1 75  0 0 6 4 4 9 6 8 1 1 0 2 1 0 2 0 2 0 0 1 2 3 10 5 0 2 1 2 1 0 0 1 1 0
1993  7 1  3 0 2 1 -1 75  0 0 2 4 2 5 3 8 4 2 2 0 0 1 0 0 0 0 0 7 2 4 2 9 9 3 1 0 0 0 1 4 0 0
1994  7 1  3 0 2 1 -1 75  0 0 6 2 3 2 5 5 6 5 1 1 1 1 1 0 0 0 0 0 9 3 3 2 8 3 2 1 0 5 0 0 0 0
1995  7 1  3 0 2 1 -1 75  3 2 3 5 5 3 6 3 4 3 2 1 1 4 0 0 0 0 0 0 5 3 6 2 1 2 2 3 1 0 1 1 1 2
1996  7 1  3 0 2 1 -1 75  0 0 7 6 5 1 3 3 1 5 3 0 0 0 1 1 0 0 0 2 1 2 1 3 6 3 9 3 2 1 2 4 0 0
1997  7 1  3 0 2 1 -1 75  0 2 0 2 6 1 5 4 1 3 4 2 2 1 1 0 0 0 0 0 7 10 7 4 4 1 4 1 1 1 1 0 0 0
1998  7 1  3 0 2 1 -1 75  2 3 1 4 1 5 1 1 6 4 1 4 3 2 2 0 0 0 0 2 3 4 4 4 4 4 3 2 0 2 2 1 0 0
1999  7 1  3 0 2 1 -1 75  3 1 0 3 0 2 2 7 3 1 1 0 2 4 5 0 0 0 1 4 3 5 4 5 4 4 1 2 1 1 2 4 0 0
2000  7 1  3 0 2 1 -1 75  0 0 3 6 5 3 2 5 5 4 0 1 0 0 3 0 0 0 0 5 5 2 3 1 5 1 3 3 3 0 1 6 0 0
2001  7 1  3 0 2 1 -1 75  0 1 4 4 2 5 2 2 3 1 2 2 0 2 8 0 0 0 0 4 3 4 5 3 6 0 3 2 1 2 2 2 0 0
1977  7 2  3 0 2 1 -1 75  2 3 2 5 5 3 0 1 2 2 1 2 0 1 3 8 0 0 2 5 4 7 1 4 0 2 2 0 0 0 0 2 6 0
1980  7 2  3 0 2 1 -1 75  3 0 0 2 2 1 0 4 3 2 1 4 0 0 5 2 10 0 2 1 6 1 2 1 6 0 4 0 1 0 1 3 4 4
1983  7 2  3 0 2 1 -1 75  2 3 5 5 1 4 0 2 0 0 3 2 1 1 6 3 0 0 1 1 5 0 3 2 4 1 1 1 1 2 1 6 1 7
1986  7 2  3 0 2 1 -1 75  10 2 2 0 1 2 8 1 2 1 0 2 0 2 4 2 3 0 0 7 2 1 1 2 3 0 1 1 1 1 3 4 6 0
1989  7 2  3 0 2 1 -1 75  3 4 11 6 2 3 1 1 2 2 2 0 0 7 0 0 0 0 5 9 5 2 0 2 1 1 1 1 0 4 0 0 0 0
1992  7 2  3 0 2 1 -1 75  1 4 0 3 6 8 10 1 1 1 0 1 0 0 2 0 0 0 3 4 2 9 7 7 2 0 0 1 0 0 0 2 0 0
1995  7 2  3 0 2 1 -1 75  0 4 6 1 4 4 2 2 3 3 4 1 0 0 1 0 0 0 1 9 7 2 10 0 1 6 2 0 0 1 0 1 0 0
1998  7 2  3 0 2 1 -1 75  3 3 4 1 3 6 3 2 0 3 1 2 2 6 0 0 0 0 6 3 4 1 4 4 3 3 0 1 0 7 0 0 0 0
2001  7 2  3 0 2 1 -1 75  3 4 1 5 11 5 2 0 0 0 1 1 1 1 3 0 0 0 5 3 9 8 1 3 3 0 2 1 1 0 0 1 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 30.2728 37.9681 43.3963 49.1493 51.5569 56.211 59.7122 59.8934 61.1728 63.6521 65.7707 67.9116 66.7771 67.8487 70.645 70.1212 72.7698 29.1567 41.1401 45.6692 50.904 54.0186 54.5941 58.6584 62.6057 61.8209 64.6048 63.4171 68.3736 67.9135 66.4664 67.8619 65.3342 69.254
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 29.1041 39.841 44.8792 49.0483 52.257 54.3726 57.5185 58.9915 63.5615 63.9658 64.6165 65.7041 63.8789 67.3933 69.8637 67.695 74.3692 31.9382 39.1658 45.6036 47.8746 54.2977 57.0576 58.4866 62.4778 62.7231 66.8998 64.1641 64.0957 66.7012 64.9091 67.2821 72.3702 68.5398
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 33.7862 39.0256 43.7723 48.5527 50.6099 54.4143 55.6337 58.7065 60.534 60.4104 62.4599 64.3562 64.0624 65.7309 68.6294 69.5516 70.487 34.7812 39.5474 44.3185 47.9706 50.3766 54.693 59.5512 59.5171 59.7957 61.0024 62.432 63.945 65.8692 67.137 67.7653 67.2507 69.1074
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 32.4234 37.5988 43.9744 47.7085 49.4022 54.6851 57.4747 58.3108 61.8965 62.9729 64.7706 61.115 65.2168 67.2848 67.2734 69.3369 68.459 35.1812 38.6083 44.2477 47.8399 52.9756 55.8594 57.043 60.8633 60.4007 65.2768 63.6709 65.5926 66.6026 64.7795 66.4061 65.7728 70.3754
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

