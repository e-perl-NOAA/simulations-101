#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue May 16 16:02:19 2023
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1684267339 first rand#: -0.102643
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
1972 1 1 200.063 0.01
1973 1 1 1017.4 0.01
1974 1 1 990.887 0.01
1975 1 1 1995.85 0.01
1976 1 1 2959.69 0.01
1977 1 1 4097.13 0.01
1978 1 1 4958.6 0.01
1979 1 1 5983.46 0.01
1980 1 1 8056.28 0.01
1981 1 1 9993.64 0.01
1982 1 1 9873.01 0.01
1983 1 1 10062.8 0.01
1984 1 1 10202.8 0.01
1985 1 1 10132.9 0.01
1986 1 1 10150.1 0.01
1987 1 1 10162 0.01
1988 1 1 9000.74 0.01
1989 1 1 7837.11 0.01
1990 1 1 6939.83 0.01
1991 1 1 5928.72 0.01
1992 1 1 4025.92 0.01
1993 1 1 3958.04 0.01
1994 1 1 4110.37 0.01
1995 1 1 3937.21 0.01
1996 1 1 3957.05 0.01
1997 1 1 3029.15 0.01
1998 1 1 2989.83 0.01
1999 1 1 2979.46 0.01
2000 1 1 2968.47 0.01
2001 1 1 3003.94 0.01
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
1977 7 2 152613 0.3 #_orig_obs: 141789 SURVEY1
1980 7 2 41283.3 0.3 #_orig_obs: 199606 SURVEY1
1983 7 2 128050 0.3 #_orig_obs: 60453.6 SURVEY1
1986 7 2 84035.4 0.3 #_orig_obs: 70199.5 SURVEY1
1989 7 2 56296.9 0.3 #_orig_obs: 73805.1 SURVEY1
1992 7 2 30998.4 0.3 #_orig_obs: 32355.7 SURVEY1
1995 7 2 36333.7 0.3 #_orig_obs: 61009.2 SURVEY1
1998 7 2 35823 0.3 #_orig_obs: 37741.9 SURVEY1
2001 7 2 65613.1 0.3 #_orig_obs: 54907.9 SURVEY1
1990 7 3 6.71599 0.7 #_orig_obs: 5.45003 SURVEY2
1991 7 3 4.10723 0.7 #_orig_obs: 2.86001 SURVEY2
1992 7 3 3.03493 0.7 #_orig_obs: 6.15186 SURVEY2
1993 7 3 4.19203 0.7 #_orig_obs: 10.1056 SURVEY2
1994 7 3 3.70472 0.7 #_orig_obs: 1.29982 SURVEY2
1995 7 3 7.56523 0.7 #_orig_obs: 13.6582 SURVEY2
1996 7 3 6.2706 0.7 #_orig_obs: 7.40479 SURVEY2
1997 7 3 10.3183 0.7 #_orig_obs: 5.26818 SURVEY2
1998 7 3 8.16751 0.7 #_orig_obs: 3.60135 SURVEY2
1999 7 3 4.89539 0.7 #_orig_obs: 1.3337 SURVEY2
2000 7 3 3.63825 0.7 #_orig_obs: 23.3125 SURVEY2
2001 7 3 8.85319 0.7 #_orig_obs: 6.92894 SURVEY2
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 2 2 0 1 3 7 4 3 5 13 11 5 9 0 0 0 0 0 0 0 0 0 0 4 1 1 5 3 0 0 2 5 4 1 14 7 6 5 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 0 1 1 0 4 2 3 4 8 11 10 8 2 6 0 0 0 0 0 0 0 0 0 2 0 1 1 2 4 3 5 4 4 4 9 10 5 7 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 1 2 1 4 4 7 12 8 6 7 0 0 0 0 0 0 0 0 0 0 0 0 0 5 2 1 2 2 1 4 9 15 9 12 3 1 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 1 1 4 2 5 7 1 7 5 8 15 8 8 0 0 0 0 0 0 0 0 0 0 0 1 1 2 2 1 1 2 3 3 6 10 8 8 4 0 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 0 1 1 0 1 1 5 3 2 1 6 5 10 15 7 6 0 0 0 0 0 0 0 0 0 0 0 2 0 0 2 2 5 3 5 8 7 11 10 5 1 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 3 0 0 1 2 3 1 1 6 3 4 6 5 13 5 7 0 0 0 0 0 0 0 0 3 2 0 1 2 2 1 3 2 2 1 6 8 16 8 6 2 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 0 0 0 2 4 5 2 5 5 7 10 16 7 2 0 0 0 0 0 0 2 1 0 0 1 0 2 2 2 4 5 4 4 7 13 4 3 4 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 3 1 1 2 0 1 0 4 0 2 3 4 7 14 7 6 1 3 0 0 0 0 0 0 0 0 2 0 2 0 2 0 2 1 3 8 8 11 10 4 7 6 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 8 1 0 1 3 1 3 4 3 9 14 10 4 1 0 0 0 0 0 0 0 0 0 3 3 1 1 1 1 1 3 4 6 7 11 13 2 3 3 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 1 0 1 1 1 4 1 3 1 1 5 5 11 14 7 6 3 0 0 0 0 0 0 0 0 0 2 2 0 1 3 3 2 4 10 4 2 6 10 4 7 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 2 0 2 2 2 1 3 2 3 5 5 1 9 10 7 6 0 0 0 0 0 0 0 2 0 2 0 0 2 1 1 3 1 5 5 3 9 10 11 8 2 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 4 2 0 3 3 3 3 7 4 6 2 5 11 12 0 0 0 0 0 0 0 0 0 0 2 1 4 2 4 4 1 2 1 6 5 3 8 8 5 4 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 2 2 2 1 7 9 3 6 10 8 8 7 0 0 0 0 0 0 0 0 0 0 0 5 4 2 5 1 1 6 2 3 6 4 6 5 6 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2 2 1 0 2 1 4 3 4 2 4 5 4 5 6 6 3 0 0 0 0 0 0 0 0 0 0 0 0 4 2 2 1 4 7 6 4 6 15 10 10 0 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 4 1 3 1 2 6 3 1 6 2 9 14 6 5 2 2 0 0 0 0 0 0 0 0 2 0 1 1 0 4 2 3 4 6 4 6 7 7 6 5 0 0
 1986 7 1 3 0 125  0 0 0 0 0 2 1 1 0 0 2 3 2 2 3 4 3 3 4 11 5 5 5 0 0 0 0 0 0 0 1 2 0 2 3 1 0 5 4 6 7 9 4 4 6 9 3 3 0 0
 1987 7 1 3 0 125  0 0 0 0 2 1 0 0 0 2 3 3 0 0 3 3 2 3 5 23 9 6 3 0 0 0 0 0 0 0 0 0 5 0 1 1 3 4 3 1 5 3 6 4 10 6 1 4 0 0
 1988 7 1 3 0 125  0 0 0 0 0 1 5 1 0 3 0 1 5 1 6 4 3 4 3 7 8 4 2 0 0 0 0 0 0 0 5 1 0 1 0 3 8 3 4 6 3 2 9 8 6 2 6 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 5 0 2 0 3 3 6 2 5 4 5 3 3 2 6 6 3 5 0 0 0 0 0 0 0 0 2 0 0 5 3 0 5 2 6 3 0 10 4 7 10 4 1 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 4 1 1 2 5 5 7 6 3 4 5 5 10 4 2 1 0 0 0 0 0 0 0 3 1 1 1 2 0 4 0 3 2 6 5 8 4 11 4 4 1 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 4 2 2 4 3 2 2 6 3 4 4 3 4 6 1 0 0 0 0 0 0 0 1 0 2 1 3 2 1 5 4 6 2 4 17 8 6 4 2 7 0 0 0
 1992 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 5 5 4 5 3 7 6 4 6 8 7 3 0 0 0 0 0 0 0 0 0 0 4 2 1 3 3 4 9 6 4 4 5 3 5 1 6 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 2 2 2 1 2 2 3 5 3 8 4 3 5 5 1 7 0 0 0 0 0 0 0 0 0 0 5 2 3 1 2 2 4 7 8 12 4 3 8 4 4 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6 2 1 2 6 6 7 3 7 2 7 8 5 0 0 0 0 0 0 0 0 0 0 6 0 1 1 0 5 5 5 7 4 6 8 4 5 6 0 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 1 0 2 0 4 1 6 7 4 5 4 5 3 7 9 0 0 0 0 0 0 0 0 2 1 0 1 4 2 3 3 2 3 4 6 8 5 5 11 3 4 0 0 0
 1996 7 1 3 0 125  0 0 0 0 0 0 3 2 0 2 1 3 1 4 7 3 1 6 3 9 8 8 0 0 0 0 0 0 0 0 0 1 2 0 2 1 8 6 3 5 5 7 2 2 5 7 6 2 0 0
 1997 7 1 3 0 125  0 0 0 3 0 0 0 1 0 3 0 5 3 6 5 7 3 2 9 6 11 0 0 0 0 0 0 0 0 0 4 0 1 1 1 0 1 3 2 7 5 4 5 9 7 6 5 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 2 0 2 4 1 4 1 3 3 4 6 6 4 2 8 9 4 5 0 0 0 0 0 0 1 0 0 0 2 1 3 3 10 4 2 1 7 3 4 5 7 4 0 0 0
 1999 7 1 3 0 125  0 0 0 0 2 0 0 2 4 2 2 1 3 6 3 6 7 4 2 5 7 4 0 0 0 0 0 0 0 0 0 2 0 2 0 2 4 2 4 3 4 6 14 4 5 9 4 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 1 0 1 2 1 0 2 1 7 7 5 5 4 2 14 14 0 0 0 0 0 0 0 0 0 0 0 2 1 0 2 3 3 4 4 6 5 5 3 6 9 2 4 0 0
 2001 7 1 3 0 125  0 0 0 0 4 0 0 1 0 1 2 2 2 1 4 5 5 6 2 12 6 5 0 0 0 0 0 0 0 0 0 2 0 2 0 3 2 5 4 4 7 5 6 9 6 8 4 0 0 0
 1977 7 2 3 0 125  0 0 0 0 4 2 5 1 1 4 0 1 2 2 2 2 2 2 4 7 9 10 0 0 0 0 0 0 0 0 0 3 4 2 3 3 2 1 4 1 1 5 4 5 11 4 8 4 0 0
 1980 7 2 3 0 125  0 0 0 0 1 0 1 1 3 4 6 4 4 3 2 4 6 2 2 4 5 5 5 3 0 0 0 0 0 0 5 1 1 3 3 7 7 2 4 2 3 2 5 3 3 4 4 1 0 0
 1983 7 2 3 0 125  0 0 0 0 3 2 3 4 5 2 2 2 5 6 7 3 0 7 2 7 4 3 0 0 0 0 0 0 0 0 0 9 1 5 4 3 4 2 5 5 3 2 2 3 6 4 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 0 1 1 3 5 1 1 1 3 2 2 6 5 6 4 6 2 1 3 0 0 0 0 0 2 1 1 1 4 3 2 0 9 4 5 3 4 6 2 3 9 5 8 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 7 5 2 7 6 4 2 1 3 5 2 7 2 3 3 3 3 0 0 0 0 0 0 0 3 2 3 3 2 5 3 10 4 2 3 0 1 3 3 13 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 1 6 5 3 7 6 3 7 5 3 4 2 4 3 6 6 0 0 0 0 0 0 0 0 0 2 2 3 5 4 2 6 4 2 3 3 5 2 1 5 3 2 0 0 0
 1995 7 2 3 0 125  0 0 0 0 3 1 7 5 1 8 5 1 4 4 3 4 5 4 0 5 2 3 0 0 0 0 0 0 0 4 3 2 3 2 7 2 2 4 2 5 2 4 2 3 4 5 4 0 0 0
 1998 7 2 3 0 125  0 0 0 5 0 3 0 5 3 5 5 5 4 7 1 1 4 4 1 1 5 3 0 0 0 0 0 0 0 4 3 4 2 3 3 1 4 9 5 7 3 2 2 3 5 2 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 0 7 0 2 2 2 4 5 3 5 3 4 7 6 3 5 0 0 0 0 0 0 0 0 4 1 4 2 1 5 4 4 5 6 6 3 4 5 4 6 3 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 4 3 3 0 2 3 0 4 2 1 8 8 3 0 0 3 3 0 0 1 1 4 1 4 1 2 1 5 1 7
1972  7 1  3 0 2 1 -1 75  0 0 0 2 0 1 3 2 1 1 3 2 3 3 9 4 5 0 0 3 0 2 1 2 2 4 3 2 2 3 2 2 3 5
1973  7 1  3 0 2 1 -1 75  0 0 0 3 3 2 1 3 2 3 3 2 2 2 2 4 11 0 0 0 5 2 3 3 1 2 1 2 1 1 0 3 3 5
1974  7 1  3 0 2 1 -1 75  0 0 3 5 2 2 2 3 3 1 3 1 1 4 7 1 9 0 0 2 0 0 0 2 2 2 0 0 1 3 6 3 5 2
1975  7 1  3 0 2 1 -1 75  0 0 0 0 7 0 1 6 2 2 2 2 2 1 11 2 3 0 0 0 0 2 1 1 1 2 3 1 2 2 0 9 3 7
1976  7 1  3 0 2 1 -1 75  0 0 0 4 0 1 1 3 1 2 1 1 0 3 8 6 7 0 0 0 0 1 2 2 3 4 2 3 2 1 4 3 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 5 2 3 3 2 1 1 1 1 2 3 6 7 0 0 1 1 0 3 1 2 4 0 2 10 1 1 4 4 4
1978  7 1  3 0 2 1 -1 75  0 0 3 2 1 1 1 2 0 4 1 0 2 2 8 2 5 0 0 5 0 2 2 1 2 5 0 1 2 3 2 9 4 3
1979  7 1  3 0 2 1 -1 75  0 0 0 4 2 2 2 0 1 3 2 2 5 1 11 6 0 0 0 2 3 4 2 0 3 2 2 1 3 1 0 4 0 7
1980  7 1  3 0 2 1 -1 75  0 2 0 4 2 1 0 1 2 1 2 4 3 2 7 14 0 0 0 0 3 2 1 0 2 2 0 1 3 2 0 8 3 3
1981  7 1  3 0 2 1 -1 75  0 1 2 1 6 4 4 4 0 1 2 2 0 1 3 2 5 0 0 0 0 2 8 1 1 2 2 1 1 2 0 4 8 5
1982  7 1  3 0 2 1 -1 75  0 2 0 2 2 6 3 1 2 0 2 1 1 2 2 6 6 0 0 0 0 5 3 9 0 0 1 0 1 3 1 4 10 0
1983  7 1  3 0 2 1 -1 75  0 0 0 3 3 5 8 10 2 0 2 2 1 2 3 1 7 0 0 1 0 0 1 1 5 2 1 1 1 2 2 3 0 6
1984  7 1  3 0 2 1 -1 75  0 0 0 6 3 3 4 4 2 0 7 0 1 1 3 4 3 0 0 4 1 2 1 2 3 2 2 2 0 0 0 6 3 6
1985  7 1  3 0 2 1 -1 75  0 0 0 4 4 4 4 4 2 4 2 1 0 1 6 11 0 0 0 0 1 1 1 1 1 4 3 2 1 2 1 0 2 8
1986  7 1  3 0 2 1 -1 75  0 2 1 4 2 5 1 1 2 2 2 2 0 2 2 3 5 0 0 0 0 5 4 1 2 3 6 2 2 0 0 4 10 0
1987  7 1  3 0 2 1 -1 75  0 5 1 1 4 1 3 4 2 1 2 0 2 0 2 5 0 0 0 4 4 3 2 6 2 5 0 1 2 3 2 4 2 2
1988  7 1  3 0 2 1 -1 75  2 0 3 2 3 3 0 3 2 6 0 0 3 1 7 4 0 0 3 3 4 6 2 2 2 3 1 1 2 2 0 4 1 0
1989  7 1  3 0 2 1 -1 75  0 5 2 2 3 1 0 2 1 4 2 1 2 1 5 5 0 0 0 2 5 4 4 3 6 1 1 0 1 1 5 1 5 0
1990  7 1  3 0 2 1 -1 75  0 0 6 2 7 2 2 2 3 5 3 1 0 1 3 0 0 0 1 3 6 6 3 1 1 3 1 1 1 1 1 6 3 0
1991  7 1  3 0 2 1 -1 75  0 0 8 4 3 3 1 1 4 3 2 2 2 2 9 0 0 0 0 5 5 3 4 4 2 2 0 1 2 1 1 1 0 0
1992  7 1  3 0 2 1 -1 75  0 0 8 3 3 6 5 6 3 4 0 1 0 2 2 0 0 0 0 2 1 3 3 3 3 1 2 2 1 2 0 3 6 0
1993  7 1  3 0 2 1 -1 75  0 0 6 4 4 4 5 0 2 0 0 0 2 11 0 0 0 0 0 4 1 5 2 8 3 3 0 2 1 3 0 5 0 0
1994  7 1  3 0 2 1 -1 75  0 0 3 3 3 6 2 3 6 4 4 1 0 0 1 1 0 0 0 0 3 3 3 5 6 2 3 4 1 8 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 1 3 4 4 0 7 7 3 5 3 1 0 5 0 0 0 0 0 0 6 1 1 3 1 3 4 5 2 1 0 4 0 0
1996  7 1  3 0 2 1 -1 75  0 0 9 1 2 6 9 2 1 3 6 2 0 0 4 0 0 0 0 5 6 3 1 3 3 2 1 2 2 0 0 2 0 0
1997  7 1  3 0 2 1 -1 75  0 1 4 5 3 3 5 5 2 4 2 1 0 0 7 0 0 0 0 0 4 4 1 2 5 4 6 1 2 1 3 0 0 0
1998  7 1  3 0 2 1 -1 75  2 0 2 2 1 3 4 3 3 3 3 2 4 2 2 0 0 0 0 3 3 2 7 2 2 4 6 4 1 2 3 0 0 0
1999  7 1  3 0 2 1 -1 75  0 4 1 4 4 2 2 2 1 7 2 3 3 2 1 0 0 0 2 1 1 3 3 3 1 2 3 3 3 2 5 5 0 0
2000  7 1  3 0 2 1 -1 75  0 0 3 2 5 6 5 2 3 2 0 4 3 2 3 0 0 0 0 6 6 4 2 1 3 0 1 2 2 3 1 4 0 0
2001  7 1  3 0 2 1 -1 75  0 5 4 2 2 3 1 4 8 1 2 0 2 2 6 0 0 0 0 1 1 6 1 1 6 5 1 2 2 3 1 3 0 0
1977  7 2  3 0 2 1 -1 75  5 3 3 1 1 1 2 2 4 0 1 1 0 1 7 9 0 0 2 3 4 2 1 0 1 3 0 0 1 0 3 5 9 0
1980  7 2  3 0 2 1 -1 75  4 0 0 8 2 2 0 1 0 3 1 0 3 1 4 2 5 0 1 7 4 10 3 1 0 1 0 0 2 1 0 2 3 4
1983  7 2  3 0 2 1 -1 75  2 0 4 1 2 3 4 2 3 4 0 0 0 2 5 5 0 0 3 3 3 4 3 3 2 5 2 0 1 0 0 3 2 4
1986  7 2  3 0 2 1 -1 75  5 3 2 1 5 1 2 0 0 2 3 1 1 1 1 3 3 0 0 3 3 2 3 3 1 5 6 5 1 1 0 3 5 0
1989  7 2  3 0 2 1 -1 75  8 5 5 3 5 3 3 3 2 1 1 0 2 5 0 0 0 0 5 5 6 1 0 1 1 1 5 0 0 4 0 0 0 0
1992  7 2  3 0 2 1 -1 75  3 0 8 7 4 6 3 2 0 1 1 1 0 0 3 0 0 0 2 4 7 4 4 4 2 1 1 1 1 0 0 5 0 0
1995  7 2  3 0 2 1 -1 75  0 10 3 7 4 2 5 2 3 0 3 0 2 0 0 0 0 0 6 7 2 3 3 3 1 2 1 2 1 2 0 1 0 0
1998  7 2  3 0 2 1 -1 75  3 4 4 4 5 3 2 0 1 1 2 1 0 1 0 0 0 0 4 4 7 5 3 3 3 3 3 5 1 3 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 1 6 3 2 7 2 7 1 3 1 0 2 0 5 0 0 0 3 4 7 1 4 3 1 1 2 1 0 2 0 4 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 33.5237 38.9861 44.1829 47.2021 50.9157 56.9798 57.1565 60.2599 63.0264 64.5069 64.2943 65.6134 67.8873 65.9663 71.6722 71.0935 72.5695 31.679 39.2148 46.2222 49.7279 52.7562 56.5723 56.6074 59.0443 61.1427 62.6958 64.4651 66.3644 65.3896 66.8545 68.5618 68.6273 70.3489
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 31.3697 38.6895 46.2592 48.2609 53.2011 55.0044 58.1761 59.2784 60.3559 61.6322 62.8141 66.1739 66.2051 66.6939 71.3945 71.0696 72.4035 32.2158 40.1981 45.6899 49.6107 54.549 55.2372 59.1399 59.1426 61.5085 65.4607 65.8303 63.8864 66.2889 67.7332 68.1694 69.9592 70.3125
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.0098 38.7483 43.8053 46.2333 51.9358 52.1834 56.3536 59.5949 60.6935 61.4288 64.8242 66.0823 67.7751 65.6737 66.2266 66.4639 72.9913 34.2539 40.2213 44.8746 47.5416 50.1677 53.9598 54.9144 56.6175 61.287 64.1654 63.1295 65.0207 65.0734 66.8396 67.3536 66.8786 71.8473
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.5236 39.5394 43.8328 46.7304 50.5605 52.3303 56.25 58.7573 61.3359 62.9201 60.4097 62.9094 66.7956 65.9206 69.7051 71.5443 69.7948 34.355 39.5487 44.718 46.6966 51.4821 52.9688 56.1738 58.2081 58.6056 63.5641 62.3092 63.2313 65.8015 64.9235 69.5741 65.2961 72.4743
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

