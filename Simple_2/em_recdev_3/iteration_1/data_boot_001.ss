#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 15:55:08 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684266908 first rand#: 0.216512
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
1972 1 1 198.019 0.01
1973 1 1 975.443 0.01
1974 1 1 1003.42 0.01
1975 1 1 1966.15 0.01
1976 1 1 2963.44 0.01
1977 1 1 3989.17 0.01
1978 1 1 4915.93 0.01
1979 1 1 6101.41 0.01
1980 1 1 7976.1 0.01
1981 1 1 9828.93 0.01
1982 1 1 9928.56 0.01
1983 1 1 9726.54 0.01
1984 1 1 10076.2 0.01
1985 1 1 9663.1 0.01
1986 1 1 10072.9 0.01
1987 1 1 9915.17 0.01
1988 1 1 9052.01 0.01
1989 1 1 7853.18 0.01
1990 1 1 7156.32 0.01
1991 1 1 5935 0.01
1992 1 1 3891.92 0.01
1993 1 1 4003.9 0.01
1994 1 1 3988.12 0.01
1995 1 1 4085.01 0.01
1996 1 1 3963.16 0.01
1997 1 1 2990.67 0.01
1998 1 1 2949.12 0.01
1999 1 1 2953.41 0.01
2000 1 1 3053.6 0.01
2001 1 1 2919.57 0.01
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
1977 7 2 173072 0.3 #_orig_obs: 180099 SURVEY1
1980 7 2 101859 0.3 #_orig_obs: 155121 SURVEY1
1983 7 2 91271.1 0.3 #_orig_obs: 89228.3 SURVEY1
1986 7 2 66145.2 0.3 #_orig_obs: 78474 SURVEY1
1989 7 2 39021.6 0.3 #_orig_obs: 34131.8 SURVEY1
1992 7 2 46838.2 0.3 #_orig_obs: 45126.1 SURVEY1
1995 7 2 99877.1 0.3 #_orig_obs: 91601.6 SURVEY1
1998 7 2 55694.9 0.3 #_orig_obs: 59889.4 SURVEY1
2001 7 2 107125 0.3 #_orig_obs: 46572.9 SURVEY1
1990 7 3 8.30839 0.7 #_orig_obs: 5.37733 SURVEY2
1991 7 3 4.67205 0.7 #_orig_obs: 2.97797 SURVEY2
1992 7 3 13.0639 0.7 #_orig_obs: 16.2215 SURVEY2
1993 7 3 11.5767 0.7 #_orig_obs: 1.3138 SURVEY2
1994 7 3 2.54766 0.7 #_orig_obs: 8.29572 SURVEY2
1995 7 3 1.09109 0.7 #_orig_obs: 4.56598 SURVEY2
1996 7 3 4.02725 0.7 #_orig_obs: 5.42255 SURVEY2
1997 7 3 2.97219 0.7 #_orig_obs: 10.8367 SURVEY2
1998 7 3 4.1654 0.7 #_orig_obs: 3.69202 SURVEY2
1999 7 3 2.06039 0.7 #_orig_obs: 1.39895 SURVEY2
2000 7 3 6.18762 0.7 #_orig_obs: 3.27961 SURVEY2
2001 7 3 3.44288 0.7 #_orig_obs: 2.02079 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 0 2 3 1 3 4 7 8 2 6 5 7 4 0 0 0 0 0 0 0 0 0 0 4 1 1 1 1 5 3 9 3 6 7 13 8 4 5 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 0 3 3 4 5 3 4 9 8 9 3 8 3 0 0 0 0 0 0 0 0 0 2 2 0 0 3 6 3 6 7 3 9 9 5 3 4 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 5 3 2 4 5 3 14 11 6 11 0 0 0 0 0 0 0 0 0 0 0 0 0 8 3 2 3 4 2 2 5 11 7 3 3 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 2 4 2 4 11 12 7 14 0 0 0 0 0 0 0 0 0 0 0 1 2 2 2 3 2 4 4 2 3 12 11 12 5 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 0 2 0 1 4 2 1 3 2 3 2 6 9 13 8 7 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 6 8 7 5 7 9 5 8 5 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 1 2 4 2 1 2 4 4 7 12 6 8 8 1 0 0 0 0 0 0 0 1 1 2 1 0 0 1 4 1 9 4 7 5 5 7 6 7 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 1 3 3 4 4 8 3 10 8 7 5 2 0 0 0 0 0 0 0 0 1 0 1 2 2 1 2 0 5 5 2 4 14 15 6 7 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 0 0 2 2 0 2 1 5 2 1 9 9 7 8 7 4 2 0 0 0 0 0 0 0 0 0 0 1 2 1 2 2 3 3 8 6 5 10 6 6 8 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5 0 2 1 3 1 6 2 4 11 13 11 1 2 0 0 0 0 0 0 0 0 0 3 0 2 0 1 2 1 4 3 9 4 13 8 5 6 2 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 0 1 1 2 1 1 1 3 3 3 1 6 10 10 4 9 1 0 0 0 0 0 0 0 0 0 3 1 1 2 3 1 1 2 2 5 4 12 16 6 9 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 4 0 0 0 1 4 1 4 5 0 2 3 2 9 10 9 9 0 0 0 0 0 0 0 1 0 0 1 0 0 5 3 5 5 1 4 8 5 11 5 3 5 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 0 2 6 3 7 4 2 3 1 9 11 7 0 0 0 0 0 0 0 0 0 0 3 2 1 2 2 3 3 8 4 3 7 5 8 7 4 6 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 3 5 3 3 4 1 6 4 4 6 6 7 4 0 0 0 0 0 0 0 0 0 0 0 4 0 0 2 0 2 10 5 5 5 10 15 5 6 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 1 0 1 1 3 1 1 6 2 3 4 4 2 7 10 6 7 0 0 0 0 0 0 0 0 0 2 3 4 1 4 1 5 4 4 3 6 4 10 5 5 5 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 3 5 6 4 5 5 2 2 4 6 6 6 2 2 0 0 0 0 0 0 0 0 4 1 4 5 3 0 4 8 2 4 6 3 12 3 4 1 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 4 2 2 3 3 3 4 2 5 4 7 9 4 11 6 3 3 0 0 0 0 0 0 0 2 1 3 0 2 2 3 2 2 4 4 3 3 5 7 3 1 3 0 0
 1987 7 1 3 0 125  0 0 0 0 1 0 1 2 3 3 2 3 3 6 10 5 2 4 4 9 6 3 6 0 0 0 0 0 0 0 0 0 2 1 2 2 4 4 3 3 5 6 7 2 4 3 3 1 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 1 0 0 3 3 0 7 3 3 10 9 3 5 4 5 6 2 0 0 0 0 0 0 0 0 2 1 2 3 0 3 3 4 4 5 7 4 9 5 5 4 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 2 1 0 2 1 4 4 1 5 6 6 4 6 4 8 4 5 2 0 0 0 0 0 0 0 0 3 2 2 0 2 4 6 1 3 5 6 3 6 6 4 7 0 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3 1 2 3 6 2 6 7 3 6 3 3 9 8 1 6 0 0 0 0 0 0 0 0 0 3 2 2 2 2 2 4 5 5 6 6 5 5 1 4 2 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 2 0 3 4 2 3 4 6 4 4 6 4 9 5 5 0 0 0 0 0 0 0 1 0 1 0 0 2 3 0 5 5 8 1 8 9 3 8 5 5 0 0 0
 1992 7 1 3 0 125  0 0 0 0 3 2 1 2 0 2 3 5 4 1 7 6 6 6 4 4 5 4 0 0 0 0 0 0 0 0 0 0 11 2 2 1 2 4 3 8 6 5 5 1 4 3 3 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 5 2 2 1 5 2 2 4 3 4 6 5 6 9 6 6 0 0 0 0 0 0 0 0 0 0 7 2 0 2 1 1 8 2 7 8 7 2 8 0 1 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 23 2 5 3 4 11 3 3 5 4 5 6 0 4 0 0 0 0 0 0 0 0 0 5 1 2 1 5 2 3 5 3 2 1 4 6 5 2 0 0 0
 1995 7 1 3 0 125  0 0 0 0 2 0 1 4 3 3 4 3 1 5 3 2 5 7 8 5 6 0 0 0 0 0 0 0 0 1 0 2 6 4 4 2 6 3 8 4 5 2 8 5 2 0 1 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 0 0 6 1 3 3 1 2 5 7 3 6 2 3 1 1 5 0 0 0 0 0 0 0 0 0 2 1 1 11 10 10 8 6 1 11 3 5 3 1 0 3 0 0 0
 1997 7 1 3 0 125  0 0 0 0 0 0 2 1 4 0 2 3 4 9 12 8 4 4 4 7 5 0 0 0 0 0 0 0 0 0 1 0 1 1 4 6 5 4 3 4 6 3 5 6 5 0 2 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 1 0 0 0 2 5 2 5 7 12 7 2 2 8 6 2 1 0 0 0 0 0 0 0 0 0 0 0 2 2 7 3 4 8 10 4 3 4 6 6 1 3 0 0 0
 1999 7 1 3 0 125  0 0 0 0 0 5 0 0 0 2 2 4 2 5 6 6 4 5 5 6 2 6 0 0 0 0 0 0 0 0 0 0 0 1 2 2 3 4 6 3 7 10 5 8 4 5 5 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 1 1 0 0 4 4 2 2 7 2 8 13 4 5 13 6 0 0 0 0 0 0 0 0 0 0 1 1 4 0 1 1 6 5 5 8 5 5 2 7 0 0 2 0 0
 2001 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 2 2 3 3 5 7 4 6 6 11 3 2 0 0 0 0 0 0 0 0 0 0 1 1 2 2 1 4 7 9 7 8 8 4 7 4 3 0 0 0
 1977 7 2 3 0 125  0 0 0 0 0 1 1 2 3 1 0 2 4 3 7 2 3 2 1 4 7 12 0 0 0 0 0 0 0 0 0 4 2 2 3 1 5 3 1 8 4 9 2 3 5 7 6 5 0 0
 1980 7 2 3 0 125  0 0 0 0 1 2 2 1 8 5 3 3 3 3 1 4 2 1 5 3 6 1 3 4 0 0 0 0 0 2 2 6 3 2 4 5 3 2 1 3 8 1 2 2 2 5 7 4 0 0
 1983 7 2 3 0 125  0 0 0 0 0 4 1 1 6 5 4 5 3 4 5 4 3 4 4 3 3 7 0 0 0 0 0 0 0 1 1 0 4 4 3 7 2 3 7 3 3 1 2 4 8 6 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 2 2 1 4 6 5 5 3 2 3 4 1 3 2 1 4 2 3 3 0 0 0 0 0 0 1 1 5 2 7 4 5 3 6 3 4 5 3 2 0 9 3 6 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 3 6 4 6 2 1 3 6 4 3 1 3 2 4 6 3 2 0 0 0 0 0 0 0 2 2 4 3 4 3 6 5 8 4 0 4 9 3 2 7 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 7 2 5 2 2 5 7 4 3 5 2 2 4 1 3 6 0 0 0 0 0 0 0 0 0 9 1 3 5 6 7 2 4 4 4 3 3 3 1 7 2 1 0 0 0
 1995 7 2 3 0 125  0 0 0 0 2 2 4 5 12 7 7 7 5 2 1 1 1 2 3 1 1 2 0 0 0 0 0 0 0 3 0 2 3 7 8 7 6 3 3 4 3 1 1 1 7 1 0 0 0 0
 1998 7 2 3 0 125  0 0 0 0 0 3 2 4 2 5 5 2 3 8 8 4 1 6 2 2 0 1 0 0 0 0 0 0 0 1 4 4 4 10 1 5 3 6 8 5 7 5 0 0 4 0 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 4 3 3 1 8 6 4 4 3 7 8 3 5 2 6 5 0 0 0 0 0 0 0 0 0 2 3 4 3 5 2 3 3 5 2 2 3 5 2 8 1 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 2 1 3 0 2 2 2 2 2 2 6 6 5 0 0 0 2 2 6 1 1 4 2 2 6 2 2 6 1 3
1972  7 1  3 0 2 1 -1 75  0 1 0 2 5 2 1 0 2 4 3 1 2 3 4 1 3 0 0 0 1 0 5 2 4 3 1 0 2 2 2 7 5 7
1973  7 1  3 0 2 1 -1 75  0 0 4 3 2 0 4 3 2 1 0 2 0 1 6 6 10 0 0 0 3 1 2 3 1 3 4 0 1 3 0 7 1 2
1974  7 1  3 0 2 1 -1 75  0 0 0 3 1 3 2 2 1 4 2 2 0 0 8 9 4 0 0 0 3 2 1 3 3 1 1 2 1 1 2 8 4 2
1975  7 1  3 0 2 1 -1 75  0 0 1 2 0 5 3 4 3 2 1 0 2 0 3 5 5 0 0 0 0 3 3 1 3 2 3 2 6 1 2 4 3 6
1976  7 1  3 0 2 1 -1 75  0 0 4 1 0 3 2 3 2 3 3 3 1 3 6 1 6 0 0 0 0 2 3 4 1 1 0 0 1 1 0 11 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 5 0 3 1 2 3 4 4 1 0 9 3 5 0 0 2 0 1 3 4 4 0 4 1 4 0 4 4 2 2
1978  7 1  3 0 2 1 -1 75  0 0 1 1 0 0 2 0 1 3 3 4 4 0 7 4 5 0 0 0 1 0 3 1 3 4 4 2 1 2 2 7 1 9
1979  7 1  3 0 2 1 -1 75  1 4 1 1 1 0 1 3 1 4 2 0 0 3 4 11 0 0 0 2 0 3 1 3 2 0 3 2 1 3 2 7 2 7
1980  7 1  3 0 2 1 -1 75  0 0 2 1 4 2 0 1 3 4 1 6 2 2 6 11 0 0 0 0 7 4 0 0 1 1 2 1 1 2 2 5 0 4
1981  7 1  3 0 2 1 -1 75  0 1 3 3 4 2 2 1 2 2 2 0 2 1 7 1 8 0 0 0 1 5 4 1 1 1 2 3 1 3 3 4 2 3
1982  7 1  3 0 2 1 -1 75  0 0 0 5 4 3 3 2 2 4 4 0 1 2 6 3 0 0 0 0 0 9 3 0 3 1 1 0 2 3 1 7 6 0
1983  7 1  3 0 2 1 -1 75  0 0 0 3 1 3 2 6 1 1 4 2 1 3 11 3 4 0 0 3 1 3 3 2 1 1 1 0 3 5 1 4 2 0
1984  7 1  3 0 2 1 -1 75  0 0 0 4 6 3 3 3 3 2 1 0 0 1 4 0 4 0 0 5 1 0 2 4 2 3 4 1 0 1 1 6 3 8
1985  7 1  3 0 2 1 -1 75  0 0 0 9 3 4 4 2 2 3 2 2 0 1 4 2 5 0 0 0 5 2 2 2 2 2 0 0 1 2 0 7 3 4
1986  7 1  3 0 2 1 -1 75  0 2 4 2 2 1 2 6 3 2 1 2 4 1 5 3 1 0 0 0 0 7 2 3 2 3 2 0 1 2 2 4 6 0
1987  7 1  3 0 2 1 -1 75  0 4 2 4 3 3 1 0 1 3 1 0 0 2 0 5 0 0 0 5 4 4 5 3 2 3 2 3 3 1 1 4 4 2
1988  7 1  3 0 2 1 -1 75  3 4 0 5 3 4 2 4 6 2 5 0 1 3 3 3 0 0 2 0 4 1 3 0 1 2 5 2 1 1 0 2 3 0
1989  7 1  3 0 2 1 -1 75  0 4 1 5 6 2 6 2 3 2 4 1 1 0 0 3 0 0 0 6 2 3 5 3 4 5 1 1 0 0 1 3 1 0
1990  7 1  3 0 2 1 -1 75  0 0 9 1 3 6 4 4 1 3 1 3 0 0 2 3 0 0 1 3 4 3 3 7 3 0 2 1 1 1 2 0 4 0
1991  7 1  3 0 2 1 -1 75  0 0 10 4 4 3 3 3 5 5 1 0 2 0 3 3 0 0 0 0 4 8 2 1 3 5 0 1 1 0 1 1 2 0
1992  7 1  3 0 2 1 -1 75  0 0 9 6 2 4 3 3 2 4 2 0 0 1 5 0 0 0 0 2 4 3 8 3 2 2 3 2 1 0 1 1 2 0
1993  7 1  3 0 2 1 -1 75  0 0 7 3 3 4 6 3 5 3 1 1 0 5 0 0 0 0 0 7 4 2 4 2 4 3 3 1 1 0 1 2 0 0
1994  7 1  3 0 2 1 -1 75  0 0 16 4 7 1 3 4 1 7 3 1 0 1 2 0 0 0 0 0 7 4 2 0 5 3 1 1 0 2 0 0 0 0
1995  7 1  3 0 2 1 -1 75  2 2 7 7 3 5 1 1 5 3 1 1 0 5 0 0 0 0 0 0 14 2 3 2 2 1 4 1 1 1 0 1 0 0
1996  7 1  3 0 2 1 -1 75  0 0 5 9 8 5 2 4 1 1 1 1 1 0 1 0 0 0 3 5 11 4 2 3 0 2 1 2 2 1 0 0 0 0
1997  7 1  3 0 2 1 -1 75  0 4 3 7 5 4 4 0 1 0 4 2 1 3 0 0 0 0 0 0 10 7 4 2 1 1 4 2 1 2 3 0 0 0
1998  7 1  3 0 2 1 -1 75  0 0 5 3 4 5 6 2 3 2 1 1 0 0 2 0 0 0 0 3 4 7 10 5 2 0 1 2 0 2 1 4 0 0
1999  7 1  3 0 2 1 -1 75  0 0 3 1 5 4 8 4 2 3 0 0 1 0 1 0 0 0 0 2 2 5 5 12 12 0 2 0 1 0 1 1 0 0
2000  7 1  3 0 2 1 -1 75  0 5 2 2 0 2 6 2 8 1 4 1 0 0 2 0 0 0 0 2 1 5 7 4 7 5 5 1 0 2 0 1 0 0
2001  7 1  3 0 2 1 -1 75  0 3 2 0 1 5 3 6 5 4 4 4 2 1 3 0 0 0 0 1 1 1 6 3 3 6 3 4 0 0 1 3 0 0
1977  7 2  3 0 2 1 -1 75  3 1 4 3 2 2 0 0 0 4 2 0 1 2 5 9 0 0 1 2 1 2 2 1 3 3 4 2 1 3 2 2 8 0
1980  7 2  3 0 2 1 -1 75  3 3 2 1 4 1 4 0 1 0 3 1 0 0 4 4 6 0 1 6 6 1 3 2 0 1 4 1 1 3 2 3 1 3
1983  7 2  3 0 2 1 -1 75  2 1 1 2 5 3 4 0 0 3 0 0 3 0 4 7 0 0 5 5 5 3 4 4 2 0 0 0 1 2 1 3 4 1
1986  7 2  3 0 2 1 -1 75  3 4 2 1 11 1 3 6 1 1 0 0 0 1 0 0 3 0 0 7 6 3 2 0 5 3 1 2 0 0 0 3 6 0
1989  7 2  3 0 2 1 -1 75  3 5 5 2 5 1 2 2 0 1 0 0 0 0 0 0 0 0 6 8 7 3 4 6 4 1 1 1 4 4 0 0 0 0
1992  7 2  3 0 2 1 -1 75  4 2 3 3 4 6 2 0 3 1 0 1 0 1 2 0 0 0 6 5 9 5 4 2 2 3 1 2 0 1 0 3 0 0
1995  7 2  3 0 2 1 -1 75  0 9 19 2 3 4 0 1 0 0 1 2 0 0 1 0 0 0 7 5 4 4 2 4 1 1 0 0 5 0 0 0 0 0
1998  7 2  3 0 2 1 -1 75  1 2 2 4 5 5 3 6 1 2 1 1 0 0 0 0 0 0 1 6 1 5 9 7 2 2 9 0 0 0 0 0 0 0
2001  7 2  3 0 2 1 -1 75  1 1 3 5 3 1 5 2 4 1 4 0 0 0 0 0 0 0 2 4 2 7 7 5 4 5 3 2 4 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.5455 38.4175 46.763 49.4516 52.7406 55.6081 57.6217 59.0053 61.3001 63.1516 65.7013 67.6452 66.0055 69.0042 69.2974 72.447 75.7902 32.1953 40.9221 45.2196 48.6272 52.6065 57.3725 59.8718 60.0193 61.123 62.1538 65.0277 64.8574 63.3722 66.3646 68.0586 70.5497 75.1848
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.7788 40.8631 45.2766 49.5793 53.51 55.4141 58.1959 60.7076 61.969 64.7433 64.3944 65.3109 67.2858 66.7476 69.5706 70.8122 71.4709 32.0337 39.0613 44.793 49.8996 52.1698 54.302 56.2863 59.5078 59.0638 62.5186 64.506 64.445 68.4142 70.6873 69.8137 71.4901 72.7329
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 36.1091 40.3811 43.4684 45.2875 50.3318 51.5188 55.6297 59.9262 59.1487 62.8742 66.2325 64.7754 64.5325 66.1206 70.3041 72.9573 71.8447 35.0782 39.9497 43.3478 45.3431 49.547 51.8464 56.0515 57.6656 61.3317 60.3654 62.8954 64.2744 66.5188 65.735 67.8821 69.9691 72.9566
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 35.4254 38.8506 43.0364 44.9787 51.2466 54.8305 54.8446 58.7748 61.5842 59.4124 62.2163 64.3362 68.7004 69.1614 68.6427 70.3651 75.01 35.0213 38.7562 42.6315 47.0811 51.0108 52.7419 56.2145 60.1652 60.9184 63.8716 62.5279 63.3269 65.9577 67.8795 66.9671 67.6486 71.9706
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

