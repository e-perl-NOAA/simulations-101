#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:57:09 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684267029 first rand#: -0.0992017
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
1972 1 1 202.429 0.01
1973 1 1 1001 0.01
1974 1 1 965.748 0.01
1975 1 1 2022.28 0.01
1976 1 1 3040.15 0.01
1977 1 1 3976.66 0.01
1978 1 1 4979.11 0.01
1979 1 1 5990.27 0.01
1980 1 1 8044.3 0.01
1981 1 1 9844.98 0.01
1982 1 1 10017.2 0.01
1983 1 1 9959 0.01
1984 1 1 10234.6 0.01
1985 1 1 9888.36 0.01
1986 1 1 10003.8 0.01
1987 1 1 9883.04 0.01
1988 1 1 8909.82 0.01
1989 1 1 8123.72 0.01
1990 1 1 7001.79 0.01
1991 1 1 5969.7 0.01
1992 1 1 3972.04 0.01
1993 1 1 4049.61 0.01
1994 1 1 3946.91 0.01
1995 1 1 3927.32 0.01
1996 1 1 4000.22 0.01
1997 1 1 2975.82 0.01
1998 1 1 2953.86 0.01
1999 1 1 3012.04 0.01
2000 1 1 3015.73 0.01
2001 1 1 2962.64 0.01
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
1977 7 2 113384 0.3 #_orig_obs: 262308 SURVEY1
1980 7 2 109027 0.3 #_orig_obs: 105624 SURVEY1
1983 7 2 138253 0.3 #_orig_obs: 121298 SURVEY1
1986 7 2 51918.2 0.3 #_orig_obs: 58784.8 SURVEY1
1989 7 2 95522.8 0.3 #_orig_obs: 59875.2 SURVEY1
1992 7 2 53032.4 0.3 #_orig_obs: 80387 SURVEY1
1995 7 2 51180.4 0.3 #_orig_obs: 77542.1 SURVEY1
1998 7 2 42280.5 0.3 #_orig_obs: 42597 SURVEY1
2001 7 2 54394.3 0.3 #_orig_obs: 63608.2 SURVEY1
1990 7 3 7.3556 0.7 #_orig_obs: 10.0394 SURVEY2
1991 7 3 17.5186 0.7 #_orig_obs: 8.93199 SURVEY2
1992 7 3 6.51891 0.7 #_orig_obs: 8.33608 SURVEY2
1993 7 3 7.30206 0.7 #_orig_obs: 2.63545 SURVEY2
1994 7 3 10.0337 0.7 #_orig_obs: 22.5732 SURVEY2
1995 7 3 1.36605 0.7 #_orig_obs: 1.87139 SURVEY2
1996 7 3 6.39848 0.7 #_orig_obs: 10.905 SURVEY2
1997 7 3 6.21262 0.7 #_orig_obs: 4.75182 SURVEY2
1998 7 3 6.72885 0.7 #_orig_obs: 19.0369 SURVEY2
1999 7 3 8.6069 0.7 #_orig_obs: 5.39029 SURVEY2
2000 7 3 8.16827 0.7 #_orig_obs: 6.31897 SURVEY2
2001 7 3 5.53378 0.7 #_orig_obs: 3.51886 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 3 1 1 4 1 4 4 9 8 9 9 8 0 0 0 0 0 0 0 0 0 0 3 3 1 0 3 4 4 3 3 7 2 12 6 5 8 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 8 4 2 2 3 1 1 4 3 5 9 8 8 7 3 0 0 0 0 0 0 0 0 0 7 0 0 1 0 4 2 6 5 2 3 9 6 12 0 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 4 4 4 3 4 5 5 6 6 5 12 0 0 0 0 0 0 0 0 0 0 0 0 0 10 5 3 4 4 4 6 5 10 5 7 4 0 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 0 1 2 1 3 6 4 5 4 6 7 9 8 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 2 5 3 6 6 3 13 14 8 1 1 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 3 0 1 0 1 1 4 2 1 4 7 4 11 9 6 6 0 0 0 0 0 0 0 0 0 0 0 5 2 0 0 2 4 1 7 5 3 13 9 8 6 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 1 1 0 1 0 0 4 1 6 4 2 3 16 10 6 5 4 0 0 0 0 0 0 0 0 0 0 0 2 1 1 3 3 1 3 5 2 10 11 13 6 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 3 1 5 1 1 2 6 4 5 3 7 15 4 4 0 0 0 0 0 0 0 0 0 0 1 1 2 1 2 5 4 4 4 5 12 13 4 3 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 0 0 1 0 1 0 3 0 2 5 5 10 3 8 13 8 7 2 0 0 0 0 0 0 0 0 1 1 0 1 1 2 1 2 2 5 5 10 11 7 4 4 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 3 2 0 2 1 0 5 3 3 12 13 13 4 5 0 0 0 0 0 0 0 0 0 3 1 0 1 0 3 4 2 5 3 9 14 7 4 3 0 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 4 1 1 4 0 4 4 1 3 6 2 8 13 6 6 4 7 0 0 0 0 0 0 0 0 0 3 0 0 1 3 2 5 1 3 2 4 13 8 3 3 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 4 2 0 1 2 1 2 2 2 2 3 4 6 7 6 4 7 0 0 0 0 0 0 0 1 2 2 0 2 1 1 1 3 0 4 4 9 6 10 11 6 7 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 6 4 1 0 1 2 4 4 0 3 4 14 4 12 0 0 0 0 0 0 0 0 0 0 6 1 2 1 1 1 3 1 2 10 1 7 9 8 7 6 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 8 3 1 5 4 2 4 3 2 7 10 6 4 0 0 0 0 0 0 0 0 0 0 0 7 1 4 3 3 4 3 7 1 4 8 11 3 7 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2 0 0 1 1 3 6 4 6 3 3 3 6 5 9 6 4 0 0 0 0 0 0 0 0 0 3 1 2 1 4 2 4 1 4 3 6 2 14 6 4 6 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 1 2 2 2 5 1 2 8 3 5 4 12 5 6 3 0 0 0 0 0 0 0 0 0 3 1 3 2 5 2 3 4 7 3 5 8 6 3 6 3 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 0 1 2 2 5 4 1 2 10 6 5 1 5 7 9 1 3 0 0 0 0 0 0 0 0 3 1 1 1 4 0 2 9 1 6 7 1 2 8 7 3 5 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 1 5 4 7 1 7 3 5 6 6 4 8 4 0 0 0 0 0 0 0 0 0 3 0 1 3 1 0 5 7 5 4 5 6 8 9 5 1 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 0 2 0 3 5 7 0 4 0 4 10 7 8 6 4 6 2 0 0 0 0 0 0 0 2 2 0 1 1 1 1 4 4 3 4 5 6 5 5 7 5 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 2 0 1 1 0 0 3 4 8 5 2 4 5 5 11 7 7 4 0 0 0 0 0 0 0 0 2 0 0 2 3 0 1 4 4 12 2 5 6 7 5 1 2 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 2 0 2 1 4 1 1 6 10 6 4 4 9 6 1 6 0 0 0 0 0 0 0 2 1 2 2 2 3 1 2 2 7 4 6 3 8 5 6 2 4 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 3 3 2 4 1 3 2 3 7 6 2 2 10 7 8 0 0 0 0 0 0 0 0 1 0 1 3 1 2 2 2 7 6 3 11 3 2 3 7 8 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 0 0 2 3 0 6 1 3 5 3 6 5 5 3 6 6 13 0 0 0 0 0 0 0 0 0 0 4 2 3 1 3 4 5 6 8 3 2 2 9 2 3 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 12 2 3 5 4 3 5 2 1 12 8 10 0 0 0 0 0 0 0 0 0 0 4 3 1 3 4 5 1 5 2 4 7 2 8 5 3 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6 4 1 3 2 6 6 3 4 7 11 5 4 4 0 0 0 0 0 0 0 0 0 1 0 1 2 3 4 2 3 5 6 7 3 11 3 7 1 0 0
 1995 7 1 3 0 125  0 0 0 4 1 0 2 0 1 0 2 1 3 2 6 10 6 4 2 8 7 0 0 0 0 0 0 0 0 2 0 1 2 1 2 0 5 4 1 4 3 4 11 5 8 8 5 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 4 3 1 1 3 1 4 1 5 7 10 8 3 4 5 5 3 0 0 0 0 0 0 0 0 0 4 2 4 1 1 1 5 1 3 4 5 4 5 8 4 2 3 0 0
 1997 7 1 3 0 125  0 0 0 0 0 1 0 3 1 7 3 1 4 5 0 6 4 4 1 10 8 0 0 0 0 0 0 0 0 0 2 0 1 6 2 2 5 6 1 3 6 7 6 7 5 5 3 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 0 2 1 2 6 4 3 4 4 7 9 4 2 6 5 8 1 2 0 0 0 0 0 0 1 2 0 0 1 4 4 3 5 2 4 2 8 7 4 5 1 2 0 0 0
 1999 7 1 3 0 125  0 0 0 0 0 0 0 0 0 8 1 0 5 5 8 4 4 6 7 9 7 7 0 0 0 0 0 0 0 0 0 0 1 0 0 1 4 4 3 5 5 5 8 3 9 2 4 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 3 1 0 0 1 1 2 0 3 5 5 6 5 5 8 11 0 0 0 0 0 0 0 0 0 3 1 0 0 4 0 7 3 3 8 7 4 4 4 13 6 1 1 0 0
 2001 7 1 3 0 125  0 0 0 0 1 0 1 1 1 2 1 2 4 5 2 5 9 3 6 9 4 7 0 0 0 0 0 0 0 0 6 2 1 0 1 0 1 2 3 4 6 4 6 3 12 7 4 0 0 0
 1977 7 2 3 0 125  0 0 0 0 4 0 2 1 3 5 4 5 3 1 1 3 5 3 0 6 6 6 0 0 0 0 0 0 0 0 0 5 1 1 2 5 1 5 3 0 6 3 7 3 4 14 1 6 0 0
 1980 7 2 3 0 125  0 0 0 0 4 3 3 2 5 4 1 3 5 4 4 4 3 3 1 9 10 2 3 0 0 0 0 0 0 0 0 3 1 1 1 3 1 0 3 3 4 6 4 2 4 7 5 4 0 0
 1983 7 2 3 0 125  0 0 0 0 2 1 1 5 6 6 4 4 1 6 1 3 0 3 5 3 3 4 0 0 0 0 0 0 0 3 1 3 0 3 5 6 5 3 6 1 2 3 8 4 4 10 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 1 3 2 3 4 3 8 2 5 5 4 5 3 3 4 3 3 0 0 0 0 0 0 0 0 2 0 1 0 6 9 6 3 3 5 4 5 3 5 3 3 4 2 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 1 1 0 2 2 3 2 8 4 5 1 3 3 4 3 4 1 0 0 0 0 0 0 1 1 4 2 3 2 2 2 5 6 5 8 9 1 4 6 17 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 3 1 3 3 8 9 3 2 1 4 4 4 3 1 4 7 0 0 0 0 0 0 0 0 0 3 2 5 6 3 2 5 7 6 1 3 3 7 1 4 4 3 0 0 0
 1995 7 2 3 0 125  0 0 0 0 4 2 2 4 4 5 4 4 3 1 2 6 4 9 2 5 2 2 0 0 0 0 0 0 0 0 6 1 2 2 10 3 5 4 4 5 6 4 3 1 2 1 1 0 0 0
 1998 7 2 3 0 125  0 0 0 1 2 2 2 3 2 5 9 3 6 4 5 2 4 4 1 2 4 4 0 0 0 0 0 0 0 3 1 3 2 3 5 4 6 5 7 1 3 2 5 3 4 1 2 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 5 0 2 4 2 3 2 4 10 6 5 6 2 3 3 8 0 0 0 0 0 0 0 0 1 1 4 4 4 4 4 9 3 2 4 5 2 2 7 1 3 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 2 0 1 1 3 5 1 1 3 2 4 2 7 0 0 3 1 3 0 3 1 4 2 2 3 6 3 4 4 4
1972  7 1  3 0 2 1 -1 75  0 0 1 1 2 2 0 3 1 5 1 2 0 2 7 7 5 0 0 0 2 2 2 2 2 3 0 2 2 3 0 7 3 6
1973  7 1  3 0 2 1 -1 75  0 0 4 1 0 1 1 2 2 4 3 1 3 4 6 3 8 0 0 0 5 1 3 0 3 3 0 2 2 2 2 4 0 5
1974  7 1  3 0 2 1 -1 75  0 0 4 1 2 1 2 3 2 3 1 0 3 1 8 4 4 0 0 1 4 2 6 2 2 0 3 2 2 0 0 5 1 6
1975  7 1  3 0 2 1 -1 75  0 0 5 1 1 1 0 1 5 0 2 1 0 4 8 1 8 0 0 0 0 2 2 5 0 0 1 3 0 1 1 3 7 12
1976  7 1  3 0 2 1 -1 75  0 0 1 1 3 3 3 4 2 4 0 2 1 2 7 4 5 0 0 0 0 6 2 3 2 1 1 1 3 1 0 4 9 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 1 6 6 1 2 2 2 2 1 1 9 5 5 0 0 0 0 2 4 0 0 2 2 5 0 2 2 4 6 3
1978  7 1  3 0 2 1 -1 75  0 0 0 0 2 3 4 2 3 2 2 3 2 1 9 2 3 0 0 3 0 2 2 3 0 2 0 2 2 1 0 7 5 8
1979  7 1  3 0 2 1 -1 75  0 0 1 1 1 2 4 2 0 1 2 3 1 0 5 18 0 0 0 3 2 1 2 3 3 2 1 3 2 2 1 4 0 5
1980  7 1  3 0 2 1 -1 75  0 1 0 4 0 0 2 0 3 3 5 1 2 1 1 14 0 0 0 0 2 2 2 5 3 2 1 1 1 0 3 8 2 6
1981  7 1  3 0 2 1 -1 75  0 7 3 1 0 4 1 2 3 5 2 3 3 0 4 2 7 0 0 0 1 1 1 0 3 2 0 3 2 2 0 3 3 7
1982  7 1  3 0 2 1 -1 75  0 3 2 2 3 2 2 2 4 3 2 1 2 1 3 2 6 0 0 0 0 5 1 3 2 1 4 4 4 0 2 4 5 0
1983  7 1  3 0 2 1 -1 75  0 0 0 9 1 0 0 3 1 0 1 2 2 1 2 1 6 0 0 2 3 3 3 1 3 1 1 4 0 2 2 6 5 10
1984  7 1  3 0 2 1 -1 75  0 0 0 12 5 3 1 1 2 1 0 3 1 1 3 6 4 0 0 2 7 3 3 0 1 3 1 1 1 0 0 4 0 6
1985  7 1  3 0 2 1 -1 75  0 0 0 8 7 3 1 3 5 1 0 1 1 1 2 2 3 0 0 0 3 3 6 4 4 4 0 1 1 1 0 6 2 2
1986  7 1  3 0 2 1 -1 75  0 5 1 5 3 9 8 4 1 1 1 0 2 1 4 0 1 0 0 0 0 7 5 5 4 2 1 0 1 1 0 1 2 0
1987  7 1  3 0 2 1 -1 75  0 3 0 1 1 3 8 8 1 0 1 0 1 1 3 7 0 0 0 2 1 3 6 2 5 3 2 0 1 1 0 8 1 2
1988  7 1  3 0 2 1 -1 75  1 3 0 0 2 2 4 3 1 2 2 3 1 0 7 0 0 0 0 0 9 2 4 7 4 4 0 0 1 2 0 2 9 0
1989  7 1  3 0 2 1 -1 75  0 1 3 2 4 2 4 4 7 6 1 1 1 0 6 5 0 0 0 2 0 2 2 4 2 3 1 2 3 1 1 3 2 0
1990  7 1  3 0 2 1 -1 75  0 0 10 3 2 1 3 0 3 3 4 0 3 0 0 3 0 0 2 4 2 2 3 1 2 4 5 3 3 1 1 3 4 0
1991  7 1  3 0 2 1 -1 75  0 0 2 3 6 3 3 4 3 2 3 2 1 0 3 2 0 0 0 1 5 4 3 4 3 1 5 3 3 1 0 2 3 0
1992  7 1  3 0 2 1 -1 75  0 0 9 1 3 3 4 5 3 2 2 4 1 1 2 0 1 0 0 4 1 2 6 3 3 4 0 1 3 2 0 3 2 0
1993  7 1  3 0 2 1 -1 75  0 0 9 4 1 3 1 5 3 1 3 1 3 7 0 0 0 0 0 3 1 3 3 2 5 1 4 0 2 4 3 3 0 0
1994  7 1  3 0 2 1 -1 75  0 0 3 6 3 1 4 7 1 1 2 1 1 2 4 0 0 0 0 0 6 3 0 4 4 4 5 0 4 9 0 0 0 0
1995  7 1  3 0 2 1 -1 75  6 1 3 4 2 0 4 5 3 2 2 1 0 8 0 0 0 0 0 0 6 3 3 4 2 4 1 2 0 0 2 6 1 0
1996  7 1  3 0 2 1 -1 75  0 0 9 2 5 6 5 2 3 3 1 2 0 2 2 0 0 0 1 3 2 4 5 2 2 1 3 3 1 1 0 5 0 0
1997  7 1  3 0 2 1 -1 75  0 5 5 2 4 5 1 3 0 0 0 0 4 0 3 0 0 0 0 0 8 3 6 1 4 1 3 4 1 2 10 0 0 0
1998  7 1  3 0 2 1 -1 75  1 0 3 3 4 4 1 1 0 4 4 0 2 0 8 0 0 0 0 6 3 4 5 7 2 2 3 1 3 2 0 1 1 0
1999  7 1  3 0 2 1 -1 75  0 2 1 2 4 1 2 3 1 3 5 2 3 1 8 0 0 0 0 2 5 4 11 5 2 2 3 0 0 2 0 1 0 0
2000  7 1  3 0 2 1 -1 75  0 2 0 1 4 5 5 4 4 3 2 1 1 2 7 0 0 0 0 1 3 4 7 4 3 2 2 0 2 1 3 2 0 0
2001  7 1  3 0 2 1 -1 75  0 4 5 2 3 5 4 9 1 3 2 0 1 0 2 0 0 0 0 2 2 3 3 3 4 2 1 2 0 3 3 6 0 0
1977  7 2  3 0 2 1 -1 75  4 2 5 3 2 1 3 1 0 1 2 1 1 2 6 4 0 0 0 1 5 5 1 3 3 2 3 0 1 1 3 4 5 0
1980  7 2  3 0 2 1 -1 75  2 5 3 6 3 0 1 2 2 2 1 0 2 0 6 0 3 0 4 4 3 2 0 1 1 1 2 2 3 3 1 4 2 4
1983  7 2  3 0 2 1 -1 75  1 5 3 5 3 0 4 1 0 2 1 2 1 0 2 5 0 0 4 3 2 3 4 5 0 2 0 2 1 0 2 5 2 5
1986  7 2  3 0 2 1 -1 75  3 0 5 6 3 9 4 4 2 3 2 0 1 0 2 0 1 0 0 7 1 4 3 5 1 2 2 0 1 1 0 2 1 0
1989  7 2  3 0 2 1 -1 75  2 2 3 3 1 3 3 0 7 1 1 2 1 3 0 0 0 0 2 2 2 5 7 5 5 6 0 0 1 8 0 0 0 0
1992  7 2  3 0 2 1 -1 75  0 9 4 3 3 4 0 3 3 1 0 6 1 2 3 0 0 0 0 5 8 4 1 0 5 1 2 3 4 0 0 0 0 0
1995  7 2  3 0 2 1 -1 75  0 6 6 1 3 5 5 4 2 2 3 1 1 1 2 0 0 0 1 5 7 4 2 4 0 5 1 1 1 1 0 1 0 0
1998  7 2  3 0 2 1 -1 75  6 3 3 13 2 4 0 1 1 2 3 0 1 1 0 0 0 0 1 6 10 2 2 5 1 2 2 0 2 2 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 8 4 3 2 9 6 0 1 1 1 1 3 0 1 0 0 0 6 5 1 6 1 4 4 2 2 1 0 0 1 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.6714 39.3987 44.2062 46.9941 52.228 54.6007 58.4773 60.5541 61.6769 63.3896 68.0786 64.6919 67.0894 68.5455 70.844 70.8114 76.2834 34.7535 40.0684 46.2557 50.95 52.8146 55.2667 56.6962 58.0073 62.1151 63.2858 62.4124 65.2578 65.0949 64.7013 66.9999 70.8075 70.1834
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.8969 39.8864 43.7509 47.4472 49.9833 53.0637 59.2629 60.1024 62.8878 63.1112 65.1753 63.9358 66.1068 69.2184 72.0435 68.5443 72.1383 33.5544 39.5281 45.4102 47.9016 51.343 55.2065 56.8183 62.1058 60.7383 60.4877 62.8827 64.6883 66.0938 66.4191 68.5104 69.9543 69.4585
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.8906 38.836 42.6614 47.5702 51.4386 54.9308 57.7125 58.0013 59.9189 65.1215 62.8169 66.7795 65.2031 67.0027 68.7882 70.312 72.966 34.0318 41.4236 43.6909 47.486 51.5971 53.8496 54.1918 59.0924 58.4861 62.7678 61.6927 63.639 65.2732 65.7957 69.2167 71.0979 72.0306
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.8524 38.8798 44.5 47.9307 47.6387 55.6606 55.1117 57.1318 60.3946 63.5268 64.5898 65.7609 65.7813 65.9018 66.2097 73.6483 71.2583 35.7192 40.0096 43.3056 47.0277 49.8009 54.0729 55.8225 59.2062 58.385 59.1038 62.8368 65.8702 63.9216 65.6617 66.987 70.9811 70.9502
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

