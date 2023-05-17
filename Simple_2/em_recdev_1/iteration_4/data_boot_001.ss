#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:40:22 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684266022 first rand#: 0.860623
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
1972 1 1 195.559 0.01
1973 1 1 990.079 0.01
1974 1 1 983.122 0.01
1975 1 1 2030.84 0.01
1976 1 1 3081.44 0.01
1977 1 1 3964.15 0.01
1978 1 1 4815.33 0.01
1979 1 1 6008.7 0.01
1980 1 1 7988.89 0.01
1981 1 1 10053.7 0.01
1982 1 1 10068.9 0.01
1983 1 1 10015.1 0.01
1984 1 1 9819.78 0.01
1985 1 1 9724.75 0.01
1986 1 1 9882.4 0.01
1987 1 1 9992.06 0.01
1988 1 1 8953.22 0.01
1989 1 1 7902.96 0.01
1990 1 1 6988.94 0.01
1991 1 1 5909.36 0.01
1992 1 1 4142.38 0.01
1993 1 1 3983.86 0.01
1994 1 1 3904.92 0.01
1995 1 1 4079.66 0.01
1996 1 1 4133.98 0.01
1997 1 1 3126.85 0.01
1998 1 1 2940.42 0.01
1999 1 1 2975.71 0.01
2000 1 1 2952.52 0.01
2001 1 1 3027.26 0.01
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
1977 7 2 285383 0.3 #_orig_obs: 312723 SURVEY1
1980 7 2 87649.8 0.3 #_orig_obs: 313649 SURVEY1
1983 7 2 250795 0.3 #_orig_obs: 99397.1 SURVEY1
1986 7 2 107841 0.3 #_orig_obs: 58417.5 SURVEY1
1989 7 2 119645 0.3 #_orig_obs: 96655.4 SURVEY1
1992 7 2 39627.7 0.3 #_orig_obs: 53644.6 SURVEY1
1995 7 2 41647.6 0.3 #_orig_obs: 27557 SURVEY1
1998 7 2 91804.2 0.3 #_orig_obs: 49622.8 SURVEY1
2001 7 2 28915 0.3 #_orig_obs: 47520.6 SURVEY1
1990 7 3 4.0291 0.7 #_orig_obs: 2.71907 SURVEY2
1991 7 3 5.03983 0.7 #_orig_obs: 8.14933 SURVEY2
1992 7 3 1.90373 0.7 #_orig_obs: 1.53197 SURVEY2
1993 7 3 9.02415 0.7 #_orig_obs: 7.96503 SURVEY2
1994 7 3 21.1653 0.7 #_orig_obs: 7.35974 SURVEY2
1995 7 3 17.3205 0.7 #_orig_obs: 6.98065 SURVEY2
1996 7 3 4.53843 0.7 #_orig_obs: 1.1361 SURVEY2
1997 7 3 12.5969 0.7 #_orig_obs: 33.473 SURVEY2
1998 7 3 16.4445 0.7 #_orig_obs: 14.7904 SURVEY2
1999 7 3 3.5695 0.7 #_orig_obs: 6.48208 SURVEY2
2000 7 3 0.671066 0.7 #_orig_obs: 3.23987 SURVEY2
2001 7 3 7.70981 0.7 #_orig_obs: 15.4377 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 2 2 3 0 4 1 4 5 9 15 11 6 7 0 0 0 0 0 0 0 0 0 0 2 0 1 0 2 1 3 3 6 2 6 13 7 4 3 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 0 1 2 2 4 3 4 3 4 13 9 4 7 1 0 0 0 0 0 0 0 0 0 0 4 1 3 1 3 5 2 4 4 6 15 7 7 3 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 8 0 1 2 0 10 8 7 12 7 4 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 0 7 4 4 1 4 11 12 7 10 2 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 1 0 4 1 5 5 3 6 4 14 8 8 7 0 0 0 0 0 0 0 0 0 1 1 0 1 1 0 2 3 6 2 4 9 11 6 4 2 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 0 2 3 0 6 2 6 6 4 13 9 2 6 0 0 0 0 0 0 0 0 0 0 0 3 1 5 4 2 3 3 6 5 0 6 14 7 5 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 2 0 2 1 1 1 3 3 4 4 2 9 14 8 3 2 0 0 0 0 0 0 0 0 0 2 1 1 1 1 3 2 2 2 4 4 12 15 8 6 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 0 2 1 1 0 4 6 6 2 7 13 8 4 2 0 0 0 0 0 0 2 0 0 0 2 1 0 3 0 4 3 2 8 6 13 10 5 8 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 3 0 1 1 0 0 2 0 4 3 2 5 4 11 13 12 5 1 0 0 0 0 0 0 0 0 2 2 0 0 2 0 3 1 4 4 2 3 16 9 9 1 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 8 1 4 5 3 3 3 7 4 12 5 4 2 2 0 0 0 0 0 0 0 0 0 4 0 0 1 1 1 3 3 2 5 7 14 13 4 3 1 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 3 0 2 1 2 3 3 1 8 3 7 1 8 10 7 2 2 0 0 0 0 0 0 0 0 0 2 0 1 0 5 0 3 5 5 8 6 8 4 8 7 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 0 1 3 2 0 1 1 5 3 5 3 3 12 7 3 9 0 0 0 0 0 0 0 1 0 1 1 0 2 1 3 3 1 7 1 1 6 15 8 6 10 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 0 1 3 2 5 2 5 5 5 10 9 9 0 0 0 0 0 0 0 0 0 0 3 0 0 3 2 5 2 2 7 3 7 7 9 6 4 8 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 9 0 2 2 4 2 5 6 3 10 8 4 11 0 0 0 0 0 0 0 0 0 0 0 8 2 1 3 4 1 4 4 4 8 8 6 5 1 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 1 0 1 2 1 2 2 5 1 2 9 5 3 10 10 5 11 0 0 0 0 0 0 0 0 0 7 1 0 1 0 4 3 1 7 4 1 5 5 10 2 4 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 5 1 2 4 3 3 4 3 9 4 2 10 8 6 4 0 0 0 0 0 0 0 0 0 2 0 2 1 1 2 8 4 1 5 6 4 7 10 3 1 0 0
 1986 7 1 3 0 125  0 0 0 0 0 2 0 3 0 2 3 4 2 2 0 4 2 5 7 6 10 7 4 0 0 0 0 0 0 0 2 1 0 1 0 4 1 3 5 6 1 6 2 5 9 8 6 2 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 2 2 1 2 3 2 4 5 6 4 10 3 6 4 7 7 5 0 0 0 0 0 0 0 0 0 6 0 1 4 1 2 2 5 5 2 2 4 4 6 4 4 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 1 0 2 5 3 2 4 4 3 8 6 3 1 7 4 1 1 0 0 0 0 0 0 0 0 1 2 0 2 3 1 3 4 2 4 8 7 4 14 8 6 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 4 1 0 1 2 1 0 5 4 2 7 5 5 7 4 9 2 2 0 0 0 0 0 0 0 0 3 0 1 2 0 2 5 3 3 3 4 7 3 8 8 6 6 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 1 1 0 2 4 4 10 2 5 12 3 6 6 5 2 2 0 0 0 0 0 0 0 0 1 0 1 1 1 2 2 5 4 4 3 6 9 11 5 5 0 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 2 0 1 3 5 3 0 1 7 2 7 3 13 6 9 0 0 0 0 0 0 0 3 2 0 0 2 0 2 3 2 4 3 4 4 6 6 12 6 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 0 0 3 1 0 0 1 2 3 5 7 5 7 8 4 9 1 6 0 0 0 0 0 0 0 0 0 0 4 1 2 3 5 3 2 6 3 4 5 6 5 8 6 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 2 0 3 1 1 2 2 3 3 3 5 5 5 12 4 9 0 0 0 0 0 0 0 0 0 0 5 1 4 0 5 4 6 3 5 4 1 5 5 9 5 3 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 1 0 2 4 6 6 5 6 6 10 7 1 2 0 0 0 0 0 0 0 0 0 1 0 1 1 2 3 4 7 3 7 3 6 16 6 2 3 0 0
 1995 7 1 3 0 125  0 0 0 0 0 1 1 2 2 4 3 1 2 3 5 5 3 3 7 11 7 0 0 0 0 0 0 0 0 5 0 2 1 0 1 2 1 7 3 4 6 4 4 5 11 3 6 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 4 0 2 3 0 0 4 2 4 5 3 2 4 6 7 2 9 0 0 0 0 0 0 0 0 0 8 1 1 1 0 4 3 9 2 4 5 6 1 11 7 5 0 0 0
 1997 7 1 3 0 125  0 0 0 1 0 0 1 3 2 1 2 4 4 2 2 4 3 3 6 6 11 0 0 0 0 0 0 0 0 0 4 2 0 8 3 8 3 4 4 5 4 3 5 3 5 5 4 0 0 0
 1998 7 1 3 0 125  0 0 0 0 4 2 1 2 2 2 2 5 2 5 1 5 2 5 4 7 0 8 0 0 0 0 0 0 0 1 0 1 0 0 4 6 14 1 4 2 2 5 4 4 7 5 2 4 0 0
 1999 7 1 3 0 125  0 0 0 0 1 2 3 2 1 1 6 2 4 4 4 8 2 6 5 4 5 4 0 0 0 0 0 0 0 0 0 4 3 0 0 2 3 3 7 5 11 4 2 4 7 5 1 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 3 1 2 1 4 0 6 4 11 10 8 3 4 6 4 6 0 0 0 0 0 0 0 0 0 0 3 1 1 1 3 0 5 1 3 4 11 3 4 7 1 2 2 0 0
 2001 7 1 3 0 125  0 0 0 0 0 0 0 0 6 4 2 7 3 9 6 7 5 3 3 6 5 3 0 0 0 0 0 0 0 0 0 0 3 3 3 7 4 1 0 7 6 4 3 6 3 4 2 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 3 3 1 2 2 1 1 1 3 1 4 7 4 7 11 2 10 0 0 0 0 0 0 0 0 0 2 4 0 6 5 6 5 3 3 2 1 3 5 4 4 6 2 0 0
 1980 7 2 3 0 125  0 0 0 0 0 3 2 0 3 3 5 6 3 3 5 3 6 5 4 4 2 3 2 0 0 0 0 0 0 0 0 2 3 3 4 4 3 3 1 4 4 4 2 3 9 8 0 6 0 0
 1983 7 2 3 0 125  0 0 0 0 4 4 2 5 6 4 2 3 3 1 4 3 2 2 1 2 4 4 0 0 0 0 0 0 0 1 0 1 2 3 7 7 4 6 3 7 3 3 2 4 6 10 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 0 1 1 5 3 5 3 5 5 7 2 5 1 1 1 11 1 2 1 0 0 0 0 0 0 0 3 4 3 4 5 6 5 2 4 4 3 1 1 5 4 8 3 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 3 3 0 1 4 5 5 5 5 3 7 6 4 3 3 4 2 0 0 0 0 0 0 2 1 2 5 3 2 4 5 3 8 4 1 3 3 4 2 10 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 1 3 7 2 4 3 3 6 2 6 2 1 3 5 8 2 0 0 0 0 0 0 0 0 0 4 0 2 2 3 4 5 4 8 3 4 4 3 7 10 1 3 0 0 0
 1995 7 2 3 0 125  0 0 0 0 5 5 2 6 5 3 1 5 0 2 3 4 4 1 1 1 2 5 0 0 0 0 0 0 0 6 4 7 2 6 3 2 7 3 3 4 4 6 1 0 3 5 4 0 0 0
 1998 7 2 3 0 125  0 0 0 0 1 1 3 0 3 2 7 4 4 3 4 3 2 2 1 0 7 1 0 0 0 0 0 0 0 6 2 2 3 6 11 9 4 7 4 3 2 4 2 3 6 3 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 3 1 2 4 4 4 7 5 5 5 6 2 4 1 9 2 0 0 0 0 0 0 0 0 0 2 1 4 4 8 5 3 3 5 7 3 5 2 3 2 4 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 7 3 2 1 2 5 1 0 2 0 6 0 8 0 0 0 1 3 2 2 2 2 2 0 3 3 2 3 4 9
1972  7 1  3 0 2 1 -1 75  0 0 2 1 0 3 1 2 2 3 2 2 3 2 4 3 7 0 0 0 1 2 1 4 1 0 0 2 4 3 2 7 3 8
1973  7 1  3 0 2 1 -1 75  0 0 1 1 3 3 0 2 0 2 0 3 1 2 11 6 6 0 0 0 0 3 1 4 2 1 1 0 1 0 3 8 3 7
1974  7 1  3 0 2 1 -1 75  0 0 0 5 1 2 0 1 2 0 2 0 4 4 7 3 8 0 0 0 1 2 2 1 0 4 1 4 3 0 1 7 5 5
1975  7 1  3 0 2 1 -1 75  0 0 5 4 1 0 0 3 3 3 4 4 1 0 5 1 4 0 0 0 0 4 2 3 2 1 3 1 1 0 3 7 6 4
1976  7 1  3 0 2 1 -1 75  0 0 4 0 2 3 0 3 0 3 2 2 4 2 3 2 3 0 0 0 0 10 2 2 2 0 3 1 1 2 2 5 12 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 7 2 2 5 1 5 2 0 0 1 2 4 5 0 0 0 2 1 2 1 7 4 3 3 1 2 0 5 4 4
1978  7 1  3 0 2 1 -1 75  0 0 3 3 4 3 2 2 1 3 4 1 3 0 7 5 5 0 0 1 0 3 1 4 2 2 0 2 0 1 2 7 1 3
1979  7 1  3 0 2 1 -1 75  0 2 1 1 2 4 1 1 1 6 4 1 2 2 3 9 0 0 0 2 0 1 1 1 1 3 1 2 1 3 1 8 5 5
1980  7 1  3 0 2 1 -1 75  0 0 1 0 0 3 2 3 2 3 2 1 3 1 7 8 0 0 0 0 3 1 1 4 1 3 3 3 2 1 1 4 6 6
1981  7 1  3 0 2 1 -1 75  0 3 1 0 3 1 3 4 0 0 1 0 1 3 5 2 6 0 0 0 2 3 2 2 4 1 3 2 0 2 1 5 8 7
1982  7 1  3 0 2 1 -1 75  0 3 0 3 1 3 2 1 3 5 0 1 1 2 3 2 7 0 0 0 0 5 5 2 3 2 3 2 3 0 1 4 8 0
1983  7 1  3 0 2 1 -1 75  0 0 0 4 0 1 6 2 5 3 0 1 3 0 6 3 5 0 0 5 1 2 1 2 4 4 1 1 2 0 1 4 5 3
1984  7 1  3 0 2 1 -1 75  0 0 0 8 1 1 1 6 2 2 2 1 1 1 4 3 2 0 0 5 5 3 3 2 3 1 4 1 2 2 1 5 2 1
1985  7 1  3 0 2 1 -1 75  0 0 0 8 4 2 4 1 5 1 3 4 0 2 6 2 2 0 0 0 5 2 1 0 3 4 1 1 4 1 0 2 2 5
1986  7 1  3 0 2 1 -1 75  0 2 4 1 3 6 3 1 0 1 1 0 1 0 3 6 2 0 0 0 0 10 4 0 1 3 3 3 2 5 0 4 6 0
1987  7 1  3 0 2 1 -1 75  0 2 2 4 4 5 5 2 1 1 2 3 0 2 3 5 0 0 0 4 2 2 2 4 2 0 3 0 3 0 2 4 3 3
1988  7 1  3 0 2 1 -1 75  0 0 0 4 1 7 2 6 1 2 1 4 3 1 2 7 0 0 0 1 2 2 2 4 9 2 2 1 0 2 1 0 6 0
1989  7 1  3 0 2 1 -1 75  0 1 2 0 1 8 5 4 2 0 0 0 3 1 1 8 0 0 0 0 1 3 6 6 2 2 2 2 3 0 2 5 5 0
1990  7 1  3 0 2 1 -1 75  0 0 7 0 1 4 5 7 3 1 2 1 0 2 2 1 0 0 0 3 0 1 4 5 4 4 2 5 1 0 1 3 6 0
1991  7 1  3 0 2 1 -1 75  0 0 3 4 3 5 4 3 4 2 2 4 3 1 3 4 0 0 0 0 2 3 2 2 3 4 2 1 1 1 2 4 3 0
1992  7 1  3 0 2 1 -1 75  0 0 3 1 4 2 4 5 4 4 3 2 2 0 2 1 0 0 0 1 4 3 5 5 3 3 1 3 2 2 1 1 4 0
1993  7 1  3 0 2 1 -1 75  0 0 2 3 7 6 3 2 5 0 4 5 0 4 0 0 0 0 0 3 2 4 4 3 4 2 3 1 2 1 1 4 0 0
1994  7 1  3 0 2 1 -1 75  0 0 9 1 3 5 3 3 3 2 2 2 0 1 2 2 0 0 0 0 5 3 4 3 2 5 3 3 1 8 0 0 0 0
1995  7 1  3 0 2 1 -1 75  2 2 2 5 2 5 5 5 2 2 1 3 3 4 0 0 0 0 0 0 6 1 1 5 3 1 1 4 4 1 1 1 3 0
1996  7 1  3 0 2 1 -1 75  0 0 10 2 4 2 3 5 2 3 0 0 0 1 3 0 0 0 4 3 0 3 2 3 5 2 1 1 2 5 4 5 0 0
1997  7 1  3 0 2 1 -1 75  0 5 2 5 2 3 3 4 2 2 0 0 4 0 4 0 0 0 0 0 6 6 5 3 1 7 1 0 4 0 6 0 0 0
1998  7 1  3 0 2 1 -1 75  2 2 6 5 3 1 1 1 5 4 1 4 1 1 1 0 0 0 0 5 7 5 1 1 4 2 4 0 1 1 0 6 0 0
1999  7 1  3 0 2 1 -1 75  5 1 0 7 4 3 3 2 3 1 3 2 0 2 6 0 0 0 0 3 8 0 8 2 3 3 1 2 1 0 0 2 0 0
2000  7 1  3 0 2 1 -1 75  0 1 4 4 5 9 4 2 2 4 0 3 1 0 6 0 0 0 0 4 2 5 7 3 0 0 4 1 1 0 2 1 0 0
2001  7 1  3 0 2 1 -1 75  0 2 3 3 1 2 5 3 4 4 1 0 2 1 4 0 0 0 0 5 3 3 5 7 3 5 2 0 1 1 0 5 0 0
1977  7 2  3 0 2 1 -1 75  3 1 1 6 1 1 3 5 3 1 2 4 0 1 6 5 0 0 4 4 2 2 2 1 3 2 2 2 0 1 1 4 2 0
1980  7 2  3 0 2 1 -1 75  0 1 2 3 4 3 3 3 4 2 2 2 1 2 3 1 3 0 1 3 5 5 1 2 3 2 1 0 1 1 2 3 4 2
1983  7 2  3 0 2 1 -1 75  0 5 5 2 1 1 1 5 5 1 1 1 1 0 4 3 0 0 0 14 1 3 6 2 3 2 0 2 0 0 0 1 4 1
1986  7 2  3 0 2 1 -1 75  2 2 5 3 5 5 0 0 1 2 3 0 0 2 2 1 1 0 0 10 3 4 3 2 1 2 1 2 1 1 0 6 5 0
1989  7 2  3 0 2 1 -1 75  2 0 1 1 3 9 3 2 3 3 2 0 1 4 0 0 0 0 0 1 3 7 5 3 4 3 5 1 1 8 0 0 0 0
1992  7 2  3 0 2 1 -1 75  2 3 0 6 2 5 1 1 7 1 0 0 2 0 4 0 0 0 2 5 3 4 2 3 4 6 2 1 2 2 1 4 0 0
1995  7 2  3 0 2 1 -1 75  0 11 2 3 4 3 9 4 1 0 1 1 0 0 2 0 0 0 8 3 1 3 3 3 3 1 1 1 3 0 0 4 0 0
1998  7 2  3 0 2 1 -1 75  7 3 9 8 3 1 2 3 2 1 0 0 0 3 0 0 0 0 1 5 6 10 2 2 7 0 0 0 0 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  1 4 3 6 1 4 6 4 1 0 1 1 5 0 1 0 0 0 3 6 7 3 5 6 2 3 0 0 1 0 1 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.1658 40.283 45.6345 47.912 51.9319 54.7158 58.507 60.5456 62.5316 64.5482 64.2813 64.535 66.1512 66.3211 70.8833 67.4414 74.3758 31.707 39.8969 45.6223 48.8385 50.4821 55.4273 55.2521 59.5836 61.4592 63.2851 63.7153 65.6077 68.1346 66.5376 68.4163 71.0044 71.3248
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 31.1914 38.8602 45.9219 48.1969 52.501 54.2032 60.6551 60.3076 62.6728 62.57 63.8236 64.0921 65.3337 68.3638 69.1664 72.5122 72.7583 32.152 39.3418 46.5111 49.3948 52.5646 56.7024 58.4997 59.4678 62.1684 65.114 63.7132 65.9026 65.7314 67.3165 66.8709 68.5927 72.7974
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.3647 39.3477 42.8398 46.613 51.3989 53.1334 53.8835 59.6121 62.0623 63.9877 63.0133 65.4464 62.5916 66.2969 69.1531 71.3727 69.505 34.6321 39.9464 41.6527 46.0202 49.7366 51.6076 56.3571 58.3566 60.7039 60.5464 62.9072 62.9811 64.1101 64.7454 64.735 70.0937 70.8933
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 35.3961 40.1142 42.2045 47.5652 49.1219 53.7138 56.631 58.9223 59.2434 60.9993 64.107 63.5114 66.1042 66.952 68.0381 68.1292 71.4053 35.4921 39.0921 44.8005 47.9794 50.9283 52.4688 57.7462 59.8745 59.5967 64.1087 61.3032 62.514 63.1992 66.3182 68.3776 70.6033 71.9556
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

