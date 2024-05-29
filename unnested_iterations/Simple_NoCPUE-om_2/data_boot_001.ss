#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:11:03 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403463 first rand#: -0.886444
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
1972 1 1 201.361 0.01
1973 1 1 999.067 0.01
1974 1 1 986.681 0.01
1975 1 1 1986.38 0.01
1976 1 1 3005.2 0.01
1977 1 1 3990.49 0.01
1978 1 1 4978.13 0.01
1979 1 1 5907.43 0.01
1980 1 1 8120.37 0.01
1981 1 1 9994.68 0.01
1982 1 1 9942.22 0.01
1983 1 1 9809.53 0.01
1984 1 1 9994.86 0.01
1985 1 1 9992.29 0.01
1986 1 1 10059.6 0.01
1987 1 1 9997.4 0.01
1988 1 1 8982.76 0.01
1989 1 1 8045.65 0.01
1990 1 1 6980.95 0.01
1991 1 1 6038.03 0.01
1992 1 1 4089.53 0.01
1993 1 1 3974.35 0.01
1994 1 1 4035.41 0.01
1995 1 1 4041.31 0.01
1996 1 1 4080.53 0.01
1997 1 1 2994.51 0.01
1998 1 1 2984.87 0.01
1999 1 1 3055.31 0.01
2000 1 1 2980.52 0.01
2001 1 1 3002.87 0.01
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 2 4 1 3 3 6 4 3 4 8 8 4 4 0 0 0 0 0 0 0 0 0 0 5 0 1 5 0 4 3 3 2 6 3 14 10 11 3 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 0 1 0 3 5 7 6 9 5 9 12 8 2 3 0 0 0 0 0 0 0 0 0 1 0 1 2 1 3 2 3 4 7 6 8 7 3 4 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 6 3 1 3 2 2 8 12 9 8 6 0 0 0 0 0 0 0 0 0 0 0 0 0 9 0 5 3 2 4 6 3 11 10 7 3 2 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 1 3 5 3 3 1 4 3 8 13 9 9 7 0 0 0 0 0 0 0 0 0 1 3 0 1 1 0 2 1 7 7 4 5 10 7 2 3 1 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 1 1 0 0 0 3 1 2 4 9 4 3 6 9 12 10 0 0 0 0 0 0 0 0 0 0 0 3 2 4 2 1 2 3 4 4 5 7 10 10 3 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 1 3 0 3 2 4 5 2 4 13 9 6 9 1 0 0 0 0 0 0 0 0 1 0 5 1 1 1 4 6 3 7 2 3 3 8 7 8 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 0 0 2 1 2 1 1 4 7 2 2 13 7 4 6 3 0 0 0 0 0 0 1 0 0 0 0 2 1 2 5 6 8 2 4 3 11 12 7 5 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 0 0 2 2 1 3 2 2 5 5 4 4 4 11 12 5 6 3 0 0 0 0 0 0 0 0 5 0 1 1 1 1 0 2 6 4 5 5 15 5 2 1 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 7 1 1 1 2 3 2 3 6 12 7 8 6 0 0 0 0 0 0 0 0 0 0 1 1 0 3 3 1 3 7 8 6 2 14 7 6 4 0 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 0 1 2 0 3 3 4 1 3 6 1 4 14 12 13 3 1 0 0 0 0 0 0 0 0 0 4 0 2 1 1 3 2 4 3 3 6 9 9 3 4 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 1 0 0 0 2 1 2 3 5 2 2 3 1 13 19 8 11 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 2 2 3 2 8 7 11 4 3 4 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 2 2 0 4 1 4 2 3 1 9 7 10 6 18 0 0 0 0 0 0 0 0 0 0 3 1 1 3 2 3 0 6 3 3 5 2 4 11 4 5 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 4 2 1 3 4 1 4 4 4 16 10 6 7 0 0 0 0 0 0 0 0 0 0 0 5 2 2 0 3 1 4 4 5 6 6 10 5 6 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 3 0 0 2 1 1 4 3 3 5 2 3 9 7 9 7 7 0 0 0 0 0 0 0 0 0 3 2 2 5 2 2 4 4 1 2 6 7 7 8 1 3 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 4 0 2 2 3 3 3 1 7 3 3 9 6 9 2 0 0 0 0 0 0 0 0 0 6 1 2 1 5 3 3 3 7 2 4 5 10 8 7 1 0 0
 1986 7 1 3 0 125  0 0 0 3 0 0 0 0 1 2 6 0 3 5 3 5 5 2 5 8 8 4 5 0 0 0 0 0 0 0 4 1 0 1 0 3 0 1 2 2 4 7 1 5 12 9 4 4 0 0
 1987 7 1 3 0 125  0 0 0 0 2 2 4 1 1 2 4 0 3 5 1 4 8 9 3 7 4 4 5 0 0 0 0 0 0 0 0 0 8 2 3 3 1 2 4 3 5 3 2 4 4 8 3 1 0 0
 1988 7 1 3 0 125  0 0 0 0 0 3 1 5 3 1 6 7 4 5 6 3 5 0 1 5 6 2 3 0 0 0 0 0 0 0 1 1 3 3 2 6 5 4 0 2 4 7 3 2 5 5 6 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 0 1 2 2 0 8 6 2 9 6 3 8 4 5 4 5 2 3 0 0 0 0 0 0 0 0 2 1 3 5 5 2 5 3 3 3 4 3 0 7 3 5 1 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 3 3 3 3 5 4 7 7 4 6 5 2 4 6 2 2 0 0 0 0 0 0 0 2 1 3 3 3 2 5 7 6 5 4 3 4 4 1 1 3 2 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 7 1 4 1 5 9 5 6 5 4 4 3 8 4 3 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 2 6 10 5 11 4 2 3 4 2 0 0 0
 1992 7 1 3 0 125  0 0 0 0 1 0 1 3 1 1 0 2 4 7 4 7 9 5 2 5 5 3 0 0 0 0 0 0 0 0 0 0 2 1 4 1 5 5 6 11 8 4 3 4 5 4 2 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 1 0 0 4 3 1 0 2 3 4 6 7 8 9 4 2 0 0 0 0 0 0 0 0 0 0 3 1 7 3 3 3 4 4 5 7 5 8 11 5 1 1 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 10 3 1 2 2 0 5 6 10 2 11 3 4 1 0 0 0 0 0 0 0 0 0 5 2 4 4 2 1 5 4 4 7 5 8 6 4 4 0 0 0
 1995 7 1 3 0 125  0 0 0 1 0 1 2 2 5 4 5 2 7 8 5 2 3 2 3 5 11 0 0 0 0 0 0 0 0 3 1 0 2 3 0 0 4 8 6 3 3 7 5 2 3 2 5 0 0 0
 1996 7 1 3 0 125  0 0 0 1 1 1 0 2 1 3 6 3 4 3 7 7 9 6 2 3 4 1 0 0 0 0 0 0 0 0 0 6 0 3 2 2 10 6 6 0 3 6 2 2 9 1 3 0 0 0
 1997 7 1 3 0 125  0 0 0 0 2 1 2 1 0 2 3 4 3 3 6 7 5 4 1 10 10 0 0 0 0 0 0 0 0 0 1 0 1 1 1 5 2 5 2 5 4 7 6 0 10 8 3 0 0 0
 1998 7 1 3 0 125  0 0 0 0 1 1 1 0 0 2 1 4 3 5 6 5 1 3 4 8 3 0 1 0 0 0 0 0 0 1 1 0 4 2 2 6 5 7 2 9 6 10 11 2 4 2 1 1 0 0
 1999 7 1 3 0 125  0 0 0 0 1 1 1 1 3 2 6 6 2 7 6 2 5 3 3 9 8 5 0 0 0 0 0 0 0 0 0 2 0 2 2 5 2 4 3 5 8 5 5 3 4 2 2 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 4 0 0 0 3 1 4 4 8 4 4 2 5 4 7 6 0 0 0 0 0 0 0 0 0 0 1 4 0 1 3 4 4 6 11 6 5 5 0 11 6 2 0 0 0
 2001 7 1 3 0 125  0 0 0 0 3 1 1 0 3 0 2 2 6 5 5 5 8 3 6 8 4 3 0 0 0 0 0 0 0 0 4 0 2 1 2 1 2 5 6 4 4 5 8 5 7 2 2 0 0 0
 1977 7 2 3 0 125  0 0 0 0 2 3 1 1 0 2 2 6 3 1 2 3 1 1 5 11 7 12 0 0 0 0 0 0 0 0 0 3 1 1 4 1 6 3 2 3 4 4 4 4 10 6 3 3 0 0
 1980 7 2 3 0 125  0 0 0 0 0 0 0 1 3 1 3 3 2 5 3 2 3 6 6 5 7 3 3 3 0 0 0 0 0 1 1 1 3 1 0 3 5 2 2 8 5 5 4 7 8 5 2 3 0 0
 1983 7 2 3 0 125  0 0 0 0 3 2 2 4 3 4 6 1 6 0 3 2 1 4 8 6 5 8 0 0 0 0 0 0 0 0 1 1 1 3 1 5 3 3 1 0 5 3 2 5 12 11 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 11 0 2 1 5 6 5 3 3 5 1 3 1 2 4 5 6 3 0 0 0 0 0 0 1 3 2 3 5 2 6 2 4 4 2 1 2 4 1 4 3 8 2 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 1 3 5 12 1 6 5 5 3 5 3 4 2 1 3 0 1 0 0 0 0 0 0 0 1 0 2 7 5 11 13 5 6 4 4 1 0 2 1 3 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 8 2 2 5 2 1 4 6 4 3 7 2 7 2 6 1 0 0 0 0 0 0 0 0 0 3 1 2 2 2 5 7 6 2 4 4 2 11 5 6 1 0 0 0 0
 1995 7 2 3 0 125  0 0 0 0 4 4 4 4 5 4 4 3 6 4 4 4 3 0 0 2 5 2 0 0 0 0 0 0 0 3 5 1 4 2 4 6 7 3 3 1 3 4 3 1 5 3 5 0 0 0
 1998 7 2 3 0 125  0 0 0 0 0 2 0 6 2 8 6 4 0 4 5 5 4 0 1 2 2 0 0 0 0 0 0 0 0 4 3 1 5 6 6 9 6 8 3 5 3 2 3 3 4 2 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 2 4 1 3 3 4 6 5 4 4 5 3 7 5 5 5 0 0 0 0 0 0 0 0 3 0 0 3 5 3 4 7 1 6 4 3 4 6 1 4 5 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 7 3 1 3 3 3 1 1 3 1 7 4 6 0 0 3 3 2 1 1 2 3 1 1 1 2 0 6 3 3
1972  7 1  3 0 2 1 -1 75  0 1 1 1 0 4 2 4 3 1 3 2 1 1 8 5 4 0 0 0 0 1 1 2 1 2 3 2 1 3 2 8 1 7
1973  7 1  3 0 2 1 -1 75  0 0 1 0 1 1 2 1 2 2 3 0 0 2 7 1 10 0 0 0 4 3 3 5 2 1 3 1 0 4 2 10 1 3
1974  7 1  3 0 2 1 -1 75  0 0 1 1 3 3 2 2 1 2 0 3 3 2 4 4 3 0 0 2 0 2 1 2 2 1 2 2 2 7 0 6 5 7
1975  7 1  3 0 2 1 -1 75  0 0 2 2 6 0 0 1 4 2 3 1 4 2 2 5 5 0 0 0 0 6 4 3 1 2 4 0 1 1 4 2 2 6
1976  7 1  3 0 2 1 -1 75  0 0 1 0 5 2 0 1 0 0 3 2 2 0 8 5 7 0 0 0 0 4 6 3 3 2 2 2 1 4 1 1 10 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 6 1 1 5 1 1 3 0 2 0 5 4 5 0 0 3 3 1 1 0 4 1 3 2 0 1 1 4 5 12
1978  7 1  3 0 2 1 -1 75  0 0 1 0 2 4 1 0 2 2 3 2 0 1 7 1 3 0 0 3 1 3 3 3 1 3 2 1 2 1 2 7 7 7
1979  7 1  3 0 2 1 -1 75  1 0 1 1 3 6 1 2 3 2 0 2 2 2 4 9 0 0 0 1 0 2 2 2 1 2 4 2 1 1 2 8 4 4
1980  7 1  3 0 2 1 -1 75  0 0 3 1 1 3 1 0 3 2 2 1 0 3 7 11 0 0 0 0 3 0 1 2 2 0 2 5 2 2 0 7 5 6
1981  7 1  3 0 2 1 -1 75  0 0 1 2 2 0 0 3 3 3 3 2 0 2 4 5 4 0 0 1 1 2 2 2 1 2 3 2 2 2 1 6 8 6
1982  7 1  3 0 2 1 -1 75  0 2 0 0 1 2 3 0 1 2 2 1 1 2 7 4 5 0 0 0 0 2 1 3 5 3 2 4 2 3 0 7 10 0
1983  7 1  3 0 2 1 -1 75  0 0 0 7 3 3 1 2 3 0 1 1 2 1 6 4 2 0 0 0 0 1 2 2 3 2 2 5 0 5 3 6 2 6
1984  7 1  3 0 2 1 -1 75  0 0 0 7 2 2 1 4 2 0 1 1 3 2 0 4 5 0 0 4 3 5 2 3 1 3 1 3 1 0 1 6 4 4
1985  7 1  3 0 2 1 -1 75  0 0 0 3 2 3 1 1 2 4 4 2 4 1 9 5 3 0 0 0 3 2 2 1 2 0 0 0 6 4 2 4 2 3
1986  7 1  3 0 2 1 -1 75  0 5 2 1 2 3 4 3 1 1 5 0 1 0 3 3 5 0 0 0 0 9 4 2 1 1 2 2 2 0 2 5 6 0
1987  7 1  3 0 2 1 -1 75  0 10 3 0 4 1 0 5 3 1 1 0 2 0 3 5 0 0 0 6 3 4 3 3 1 0 0 4 2 0 5 3 2 1
1988  7 1  3 0 2 1 -1 75  3 0 7 2 4 4 6 2 1 1 1 1 2 0 1 1 0 0 2 4 4 3 1 1 6 4 4 1 1 0 0 5 3 0
1989  7 1  3 0 2 1 -1 75  0 4 4 7 3 5 3 2 3 2 0 0 1 0 2 2 0 0 0 7 10 3 6 3 2 0 2 1 0 0 0 2 1 0
1990  7 1  3 0 2 1 -1 75  0 0 3 4 12 9 3 3 2 1 0 0 0 0 2 1 0 0 2 1 5 4 3 3 5 2 1 0 0 1 0 4 4 0
1991  7 1  3 0 2 1 -1 75  0 0 4 2 9 10 5 4 0 1 0 1 0 0 1 1 0 0 0 0 1 13 6 4 8 3 0 0 1 0 0 1 0 0
1992  7 1  3 0 2 1 -1 75  0 0 6 0 2 6 13 9 0 2 1 0 0 0 2 0 0 0 0 4 3 2 0 5 5 4 0 2 1 1 1 0 6 0
1993  7 1  3 0 2 1 -1 75  0 0 8 1 1 4 6 7 8 1 1 1 0 3 0 0 0 0 0 7 0 1 3 6 7 5 1 2 1 0 0 1 0 0
1994  7 1  3 0 2 1 -1 75  0 0 3 2 1 3 1 10 4 3 0 2 1 0 1 0 0 0 0 0 11 3 2 6 2 6 4 3 0 7 0 0 0 0
1995  7 1  3 0 2 1 -1 75  3 4 2 3 3 1 0 3 3 3 1 3 2 2 0 0 0 0 0 0 11 5 2 1 4 5 4 3 1 2 0 3 0 1
1996  7 1  3 0 2 1 -1 75  0 0 8 6 3 2 5 2 4 5 6 2 4 0 2 0 0 0 1 2 5 2 4 1 3 1 1 2 0 1 0 3 0 0
1997  7 1  3 0 2 1 -1 75  0 2 3 5 6 5 1 2 0 1 0 5 3 0 1 0 0 0 0 0 13 4 3 6 1 0 1 6 3 1 3 0 0 0
1998  7 1  3 0 2 1 -1 75  0 0 6 4 4 0 3 1 2 3 2 2 2 1 1 0 0 0 0 10 5 2 7 6 5 4 0 1 1 1 1 1 0 0
1999  7 1  3 0 2 1 -1 75  0 1 3 2 5 6 2 3 4 2 1 0 0 3 1 0 0 0 2 2 6 5 6 6 2 6 2 1 1 2 1 0 0 0
2000  7 1  3 0 2 1 -1 75  0 0 0 1 5 4 1 5 3 2 1 0 0 0 3 0 0 0 0 0 3 10 9 4 7 3 1 3 2 1 1 6 0 0
2001  7 1  3 0 2 1 -1 75  0 6 4 3 2 6 7 3 1 3 2 1 1 3 0 0 0 0 0 2 4 2 6 6 5 3 2 0 0 0 0 3 0 0
1977  7 2  3 0 2 1 -1 75  2 3 1 4 6 3 2 3 2 1 3 1 2 0 4 8 0 0 0 2 6 3 2 1 3 2 2 2 2 0 1 3 1 0
1980  7 2  3 0 2 1 -1 75  4 3 1 2 2 1 1 3 1 3 0 2 1 2 4 2 5 0 1 2 4 4 5 1 3 1 1 3 1 1 1 5 2 3
1983  7 2  3 0 2 1 -1 75  6 3 5 4 3 4 2 0 3 3 1 2 3 0 4 4 0 0 1 6 4 1 1 1 1 2 1 0 1 1 3 3 1 1
1986  7 2  3 0 2 1 -1 75  5 5 3 4 4 6 2 6 1 2 2 1 0 1 3 1 1 0 0 8 2 2 1 4 3 0 1 1 0 2 0 1 3 0
1989  7 2  3 0 2 1 -1 75  0 1 5 13 6 6 2 3 0 0 0 1 0 2 0 0 0 0 3 4 7 7 4 4 2 3 0 0 0 2 0 0 0 0
1992  7 2  3 0 2 1 -1 75  4 4 3 0 5 4 8 6 1 2 2 1 0 0 0 0 0 0 3 4 0 5 8 8 2 1 0 0 0 1 1 2 0 0
1995  7 2  3 0 2 1 -1 75  0 7 8 6 3 5 0 0 3 2 2 0 0 1 4 0 0 0 6 7 8 2 1 1 1 4 3 0 1 0 0 0 0 0
1998  7 2  3 0 2 1 -1 75  5 4 5 6 7 4 2 3 0 2 1 1 3 2 0 0 0 0 6 4 7 4 1 2 2 0 1 0 0 3 0 0 0 0
2001  7 2  3 0 2 1 -1 75  4 3 6 5 2 4 1 2 4 1 0 3 1 0 2 0 0 0 3 4 2 4 2 7 5 2 2 0 4 0 1 1 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 32.5409 39.0626 41.8789 46.2066 53.0058 55.9289 60.333 59.1324 63.3526 63.6288 64.4559 66.7001 67.9406 68.4078 68.5422 71.4045 73.2789 31.0972 40.097 44.5319 49.5981 53.7225 54.8491 58.9013 61.5934 62.9367 61.0854 61.8227 66.441 66.7888 64.0438 68.7516 69.6566 73.541
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 28.0453 40.3471 44.7474 47.031 52.5121 54.1922 59.4497 60.0004 60.5179 63.2597 64.0422 65.9521 68.1755 68.7661 68.3293 74.8742 74.3603 29.9041 40.4226 45.4834 49.1893 53.6045 55.5452 58.5839 58.8764 62.9674 62.3003 65.1199 65.0921 67.3141 63.4362 69.9542 69.8819 71.2527
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 35.1913 40.3534 41.2678 47.0336 49.6077 52.7555 58.0137 57.0461 60.1076 61.1955 65.5594 64.8955 66.8624 68.6776 71.8035 70.1651 68.8362 35.2155 39.008 44.3619 48.5716 51.7033 53.4644 57.5175 60.5744 59.2499 60.1893 63.3726 64.1459 62.2392 66.8075 68.4348 68.5826 70.4182
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.3017 39.4428 42.1782 47.4776 51.1908 53.39 55.4991 59.6741 59.8063 62.0444 62.2994 65.7807 66.619 67.2459 66.4375 69.5712 73.2269 35.1041 39.7544 44.1265 46.5395 50.3181 54.7953 53.9653 57.5222 62.2477 60.3536 62.0192 63.5738 63.1632 64.9815 65.6617 68.2227 69.7921
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

