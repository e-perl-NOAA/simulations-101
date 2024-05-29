#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:17:55 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403875 first rand#: -0.0677413
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
1972 1 1 202.219 0.01
1973 1 1 992.886 0.01
1974 1 1 1015.13 0.01
1975 1 1 1994.83 0.01
1976 1 1 3021.45 0.01
1977 1 1 4027.34 0.01
1978 1 1 4978.07 0.01
1979 1 1 6029.77 0.01
1980 1 1 8037.72 0.01
1981 1 1 10058.7 0.01
1982 1 1 10038.5 0.01
1983 1 1 9848.37 0.01
1984 1 1 10021.5 0.01
1985 1 1 10098.7 0.01
1986 1 1 9871.61 0.01
1987 1 1 9867.81 0.01
1988 1 1 9016.85 0.01
1989 1 1 8026.91 0.01
1990 1 1 7050.99 0.01
1991 1 1 6040.57 0.01
1992 1 1 4040.75 0.01
1993 1 1 4005.15 0.01
1994 1 1 3983.36 0.01
1995 1 1 3987.76 0.01
1996 1 1 3994.69 0.01
1997 1 1 3029.84 0.01
1998 1 1 3034.82 0.01
1999 1 1 2972.99 0.01
2000 1 1 2962.08 0.01
2001 1 1 2971.3 0.01
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
1977 7 2 155964 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 196019 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 145059 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 97356.8 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 94846.5 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 35609.5 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 12864.2 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 19033.5 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 18328.5 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 1.87677 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 9.46645 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 1.29908 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 1.06106 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 1.61401 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 3.10301 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 2.62739 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 1.0874 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 26.9272 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 1.63897 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 10.8531 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 6.26177 0.7 #_orig_obs: 1.69379 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 0 0 1 1 2 3 5 4 5 10 10 12 10 0 0 0 0 0 0 0 0 0 0 3 0 0 1 1 0 5 4 3 4 6 10 12 6 2 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 1 2 1 3 3 6 5 5 2 12 15 11 6 1 0 0 0 0 0 0 0 0 0 2 1 2 0 1 3 0 6 3 9 4 6 3 5 4 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 1 1 5 3 3 1 15 11 8 6 0 0 0 0 0 0 0 0 0 0 0 0 0 13 1 2 4 2 6 5 7 7 8 5 4 0 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 0 1 1 4 0 3 2 5 7 6 12 5 7 0 0 0 0 0 0 0 0 0 1 1 1 4 0 3 2 1 6 3 4 4 14 14 1 4 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 0 2 2 3 3 3 4 6 4 11 13 10 2 0 0 0 0 0 0 0 0 0 0 0 3 0 1 3 2 2 6 4 5 4 11 7 8 4 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 1 1 2 3 3 2 3 4 3 9 2 10 7 6 3 2 0 0 0 0 0 0 0 0 1 0 2 1 0 3 2 3 6 2 6 7 14 7 6 2 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 2 1 0 4 0 2 3 0 5 4 7 3 8 9 6 5 1 0 0 0 0 0 0 1 1 0 0 2 2 2 2 1 2 2 6 3 3 11 16 6 5 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 2 2 0 2 1 3 5 7 2 2 1 5 11 7 7 3 1 0 0 0 0 0 0 0 0 3 1 0 1 4 4 3 4 3 2 7 5 8 10 6 2 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5 4 0 0 4 3 7 2 4 10 5 4 7 1 0 0 0 0 0 0 0 0 0 1 4 0 2 0 2 3 0 6 9 6 11 16 4 2 3 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 2 3 7 3 3 6 2 4 5 13 8 4 3 3 0 0 0 0 0 0 0 0 0 2 0 1 0 0 2 3 4 5 2 8 9 9 9 4 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 2 0 3 1 1 1 6 1 3 2 8 5 16 10 2 3 0 0 0 0 0 0 0 1 1 1 2 2 2 1 3 5 4 2 1 9 6 5 7 7 2 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 0 1 1 4 9 3 7 9 9 5 10 6 0 0 0 0 0 0 0 0 0 0 0 1 2 2 1 1 5 3 4 2 3 8 11 6 6 3 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 2 1 1 4 3 5 6 8 3 17 5 3 4 0 0 0 0 0 0 0 0 0 0 0 3 2 2 3 5 4 1 3 7 3 13 11 5 1 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2 0 2 0 1 1 5 1 3 5 5 4 6 9 12 8 2 0 0 0 0 0 0 0 0 0 0 0 1 3 1 1 2 4 3 4 6 4 12 8 4 6 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 4 1 0 0 3 5 3 6 2 4 7 11 5 4 2 2 0 0 0 0 0 0 0 0 3 1 0 0 0 0 3 4 7 5 5 6 14 10 3 5 0 0
 1986 7 1 3 0 125  0 0 0 3 1 1 0 1 1 0 1 0 2 4 4 5 2 8 5 13 6 3 2 0 0 0 0 0 0 0 0 0 2 1 0 2 2 4 2 5 4 7 4 4 10 9 5 2 0 0
 1987 7 1 3 0 125  0 0 0 0 4 0 0 0 2 3 3 2 1 3 4 7 2 5 11 10 6 6 5 0 0 0 0 0 0 0 0 0 4 0 1 3 1 0 3 1 6 2 4 5 7 8 5 1 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 3 2 0 4 1 3 4 4 0 4 6 6 3 7 4 3 2 0 0 0 0 0 0 0 2 2 1 1 2 1 3 1 4 7 9 2 3 5 8 9 9 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1 4 1 2 1 6 2 1 2 5 1 7 7 5 9 3 1 1 0 0 0 0 0 0 0 0 2 2 2 1 5 2 3 0 3 7 6 3 4 13 9 3 1 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 2 1 3 3 7 3 4 3 5 5 6 1 5 17 2 2 0 0 0 0 0 0 0 1 1 0 0 4 4 2 9 5 4 4 4 4 1 3 7 1 2 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 4 1 4 3 9 2 1 5 6 6 1 2 8 4 4 0 0 0 0 0 0 0 1 2 0 5 2 4 2 4 3 6 3 5 1 4 5 5 7 6 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 1 0 0 1 2 4 4 8 8 6 6 6 4 1 5 5 1 0 0 0 0 0 0 0 0 0 0 8 1 1 1 1 6 2 4 6 7 4 6 9 3 3 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 1 1 5 0 6 4 5 4 3 6 1 0 7 9 7 5 0 0 0 0 0 0 0 0 0 0 4 1 2 4 3 4 4 4 5 6 7 6 5 4 1 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 0 3 2 9 9 8 8 1 7 7 6 2 3 0 0 0 0 0 0 0 0 0 3 2 1 3 3 1 4 5 5 4 7 4 8 4 2 1 0 0
 1995 7 1 3 0 125  0 0 0 1 0 0 1 2 1 2 5 3 9 7 6 1 5 4 10 4 3 0 0 0 0 0 0 0 0 1 0 0 1 1 2 0 4 3 6 6 6 8 5 6 5 5 2 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 2 1 2 1 4 2 3 4 4 7 4 3 5 5 10 3 4 0 0 0 0 0 0 0 0 0 4 0 0 3 4 1 4 9 3 7 8 2 7 5 3 1 0 0 0
 1997 7 1 3 0 125  0 0 0 1 0 0 0 2 3 2 3 2 2 4 6 11 3 7 5 5 4 0 0 0 0 0 0 0 0 0 6 1 2 0 1 1 4 4 8 4 6 6 7 6 6 3 0 0 0 0
 1998 7 1 3 0 125  0 0 0 0 4 0 1 2 1 1 2 0 2 3 5 4 6 5 3 5 5 3 2 0 0 0 0 0 0 5 4 3 1 1 6 2 0 0 5 5 9 7 5 6 5 5 2 0 0 0
 1999 7 1 3 0 125  0 0 0 0 8 2 1 1 0 4 2 4 6 1 2 5 4 4 6 4 3 3 0 0 0 0 0 0 0 0 0 6 1 2 1 2 0 3 2 6 6 6 5 6 8 8 3 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 4 4 4 2 3 7 2 2 3 5 3 6 3 3 5 6 0 0 0 0 0 0 0 0 0 9 2 4 3 1 2 5 5 5 5 3 4 5 4 0 5 1 0 0 0
 2001 7 1 3 0 125  0 0 0 0 10 2 3 5 4 4 4 6 1 0 3 6 5 1 4 4 2 3 0 0 0 0 0 0 0 0 8 3 1 4 7 10 5 3 3 6 0 1 1 1 3 2 0 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 1 1 0 4 2 4 2 3 6 2 4 3 5 2 10 10 7 0 0 0 0 0 0 0 0 0 6 2 1 2 2 3 2 4 2 1 9 5 3 5 5 2 4 0 0
 1980 7 2 3 0 125  0 0 0 0 1 3 0 4 1 2 3 6 3 5 1 3 4 5 5 8 7 4 2 0 0 0 0 0 0 2 0 3 1 2 3 1 2 1 4 5 5 7 3 2 8 3 4 2 0 0
 1983 7 2 3 0 125  0 0 0 0 4 1 1 3 2 0 5 2 0 3 0 3 2 4 2 15 2 10 0 0 0 0 0 0 0 1 0 4 3 2 1 0 3 3 7 8 2 5 6 1 10 10 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 4 1 2 6 5 4 4 1 3 4 3 4 2 3 3 3 2 3 2 0 0 0 0 0 0 2 2 0 3 5 7 3 2 1 1 3 4 7 4 1 10 5 6 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 6 5 7 3 4 1 5 3 6 2 2 0 4 3 5 3 1 0 0 0 0 0 0 0 1 0 2 5 6 6 3 5 5 5 4 2 3 3 1 14 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 1 2 2 4 2 5 4 5 6 5 10 4 4 1 2 3 0 0 0 0 0 0 0 0 0 5 0 9 6 8 3 4 7 5 5 3 3 3 2 2 0 0 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2 0 3 3 4 2 3 3 4 1 7 1 4 6 1 3 5 3 0 0 0 0 0 0 0 3 3 2 4 3 6 4 6 3 8 4 3 3 3 6 5 1 3 0 0 0
 1998 7 2 3 0 125  0 0 0 5 3 1 6 4 4 4 5 1 5 0 7 1 5 4 1 5 0 1 0 0 0 0 0 0 0 4 3 4 5 3 6 5 6 1 5 2 5 4 3 2 2 2 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 8 6 7 8 7 5 3 3 2 1 3 1 0 0 3 0 0 0 0 0 0 0 0 0 9 4 4 7 7 8 5 6 5 3 3 2 0 0 1 2 2 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 10 2 2 1 4 1 1 1 2 2 4 5 7 0 0 1 0 1 2 2 1 0 3 1 0 0 2 5 3 12
1972  7 1  3 0 2 1 -1 75  0 0 0 4 4 0 2 0 3 2 0 3 1 4 7 3 8 0 0 1 2 1 0 2 2 2 1 2 2 5 2 1 2 9
1973  7 1  3 0 2 1 -1 75  0 0 3 0 2 0 1 4 2 3 4 4 1 0 1 3 13 0 0 0 7 4 0 2 1 0 1 1 0 2 1 4 3 8
1974  7 1  3 0 2 1 -1 75  0 0 4 1 0 2 3 2 1 2 0 2 0 1 1 4 9 0 0 2 2 4 1 3 0 4 1 2 1 2 4 5 2 10
1975  7 1  3 0 2 1 -1 75  0 0 2 0 2 4 3 2 1 3 2 4 1 3 3 3 8 0 0 0 0 7 2 2 2 2 0 1 1 1 0 4 5 7
1976  7 1  3 0 2 1 -1 75  0 0 4 1 5 5 3 3 0 1 3 2 1 1 5 0 6 0 0 0 0 8 0 1 2 2 2 2 1 0 2 3 12 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 5 4 2 3 2 2 2 3 2 0 5 4 6 0 0 2 0 1 2 3 1 1 2 1 0 2 1 4 5 10
1978  7 1  3 0 2 1 -1 75  0 0 4 2 7 1 3 3 2 1 0 1 2 2 6 3 3 0 0 1 1 1 3 3 4 0 1 2 1 3 0 4 6 5
1979  7 1  3 0 2 1 -1 75  0 1 1 1 2 2 5 1 1 1 2 1 1 0 4 11 0 0 0 1 0 5 2 5 2 3 1 1 1 1 2 4 4 9
1980  7 1  3 0 2 1 -1 75  0 1 0 2 2 2 4 5 5 2 1 0 0 0 3 8 0 0 0 0 4 3 3 4 1 3 1 2 1 0 2 7 2 7
1981  7 1  3 0 2 1 -1 75  0 1 0 2 2 4 2 1 0 1 1 3 0 3 8 2 6 0 0 3 1 2 4 3 4 1 0 3 1 2 0 3 4 8
1982  7 1  3 0 2 1 -1 75  0 0 0 1 1 4 0 0 1 2 0 4 1 0 7 6 5 0 0 0 0 5 1 3 4 2 5 3 1 2 0 6 11 0
1983  7 1  3 0 2 1 -1 75  0 0 0 2 1 2 3 2 1 3 4 1 3 0 5 2 5 0 0 5 3 0 1 2 5 2 1 5 4 2 0 3 1 7
1984  7 1  3 0 2 1 -1 75  0 0 0 6 0 3 1 2 2 3 3 2 0 0 9 1 9 0 0 2 3 4 4 3 3 1 1 0 0 2 0 5 2 4
1985  7 1  3 0 2 1 -1 75  0 0 0 1 2 2 2 2 0 0 2 1 3 2 5 4 7 0 0 0 6 2 3 3 4 3 0 5 1 0 1 3 4 7
1986  7 1  3 0 2 1 -1 75  0 1 2 2 1 1 6 1 1 1 2 0 1 2 6 3 9 0 0 0 0 10 4 1 1 2 0 1 4 1 5 3 4 0
1987  7 1  3 0 2 1 -1 75  0 5 0 6 5 3 1 0 1 1 4 1 5 1 7 8 0 0 0 2 1 4 0 5 4 1 0 1 1 3 1 3 0 1
1988  7 1  3 0 2 1 -1 75  2 2 2 2 1 2 1 1 0 0 1 1 0 0 5 12 0 0 2 5 4 4 3 3 3 1 1 3 2 0 1 5 6 0
1989  7 1  3 0 2 1 -1 75  0 2 5 3 4 2 3 2 4 0 2 1 1 2 7 5 0 0 0 8 2 2 3 5 0 1 3 1 1 0 1 3 2 0
1990  7 1  3 0 2 1 -1 75  0 0 10 7 4 2 2 1 0 2 0 0 0 1 3 6 0 0 0 4 12 8 1 2 0 0 1 1 0 1 1 3 3 0
1991  7 1  3 0 2 1 -1 75  0 0 3 1 8 7 3 2 1 3 4 0 0 0 4 2 0 0 3 4 2 7 2 3 2 3 2 1 1 0 0 4 3 0
1992  7 1  3 0 2 1 -1 75  0 0 6 2 8 7 4 2 5 0 0 1 1 1 1 0 1 0 0 9 6 5 8 3 1 0 1 1 1 0 0 1 0 0
1993  7 1  3 0 2 1 -1 75  0 0 5 3 2 5 6 6 3 2 1 1 0 4 0 0 0 0 0 4 5 6 7 4 3 0 1 0 2 1 1 3 0 0
1994  7 1  3 0 2 1 -1 75  0 0 4 2 3 4 1 7 3 6 1 2 1 0 0 0 1 0 0 0 8 4 8 6 3 2 0 2 1 6 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 1 3 9 3 7 6 4 4 2 0 3 0 1 0 0 0 0 0 0 3 2 3 7 2 4 6 1 0 1 0 0 1 1
1996  7 1  3 0 2 1 -1 75  0 0 8 3 5 3 9 5 6 3 2 2 1 0 0 4 0 0 0 1 1 3 2 6 2 4 4 1 0 0 0 0 0 0
1997  7 1  3 0 2 1 -1 75  0 1 2 2 2 9 1 5 4 2 3 1 0 1 1 0 0 0 0 0 7 9 6 4 2 4 4 2 1 1 1 0 0 0
1998  7 1  3 0 2 1 -1 75  2 3 3 5 4 4 3 3 3 0 0 3 0 1 2 0 0 0 0 3 3 2 8 4 4 3 4 2 3 2 0 1 0 0
1999  7 1  3 0 2 1 -1 75  6 6 5 2 6 2 3 5 3 1 0 0 0 3 0 0 0 0 5 6 3 3 5 1 4 1 2 0 1 2 0 0 0 0
2000  7 1  3 0 2 1 -1 75  0 12 6 4 4 2 0 2 3 1 0 0 2 0 0 0 0 0 0 5 9 6 3 2 2 3 4 1 1 2 0 1 0 0
2001  7 1  3 0 2 1 -1 75  0 8 7 3 6 4 2 1 3 3 0 0 1 0 0 0 0 0 0 13 8 8 0 0 2 2 2 0 0 1 0 1 0 0
1977  7 2  3 0 2 1 -1 75  0 4 0 5 2 4 1 0 1 2 1 0 0 1 4 4 0 0 3 2 5 4 3 4 1 4 0 0 1 4 0 6 9 0
1980  7 2  3 0 2 1 -1 75  0 2 1 2 2 4 1 2 4 1 1 0 2 0 4 2 1 0 3 2 4 3 8 3 1 1 1 0 1 2 1 6 3 7
1983  7 2  3 0 2 1 -1 75  0 1 4 4 1 1 3 2 2 3 1 3 1 1 4 13 0 0 3 3 3 4 1 2 2 2 1 1 0 1 1 0 2 5
1986  7 2  3 0 2 1 -1 75  5 4 4 3 1 2 0 2 1 0 1 0 0 3 5 2 5 0 0 7 5 2 4 4 1 2 0 1 4 1 0 3 3 0
1989  7 2  3 0 2 1 -1 75  4 8 7 5 3 0 3 1 0 0 0 1 1 5 0 0 0 0 8 7 6 3 5 0 2 0 2 0 0 4 0 0 0 0
1992  7 2  3 0 2 1 -1 75  2 0 3 5 5 3 4 2 0 0 1 1 0 0 1 0 0 0 4 11 3 10 4 10 3 1 0 1 0 0 0 1 0 0
1995  7 2  3 0 2 1 -1 75  0 6 4 8 3 2 3 2 3 2 2 0 2 0 1 0 0 0 4 6 9 1 2 4 2 4 3 0 0 1 0 1 0 0
1998  7 2  3 0 2 1 -1 75  5 7 5 4 2 2 3 2 1 1 0 1 0 1 0 0 0 0 10 6 5 4 3 5 1 1 4 1 0 1 0 0 0 0
2001  7 2  3 0 2 1 -1 75  7 7 4 12 4 2 1 0 2 0 0 0 0 0 0 0 0 0 4 11 10 3 4 2 0 1 1 0 0 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 28.0308 40.7195 44.1096 49.3615 52.6803 54.1751 58.1388 60.6818 62.7933 64.3073 64.5382 68.2534 67.6798 68.0682 67.97 68.9625 68.5973 28.8273 39.9434 43.1083 50.0916 55.0469 57.1676 59.3409 59.8699 60.4141 64.378 64.8623 66.0171 67.4238 67.3987 68.4034 71.4267 66.3982
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 28.2096 38.777 42.9599 48.7883 52.0838 56.047 57.752 59.8204 62.1026 62.716 63.7982 64.7676 67.616 68.623 68.5908 69.5797 70.8729 31.0874 39.6825 46.2783 51.4848 52.9682 55.6264 57.5912 60.2339 63.7753 64.796 65.7294 65.8453 65.8143 67.8426 68.7745 72.3975 70.6006
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 33.8917 39.0934 42.8657 47.6946 49.4618 55.8139 56.2354 58.322 59.5206 60.5395 65.0449 65.4167 62.8399 63.5163 69.2071 68.9101 69.0116 34.6902 39.9242 43.2016 48.9159 51.1854 55.2156 54.8404 61.1571 60.9401 61.4646 63.162 66.1934 66.3617 68.4292 67.0492 73.5278 69.1563
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.0237 37.3733 43.0923 45.6724 49.8975 54.506 56.3825 58.7308 60.7791 61.227 62.0741 64.4852 67.1576 67.3697 66.5911 67.1583 71.7662 33.4022 40.3199 43.2596 49.0731 50.9157 55.9975 57.8284 59.6763 59.9672 64.6341 62.8399 66.3481 66.018 64.3267 66.073 66.9596 66.4287
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

