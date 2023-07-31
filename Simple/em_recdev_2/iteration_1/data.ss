#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Thu Jun 22 11:07:15 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1687446435 first rand#: 0.766876
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
1972 1 1 202.525 0.01
1973 1 1 1013.88 0.01
1974 1 1 1001.96 0.01
1975 1 1 1970.29 0.01
1976 1 1 2952.8 0.01
1977 1 1 3956.75 0.01
1978 1 1 4988.57 0.01
1979 1 1 6111.34 0.01
1980 1 1 8103.65 0.01
1981 1 1 9947.94 0.01
1982 1 1 9879.88 0.01
1983 1 1 10079.5 0.01
1984 1 1 10099.8 0.01
1985 1 1 9985.37 0.01
1986 1 1 9967.97 0.01
1987 1 1 10051.7 0.01
1988 1 1 8958.84 0.01
1989 1 1 7878.23 0.01
1990 1 1 6959.86 0.01
1991 1 1 5937.28 0.01
1992 1 1 4053.31 0.01
1993 1 1 3956.5 0.01
1994 1 1 3998.08 0.01
1995 1 1 4115.61 0.01
1996 1 1 3996.19 0.01
1997 1 1 2984.65 0.01
1998 1 1 2981.56 0.01
1999 1 1 3033.74 0.01
2000 1 1 2981.58 0.01
2001 1 1 3004.73 0.01
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
1977 7 2 221837 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 171723 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 212623 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 65338.4 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 62829.1 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 49070.7 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 38459.7 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 35861 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 29887.4 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 9.75214 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 6.67947 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 0.578013 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 0.281871 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 1.60144 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 20.0855 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 13.3864 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 0.978198 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 6.55954 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 0.428654 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 15.3148 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 29.2147 0.7 #_orig_obs: 1.69379 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 2 1 1 2 6 2 1 4 5 8 12 7 6 0 0 0 0 0 0 0 0 0 0 2 0 2 0 2 0 3 8 3 7 3 13 7 7 6 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 1 1 1 2 4 9 3 4 3 9 7 11 4 2 0 0 0 0 0 0 0 0 0 2 0 2 1 4 0 3 3 6 8 4 8 7 8 8 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 8 2 5 4 3 2 5 5 9 8 8 0 0 0 0 0 0 0 0 0 0 0 0 0 10 4 1 1 5 5 1 5 10 9 7 5 3 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 2 1 1 3 3 4 5 9 3 8 5 10 4 0 0 0 0 0 0 0 0 0 2 0 3 0 1 2 0 3 3 5 5 7 13 8 5 4 4 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 3 0 0 1 0 2 2 2 1 2 6 4 12 5 8 5 0 0 0 0 0 0 0 0 0 0 0 6 0 1 4 0 3 2 6 11 4 8 15 10 2 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 0 1 1 0 0 2 2 5 2 4 10 9 10 4 4 4 0 0 0 0 0 0 0 0 0 0 0 0 2 2 4 2 5 6 4 8 11 9 6 6 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 1 2 0 1 1 2 3 2 8 9 4 10 8 10 2 2 0 0 0 0 0 0 0 0 0 1 0 0 0 1 2 3 7 4 5 5 9 13 7 2 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 2 0 1 0 1 0 2 4 0 3 4 6 9 9 8 4 5 4 0 0 0 0 0 0 0 0 2 0 0 2 1 0 2 4 4 4 8 6 12 11 5 2 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 13 0 2 4 3 4 3 3 4 6 16 7 2 5 0 0 0 0 0 0 0 0 0 2 0 1 1 3 1 2 4 5 4 2 11 9 4 2 2 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2 1 1 1 4 1 1 3 2 2 3 9 14 7 6 4 2 0 0 0 0 0 0 0 0 0 4 1 2 1 1 2 2 3 6 5 4 7 9 8 7 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 2 0 0 1 0 0 3 4 4 1 7 1 4 8 8 11 6 0 0 0 0 0 0 0 1 1 0 0 1 2 2 5 1 4 8 3 3 7 12 5 4 6 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 3 1 3 4 3 4 2 2 3 4 2 5 7 17 0 0 0 0 0 0 0 0 0 0 0 1 2 6 2 2 0 7 3 5 5 5 9 6 8 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 9 2 4 2 1 5 1 4 4 6 11 10 11 0 0 0 0 0 0 0 0 0 0 0 7 2 1 4 1 4 5 1 7 3 8 9 2 1 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 0 3 0 1 1 4 1 1 6 1 6 3 5 13 6 5 8 0 0 0 0 0 0 0 0 0 4 1 1 1 3 0 2 6 2 6 8 4 8 8 3 4 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 3 4 3 4 2 3 1 6 8 4 5 8 4 5 3 0 0 0 0 0 0 0 0 0 4 2 3 1 2 7 6 3 4 5 0 6 6 5 6 2 0 0
 1986 7 1 3 0 125  0 0 0 0 1 1 0 1 1 1 1 2 2 4 6 6 4 3 9 7 5 2 1 0 0 0 0 0 0 0 0 0 0 2 2 0 3 5 4 5 9 7 4 6 8 4 5 4 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 0 1 1 3 0 2 5 2 6 5 8 9 7 7 4 1 1 0 0 0 0 0 0 0 0 0 0 1 1 4 4 2 4 6 7 3 9 4 6 6 3 3 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 0 0 1 3 5 1 1 2 4 5 6 7 7 7 6 2 8 0 0 0 0 0 0 0 2 0 0 0 2 2 0 3 4 5 9 3 5 6 6 8 5 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1 0 0 1 4 3 3 1 3 4 7 4 4 6 7 6 3 3 0 0 0 0 0 0 0 0 10 1 2 3 2 2 3 7 6 2 3 5 4 8 3 1 3 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 4 1 1 1 3 3 5 4 2 7 9 5 7 5 5 5 0 0 0 0 0 0 0 2 2 2 1 0 1 1 5 4 3 6 4 6 7 10 2 1 1 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 10 1 2 1 0 3 4 2 1 2 2 5 15 0 5 0 0 0 0 0 0 0 3 0 1 1 2 1 0 2 2 5 9 7 7 6 5 10 6 5 0 0 0
 1992 7 1 3 0 125  0 0 0 0 2 2 1 2 8 5 6 5 3 3 2 2 6 4 6 5 5 4 0 0 0 0 0 0 0 0 0 0 7 0 1 3 3 5 5 4 6 2 6 4 4 2 2 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 4 3 1 4 5 5 4 4 3 5 3 1 4 5 6 4 0 0 0 0 0 0 0 0 0 0 3 2 6 2 2 3 5 4 3 4 5 7 8 6 4 0 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 10 3 3 7 3 4 3 1 6 6 7 3 0 2 0 0 0 0 0 0 0 0 0 1 6 2 5 7 7 6 6 4 5 3 3 6 4 1 1 0 0
 1995 7 1 3 0 125  0 0 0 0 1 0 1 0 2 2 0 5 4 10 9 3 3 5 3 6 6 0 0 0 0 0 0 0 0 1 0 1 0 0 3 2 8 6 3 13 3 7 4 2 8 3 1 0 0 0
 1996 7 1 3 0 125  0 0 0 1 2 0 2 1 1 3 2 2 4 6 6 5 10 4 4 8 4 0 0 0 0 0 0 0 0 0 0 6 0 1 1 2 2 9 5 6 4 6 6 4 3 1 4 0 0 0
 1997 7 1 3 0 125  0 0 0 1 0 1 3 3 0 0 0 3 3 4 2 8 4 5 4 4 5 0 0 0 0 0 0 0 0 0 2 1 1 3 2 4 3 6 6 8 7 6 6 8 4 3 5 0 0 0
 1998 7 1 3 0 125  0 0 0 0 2 0 0 3 1 1 1 1 4 4 2 4 10 7 10 9 6 1 2 0 0 0 0 0 0 1 0 1 0 6 1 1 3 3 5 4 6 8 5 2 6 3 2 0 0 0
 1999 7 1 3 0 125  0 0 0 0 1 1 0 0 4 1 1 7 3 2 2 5 10 6 5 6 10 2 0 0 0 0 0 0 0 0 0 1 3 4 2 5 5 1 5 7 3 5 6 2 8 2 0 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 2 0 0 1 3 4 1 3 7 4 5 4 5 2 6 7 0 0 0 0 0 0 0 0 0 1 2 1 0 3 0 4 4 7 7 8 4 3 10 10 5 1 1 0 0
 2001 7 1 3 0 125  0 0 0 0 3 0 0 0 1 5 3 3 1 1 5 3 5 11 5 10 6 9 0 0 0 0 0 0 0 0 3 0 0 1 2 2 4 6 3 4 5 3 2 5 8 3 3 0 0 0
 1977 7 2 3 0 125  0 0 0 0 0 0 2 3 1 4 2 2 2 1 1 1 5 3 5 9 13 4 0 0 0 0 0 0 0 0 0 3 0 7 2 2 4 4 4 6 1 3 5 6 6 9 2 3 0 0
 1980 7 2 3 0 125  0 0 0 0 1 4 2 3 5 1 1 5 6 3 4 1 4 1 2 7 3 4 0 3 0 0 0 0 0 1 2 1 3 3 5 2 6 5 2 4 1 2 8 2 9 4 1 4 0 0
 1983 7 2 3 0 125  0 0 0 0 3 1 2 4 2 2 3 4 0 3 3 2 1 4 2 6 4 3 0 0 0 0 0 0 0 6 4 1 4 9 7 5 4 1 2 4 4 4 2 4 6 9 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 2 1 0 2 3 2 5 3 4 3 6 2 4 3 6 4 3 4 5 0 0 0 0 0 1 0 1 0 2 3 3 5 0 4 6 6 3 5 3 3 6 10 2 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 1 2 6 2 5 2 4 7 2 4 3 4 2 3 4 6 3 0 0 0 0 0 0 3 0 1 4 1 1 2 7 3 3 10 4 9 5 3 2 7 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 7 6 6 4 6 7 5 4 3 0 1 2 1 0 3 2 0 0 0 0 0 0 0 0 0 5 5 9 3 6 7 3 5 2 1 3 2 6 0 6 3 2 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2 2 2 2 5 1 6 9 4 3 6 2 4 2 4 4 4 1 0 0 0 0 0 0 0 1 2 3 2 7 2 4 10 8 5 4 4 4 3 0 0 1 2 0 0 0
 1998 7 2 3 0 125  0 0 0 1 2 6 2 7 5 4 6 5 5 3 4 6 2 3 1 2 1 3 0 0 0 0 0 0 0 3 3 2 6 3 6 4 5 2 3 5 5 2 1 2 3 2 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 6 2 2 1 4 7 7 2 4 3 7 1 6 1 5 6 0 0 0 0 0 0 0 0 3 2 2 3 3 4 5 5 5 4 6 5 4 3 2 3 2 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 5 1 3 6 0 4 0 4 3 1 7 6 2 0 0 2 2 0 2 1 2 0 2 1 4 3 0 4 1 9
1972  7 1  3 0 2 1 -1 75  0 2 2 0 2 3 3 7 1 3 3 3 4 1 6 3 4 0 0 2 0 1 3 0 2 3 3 1 1 0 1 5 1 5
1973  7 1  3 0 2 1 -1 75  0 0 5 1 0 1 4 0 2 2 2 4 1 0 7 2 5 0 0 0 2 1 1 3 3 3 0 1 4 0 2 6 2 11
1974  7 1  3 0 2 1 -1 75  0 0 1 1 2 0 2 3 1 0 0 1 1 4 3 2 6 0 0 0 4 2 2 1 2 3 1 2 1 3 2 6 10 9
1975  7 1  3 0 2 1 -1 75  0 0 2 0 3 3 3 0 4 5 0 0 1 1 1 1 8 0 0 0 0 1 0 3 2 5 1 3 4 3 4 1 6 10
1976  7 1  3 0 2 1 -1 75  0 0 2 2 2 0 2 0 5 1 2 0 3 2 7 2 6 0 0 0 0 6 1 2 4 2 2 1 2 0 2 7 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 4 0 2 1 4 0 2 2 2 1 5 3 11 0 0 0 0 1 3 3 2 2 5 2 0 1 1 8 3 7
1978  7 1  3 0 2 1 -1 75  0 0 5 1 2 2 0 2 3 2 5 2 4 1 2 3 10 0 0 0 2 1 3 0 1 1 0 2 2 3 1 7 2 6
1979  7 1  3 0 2 1 -1 75  2 0 1 1 1 3 1 1 1 1 2 1 5 2 4 5 0 0 0 4 4 1 1 2 4 0 4 3 0 2 2 10 2 5
1980  7 1  3 0 2 1 -1 75  0 1 0 2 2 0 3 2 3 3 3 1 2 3 5 6 0 0 0 0 7 1 0 2 4 4 3 0 4 2 3 3 2 4
1981  7 1  3 0 2 1 -1 75  0 2 0 4 4 0 2 3 3 1 1 1 0 2 5 4 6 0 0 1 1 0 3 2 1 0 3 4 4 1 3 6 3 5
1982  7 1  3 0 2 1 -1 75  0 3 2 2 2 7 1 2 2 0 2 2 0 1 2 2 6 0 0 0 0 6 6 1 1 1 1 0 1 2 0 8 12 0
1983  7 1  3 0 2 1 -1 75  0 0 0 9 2 2 4 3 1 1 1 0 1 2 6 3 8 0 0 4 3 1 0 3 2 1 1 3 1 1 0 4 3 5
1984  7 1  3 0 2 1 -1 75  0 0 0 6 2 2 3 3 1 3 0 0 1 2 6 2 7 0 0 1 2 3 3 2 4 1 1 1 0 1 1 6 5 6
1985  7 1  3 0 2 1 -1 75  0 0 0 5 2 3 1 2 2 5 2 0 1 1 3 3 1 0 0 0 5 9 7 5 3 2 2 0 1 2 0 3 3 2
1986  7 1  3 0 2 1 -1 75  0 0 1 5 2 3 4 6 3 2 3 0 0 0 5 1 2 0 0 0 0 10 4 3 6 1 1 1 2 0 1 1 8 0
1987  7 1  3 0 2 1 -1 75  0 1 1 1 7 3 5 6 2 1 3 2 1 2 1 5 0 0 0 1 2 2 4 5 4 2 1 3 0 1 0 4 3 2
1988  7 1  3 0 2 1 -1 75  1 0 4 0 5 4 3 6 8 1 1 1 3 1 5 3 0 0 0 0 3 3 3 7 1 2 1 2 2 1 1 1 2 0
1989  7 1  3 0 2 1 -1 75  0 4 3 3 1 4 2 4 4 0 0 2 2 0 2 2 0 0 0 3 4 2 5 4 6 6 0 3 2 1 0 1 5 0
1990  7 1  3 0 2 1 -1 75  0 0 5 3 4 4 3 4 6 3 3 1 3 1 2 1 0 0 1 1 2 5 3 3 3 1 1 5 1 1 2 2 1 0
1991  7 1  3 0 2 1 -1 75  0 0 9 4 4 2 4 2 2 3 0 1 1 0 0 3 0 0 3 1 3 1 3 6 2 4 5 1 2 0 1 5 3 0
1992  7 1  3 0 2 1 -1 75  0 0 10 6 1 2 4 4 3 3 3 4 1 1 3 0 2 0 0 7 2 3 2 2 2 3 3 1 0 0 0 2 1 0
1993  7 1  3 0 2 1 -1 75  0 0 10 6 4 2 2 5 2 3 1 1 1 2 0 0 0 0 0 6 5 1 1 2 3 2 3 7 0 1 3 2 0 0
1994  7 1  3 0 2 1 -1 75  0 0 4 7 7 6 2 1 3 1 0 0 0 1 3 2 1 0 0 0 11 6 9 2 1 1 4 0 1 2 0 0 0 0
1995  7 1  3 0 2 1 -1 75  2 1 5 4 7 12 4 0 0 1 1 2 2 4 0 0 0 0 0 0 8 7 5 3 3 0 1 0 0 1 0 1 1 0
1996  7 1  3 0 2 1 -1 75  0 0 5 6 7 4 4 4 2 1 0 0 1 0 3 0 0 0 2 1 3 9 7 5 3 1 1 0 1 1 1 3 0 0
1997  7 1  3 0 2 1 -1 75  0 2 4 1 1 3 7 3 2 2 0 3 2 0 1 0 0 0 0 0 9 4 7 8 5 4 1 0 2 0 4 0 0 0
1998  7 1  3 0 2 1 -1 75  2 0 2 4 2 3 6 3 7 4 1 2 0 1 2 0 0 0 0 5 3 7 1 4 5 3 4 2 0 1 0 0 1 0
1999  7 1  3 0 2 1 -1 75  0 1 3 0 2 1 8 9 5 1 1 0 2 1 0 0 0 0 0 5 4 1 3 2 4 8 5 2 5 0 1 1 0 0
2000  7 1  3 0 2 1 -1 75  0 3 3 2 5 4 2 2 1 6 1 3 0 0 1 0 0 0 0 3 2 5 6 3 4 5 4 6 2 0 0 2 0 0
2001  7 1  3 0 2 1 -1 75  0 8 3 1 6 1 0 2 1 3 5 1 3 2 1 0 0 0 0 4 2 4 6 4 3 2 2 3 2 2 2 2 0 0
1977  7 2  3 0 2 1 -1 75  1 2 1 2 2 2 5 2 0 2 2 3 1 0 7 4 0 0 1 3 2 2 1 2 2 4 2 2 0 2 1 6 9 0
1980  7 2  3 0 2 1 -1 75  6 0 7 7 1 2 3 2 1 1 1 1 1 3 3 1 4 0 5 4 4 1 2 0 0 1 0 0 1 0 2 5 1 5
1983  7 2  3 0 2 1 -1 75  4 2 3 4 4 3 1 0 2 0 1 0 0 1 5 6 0 0 8 6 5 3 1 2 2 1 2 2 0 2 0 4 0 1
1986  7 2  3 0 2 1 -1 75  6 3 3 3 7 3 4 3 2 4 1 0 0 1 0 3 0 0 0 2 5 3 5 3 0 2 3 0 0 1 0 3 5 0
1989  7 2  3 0 2 1 -1 75  3 2 3 9 1 3 5 5 2 1 4 1 1 4 0 0 0 0 2 3 8 1 2 4 2 4 2 1 1 1 0 0 0 0
1992  7 2  3 0 2 1 -1 75  5 7 13 3 4 2 2 1 1 1 0 0 0 1 1 0 0 0 4 5 10 3 2 4 0 1 1 2 0 1 0 1 0 0
1995  7 2  3 0 2 1 -1 75  0 4 4 5 6 6 6 4 1 0 0 0 0 0 1 0 0 0 3 4 14 4 2 5 3 1 1 1 0 0 0 0 0 0
1998  7 2  3 0 2 1 -1 75  6 4 8 7 1 3 6 2 1 1 2 0 0 1 0 0 0 0 6 5 4 2 1 4 6 1 0 1 0 3 0 0 0 0
2001  7 2  3 0 2 1 -1 75  8 2 8 6 6 3 4 1 1 4 1 1 2 1 1 0 0 0 3 3 6 5 0 2 1 2 1 0 1 2 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.7601 39.3982 44.744 49.6833 51.1031 54.7694 57.3709 60.5975 61.1025 63.1591 64.1402 68.3154 65.8752 67.5004 69.7222 72.0635 72.4432 33.9597 40.2837 43.7672 48.9263 54.3557 55.6585 59.3689 58.3112 62.1715 62.994 64.2517 66.0553 66.9569 67.9616 67.5086 68.6148 71.885
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 31.5621 39.7744 44.6325 49.4016 51.7976 56.6892 55.8486 60.466 61.885 59.8941 66.0874 63.0836 68.4206 66.0232 69.5662 73.5651 70.7008 32.7483 40.2741 45.1239 50.1179 52.5153 54.8633 55.1913 60.3817 62.1063 62.5224 64.6861 67.8768 65.8294 65.0909 69.9523 70.9221 70.7237
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.978 38.4176 42.651 47.1804 49.2475 52.8573 56.6621 57.7096 58.9508 63.3596 63.1219 62.7478 66.6192 68.0586 71.4487 71.333 72.3908 36.1373 41.4779 42.4398 47.3601 50.7535 53.0852 57.4365 59.7461 62.3193 60.2251 63.6237 62.3411 66.1954 68.3933 69.0996 66.2272 69.1084
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.6596 37.9363 42.705 47.3333 50.2165 54.6304 55.7471 59.7146 59.634 61.2002 64.1942 64.548 67.4088 65.5912 64.1936 70.6717 75.8103 35.8321 38.8938 43.8725 47.543 51.0923 53.7836 56.3953 58.7824 59.2504 63.7201 61.4586 65.1681 65.001 66.2203 70.1728 69.209 71.0651
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

