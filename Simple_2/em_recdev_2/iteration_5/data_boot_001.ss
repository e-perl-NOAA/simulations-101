#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:54:07 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684266847 first rand#: -0.0768466
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
1972 1 1 199.1 0.01
1973 1 1 993.862 0.01
1974 1 1 967.565 0.01
1975 1 1 1975.14 0.01
1976 1 1 2976.4 0.01
1977 1 1 3867.96 0.01
1978 1 1 4949.12 0.01
1979 1 1 6022.16 0.01
1980 1 1 7958.46 0.01
1981 1 1 9948.79 0.01
1982 1 1 10024.4 0.01
1983 1 1 9886.09 0.01
1984 1 1 10183.8 0.01
1985 1 1 10301.2 0.01
1986 1 1 10000.4 0.01
1987 1 1 10089.6 0.01
1988 1 1 8969.72 0.01
1989 1 1 7977.47 0.01
1990 1 1 6993.68 0.01
1991 1 1 5956.8 0.01
1992 1 1 3990.93 0.01
1993 1 1 3989.75 0.01
1994 1 1 4092.27 0.01
1995 1 1 3991.88 0.01
1996 1 1 3976.59 0.01
1997 1 1 3005.62 0.01
1998 1 1 2988.91 0.01
1999 1 1 2975.02 0.01
2000 1 1 3019.74 0.01
2001 1 1 2981.62 0.01
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
1977 7 2 167828 0.3 #_orig_obs: 141789 SURVEY1
1980 7 2 141106 0.3 #_orig_obs: 199606 SURVEY1
1983 7 2 92859.2 0.3 #_orig_obs: 60453.6 SURVEY1
1986 7 2 65551.5 0.3 #_orig_obs: 70199.5 SURVEY1
1989 7 2 66791.5 0.3 #_orig_obs: 73805.1 SURVEY1
1992 7 2 35797.5 0.3 #_orig_obs: 32355.7 SURVEY1
1995 7 2 60666.9 0.3 #_orig_obs: 61009.2 SURVEY1
1998 7 2 44613.8 0.3 #_orig_obs: 37741.9 SURVEY1
2001 7 2 75324.2 0.3 #_orig_obs: 54907.9 SURVEY1
1990 7 3 9.9582 0.7 #_orig_obs: 5.45003 SURVEY2
1991 7 3 4.98246 0.7 #_orig_obs: 2.86001 SURVEY2
1992 7 3 4.72422 0.7 #_orig_obs: 6.15186 SURVEY2
1993 7 3 8.96443 0.7 #_orig_obs: 10.1056 SURVEY2
1994 7 3 4.41629 0.7 #_orig_obs: 1.29982 SURVEY2
1995 7 3 4.1965 0.7 #_orig_obs: 13.6582 SURVEY2
1996 7 3 9.27372 0.7 #_orig_obs: 7.40479 SURVEY2
1997 7 3 12.7346 0.7 #_orig_obs: 5.26818 SURVEY2
1998 7 3 6.43046 0.7 #_orig_obs: 3.60135 SURVEY2
1999 7 3 0.40253 0.7 #_orig_obs: 1.3337 SURVEY2
2000 7 3 4.55049 0.7 #_orig_obs: 23.3125 SURVEY2
2001 7 3 9.58715 0.7 #_orig_obs: 6.92894 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 3 1 3 4 2 3 1 5 5 15 7 8 4 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 7 7 5 4 8 8 8 11 2 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 1 1 1 2 3 3 2 3 3 8 12 6 3 5 0 0 0 0 0 0 0 0 0 2 0 1 3 1 5 4 5 4 6 5 15 10 2 6 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 10 3 1 5 9 3 3 9 14 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 7 2 3 2 6 3 5 9 11 8 5 2 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 0 4 2 2 2 1 2 4 3 16 9 10 6 0 0 0 0 0 0 0 0 0 1 0 0 1 1 2 2 0 6 9 5 4 12 6 5 6 0 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1 1 0 2 2 3 2 3 2 6 6 1 12 6 6 7 0 0 0 0 0 0 0 0 0 0 0 2 1 1 1 0 3 1 8 8 5 16 10 6 3 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 3 2 0 1 1 0 2 3 2 6 4 6 14 10 11 0 3 0 0 0 0 0 0 0 1 0 0 0 0 2 2 4 4 3 2 5 9 12 5 4 4 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 1 0 0 0 4 2 2 4 2 16 11 8 11 1 0 0 0 0 0 0 0 1 0 1 0 2 3 3 3 4 2 3 4 6 9 10 5 5 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 3 0 2 3 0 3 2 4 0 3 3 5 6 6 9 3 5 3 0 0 0 0 0 0 0 0 1 1 0 2 2 0 2 4 3 4 6 6 15 6 5 8 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 11 2 1 3 4 2 4 2 4 11 9 9 2 3 0 0 0 0 0 0 0 0 0 2 0 0 3 2 3 2 2 3 3 4 13 7 10 3 1 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2 1 2 2 2 1 1 2 2 9 2 4 12 7 9 3 4 0 0 0 0 0 0 0 0 0 1 1 1 7 1 4 4 5 5 7 3 10 4 5 2 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 2 1 0 3 1 6 3 2 6 3 5 3 8 4 3 4 0 0 0 0 0 0 0 4 0 1 0 1 1 3 3 9 2 5 4 4 9 13 7 4 1 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 3 1 2 1 1 3 6 2 3 1 4 10 8 10 0 0 0 0 0 0 0 0 0 0 2 2 2 1 1 5 3 2 7 4 3 9 11 8 7 3 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 4 4 3 4 4 3 7 4 6 7 7 7 0 0 0 0 0 0 0 0 0 0 0 5 2 2 1 5 4 1 8 1 3 8 10 4 7 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 1 2 0 1 1 2 5 0 1 2 11 6 4 8 5 5 8 0 0 0 0 0 0 0 0 0 3 1 1 0 1 4 0 1 5 2 10 7 15 5 8 0 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 4 2 2 1 2 3 7 4 0 7 6 8 16 4 5 3 0 0 0 0 0 0 0 0 3 1 3 1 1 2 4 3 4 3 5 0 8 7 2 4 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 1 1 0 2 3 5 7 4 5 13 7 3 5 0 0 0 0 0 0 0 5 1 1 0 1 0 3 6 0 3 3 5 4 8 11 6 7 2 0 0
 1987 7 1 3 0 125  0 0 0 0 0 2 1 0 1 0 2 3 3 2 3 5 10 1 2 7 12 6 5 0 0 0 0 0 0 0 0 0 1 1 0 3 0 1 4 1 4 4 6 5 11 11 3 5 0 0
 1988 7 1 3 0 125  0 0 0 0 0 3 1 4 3 1 0 1 4 1 1 5 5 6 10 7 6 6 6 0 0 0 0 0 0 0 0 2 4 2 0 0 0 5 3 3 1 1 6 9 9 8 2 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 2 1 1 0 2 5 3 1 5 2 5 6 5 5 5 5 4 6 0 0 0 0 0 0 0 0 3 2 1 0 2 2 5 2 2 5 3 9 2 11 8 3 2 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3 1 2 1 4 0 4 5 7 6 6 5 5 8 2 3 0 0 0 0 0 0 0 0 2 0 4 1 3 2 2 3 3 4 1 4 8 7 6 10 3 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 3 3 1 7 1 3 4 4 6 2 3 3 7 5 6 0 0 0 0 0 0 0 0 0 1 0 0 5 8 1 6 3 6 4 5 7 1 14 2 4 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 0 0 3 1 2 4 5 3 5 3 7 4 5 6 4 4 4 0 0 0 0 0 0 0 0 0 0 3 3 1 3 2 6 6 4 5 4 3 5 5 7 7 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 4 1 3 1 2 3 3 6 4 1 7 9 3 4 2 6 0 0 0 0 0 0 0 0 0 0 7 1 2 2 3 2 5 4 8 8 6 0 8 7 2 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 7 0 3 3 3 3 4 7 5 1 9 4 5 0 0 0 0 0 0 0 0 0 0 7 0 0 4 2 2 7 8 7 6 6 4 8 6 4 0 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 2 2 1 1 3 2 4 7 2 2 5 5 6 12 9 0 0 0 0 0 0 0 0 1 2 1 1 0 3 2 6 3 4 7 6 4 2 4 5 5 6 0 0 0
 1996 7 1 3 0 125  0 0 0 1 0 2 0 0 3 0 3 2 2 3 4 4 7 9 10 9 9 3 0 0 0 0 0 0 0 0 0 5 0 2 1 2 6 3 1 2 4 5 3 4 10 6 0 0 0 0
 1997 7 1 3 0 125  0 0 0 0 0 1 0 5 1 2 3 0 1 6 6 4 9 4 3 9 11 0 0 0 0 0 0 0 0 0 1 0 1 2 3 0 3 4 3 7 5 4 4 8 6 5 4 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 4 0 0 1 0 4 3 5 3 3 5 6 4 3 8 5 5 2 0 0 0 0 0 0 3 0 0 0 2 3 1 1 2 6 2 10 8 4 4 9 3 6 0 0 0
 1999 7 1 3 0 125  0 0 0 0 1 1 1 1 2 1 1 5 2 2 5 7 9 3 7 4 6 5 0 0 0 0 0 0 0 0 0 1 0 2 1 1 3 5 5 3 5 6 4 6 8 5 7 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 2 0 1 4 1 0 4 3 2 7 4 6 8 2 12 10 0 0 0 0 0 0 0 0 0 0 0 2 1 2 2 3 6 4 3 4 5 5 5 8 5 2 2 0 0
 2001 7 1 3 0 125  0 0 0 0 0 0 1 0 2 1 4 3 1 4 6 6 3 6 5 6 7 5 0 0 0 0 0 0 0 0 0 0 1 0 1 1 2 5 2 6 4 5 5 7 9 7 10 0 0 0
 1977 7 2 3 0 125  0 0 0 0 6 2 0 1 3 3 4 1 2 1 2 1 3 1 6 9 8 8 0 0 0 0 0 0 0 0 0 6 0 2 0 2 2 5 6 5 2 3 4 5 9 5 5 3 0 0
 1980 7 2 3 0 125  0 0 0 0 3 0 0 3 4 4 2 6 6 1 2 2 2 2 3 5 4 6 3 3 0 0 0 0 0 0 3 1 3 6 1 4 7 2 3 3 2 4 1 5 6 4 3 6 0 0
 1983 7 2 3 0 125  0 0 0 0 4 0 1 2 5 3 6 5 2 6 2 4 1 4 4 6 5 6 0 0 0 0 0 0 0 0 0 3 5 2 1 2 4 5 5 6 4 2 3 5 4 8 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 5 2 3 3 0 2 2 2 0 8 2 5 0 1 5 5 4 5 4 0 0 0 0 0 0 4 2 4 3 2 4 1 3 5 3 5 3 4 2 5 10 5 2 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 13 4 1 2 7 2 3 4 2 2 4 2 5 4 6 5 4 0 0 0 0 0 0 1 4 0 3 4 2 2 9 1 6 2 3 2 3 3 4 6 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 4 2 5 2 3 4 7 4 5 4 5 2 4 4 3 5 0 0 0 0 0 0 0 0 0 3 2 4 4 2 5 5 5 3 11 4 4 2 3 3 0 2 0 0 0
 1995 7 2 3 0 125  0 0 0 0 3 4 2 2 3 5 1 3 5 6 4 7 8 8 4 5 2 2 0 0 0 0 0 0 0 3 1 2 2 5 0 6 1 5 4 6 2 3 3 2 4 2 0 0 0 0
 1998 7 2 3 0 125  0 0 0 2 2 3 4 4 7 6 4 1 0 3 3 4 3 2 3 4 4 1 0 0 0 0 0 0 0 2 3 3 5 3 3 4 8 3 1 5 6 8 1 1 5 2 2 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 0 4 1 6 6 2 1 5 1 4 5 3 4 3 4 9 0 0 0 0 0 0 0 0 3 0 2 3 7 0 3 8 7 3 2 4 3 6 0 8 8 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 4 1 3 2 0 1 2 4 0 0 9 3 2 0 0 5 3 1 2 3 0 4 0 4 2 2 0 7 3 8
1972  7 1  3 0 2 1 -1 75  0 0 0 3 1 0 2 1 1 2 1 1 2 1 3 6 9 0 0 1 4 1 3 5 0 1 3 2 1 3 3 5 4 6
1973  7 1  3 0 2 1 -1 75  0 0 0 2 1 0 4 2 2 2 2 0 1 2 11 7 4 0 0 0 3 0 4 1 3 1 2 3 3 0 1 7 4 3
1974  7 1  3 0 2 1 -1 75  0 0 2 2 1 4 4 2 1 1 3 1 1 0 11 4 9 0 0 0 3 2 2 1 1 1 0 1 1 2 0 9 3 3
1975  7 1  3 0 2 1 -1 75  0 0 0 0 5 3 4 0 4 3 3 2 1 1 3 4 10 0 0 0 0 4 1 2 1 1 3 3 1 0 1 5 2 8
1976  7 1  3 0 2 1 -1 75  0 0 0 2 2 1 4 3 5 1 1 0 1 0 6 4 6 0 0 0 0 3 1 1 2 5 2 4 4 1 1 6 9 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 5 1 4 1 2 2 2 3 2 2 9 4 10 0 0 1 0 2 0 1 1 3 1 1 3 2 1 6 1 5
1978  7 1  3 0 2 1 -1 75  0 0 5 1 2 0 2 2 2 2 1 2 1 4 8 6 7 0 0 1 0 1 1 1 0 1 6 2 1 3 0 7 4 2
1979  7 1  3 0 2 1 -1 75  0 3 0 1 1 1 0 0 0 2 1 0 3 1 7 13 0 0 0 8 4 2 2 1 4 1 3 3 1 0 1 2 2 8
1980  7 1  3 0 2 1 -1 75  0 2 0 1 3 0 2 2 1 2 2 1 2 1 5 9 0 0 0 0 2 7 2 1 2 2 3 0 0 3 1 12 2 5
1981  7 1  3 0 2 1 -1 75  0 1 2 1 4 3 2 3 0 1 3 2 1 0 6 5 7 0 0 1 1 3 2 3 2 2 1 2 1 1 1 7 2 5
1982  7 1  3 0 2 1 -1 75  0 3 1 0 1 3 0 2 1 2 1 3 1 3 7 4 9 0 0 0 0 4 4 7 2 3 1 0 3 0 2 2 6 0
1983  7 1  3 0 2 1 -1 75  0 0 0 2 2 5 7 4 1 0 1 1 0 1 6 5 5 0 0 3 0 1 2 3 3 1 4 1 0 0 0 9 4 4
1984  7 1  3 0 2 1 -1 75  0 0 0 5 1 3 3 6 2 3 1 0 0 0 2 5 3 0 0 4 3 3 2 3 0 4 3 1 2 1 1 5 4 5
1985  7 1  3 0 2 1 -1 75  0 0 0 8 3 1 2 3 3 4 1 0 2 0 3 10 0 0 0 0 2 0 3 2 4 4 6 2 1 2 0 4 1 4
1986  7 1  3 0 2 1 -1 75  0 5 0 1 2 0 2 3 4 7 3 1 1 1 0 1 4 0 0 0 0 9 5 2 3 2 4 3 1 2 0 4 5 0
1987  7 1  3 0 2 1 -1 75  0 6 1 2 1 3 1 5 3 2 2 1 0 1 2 4 0 0 0 5 4 1 2 4 1 4 2 1 1 3 0 6 1 6
1988  7 1  3 0 2 1 -1 75  1 0 3 3 1 1 1 4 2 3 4 0 4 2 1 6 0 0 4 2 3 5 3 3 1 2 2 0 5 1 1 5 2 0
1989  7 1  3 0 2 1 -1 75  0 1 3 4 1 3 2 0 3 3 3 1 0 0 3 3 0 0 0 7 3 3 4 4 4 3 2 0 2 3 5 2 3 0
1990  7 1  3 0 2 1 -1 75  0 0 7 5 7 3 3 4 3 1 3 1 2 0 3 0 0 0 1 3 6 1 1 6 1 1 3 2 1 0 0 6 1 0
1991  7 1  3 0 2 1 -1 75  0 0 4 3 5 4 4 1 1 3 5 3 0 0 4 0 0 0 0 5 2 8 3 3 3 2 5 0 0 3 0 4 0 0
1992  7 1  3 0 2 1 -1 75  0 0 6 2 3 4 7 2 1 4 2 0 0 0 1 1 1 0 0 2 5 4 6 3 8 2 3 1 1 0 2 3 1 0
1993  7 1  3 0 2 1 -1 75  0 0 4 3 5 2 7 4 2 3 2 2 0 6 0 0 0 0 0 5 1 5 2 6 4 2 1 2 0 0 1 6 0 0
1994  7 1  3 0 2 1 -1 75  0 0 3 4 1 5 2 3 6 3 3 0 1 2 3 0 2 0 0 0 5 2 3 5 7 4 2 3 1 5 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 1 2 3 3 3 6 4 4 3 2 2 0 5 0 0 0 0 0 0 9 3 2 4 3 7 0 2 2 0 1 3 0 0
1996  7 1  3 0 2 1 -1 75  0 0 7 2 4 5 2 4 4 2 1 1 0 1 2 1 0 0 0 5 3 3 6 5 4 2 1 1 6 1 0 2 0 0
1997  7 1  3 0 2 1 -1 75  0 3 6 5 3 2 4 1 2 6 2 2 0 1 8 0 0 0 0 0 4 6 3 4 0 4 1 2 0 0 6 0 0 0
1998  7 1  3 0 2 1 -1 75  1 3 0 1 2 5 7 2 2 3 1 6 2 4 2 0 0 0 0 3 2 5 3 4 3 3 1 3 1 0 6 0 0 0
1999  7 1  3 0 2 1 -1 75  1 1 3 2 4 4 5 1 2 2 1 0 2 4 5 0 0 0 0 3 4 3 5 6 3 2 2 4 1 2 0 3 0 0
2000  7 1  3 0 2 1 -1 75  0 0 0 1 3 3 5 1 7 3 2 4 1 0 4 0 0 0 0 4 2 6 6 6 1 3 1 1 1 1 2 7 0 0
2001  7 1  3 0 2 1 -1 75  0 1 2 1 5 4 3 5 6 1 4 3 2 1 8 0 0 0 0 1 2 0 1 6 3 1 6 1 0 0 2 6 0 0
1977  7 2  3 0 2 1 -1 75  5 5 5 0 2 1 4 2 3 2 3 2 0 1 4 4 0 0 1 0 2 2 1 4 4 1 2 0 0 0 1 5 9 0
1980  7 2  3 0 2 1 -1 75  3 1 5 3 3 2 2 2 1 3 2 0 1 3 3 2 5 0 4 2 7 2 5 2 0 0 0 1 1 2 1 5 1 1
1983  7 2  3 0 2 1 -1 75  4 5 1 2 2 1 3 3 1 1 1 1 0 0 3 6 0 0 5 0 5 2 3 3 6 0 3 0 1 0 1 8 0 4
1986  7 2  3 0 2 1 -1 75  4 3 8 1 3 5 2 2 3 1 0 1 1 0 1 2 1 0 0 8 2 4 3 2 0 2 0 6 1 2 1 3 3 0
1989  7 2  3 0 2 1 -1 75  1 2 13 5 6 2 3 1 2 1 0 2 4 4 0 0 0 0 1 5 3 2 1 2 4 2 0 1 1 7 0 0 0 0
1992  7 2  3 0 2 1 -1 75  3 3 3 7 4 2 2 3 2 1 0 1 1 0 2 0 0 0 2 4 10 3 5 6 0 2 2 0 1 2 0 4 0 0
1995  7 2  3 0 2 1 -1 75  0 10 5 3 4 4 1 9 2 0 1 1 0 1 3 0 0 0 2 2 2 1 7 3 1 3 3 4 0 0 1 2 0 0
1998  7 2  3 0 2 1 -1 75  5 2 3 2 5 3 2 0 4 2 1 1 0 3 0 0 0 0 4 9 3 4 5 2 3 4 2 1 3 2 0 0 0 0
2001  7 2  3 0 2 1 -1 75  0 0 4 5 4 4 2 5 0 2 2 1 0 1 3 0 0 0 2 1 5 8 3 2 1 5 3 3 3 0 2 4 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.8578 39.6609 44.4631 48.0414 51.9965 56.1869 57.1366 60.2306 61.7497 62.523 65.7193 62.8437 66.9647 66.9024 69.3685 74.3548 73.0548 34.03 39.2657 46.7053 50.1744 52.7142 57.4629 56.5895 60.1813 62.6917 62.6282 63.5355 67.2075 67.7812 67.6446 67.9142 66.9642 69.0876
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 30.606 38.6913 45.3288 48.4469 51.2383 55.4648 59.0079 58.8381 59.7783 64.2355 62.9133 64.5039 68.3994 69.4333 69.2152 68.5068 73.3111 32.363 40.8223 46.075 50.3829 53.0919 56.0656 56.8091 61.1372 61.5118 62.2896 64.3041 65.1598 64.9955 66.13 69.1772 69.5183 72.6418
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.7627 40.2824 44.8165 45.8023 50.7121 52.6822 58.2012 59.3009 60.6725 59.7533 61.5962 67.0498 65.8557 67.882 68.9608 68.5878 71.1133 35.1884 39.4059 43.9102 47.1352 51.1301 51.9554 57.659 58.0809 59.3325 61.5326 63.6887 66.9029 65.0492 65.8021 69.5677 69.5355 71.2411
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 33.776 39.7235 41.4205 47.1503 50.3917 50.8717 55.9237 60.7598 61.0427 60.5623 64.3787 67.0189 63.1405 68.4976 68.6353 68.5056 72.7733 34.8339 39.907 43.6448 46.7264 50.2327 54.2184 57.3564 56.6945 60.2635 61.0701 61.1591 65.0134 67.6468 63.9983 67.7562 67.9859 71.2515
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

