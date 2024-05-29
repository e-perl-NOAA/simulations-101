#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:11:19 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403479 first rand#: 1.38929
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
 1 -1 1 1 0 FISHERY1  # 1
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
1972 1 1 200.565 0.01
1973 1 1 1000.92 0.01
1974 1 1 1000.33 0.01
1975 1 1 2012.54 0.01
1976 1 1 3017.12 0.01
1977 1 1 3977.54 0.01
1978 1 1 5053.9 0.01
1979 1 1 6199.84 0.01
1980 1 1 7955.69 0.01
1981 1 1 10316.3 0.01
1982 1 1 10070.9 0.01
1983 1 1 9953.26 0.01
1984 1 1 9951.73 0.01
1985 1 1 9943.13 0.01
1986 1 1 9949.42 0.01
1987 1 1 10090.9 0.01
1988 1 1 8928.1 0.01
1989 1 1 8009.4 0.01
1990 1 1 7019.67 0.01
1991 1 1 5967.96 0.01
1992 1 1 3935.1 0.01
1993 1 1 3987.1 0.01
1994 1 1 4056.67 0.01
1995 1 1 3945.58 0.01
1996 1 1 3935 0.01
1997 1 1 2977.01 0.01
1998 1 1 3012.69 0.01
1999 1 1 3042.92 0.01
2000 1 1 3007.52 0.01
2001 1 1 2981.23 0.01
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 0 0 0 # FISHERY1
2 0 0 0 # SURVEY1
3 0 0 0 # SURVEY2
#_year month index obs err
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
0 1e-07 0 0 0 0 1 #_fleet:1_FISHERY1
0 1e-07 0 0 0 0 1 #_fleet:2_SURVEY1
0 1e-07 0 0 0 0 1 #_fleet:3_SURVEY2
25 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 68 72 76 80 90
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 5 2 2 3 1 2 2 3 8 1 10 10 9 8 0 0 0 0 0 0 0 0 0 0 2 0 0 4 1 3 4 1 1 2 5 14 10 6 6 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 1 2 4 4 4 3 2 5 16 7 6 7 3 0 0 0 0 0 0 0 0 0 2 5 0 3 0 1 2 2 3 1 5 18 7 5 6 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 7 1 1 2 6 7 5 10 4 7 5 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 4 3 4 2 3 9 11 13 6 4 3 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 2 0 2 1 2 6 8 5 3 8 12 8 9 0 0 0 0 0 0 0 0 0 1 1 0 3 1 0 2 2 4 3 6 0 13 10 10 2 0 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 2 1 3 3 0 4 2 1 0 4 3 7 5 11 10 6 0 0 0 0 0 0 0 0 0 0 0 2 0 0 1 4 1 3 5 6 4 13 11 4 9 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 3 3 0 4 3 2 6 3 2 17 9 6 4 1 0 0 0 0 0 0 0 2 0 0 1 1 2 4 2 1 6 3 7 2 14 5 6 5 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 0 0 4 3 3 4 3 5 4 8 10 5 6 2 0 0 0 0 0 0 0 0 0 1 2 0 0 1 4 3 3 9 3 8 7 15 6 5 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 3 0 1 1 3 1 3 2 0 1 5 7 10 14 9 0 1 0 0 0 0 0 0 0 0 4 0 0 3 1 2 2 2 5 5 5 3 12 6 8 5 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 1 1 2 0 5 3 8 5 12 8 7 5 5 2 0 0 0 0 0 0 0 0 0 0 1 1 0 1 2 1 2 7 3 8 13 11 7 3 1 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 1 1 0 1 1 3 0 0 1 3 4 5 8 13 8 9 4 0 0 0 0 0 0 0 0 0 1 2 1 0 0 1 5 1 5 3 5 17 10 5 7 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 0 1 2 0 0 0 3 1 3 1 2 6 6 14 8 5 7 0 0 0 0 0 0 0 0 0 0 2 1 1 4 0 2 1 3 4 6 9 14 12 6 1 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 3 1 0 1 2 4 0 4 4 7 8 8 10 8 0 0 0 0 0 0 0 0 0 0 4 2 0 4 2 1 1 3 3 4 3 5 9 10 6 8 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 9 5 2 1 3 5 2 3 5 9 11 5 8 0 0 0 0 0 0 0 0 0 0 0 6 0 3 0 4 0 6 1 3 8 9 8 7 2 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 2 2 0 1 2 3 2 3 3 6 6 7 2 11 4 4 7 0 0 0 0 0 0 0 0 0 3 2 1 2 2 4 4 2 3 5 3 4 7 11 6 1 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 3 0 4 4 1 3 5 5 7 3 4 6 5 0 5 5 0 0 0 0 0 0 0 0 4 1 0 0 5 4 4 5 3 3 4 5 15 7 1 4 0 0
 1986 7 1 3 0 125  0 0 0 0 0 0 0 0 2 2 0 7 6 3 3 5 3 4 2 12 6 3 4 0 0 0 0 0 0 0 3 0 0 1 4 0 2 5 2 9 5 7 5 4 9 2 3 2 0 0
 1987 7 1 3 0 125  0 0 0 0 1 1 1 0 2 2 3 4 5 3 4 3 4 5 6 7 7 4 4 0 0 0 0 0 0 0 0 0 3 0 1 3 2 3 3 5 5 2 7 5 7 5 4 4 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 1 1 3 4 3 3 4 6 2 5 4 6 6 9 4 4 3 0 0 0 0 0 0 0 1 1 0 0 2 2 4 6 1 5 6 3 7 3 8 1 7 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 1 2 1 2 2 3 2 3 6 7 5 5 5 6 3 2 4 2 0 0 0 0 0 0 0 0 7 1 0 2 1 2 6 7 7 7 3 6 2 4 5 1 3 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 7 2 0 3 2 1 3 11 7 2 6 7 5 3 2 1 0 0 0 0 0 0 0 4 0 2 0 5 1 2 2 5 7 11 6 4 5 3 4 2 0 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 6 3 3 3 5 5 1 3 6 5 2 3 7 6 4 0 0 0 0 0 0 0 3 2 3 5 2 3 3 2 1 8 0 5 6 4 4 7 3 2 0 0 0
 1992 7 1 3 0 125  0 0 0 0 5 0 2 5 0 3 6 1 3 3 7 4 2 3 3 4 4 5 0 0 0 0 0 0 0 0 0 0 10 3 1 5 4 2 7 6 7 1 6 3 7 1 2 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 5 2 2 7 8 4 5 7 4 7 0 2 3 8 4 2 0 0 0 0 0 0 0 0 0 0 5 6 5 3 3 2 4 3 3 5 3 4 5 2 1 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 9 5 8 5 7 7 8 5 8 2 7 2 0 1 0 0 0 0 0 0 0 0 0 3 1 5 5 2 4 5 4 3 3 3 6 4 2 1 0 0 0
 1995 7 1 3 0 125  0 0 0 1 0 0 0 2 3 0 4 2 8 8 3 6 2 10 2 0 4 0 0 0 0 0 0 0 0 0 0 1 0 1 2 3 7 6 7 9 8 5 6 4 4 4 3 0 0 0
 1996 7 1 3 0 125  0 0 0 1 1 0 0 1 3 6 1 6 2 6 4 4 3 3 2 3 4 2 0 0 0 0 0 0 0 0 0 3 0 0 2 6 3 9 12 10 7 5 5 3 2 3 2 1 0 0
 1997 7 1 3 0 125  0 0 0 0 0 0 0 2 1 2 3 4 3 7 7 4 7 5 5 7 6 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 2 4 6 6 11 4 7 4 10 5 1 0 0 0
 1998 7 1 3 0 125  0 0 0 0 1 0 0 2 2 1 2 0 5 5 7 4 5 8 5 15 7 3 0 0 0 0 0 0 0 0 0 0 1 0 2 1 1 2 1 7 9 4 6 3 8 4 3 1 0 0
 1999 7 1 3 0 125  0 0 0 0 2 0 1 1 0 0 1 2 1 5 8 9 5 8 6 9 4 2 0 0 0 0 0 0 0 0 0 1 0 3 1 1 1 5 3 5 9 7 10 6 7 1 1 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 5 0 1 3 2 1 1 0 5 1 4 4 6 5 8 13 0 0 0 0 0 0 0 0 0 2 2 0 2 2 1 2 2 1 5 5 10 4 6 7 5 7 3 0 0
 2001 7 1 3 0 125  0 0 0 0 2 0 0 1 4 1 4 0 4 1 5 8 6 7 8 8 9 7 0 0 0 0 0 0 0 0 0 0 1 0 4 2 2 3 1 4 2 4 6 6 11 2 2 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 2 2 0 2 0 1 2 2 4 4 1 2 1 1 11 8 9 0 0 0 0 0 0 0 0 0 2 3 1 1 4 3 2 2 1 5 6 7 3 12 14 3 3 0 0
 1980 7 2 3 0 125  0 0 0 0 1 1 3 4 1 1 5 1 1 2 2 5 5 1 3 3 14 6 2 1 0 0 0 0 0 2 3 1 1 1 4 4 4 3 0 6 4 5 3 6 4 8 4 0 0 0
 1983 7 2 3 0 125  0 0 0 0 1 1 1 0 4 7 1 4 7 4 4 4 1 2 1 10 4 12 0 0 0 0 0 0 0 0 3 0 4 4 4 10 1 2 3 5 1 2 1 2 8 7 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 3 4 4 5 3 0 1 2 4 8 5 9 2 2 1 2 2 2 2 0 0 0 0 0 0 1 1 3 2 6 4 4 4 0 4 6 7 4 4 3 4 0 7 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 8 2 4 4 7 2 2 6 2 7 3 4 1 1 3 3 1 0 0 0 0 0 0 3 0 2 3 2 4 6 7 2 4 4 4 5 4 4 7 4 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 16 7 6 7 2 1 3 2 2 3 0 0 1 1 4 1 0 0 0 0 0 0 0 0 0 5 10 5 2 5 6 5 5 8 6 2 4 1 0 4 0 1 0 0 0
 1995 7 2 3 0 125  0 0 0 0 1 1 5 3 7 3 3 9 8 2 3 3 5 2 2 2 0 1 0 0 0 0 0 0 0 2 2 5 3 5 3 8 7 5 5 5 4 2 2 2 4 0 1 0 0 0
 1998 7 2 3 0 125  0 0 0 0 0 0 1 1 2 5 5 7 2 7 4 4 6 5 6 2 2 1 0 0 0 0 0 0 0 0 1 0 2 3 3 0 3 7 3 7 8 7 8 4 7 2 0 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 3 4 1 3 3 5 2 2 2 4 7 5 3 8 10 6 0 0 0 0 0 0 0 0 1 0 2 8 3 4 3 4 1 1 4 2 3 3 2 7 9 0 0 0 0
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
0 1e-07 1 0 0 0 1 #_fleet:1_FISHERY1
0 1e-07 1 0 0 0 1 #_fleet:2_SURVEY1
0 1e-07 1 0 0 0 1 #_fleet:3_SURVEY2
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1971  7 1  3 0 2 1 -1 75  0 0 0 0 3 2 2 5 2 2 1 3 3 1 4 5 8 0 0 1 3 1 2 1 1 3 1 3 1 3 0 1 5 8
1972  7 1  3 0 2 1 -1 75  3 1 1 1 4 2 1 3 1 1 3 2 0 0 4 2 8 0 0 6 1 4 1 1 1 2 3 0 1 1 0 5 5 7
1973  7 1  3 0 2 1 -1 75  0 0 3 0 3 2 7 0 2 1 3 1 0 1 6 1 6 0 0 0 4 0 2 0 1 2 4 3 1 1 0 9 1 11
1974  7 1  3 0 2 1 -1 75  0 0 3 1 3 3 1 2 4 1 0 2 1 1 8 2 4 0 0 1 1 3 0 2 1 5 0 1 1 4 5 10 1 4
1975  7 1  3 0 2 1 -1 75  0 0 2 2 2 0 3 0 1 2 1 2 2 4 9 0 8 0 0 0 0 5 3 4 2 1 1 2 1 2 3 5 3 5
1976  7 1  3 0 2 1 -1 75  0 0 0 1 4 2 0 0 1 3 2 4 1 3 6 4 7 0 0 0 0 4 1 2 1 3 0 2 2 2 1 6 13 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 1 1 4 3 3 5 4 1 2 1 4 3 7 0 0 0 0 1 3 6 2 1 2 3 4 2 0 5 4 3
1978  7 1  3 0 2 1 -1 75  0 0 1 1 0 1 4 5 2 3 2 0 1 1 8 2 3 0 0 0 1 3 2 5 2 2 3 0 4 3 1 4 5 6
1979  7 1  3 0 2 1 -1 75  0 0 1 1 2 2 1 2 3 3 2 1 1 2 5 10 0 0 0 0 2 2 3 1 3 0 4 3 1 0 2 11 3 4
1980  7 1  3 0 2 1 -1 75  0 2 0 0 1 3 1 1 3 4 6 2 1 1 4 9 0 0 0 0 1 6 2 1 2 2 1 1 2 4 1 8 3 3
1981  7 1  3 0 2 1 -1 75  0 2 2 0 0 0 2 3 0 5 1 8 5 2 6 4 1 0 0 1 0 4 0 2 3 2 2 2 2 2 2 5 5 2
1982  7 1  3 0 2 1 -1 75  0 1 1 3 2 4 0 2 2 3 3 1 1 4 2 2 4 0 0 0 0 5 0 1 0 1 0 4 3 2 3 5 16 0
1983  7 1  3 0 2 1 -1 75  0 0 0 10 0 4 1 2 1 1 1 1 0 3 5 4 7 0 0 4 1 4 0 1 1 2 0 2 1 6 3 5 0 5
1984  7 1  3 0 2 1 -1 75  0 0 0 10 1 7 3 1 1 3 0 1 2 4 7 1 4 0 0 1 2 0 4 2 1 1 0 3 2 1 2 6 4 1
1985  7 1  3 0 2 1 -1 75  0 0 0 7 4 6 3 0 1 0 2 4 2 1 3 2 6 0 0 0 3 5 4 4 2 0 1 5 1 0 1 4 0 4
1986  7 1  3 0 2 1 -1 75  0 4 2 5 5 3 2 4 1 3 2 1 1 0 4 2 4 0 0 0 0 6 3 4 3 2 0 0 3 0 2 2 7 0
1987  7 1  3 0 2 1 -1 75  0 0 5 2 0 2 6 2 3 1 3 0 0 0 4 9 0 0 0 5 3 4 2 4 4 2 1 2 2 1 2 4 2 0
1988  7 1  3 0 2 1 -1 75  2 0 2 2 2 5 3 5 1 2 1 1 0 0 2 8 0 0 2 1 3 2 4 4 2 3 2 3 2 1 1 2 7 0
1989  7 1  3 0 2 1 -1 75  0 5 3 5 2 6 2 4 1 3 2 0 0 0 3 4 0 0 0 5 0 6 5 4 1 2 4 1 1 1 0 0 5 0
1990  7 1  3 0 2 1 -1 75  0 0 8 3 4 6 6 3 4 0 1 2 0 2 1 3 0 0 2 1 3 1 6 5 4 2 0 1 2 0 1 0 4 0
1991  7 1  3 0 2 1 -1 75  0 0 5 4 1 3 7 2 2 1 2 1 1 0 2 1 0 0 3 5 8 3 3 6 3 2 1 2 1 1 0 1 4 0
1992  7 1  3 0 2 1 -1 75  0 0 11 4 4 3 2 3 1 1 1 1 1 1 2 1 0 0 0 6 1 5 8 3 4 2 2 2 1 1 2 2 0 0
1993  7 1  3 0 2 1 -1 75  0 0 9 4 1 9 2 4 3 3 1 2 2 1 0 0 0 0 0 6 3 5 0 1 8 2 4 1 0 1 0 3 0 0
1994  7 1  3 0 2 1 -1 75  0 0 6 9 6 4 2 2 3 0 2 2 0 0 0 0 1 0 0 0 11 5 8 4 3 1 3 0 0 3 0 0 0 0
1995  7 1  3 0 2 1 -1 75  1 1 4 3 8 2 3 3 1 2 2 2 1 1 0 0 0 0 0 0 12 10 4 3 4 2 2 2 0 0 0 1 0 1
1996  7 1  3 0 2 1 -1 75  0 0 3 3 8 7 5 2 1 3 0 2 1 0 2 0 0 0 1 2 5 8 6 5 4 4 1 1 1 0 0 0 0 0
1997  7 1  3 0 2 1 -1 75  0 1 3 2 5 6 4 7 2 2 0 1 1 0 0 0 0 0 0 0 5 5 7 5 8 2 1 1 0 2 5 0 0 0
1998  7 1  3 0 2 1 -1 75  1 0 1 1 1 2 4 6 5 3 2 2 1 0 3 0 0 0 0 1 1 2 4 17 5 4 6 0 1 1 0 1 0 0
1999  7 1  3 0 2 1 -1 75  5 0 1 1 1 5 6 7 7 3 1 1 0 0 2 0 0 0 1 0 0 2 6 4 3 9 3 2 1 1 1 2 0 0
2000  7 1  3 0 2 1 -1 75  0 0 0 2 2 1 8 9 6 4 3 1 0 0 2 0 0 0 0 1 2 1 1 6 5 7 5 1 2 3 1 2 0 0
2001  7 1  3 0 2 1 -1 75  0 2 2 0 0 0 2 6 4 4 11 2 1 2 1 0 0 0 0 3 4 2 0 0 4 6 4 4 2 6 1 2 0 0
1977  7 2  3 0 2 1 -1 75  1 1 1 0 1 2 6 4 3 1 2 0 2 0 6 6 0 0 2 2 0 5 5 1 2 1 1 1 1 2 1 7 8 0
1980  7 2  3 0 2 1 -1 75  2 3 1 1 5 3 1 2 4 0 0 3 2 0 3 5 5 0 2 1 2 3 3 1 2 2 4 1 1 0 3 4 4 2
1983  7 2  3 0 2 1 -1 75  2 1 1 3 2 4 1 1 3 1 2 0 0 1 3 10 0 0 1 2 3 4 1 4 2 3 1 4 1 1 0 6 4 3
1986  7 2  3 0 2 1 -1 75  3 2 4 3 3 3 0 2 3 0 1 0 0 1 4 3 2 0 0 8 3 4 6 4 4 2 0 0 0 0 3 3 4 0
1989  7 2  3 0 2 1 -1 75  4 1 2 4 6 4 1 3 1 2 0 1 1 1 0 0 0 0 2 5 5 14 4 2 0 3 0 1 0 8 0 0 0 0
1992  7 2  3 0 2 1 -1 75  8 6 11 6 5 1 4 2 1 0 0 1 0 0 0 0 0 0 10 8 1 3 1 3 0 1 3 0 0 0 0 0 0 0
1995  7 2  3 0 2 1 -1 75  0 8 6 6 8 8 2 2 0 0 0 0 0 0 3 0 0 0 6 3 8 5 3 1 3 0 0 1 0 0 0 2 0 0
1998  7 2  3 0 2 1 -1 75  2 3 1 5 7 5 10 8 3 3 0 1 0 0 0 0 0 0 0 1 2 3 5 4 4 4 1 1 0 2 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 4 9 3 3 0 0 2 1 4 3 1 1 2 1 0 0 0 1 7 4 3 0 6 2 1 3 5 3 1 0 3 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 29.1966 40.3069 45.9776 48.3783 53.5839 53.8874 57.4524 61.2414 60.841 62.5412 62.8017 66.7442 67.7999 68.267 70.4615 70.5587 73.9921 30.4386 40.1441 44.6847 48.0531 52.1102 59.3458 58.2784 61.8759 61.7331 62.0829 62.6881 64.6542 66.1305 68.9613 68.3325 70.1194 72.2842
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 32.4154 39.5347 41.5441 48.5176 52.5449 55.6543 58.1765 59.2332 64.2802 63.4903 66.3692 66.6645 65.2765 65.5785 71.1617 73.8422 72.6088 32.3176 39.4103 43.8363 48.8366 51.4969 54.7539 57.4647 59.3853 64.0648 61.3413 63.2666 66.2023 67.1136 67.1757 68.3186 70.1564 71.1261
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.1561 39.0437 42.2861 46.3695 51.7398 52.1345 56.5695 57.671 62.1264 59.6061 62.0839 65.3591 66.9333 65.2227 69.9971 70.2661 74.6558 32.9829 39.8948 44.5593 47.8269 51.4584 52.2689 56.1455 57.2005 59.194 61.8462 61.865 64.3755 65.1194 66.5252 66.3137 68.6952 69.4297
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.3955 38.7308 43.4505 47.8143 51.2296 51.9737 54.0111 58.9305 60.6827 61.1536 64.554 66.7467 68.4854 65.1292 68.1994 73.0425 70.7939 34.9036 38.4001 44.2789 46.8552 50.7861 55.5475 54.2795 58.2854 59.6612 60.2632 62.7269 64.8013 62.9707 65.1929 68.6817 69.1706 71.2298
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

