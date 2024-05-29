#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:11:51 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403511 first rand#: 0.420832
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
1972 1 1 198.104 0.05
1973 1 1 1022.06 0.05
1974 1 1 985.745 0.05
1975 1 1 1850.73 0.05
1976 1 1 3073.37 0.05
1977 1 1 3950.91 0.05
1978 1 1 4762.35 0.05
1979 1 1 6201.28 0.05
1980 1 1 8170.84 0.05
1981 1 1 9934.86 0.05
1982 1 1 10762.9 0.05
1983 1 1 9930.39 0.05
1984 1 1 9110.43 0.05
1985 1 1 9997.6 0.05
1986 1 1 9836.94 0.05
1987 1 1 9744.83 0.05
1988 1 1 8825.74 0.05
1989 1 1 7646.29 0.05
1990 1 1 7080.37 0.05
1991 1 1 5321.98 0.05
1992 1 1 4242.92 0.05
1993 1 1 4042.91 0.05
1994 1 1 3640.15 0.05
1995 1 1 4427.06 0.05
1996 1 1 4090.87 0.05
1997 1 1 2851.79 0.05
1998 1 1 3108.15 0.05
1999 1 1 2807.19 0.05
2000 1 1 3058.61 0.05
2001 1 1 2996.89 0.05
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
2000 7 1 0.0461426 0.8 #_orig_obs: 0.2 FISHERY
1977 7 2 205641 0.3 #_orig_obs: 339689 SURVEY1
1980 7 2 197754 0.3 #_orig_obs: 193353 SURVEY1
1983 7 2 191554 0.3 #_orig_obs: 151984 SURVEY1
1986 7 2 63881.5 0.3 #_orig_obs: 55221.8 SURVEY1
1989 7 2 37495.6 0.3 #_orig_obs: 59232.3 SURVEY1
1992 7 2 37369.7 0.3 #_orig_obs: 31137.5 SURVEY1
1995 7 2 26839.2 0.3 #_orig_obs: 35845.4 SURVEY1
1998 7 2 24260.8 0.3 #_orig_obs: 27492.6 SURVEY1
2001 7 2 53053.6 0.3 #_orig_obs: 37338.3 SURVEY1
1990 7 3 1.14063 0.7 #_orig_obs: 5.19333 SURVEY2
1991 7 3 1.55072 0.7 #_orig_obs: 1.1784 SURVEY2
1992 7 3 3.0298 0.7 #_orig_obs: 5.94383 SURVEY2
1993 7 3 4.07514 0.7 #_orig_obs: 0.770106 SURVEY2
1994 7 3 3.93853 0.7 #_orig_obs: 16.318 SURVEY2
1995 7 3 10.1618 0.7 #_orig_obs: 1.36339 SURVEY2
1996 7 3 1.44165 0.7 #_orig_obs: 4.76482 SURVEY2
1997 7 3 1.41804 0.7 #_orig_obs: 51.0707 SURVEY2
1998 7 3 2.63437 0.7 #_orig_obs: 1.36095 SURVEY2
1999 7 3 11.5903 0.7 #_orig_obs: 0.862531 SURVEY2
2000 7 3 1.51764 0.7 #_orig_obs: 5.97125 SURVEY2
2001 7 3 6.5175 0.7 #_orig_obs: 1.69379 SURVEY2
2001 7 4 0.162762 0.3 #_orig_obs: 0.3 Depletion
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
1995 7 1  253.745 0.2 #_orig_obs: 255.678 #_ FISHERY
1996 7 1  397.36 0.2 #_orig_obs: 322.972 #_ FISHERY
-9999 0 0 0.0 0.0 # terminator for discard data 
#
1 #_use meanbodysize_data (0/1)
30 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
1995 7 1 2 1 115.073 0.3 #_orig_obs: 2.31626  #_ FISHERY
1995 7 1 1 1 55.3589 0.3 #_orig_obs: 1.80019  #_ FISHERY
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 1 1 2 2 5 3 4 3 4 11 15 10 8 0 0 0 0 0 0 0 0 0 0 0 0 2 1 3 0 1 0 2 6 3 13 7 7 9 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 4 1 1 3 3 2 4 4 4 9 6 11 1 3 0 0 0 0 0 0 0 0 0 5 1 2 5 2 1 5 2 3 4 6 10 9 9 4 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 1 1 5 4 4 7 12 11 10 6 0 0 0 0 0 0 0 0 0 0 0 0 0 6 1 1 4 2 6 0 5 11 13 5 3 0 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 4 1 0 3 2 1 5 5 4 6 3 8 5 7 0 0 0 0 0 0 0 0 0 3 1 1 0 2 2 2 1 3 7 3 4 12 11 12 5 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 4 1 0 0 4 0 3 0 5 4 3 3 11 11 14 9 0 0 0 0 0 0 0 0 0 0 0 2 0 1 3 3 2 2 6 4 2 15 6 3 4 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 2 1 2 0 3 4 4 2 3 4 4 9 11 7 4 6 0 0 0 0 0 0 0 2 3 0 0 1 3 0 1 1 1 4 3 7 14 10 3 4 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 1 2 4 3 3 4 4 8 4 9 11 10 4 0 0 0 0 0 0 0 1 1 4 2 2 4 2 3 5 3 1 3 4 6 3 6 5 1 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 1 0 1 2 2 3 4 7 4 3 7 2 12 13 6 4 1 0 0 0 0 0 0 0 0 1 0 4 3 1 1 3 1 3 4 4 4 9 6 4 4 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 5 2 2 3 2 3 6 3 6 10 7 6 3 1 0 0 0 0 0 0 0 0 0 4 3 1 3 2 3 10 2 3 5 5 13 4 7 1 0 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 3 0 2 3 2 0 4 3 8 7 2 8 7 7 2 3 1 0 0 0 0 0 0 0 0 0 4 1 0 1 2 2 1 5 3 5 7 10 12 7 3 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 2 2 3 1 6 5 3 6 4 10 2 6 2 0 0 0 0 0 0 0 2 1 1 0 3 2 3 3 0 8 3 8 3 6 14 10 4 0 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 4 0 2 1 0 2 4 3 8 5 1 9 9 19 0 0 0 0 0 0 0 0 0 0 3 0 1 2 5 2 4 6 4 4 2 1 5 10 2 7 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 3 0 3 3 5 3 6 4 5 13 10 4 6 0 0 0 0 0 0 0 0 0 0 0 2 1 4 0 2 1 5 6 10 4 7 7 4 7 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2 1 1 1 5 0 3 4 0 1 7 7 8 10 6 9 5 0 0 0 0 0 0 0 0 0 3 0 0 2 0 1 2 1 3 4 7 9 9 7 3 4 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 1 4 2 2 2 6 5 1 7 10 6 10 4 2 0 0 0 0 0 0 0 0 1 0 1 2 0 3 4 3 2 5 6 6 15 5 4 6 0 0
 1986 7 1 3 0 125  0 0 0 2 0 1 0 1 3 1 2 4 1 6 3 1 6 3 7 8 7 7 5 0 0 0 0 0 0 0 1 0 0 1 2 2 4 0 1 7 2 2 1 3 12 11 5 3 0 0
 1987 7 1 3 0 125  0 0 0 0 2 1 0 1 1 0 3 1 3 3 5 5 4 4 5 8 8 6 9 0 0 0 0 0 0 0 0 0 9 1 1 1 3 1 2 3 4 3 3 1 10 6 4 4 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 0 4 1 3 2 4 1 2 2 4 4 7 2 9 8 6 6 0 0 0 0 0 0 0 0 1 0 0 2 4 0 2 1 5 1 3 8 4 15 10 4 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 3 2 1 1 0 1 1 2 2 3 4 3 3 6 11 5 7 5 0 0 0 0 0 0 0 0 2 2 1 0 4 3 2 3 3 4 7 6 6 3 12 4 3 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3 2 2 6 3 1 2 4 7 2 4 6 5 13 5 5 0 0 0 0 0 0 0 1 0 0 0 3 3 3 3 5 3 4 7 0 3 9 3 2 6 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 2 0 2 0 2 2 4 3 3 5 7 6 9 8 9 0 0 0 0 0 0 0 3 1 1 0 1 2 2 1 5 5 8 5 3 4 4 6 5 7 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 0 0 0 0 0 2 2 2 6 5 8 4 4 2 8 9 10 0 0 0 0 0 0 0 0 0 0 2 2 1 3 2 5 4 4 4 7 7 6 7 3 5 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 1 0 2 0 5 2 3 5 4 2 5 5 3 6 4 8 0 0 0 0 0 0 0 0 0 0 4 0 1 1 1 4 7 4 9 5 4 3 14 6 6 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 2 3 1 2 5 6 4 7 8 5 12 8 4 5 0 0 0 0 0 0 0 0 0 4 2 1 3 3 1 4 5 2 2 3 7 3 8 3 2 0 0
 1995 7 1 3 0 125  0 0 0 4 0 0 1 2 1 2 1 2 4 4 2 2 5 3 7 4 13 0 0 0 0 0 0 0 0 4 1 0 2 3 4 4 1 1 5 4 5 3 6 5 10 4 6 0 0 0
 1995 7 1 3 1 125  0 0 0 0 9 8 2 6 3 1 8 0 3 2 3 5 2 2 0 2 1 1 0 0 0 0 0 0 0 17 2 3 4 1 4 7 3 3 3 2 2 8 2 2 2 2 0 0 0 0
 1995 7 1 3 2 125  0 0 0 0 0 0 0 0 1 2 1 0 2 3 7 3 6 2 5 15 4 6 0 0 0 0 0 0 0 0 0 0 3 1 2 4 2 3 3 4 2 5 8 9 6 8 8 0 0 0
 1996 7 1 3 0 125  0 0 0 3 0 2 1 0 2 0 4 3 4 3 2 3 5 7 3 9 3 10 0 0 0 0 0 0 0 0 0 4 1 0 2 4 3 3 2 4 8 3 6 6 8 4 1 2 0 0
 1997 7 1 3 0 125  0 0 0 2 0 1 1 2 0 1 1 3 1 5 5 2 6 9 2 12 19 0 0 0 0 0 0 0 0 0 4 3 1 3 1 0 3 1 5 3 4 4 6 1 3 8 3 0 0 0
 1998 7 1 3 0 125  0 0 0 0 0 0 5 3 1 3 1 3 1 6 4 7 4 10 4 7 1 4 1 0 0 0 0 0 0 2 0 1 2 1 5 2 4 5 2 9 2 1 1 1 8 7 2 5 0 0
 1999 7 1 3 0 125  0 0 0 0 1 1 0 1 3 3 3 3 5 1 2 5 7 3 7 8 3 10 0 0 0 0 0 0 0 0 0 3 0 5 6 3 3 3 7 4 4 5 3 2 8 2 1 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 0 2 1 0 3 3 6 4 3 6 9 3 6 5 8 7 0 0 0 0 0 0 0 0 0 3 0 1 0 1 2 3 4 4 9 3 2 4 9 2 7 4 1 0 0
 2001 7 1 3 0 125  0 0 0 0 1 0 1 0 2 1 4 1 4 9 10 5 5 5 2 1 4 6 0 0 0 0 0 0 0 0 4 0 3 3 1 3 2 4 8 2 7 3 0 10 7 5 2 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 2 1 4 2 7 6 6 2 1 3 3 1 2 5 7 5 8 0 0 0 0 0 0 0 0 0 6 2 5 1 2 2 5 0 3 2 3 0 5 9 7 1 6 0 0
 1980 7 2 3 0 125  0 0 0 0 0 1 4 1 1 1 1 4 3 3 2 2 6 5 2 6 4 5 2 1 0 0 0 0 0 1 0 6 2 1 4 4 5 3 3 7 6 2 5 2 6 7 6 1 0 0
 1983 7 2 3 0 125  0 0 0 0 1 0 4 0 2 1 5 1 6 4 4 6 3 8 3 10 6 5 0 0 0 0 0 0 0 1 0 1 4 2 0 5 1 5 4 1 3 3 5 1 9 11 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 2 2 1 2 3 2 1 3 5 3 5 4 0 3 2 7 4 5 4 0 0 0 0 0 2 0 4 5 0 1 2 3 2 3 7 4 3 7 2 3 6 6 7 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 3 4 6 4 6 3 2 6 2 1 3 2 7 1 6 4 4 0 0 0 0 0 0 2 1 1 1 1 5 5 4 6 3 3 3 4 0 7 2 13 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 3 0 0 1 5 5 5 7 7 6 4 4 2 4 3 5 0 0 0 0 0 0 0 0 0 2 3 1 5 1 6 5 6 8 4 9 2 2 1 2 4 3 0 0 0
 1995 7 2 3 0 125  0 0 0 0 1 0 3 2 6 1 2 3 4 2 3 6 6 6 6 6 3 0 0 0 0 0 0 0 0 1 4 3 3 2 5 2 8 3 3 1 6 2 5 5 3 3 6 0 0 0
 1998 7 2 3 0 125  0 0 0 0 2 2 1 4 6 2 8 3 7 3 1 2 1 4 5 1 5 2 0 0 0 0 0 0 0 1 1 2 8 7 9 4 4 8 2 4 3 4 2 1 1 2 3 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 6 4 4 8 3 3 6 5 5 3 5 0 2 6 4 3 0 0 0 0 0 0 0 0 1 0 1 5 2 6 4 2 3 3 5 4 5 3 2 7 5 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 4 2 0 3 2 2 1 2 1 5 7 2 4 0 0 2 1 3 0 2 3 1 2 3 3 2 0 9 2 7
1972  7 1  3 0 2 1 -1 75  1 0 0 1 2 2 3 1 6 2 5 2 3 1 5 1 8 0 0 0 0 1 2 5 0 2 2 3 0 0 0 8 3 6
1973  7 1  3 0 2 1 -1 75  0 0 0 1 2 2 1 1 3 4 1 1 1 5 6 4 7 0 0 0 3 1 3 4 2 1 3 1 1 2 1 5 4 5
1974  7 1  3 0 2 1 -1 75  0 0 4 0 0 0 3 0 2 4 2 1 1 2 6 2 4 0 0 6 1 4 0 1 2 2 3 1 2 1 1 7 9 4
1975  7 1  3 0 2 1 -1 75  0 0 1 3 3 1 5 3 3 0 0 3 1 1 6 5 5 0 0 0 0 5 3 4 1 3 1 2 0 0 0 12 2 2
1976  7 1  3 0 2 1 -1 75  0 0 1 3 4 4 2 1 2 3 2 2 0 2 4 4 8 0 0 0 0 7 5 0 3 3 1 2 4 2 0 5 1 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 9 0 0 4 1 2 2 1 1 2 6 4 4 0 0 5 3 1 3 3 3 3 1 6 1 0 1 3 2 4
1978  7 1  3 0 2 1 -1 75  0 0 6 0 4 2 2 1 1 0 6 1 3 2 6 3 3 0 0 2 1 4 2 0 2 3 1 0 3 3 1 4 3 6
1979  7 1  3 0 2 1 -1 75  0 0 1 0 1 3 2 3 1 4 2 3 1 0 6 6 0 0 0 3 3 5 3 2 1 2 0 1 4 1 2 2 3 10
1980  7 1  3 0 2 1 -1 75  0 2 1 0 5 3 3 3 1 4 1 0 3 1 6 5 0 0 0 0 2 2 2 2 6 2 1 1 1 1 5 4 4 4
1981  7 1  3 0 2 1 -1 75  0 0 1 0 1 6 4 1 4 3 5 1 4 0 7 4 3 0 0 2 2 3 1 2 3 3 3 1 1 0 1 2 1 6
1982  7 1  3 0 2 1 -1 75  0 0 1 0 6 3 1 2 3 4 4 4 4 1 5 1 6 0 0 0 0 2 1 4 4 2 0 1 1 0 2 4 9 0
1983  7 1  3 0 2 1 -1 75  0 0 0 4 2 1 6 6 1 2 1 0 1 0 5 4 7 0 0 0 4 5 3 3 3 4 0 2 2 0 0 4 2 3
1984  7 1  3 0 2 1 -1 75  0 0 0 5 3 4 2 3 3 1 5 1 0 1 3 4 4 0 0 1 1 0 3 4 1 3 2 2 0 0 1 9 4 5
1985  7 1  3 0 2 1 -1 75  0 0 0 4 2 2 1 1 1 2 2 6 3 3 4 3 7 0 0 0 2 6 1 3 4 2 1 5 1 1 1 5 1 1
1986  7 1  3 0 2 1 -1 75  0 1 0 2 1 5 2 4 6 3 1 1 3 0 7 0 2 0 0 0 0 3 4 4 2 3 3 2 1 4 3 3 5 0
1987  7 1  3 0 2 1 -1 75  0 2 0 2 1 2 3 4 2 4 3 1 3 0 5 8 0 0 0 5 0 2 2 1 1 2 4 6 3 0 2 1 1 5
1988  7 1  3 0 2 1 -1 75  1 1 3 2 3 2 1 3 0 1 4 4 1 5 3 5 0 0 0 1 3 4 4 1 0 4 4 4 1 1 2 5 2 0
1989  7 1  3 0 2 1 -1 75  0 1 5 2 1 1 4 1 2 3 2 2 1 1 3 3 0 0 0 4 8 4 1 0 2 0 1 3 4 2 3 4 7 0
1990  7 1  3 0 2 1 -1 75  0 0 3 5 0 4 2 2 5 0 3 1 1 1 6 7 0 0 1 6 4 4 4 2 0 2 0 0 4 1 1 4 2 0
1991  7 1  3 0 2 1 -1 75  0 0 6 4 2 4 7 3 2 1 2 0 3 1 6 4 0 0 0 0 2 5 2 2 2 2 2 1 0 1 1 5 5 0
1992  7 1  3 0 2 1 -1 75  0 0 1 0 2 7 5 3 4 0 2 1 2 3 5 1 1 0 0 3 2 4 5 4 2 1 2 2 3 3 1 4 2 0
1993  7 1  3 0 2 1 -1 75  0 0 3 2 4 1 6 7 1 2 0 2 2 11 0 0 0 0 0 2 1 1 3 7 3 3 2 0 3 0 0 9 0 0
1994  7 1  3 0 2 1 -1 75  0 0 4 1 1 7 7 4 3 2 0 2 0 0 2 1 0 0 0 0 7 1 5 4 4 4 2 2 0 12 0 0 0 0
1995  7 1  3 0 2 1 -1 75  3 2 4 3 0 3 2 0 6 4 2 3 1 11 0 0 0 0 0 0 5 2 1 2 3 6 4 0 1 2 1 3 1 0
1995  7 1  3 1 2 1 -1 75  0 22 3 5 6 2 0 1 2 3 0 0 0 0 2 0 0 0 4 2 9 4 2 0 0 2 0 1 2 0 1 2 0 0
1995  7 1  3 2 2 1 -1 75  0 2 1 1 1 1 2 4 3 3 4 4 3 0 7 0 0 0 0 0 5 1 6 2 2 5 3 0 3 0 0 12 0 0
1996  7 1  3 0 2 1 -1 75  0 0 4 5 1 2 1 1 4 3 1 2 0 2 2 4 0 0 4 1 5 3 3 3 0 4 6 4 2 3 0 5 0 0
1997  7 1  3 0 2 1 -1 75  0 10 3 3 4 2 7 2 1 1 1 4 1 2 4 0 0 0 0 0 5 1 1 1 1 2 1 3 3 1 11 0 0 0
1998  7 1  3 0 2 1 -1 75  1 2 3 6 2 3 1 4 6 2 4 0 1 3 1 0 0 0 0 10 2 4 3 1 4 2 0 2 2 3 1 0 2 0
1999  7 1  3 0 2 1 -1 75  2 0 2 2 5 1 2 2 3 0 1 1 4 2 7 0 0 0 0 2 7 6 4 1 3 1 3 3 3 3 0 5 0 0
2000  7 1  3 0 2 1 -1 75  0 3 1 1 2 9 4 3 6 3 1 0 2 3 4 0 0 0 0 1 7 5 4 4 1 4 2 1 1 1 0 2 0 0
2001  7 1  3 0 2 1 -1 75  0 6 2 1 4 7 4 2 2 3 2 0 0 1 7 0 0 0 0 1 3 5 5 5 3 1 3 2 0 1 1 4 0 0
1977  7 2  3 0 2 1 -1 75  5 2 5 5 2 0 0 1 0 1 0 1 1 0 0 5 0 0 5 6 8 3 4 2 4 2 1 4 1 1 0 2 4 0
1980  7 2  3 0 2 1 -1 75  2 3 2 2 4 2 3 4 1 2 2 1 1 0 4 1 3 0 2 3 1 4 5 3 2 2 3 1 2 0 0 8 1 1
1983  7 2  3 0 2 1 -1 75  1 0 1 3 4 5 2 1 2 1 3 2 2 3 7 7 0 0 1 1 1 3 3 5 3 3 3 1 1 0 1 4 0 1
1986  7 2  3 0 2 1 -1 75  4 2 5 2 1 2 0 4 2 0 2 1 4 0 1 3 3 0 0 5 0 5 3 1 5 0 3 3 0 3 3 4 4 0
1989  7 2  3 0 2 1 -1 75  7 1 8 3 1 2 4 0 2 1 2 0 2 7 0 0 0 0 0 6 2 4 2 2 4 2 0 3 1 9 0 0 0 0
1992  7 2  3 0 2 1 -1 75  3 5 0 2 5 7 5 4 0 0 0 0 0 0 4 0 0 0 1 1 3 5 9 5 2 3 0 1 1 1 0 8 0 0
1995  7 2  3 0 2 1 -1 75  0 10 6 7 7 0 2 2 4 2 2 0 0 0 4 0 0 0 3 1 5 2 1 3 6 3 1 0 0 0 1 3 0 0
1998  7 2  3 0 2 1 -1 75  1 3 11 7 1 3 2 1 0 0 2 2 2 0 0 0 0 0 5 13 3 2 3 2 0 2 0 2 0 8 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 4 7 3 2 12 7 2 3 1 0 3 0 0 4 0 0 0 2 2 4 2 6 3 4 1 0 0 1 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 30.1045 38.4305 45.4331 48.0792 52.6373 55.7511 56.0067 59.7433 61.5599 65.1341 62.8953 66.2993 68.7432 69.6687 69.9487 72.3907 73.405 32.9474 40.0891 43.8304 49.1707 54.0306 56.8479 56.8057 57.8963 61.2042 64.805 63.1204 66.1002 66.0559 67.4252 66.9386 72.5864 70.3854
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 28.2117 39.9375 44.6305 49.0196 51.7919 55.3866 57.6854 59.3677 58.8501 62.7325 64.1752 67.0907 69.347 68.5271 66.3911 71.7398 71.5203 28.2108 40.3241 46.142 50.1184 53.4684 55.0689 55.2058 59.6227 62.1408 64.0087 62.2872 63.9745 65.6738 67.6033 68.2773 72.6906 72.3135
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 1 1 2 29.7967 38.1168 43.1642 47.2155 51.2627 52.9951 55.6574 55.843 57.9989 59.1422 62.9227 63.4694 62.624 66.5953 69.551 70.8656 70.3835 29.4103 38.1717 43.5615 48.0442 49.786 53.8067 54.8894 55.8986 57.9791 61.8772 60.6344 61.1194 63.2879 65.5831 67.7746 69.0301 69.3256
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 2 1 2 33.1063 39.657 47.3219 49.408 53.1046 55.6199 57.5408 58.4327 60.2489 61.8338 66.5148 65.5378 68.0431 68.5239 69.2637 71.1768 72.2398 30.5253 39.5413 46.4355 50.8171 53.5294 57.5403 58.8779 61.9063 61.3079 65.4199 64.7496 65.0724 65.6252 68.2163 67.2318 71.13 71.2723
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.9812 40.0538 43.466 47.5076 51.0483 54.1649 57.497 58.4756 60.8804 61.0583 63.5622 65.6812 67.2114 68.8384 69.6586 71.5449 71.9209 35.2465 40.6334 44.8192 46.9332 49.6485 52.3595 54.0438 58.7783 59.1715 63.3402 59.571 64.248 63.6894 62.6346 68.6849 69.3381 70.5845
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 32.7733 39.5595 44.1769 46.9121 48.9993 53.1948 54.1821 58.2182 61.4361 61.2247 62.6313 64.0051 68.7149 67.195 70.7254 70.8409 70.9408 32.8459 40.251 45.018 48.864 52.5933 56.6071 56.2196 56.7666 59.9334 62.5141 64.6188 63.1419 64.2095 65.275 66.1535 69.9261 70.5297
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

