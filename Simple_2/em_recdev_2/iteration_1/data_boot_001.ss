#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:46:02 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684266362 first rand#: -0.391751
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
1972 1 1 195.208 0.01
1973 1 1 993.959 0.01
1974 1 1 1012.72 0.01
1975 1 1 1976.36 0.01
1976 1 1 2935.85 0.01
1977 1 1 3993.05 0.01
1978 1 1 4996.07 0.01
1979 1 1 5865.4 0.01
1980 1 1 7997.83 0.01
1981 1 1 9779.2 0.01
1982 1 1 9935.5 0.01
1983 1 1 9773.99 0.01
1984 1 1 10311.2 0.01
1985 1 1 9918.19 0.01
1986 1 1 9973.19 0.01
1987 1 1 9755.83 0.01
1988 1 1 9130.14 0.01
1989 1 1 7967.18 0.01
1990 1 1 6934.14 0.01
1991 1 1 6116.73 0.01
1992 1 1 3973.3 0.01
1993 1 1 3970.36 0.01
1994 1 1 3989.23 0.01
1995 1 1 4007.86 0.01
1996 1 1 4011.31 0.01
1997 1 1 2996.36 0.01
1998 1 1 2991.51 0.01
1999 1 1 2974.37 0.01
2000 1 1 3095.51 0.01
2001 1 1 2991.12 0.01
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
1977 7 2 171408 0.3 #_orig_obs: 180099 SURVEY1
1980 7 2 268579 0.3 #_orig_obs: 155121 SURVEY1
1983 7 2 80621 0.3 #_orig_obs: 89228.3 SURVEY1
1986 7 2 69464 0.3 #_orig_obs: 78474 SURVEY1
1989 7 2 81805.4 0.3 #_orig_obs: 34131.8 SURVEY1
1992 7 2 23934.1 0.3 #_orig_obs: 45126.1 SURVEY1
1995 7 2 49658.6 0.3 #_orig_obs: 91601.6 SURVEY1
1998 7 2 47814.6 0.3 #_orig_obs: 59889.4 SURVEY1
2001 7 2 60883.3 0.3 #_orig_obs: 46572.9 SURVEY1
1990 7 3 7.33044 0.7 #_orig_obs: 5.37733 SURVEY2
1991 7 3 4.26968 0.7 #_orig_obs: 2.97797 SURVEY2
1992 7 3 92.7098 0.7 #_orig_obs: 16.2215 SURVEY2
1993 7 3 0.901673 0.7 #_orig_obs: 1.3138 SURVEY2
1994 7 3 12.8507 0.7 #_orig_obs: 8.29572 SURVEY2
1995 7 3 4.22556 0.7 #_orig_obs: 4.56598 SURVEY2
1996 7 3 2.40216 0.7 #_orig_obs: 5.42255 SURVEY2
1997 7 3 1.37408 0.7 #_orig_obs: 10.8367 SURVEY2
1998 7 3 2.22726 0.7 #_orig_obs: 3.69202 SURVEY2
1999 7 3 1.17515 0.7 #_orig_obs: 1.39895 SURVEY2
2000 7 3 6.52217 0.7 #_orig_obs: 3.27961 SURVEY2
2001 7 3 2.63336 0.7 #_orig_obs: 2.02079 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 0 1 3 4 3 7 5 5 2 10 11 6 7 0 0 0 0 0 0 0 0 0 0 1 1 0 0 2 5 2 3 5 4 11 10 7 6 2 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 1 2 0 2 4 5 6 5 7 4 9 11 3 4 0 0 0 0 0 0 0 0 0 1 0 2 1 5 1 3 2 2 7 4 13 8 4 6 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 10 0 4 2 4 9 5 13 8 2 6 0 0 0 0 0 0 0 0 0 0 0 0 0 6 5 4 3 1 3 3 9 11 10 4 2 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 2 2 4 7 2 0 9 8 8 8 7 7 0 0 0 0 0 0 0 0 0 1 2 0 0 2 2 2 3 2 4 2 7 15 9 5 3 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 0 1 1 1 1 1 3 2 5 6 3 3 11 14 12 8 0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 1 4 5 2 3 6 11 6 8 4 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 0 2 0 2 3 3 0 9 9 9 12 7 8 4 0 0 0 0 0 0 0 0 0 0 0 1 2 1 1 3 4 5 7 6 13 6 4 3 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 1 1 2 0 4 1 2 4 6 12 5 8 5 1 0 0 0 0 0 0 0 0 1 1 0 1 1 1 2 3 2 14 3 7 16 7 8 5 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 3 1 0 2 0 2 1 0 2 3 10 5 4 10 12 3 5 3 0 0 0 0 0 0 0 0 2 1 0 4 1 3 2 0 0 8 6 5 12 6 8 1 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 6 2 1 1 0 4 4 4 5 17 13 8 7 2 0 0 0 0 0 0 0 0 0 3 1 0 1 1 3 4 2 1 6 4 11 6 6 2 0 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 2 1 3 3 2 2 2 7 6 9 8 4 6 0 0 0 0 0 0 0 0 0 0 5 1 1 1 1 3 0 6 6 7 3 13 9 9 4 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 5 0 0 0 0 3 1 2 3 3 1 4 3 9 12 3 11 0 0 0 0 0 0 0 1 1 2 0 3 3 3 2 6 2 6 3 3 5 8 8 4 5 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 4 0 4 3 3 5 7 3 2 0 5 7 8 16 0 0 0 0 0 0 0 0 0 0 2 0 1 2 3 2 3 5 2 3 3 4 11 8 7 2 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5 4 1 3 6 5 6 7 3 7 8 5 6 0 0 0 0 0 0 0 0 0 0 0 7 2 1 1 5 3 4 4 2 6 8 7 5 4 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 3 0 0 0 1 4 4 3 1 7 6 9 3 9 8 5 3 0 0 0 0 0 0 0 0 0 3 1 3 2 3 2 2 1 1 1 11 6 7 3 9 4 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 6 2 1 1 2 3 2 6 9 5 7 10 8 5 1 1 0 0 0 0 0 0 0 0 5 2 0 2 0 4 3 7 5 5 4 2 8 5 1 3 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 2 1 2 3 3 2 2 4 5 6 4 4 4 4 5 8 3 0 0 0 0 0 0 0 1 0 3 1 4 1 2 4 9 2 7 2 5 8 1 8 4 1 0 0
 1987 7 1 3 0 125  0 0 0 0 1 0 2 2 1 0 3 7 1 4 1 3 3 3 4 10 10 4 3 0 0 0 0 0 0 0 0 0 1 2 1 4 2 5 2 6 9 8 3 3 8 3 4 2 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 3 2 2 2 3 2 4 4 5 4 5 5 2 9 2 4 1 0 0 0 0 0 0 0 0 0 1 4 2 0 7 6 5 4 5 4 3 3 10 9 3 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 0 1 0 1 1 3 5 7 5 8 5 6 2 1 13 3 1 0 0 0 0 0 0 0 0 0 3 0 2 2 1 7 3 2 5 6 7 6 1 3 12 3 0 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 5 0 4 5 0 4 3 10 7 5 6 3 5 5 1 0 0 0 0 0 0 0 0 0 0 4 2 3 4 6 2 3 5 6 4 5 4 11 2 1 0 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 4 2 2 5 4 4 3 1 6 3 4 6 5 1 3 0 0 0 0 0 0 0 1 2 0 2 0 0 5 5 7 4 6 2 10 11 7 3 3 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 0 1 1 0 1 4 2 3 1 6 6 4 4 5 5 2 6 4 0 0 0 0 0 0 0 0 0 0 4 1 5 1 0 8 5 4 8 4 13 9 2 4 2 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 5 0 2 0 0 5 7 4 5 6 5 4 6 11 2 5 0 0 0 0 0 0 0 0 0 0 7 1 4 8 2 8 1 7 6 1 4 6 2 1 0 0 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 14 1 7 8 2 6 10 4 1 5 7 6 0 0 0 0 0 0 0 0 0 0 0 9 2 2 5 3 3 6 1 4 4 2 2 5 4 2 0 0 0
 1995 7 1 3 0 125  0 0 0 0 0 1 2 2 6 5 4 5 3 3 2 7 4 3 6 3 6 0 0 0 0 0 0 0 0 0 1 2 2 2 3 4 4 8 5 6 6 3 6 2 5 3 1 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 0 0 5 3 3 8 4 5 10 9 5 1 4 3 4 3 6 0 0 0 0 0 0 0 0 0 0 2 4 2 2 4 5 1 6 9 3 2 3 3 1 5 0 0 0
 1997 7 1 3 0 125  0 0 0 0 0 1 2 1 1 0 6 3 4 5 5 3 4 3 7 5 7 0 0 0 0 0 0 0 0 0 4 3 1 1 2 2 7 4 3 8 6 6 3 5 6 3 4 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 1 0 0 1 2 4 4 7 9 8 6 6 4 1 8 4 1 2 0 0 0 0 0 0 0 1 0 0 1 3 4 1 4 5 5 11 7 12 1 1 1 0 0 0 0
 1999 7 1 3 0 125  0 0 0 0 0 2 0 1 2 1 2 2 4 10 4 9 9 10 1 6 1 1 0 0 0 0 0 0 0 0 0 1 1 2 0 2 2 9 6 5 4 11 6 1 6 3 1 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 1 0 1 0 2 3 4 3 6 6 4 3 5 5 12 8 0 0 0 0 0 0 0 0 0 1 0 1 2 1 1 0 2 2 4 9 7 5 9 7 4 5 2 0 0
 2001 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 1 1 1 4 4 4 9 12 9 10 3 7 0 0 0 0 0 0 0 0 0 0 2 0 0 1 3 5 4 5 6 5 8 3 6 6 1 0 0 0
 1977 7 2 3 0 125  0 0 0 0 0 2 2 0 5 1 1 1 5 0 3 2 4 3 5 7 11 8 0 0 0 0 0 0 0 0 0 4 1 3 1 2 4 0 2 7 2 4 3 1 11 8 10 2 0 0
 1980 7 2 3 0 125  0 0 0 0 0 3 4 1 5 4 2 4 2 1 3 2 3 5 3 7 5 6 4 0 0 0 0 0 0 1 2 1 2 1 6 1 3 6 2 3 3 2 6 3 4 1 9 5 0 0
 1983 7 2 3 0 125  0 0 0 0 0 6 1 9 3 2 4 3 6 2 3 1 3 0 1 6 5 6 0 0 0 0 0 0 0 3 4 0 6 2 4 6 7 4 4 5 2 3 5 2 3 4 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 2 6 2 1 6 4 4 6 4 4 2 0 5 2 4 2 3 2 4 0 0 0 0 0 1 1 3 4 2 3 5 2 4 5 2 5 2 1 4 1 10 5 2 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 2 2 1 3 5 1 6 4 6 2 10 3 3 3 6 2 1 0 0 0 0 0 0 0 4 3 2 7 3 4 5 4 4 5 2 4 1 4 4 9 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 5 5 9 2 4 8 6 1 5 4 4 0 2 3 5 5 0 0 0 0 0 0 0 0 0 6 4 3 2 5 0 3 3 6 4 2 4 4 1 7 1 2 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2 3 2 10 14 8 6 2 2 3 1 1 3 0 1 0 1 4 0 0 0 0 0 0 0 0 2 2 7 8 9 7 3 3 4 3 5 0 5 0 1 2 1 0 0 0
 1998 7 2 3 0 125  0 0 0 0 0 2 1 1 6 6 2 5 4 5 9 6 2 2 1 5 4 1 0 0 0 0 0 0 0 3 0 0 6 6 2 6 5 3 4 8 3 4 2 5 6 0 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 2 4 6 5 4 6 2 2 6 5 4 4 2 0 8 6 0 0 0 0 0 0 0 0 3 1 2 4 3 3 5 3 3 6 4 3 1 1 5 5 7 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5 2 2 1 0 4 3 3 0 0 5 2 6 0 0 0 2 2 2 1 2 4 2 2 7 2 1 8 3 4
1972  7 1  3 0 2 1 -1 75  0 2 2 0 1 3 5 1 2 0 2 3 2 2 4 6 7 0 0 1 2 1 4 4 2 4 3 0 1 1 1 4 3 2
1973  7 1  3 0 2 1 -1 75  0 0 0 2 3 1 2 2 4 2 1 2 2 0 7 4 4 0 0 0 7 1 3 2 2 0 4 2 3 3 0 4 2 6
1974  7 1  3 0 2 1 -1 75  0 0 0 5 1 1 1 3 0 1 1 2 3 1 6 5 3 0 0 0 3 2 4 2 2 2 0 2 0 4 5 5 6 5
1975  7 1  3 0 2 1 -1 75  0 0 2 3 0 4 0 2 6 1 2 2 2 2 4 7 3 0 0 0 0 1 3 3 1 3 4 3 2 2 0 5 5 3
1976  7 1  3 0 2 1 -1 75  0 0 0 1 2 2 2 0 1 3 0 2 0 2 7 4 10 0 0 0 0 5 3 2 1 1 3 3 1 1 1 8 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 5 2 4 0 1 3 3 1 1 0 6 5 8 0 0 0 1 1 0 2 6 2 1 0 2 1 2 7 5 6
1978  7 1  3 0 2 1 -1 75  0 0 3 2 2 0 0 5 1 3 3 1 0 0 9 1 6 0 0 0 1 0 0 2 3 5 2 2 1 2 4 6 2 9
1979  7 1  3 0 2 1 -1 75  1 2 0 1 2 1 0 0 2 3 2 0 3 0 6 9 0 0 0 0 3 1 1 0 4 2 5 0 3 1 2 8 4 9
1980  7 1  3 0 2 1 -1 75  0 2 0 3 4 4 0 1 1 3 2 2 2 1 8 6 0 0 0 0 1 1 2 1 1 4 0 8 0 1 3 4 4 6
1981  7 1  3 0 2 1 -1 75  0 1 1 2 2 3 2 1 0 2 0 3 0 1 7 4 9 0 0 0 2 2 4 2 2 2 3 1 2 1 0 6 2 8
1982  7 1  3 0 2 1 -1 75  0 0 0 4 4 2 4 5 0 0 2 6 1 1 3 3 2 0 0 0 0 10 2 4 0 2 0 2 1 4 2 4 7 0
1983  7 1  3 0 2 1 -1 75  0 0 0 6 3 3 4 3 2 1 0 1 2 3 6 2 3 0 0 3 1 3 4 2 1 0 2 0 1 0 0 8 2 9
1984  7 1  3 0 2 1 -1 75  0 0 0 4 1 1 4 3 5 2 2 2 0 4 5 4 5 0 0 2 3 2 2 6 6 1 1 0 0 0 2 4 2 2
1985  7 1  3 0 2 1 -1 75  0 0 0 8 4 3 2 3 5 2 1 0 0 0 4 2 3 0 0 0 3 6 5 4 2 3 2 0 0 0 2 3 1 7
1986  7 1  3 0 2 1 -1 75  0 3 3 2 3 6 1 1 3 2 0 3 0 0 1 2 1 0 0 0 0 7 4 3 9 5 0 1 3 1 0 4 7 0
1987  7 1  3 0 2 1 -1 75  0 2 5 7 3 5 2 2 1 0 1 1 0 0 2 3 0 0 0 5 3 5 3 5 5 2 3 2 0 0 1 4 2 1
1988  7 1  3 0 2 1 -1 75  1 2 2 3 7 3 5 7 4 2 2 1 1 1 3 4 0 0 2 1 1 4 3 3 1 4 0 1 2 0 0 1 4 0
1989  7 1  3 0 2 1 -1 75  0 1 4 3 7 10 2 2 1 1 2 0 1 2 2 4 0 0 0 5 4 2 4 3 5 0 3 3 2 0 0 2 0 0
1990  7 1  3 0 2 1 -1 75  0 0 1 3 4 8 6 4 2 1 0 3 0 2 1 1 0 0 0 2 3 7 0 8 4 3 2 2 2 1 1 1 3 0
1991  7 1  3 0 2 1 -1 75  0 0 3 3 3 4 5 4 2 4 2 2 2 3 1 0 0 0 1 1 2 4 3 8 4 4 2 0 2 1 0 3 2 0
1992  7 1  3 0 2 1 -1 75  0 0 9 3 2 6 2 6 2 1 3 0 0 1 2 0 0 0 0 6 4 4 3 4 5 4 2 3 1 1 0 0 1 0
1993  7 1  3 0 2 1 -1 75  0 0 8 2 3 4 3 3 5 2 3 1 0 1 0 0 0 0 0 3 3 5 5 2 7 2 1 1 4 2 1 4 0 0
1994  7 1  3 0 2 1 -1 75  0 0 14 2 5 5 3 4 4 0 2 0 1 0 2 0 0 0 0 0 8 4 2 2 7 2 2 1 2 3 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 2 4 3 4 5 2 2 4 1 2 6 0 2 0 0 0 0 0 0 16 0 3 2 2 4 3 3 0 2 0 2 0 0
1996  7 1  3 0 2 1 -1 75  0 0 7 6 9 1 3 2 2 1 2 0 0 1 1 0 0 0 3 5 6 5 5 2 4 0 2 3 0 0 5 0 0 0
1997  7 1  3 0 2 1 -1 75  0 2 1 4 6 4 3 2 0 3 0 0 1 1 2 0 0 0 0 0 13 12 5 5 3 0 2 2 2 0 2 0 0 0
1998  7 1  3 0 2 1 -1 75  0 0 5 2 3 6 7 4 2 2 1 0 1 2 3 0 0 0 0 2 5 4 5 7 3 4 2 1 0 1 1 2 0 0
1999  7 1  3 0 2 1 -1 75  0 0 1 0 5 3 7 4 6 2 0 1 0 0 3 0 0 0 2 0 3 6 8 10 4 2 2 0 3 0 0 3 0 0
2000  7 1  3 0 2 1 -1 75  0 1 3 1 6 2 5 6 8 1 2 0 0 1 2 0 0 0 0 1 0 3 3 2 11 3 4 1 1 1 2 5 0 0
2001  7 1  3 0 2 1 -1 75  0 0 1 4 3 2 2 3 6 4 1 2 2 1 2 0 0 0 0 2 3 4 4 2 1 6 9 5 0 3 1 2 0 0
1977  7 2  3 0 2 1 -1 75  5 1 3 3 3 0 1 3 2 1 2 0 1 1 2 6 0 0 2 0 1 2 2 7 3 2 4 2 2 1 0 3 10 0
1980  7 2  3 0 2 1 -1 75  3 2 2 2 2 0 1 1 0 3 1 2 0 0 7 4 8 0 1 5 6 1 0 1 2 1 1 0 2 3 3 1 6 4
1983  7 2  3 0 2 1 -1 75  5 2 5 1 6 6 1 1 0 1 0 0 1 2 2 3 0 0 2 6 4 2 2 11 0 0 1 2 0 0 2 2 2 3
1986  7 2  3 0 2 1 -1 75  2 5 6 4 4 4 0 3 3 6 1 0 0 0 1 0 3 0 0 13 0 1 3 3 2 3 0 0 0 0 0 2 6 0
1989  7 2  3 0 2 1 -1 75  1 4 4 9 3 3 3 1 0 0 1 0 3 2 0 0 0 0 3 3 9 4 5 7 2 1 0 2 2 3 0 0 0 0
1992  7 2  3 0 2 1 -1 75  10 4 3 1 1 4 0 3 3 2 1 0 0 1 2 0 0 0 9 4 7 7 3 3 3 1 0 0 1 1 0 1 0 0
1995  7 2  3 0 2 1 -1 75  0 9 11 7 2 2 1 1 0 1 1 1 0 0 2 0 0 0 4 9 5 6 2 3 2 2 0 2 2 0 0 0 0 0
1998  7 2  3 0 2 1 -1 75  0 4 3 6 9 8 7 0 2 2 1 2 0 0 0 0 0 0 1 2 3 1 15 1 2 2 4 0 0 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 2 3 3 2 3 2 6 3 4 3 0 0 0 0 0 0 0 1 4 8 7 4 4 1 2 3 1 7 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.9952 39.5534 44.624 49.8215 52.3997 55.3633 56.6451 58.8134 62.203 64.9063 66.3042 66.2243 65.5242 68.9241 69.7345 70.0992 72.5813 33.9355 40.4963 45.2456 47.2728 55.23 55.1231 57.8878 60.7446 58.7932 62.0115 61.5804 68.0263 64.4656 67.8592 68.76 71.2856 69.848
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 31.0187 40.7534 43.969 48.9579 52.794 54.607 56.8464 60.4358 61.5192 64.3236 63.9223 66.8455 66.0834 69.5976 69.9029 70.4625 72.2009 30.9136 39.9312 44.1727 49.7178 52.1657 54.8621 58.4966 58.9691 59.4626 62.4808 65.8598 66.5292 62.3086 65.8876 67.9402 67.9194 72.0446
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.8412 38.7125 42.7287 47.6063 48.7969 54.6394 56.3568 57.2293 61.6631 61.1336 66.0307 65.7272 67.9073 66.1682 70.4088 70.4495 71.7288 35.6829 40.0869 44.0953 46.5182 50.6333 52.2509 53.8818 60.1388 58.482 61.3565 65.0204 65.5108 66.871 66.9807 69.3633 69.4903 68.9965
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.9879 39.3687 42.4545 48.3563 51.6433 54.6933 56.5917 57.4946 59.3735 59.5185 65.1091 70.3928 65.0166 65.1956 68.0234 69.3863 73.4073 36.4617 39.3936 42.8227 45.566 50.6241 53.2664 56.8558 56.0766 59.5272 62.3851 62.931 63.4794 63.3092 66.9583 69.5752 69.5966 70.1054
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

