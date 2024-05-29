#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:11:28 2024
#_bootstrap
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1714403488 first rand#: 0.367703
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
1972 1 1 201.585 0.01
1973 1 1 986.289 0.01
1974 1 1 998.385 0.01
1975 1 1 2012.47 0.01
1976 1 1 2989.36 0.01
1977 1 1 4042.5 0.01
1978 1 1 5028.99 0.01
1979 1 1 5971.55 0.01
1980 1 1 8130.83 0.01
1981 1 1 9818.54 0.01
1982 1 1 9968.04 0.01
1983 1 1 10009.6 0.01
1984 1 1 10133.3 0.01
1985 1 1 9884.37 0.01
1986 1 1 10129.4 0.01
1987 1 1 9817.32 0.01
1988 1 1 8935.86 0.01
1989 1 1 8061.45 0.01
1990 1 1 7096.82 0.01
1991 1 1 5948.23 0.01
1992 1 1 3986.92 0.01
1993 1 1 4018.49 0.01
1994 1 1 3993.3 0.01
1995 1 1 3975.79 0.01
1996 1 1 4007.82 0.01
1997 1 1 2945.7 0.01
1998 1 1 3049.95 0.01
1999 1 1 2980.25 0.01
2000 1 1 2957 0.01
2001 1 1 3013.94 0.01
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
 1971 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 2 1 4 2 2 4 2 5 7 13 12 5 5 0 0 0 0 0 0 0 0 0 0 1 0 0 2 0 6 6 3 6 5 8 9 4 5 3 0 0
 1972 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6 1 0 1 2 3 2 6 6 6 8 11 9 3 4 0 0 0 0 0 0 0 0 0 2 3 1 2 2 1 3 2 9 1 7 6 7 5 6 0 0
 1973 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 0 0 6 5 0 3 5 3 6 9 10 8 5 0 0 0 0 0 0 0 0 0 0 0 0 0 5 3 2 1 4 3 7 5 10 8 9 5 3 0
 1974 7 1 3 0 125  0 0 0 0 0 0 0 0 0 3 0 1 1 1 3 4 7 4 2 9 5 9 3 0 0 0 0 0 0 0 0 0 6 1 0 1 3 1 3 2 4 7 8 4 11 11 5 4 2 0
 1975 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 2 1 2 4 7 5 4 7 6 12 5 4 3 0 0 0 0 0 0 0 0 0 0 0 2 1 0 1 0 4 6 3 3 5 19 8 5 3 0 0
 1976 7 1 3 0 125  0 0 0 0 0 0 0 2 1 1 1 3 3 1 3 3 4 4 6 14 5 10 7 5 0 0 0 0 0 0 0 2 1 2 1 1 1 1 1 3 4 4 7 6 5 4 3 6 0 0
 1977 7 1 3 0 125  0 0 0 0 0 0 0 1 1 0 0 1 2 3 3 3 4 4 6 10 13 9 7 2 0 0 0 0 0 0 0 0 1 0 2 2 1 1 2 2 6 3 3 11 9 7 3 3 0 0
 1978 7 1 3 0 125  0 0 0 0 0 0 1 0 0 3 0 4 4 1 0 6 10 5 5 12 10 6 3 2 0 0 0 0 0 0 0 0 0 1 1 2 0 1 3 2 5 5 7 5 5 8 3 5 0 0
 1979 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 7 5 0 1 4 2 4 1 4 6 10 9 9 1 0 0 0 0 0 0 0 0 0 2 2 2 1 3 6 3 2 3 4 3 12 11 5 1 2 0
 1980 7 1 3 0 125  0 0 0 0 0 0 0 2 0 0 1 0 4 3 2 2 6 7 3 9 14 4 3 1 0 0 0 0 0 0 0 0 0 2 0 2 2 3 1 5 9 1 6 8 6 7 8 4 0 0
 1981 7 1 3 0 125  0 0 0 0 0 0 1 1 1 0 1 4 2 1 4 3 1 3 4 12 6 7 8 0 0 0 0 0 0 0 1 0 1 0 1 2 2 4 5 1 6 1 3 9 11 9 7 3 0 0
 1982 7 1 3 0 125  0 0 0 0 0 0 0 0 3 1 0 3 6 3 1 3 4 5 3 6 10 13 0 0 0 0 0 0 0 0 0 0 2 0 1 1 0 3 2 5 4 4 14 6 6 7 4 5 0 0
 1983 7 1 3 0 125  0 0 0 0 0 0 0 0 0 0 6 3 6 1 2 3 1 7 3 10 12 7 3 0 0 0 0 0 0 0 0 0 0 0 3 1 8 1 4 2 4 6 2 3 9 10 4 4 0 0
 1984 7 1 3 0 125  0 0 0 0 0 0 0 0 0 1 0 1 1 3 7 5 3 4 4 12 9 6 5 0 0 0 0 0 0 0 0 0 1 3 1 1 2 5 4 3 5 1 5 8 10 6 7 2 0 0
 1985 7 1 3 0 125  0 0 0 0 0 0 0 0 5 0 1 5 2 3 6 2 3 2 4 8 8 4 5 3 0 0 0 0 0 0 0 0 1 0 1 1 2 3 3 1 5 8 9 6 8 8 3 5 0 0
 1986 7 1 3 0 125  0 0 0 1 1 1 2 0 2 1 2 1 1 5 0 9 6 8 3 9 7 5 3 0 0 0 0 0 0 0 0 1 0 1 1 1 8 5 3 2 5 3 4 7 6 3 3 5 0 0
 1987 7 1 3 0 125  0 0 0 0 0 0 0 0 2 1 3 2 2 6 2 4 3 8 1 6 9 4 4 0 0 0 0 0 0 0 0 0 3 1 4 4 2 6 3 1 2 5 4 6 9 6 4 8 0 0
 1988 7 1 3 0 125  0 0 0 0 0 0 0 3 2 0 1 2 4 1 7 4 7 4 3 5 7 7 4 0 0 0 0 0 0 0 0 0 2 0 3 2 2 3 5 3 7 3 6 2 8 7 11 0 0 0
 1989 7 1 3 0 125  0 0 0 0 0 2 1 0 1 3 1 2 6 8 4 2 3 6 1 12 5 3 3 0 0 0 0 0 0 0 0 6 1 2 2 3 5 5 2 3 5 6 5 4 5 4 4 0 0 0
 1990 7 1 3 0 125  0 0 0 0 0 0 0 10 2 1 2 1 3 2 7 2 3 4 6 6 6 4 3 0 0 0 0 0 0 0 6 1 1 0 5 2 2 1 3 10 5 3 3 4 5 4 5 3 0 0
 1991 7 1 3 0 125  0 0 0 0 0 0 0 6 5 2 1 0 3 3 5 1 2 4 4 7 2 5 0 0 0 0 0 0 0 4 2 1 1 1 2 2 1 8 4 3 10 6 3 3 11 5 8 0 0 0
 1992 7 1 3 0 125  0 0 0 0 3 0 2 1 0 1 5 3 2 3 0 6 8 3 7 6 2 6 0 0 0 0 0 0 0 0 0 0 2 2 3 6 7 6 3 4 2 3 5 6 6 8 4 0 0 0
 1993 7 1 3 0 125  0 0 0 0 0 0 4 0 1 3 3 3 7 4 8 1 3 2 6 5 8 10 0 0 0 0 0 0 0 0 0 0 3 0 2 2 3 1 3 8 4 5 5 3 8 2 6 2 0 0
 1994 7 1 3 0 125  0 0 0 0 0 0 0 0 0 6 1 3 5 4 4 8 3 3 5 5 3 4 1 0 0 0 0 0 0 0 0 0 2 0 2 7 1 6 3 5 10 4 4 4 14 3 2 3 0 0
 1995 7 1 3 0 125  0 0 0 0 0 0 1 0 1 3 1 2 1 3 7 5 9 9 8 3 10 0 0 0 0 0 0 0 0 0 0 0 1 1 4 2 5 4 8 6 3 4 6 3 8 3 4 0 0 0
 1996 7 1 3 0 125  0 0 0 1 0 0 0 4 0 1 3 1 4 3 4 6 5 9 4 7 7 4 0 0 0 0 0 0 0 0 0 3 1 1 0 4 4 5 4 4 3 4 5 7 9 4 3 1 0 0
 1997 7 1 3 0 125  0 0 0 1 0 2 1 0 1 2 4 3 3 4 6 3 6 2 4 7 8 0 0 0 0 0 0 0 0 0 6 0 0 1 3 3 4 6 4 4 3 5 3 5 10 6 5 0 0 0
 1998 7 1 3 0 125  0 0 0 0 1 2 0 1 1 1 2 1 3 3 6 4 7 7 5 13 5 2 1 0 0 0 0 0 0 1 1 3 2 3 1 3 3 5 5 2 7 6 6 2 2 3 3 2 0 0
 1999 7 1 3 0 125  0 0 0 0 1 0 0 3 1 3 3 6 5 5 4 0 5 5 4 9 2 2 0 0 0 0 0 0 0 0 0 4 3 2 3 2 3 3 7 6 3 6 4 2 8 6 5 0 0 0
 2000 7 1 3 0 125  0 0 0 0 0 0 0 0 2 3 5 4 7 3 3 5 5 2 2 10 6 0 0 0 0 0 0 0 0 0 1 1 0 2 3 7 2 9 5 1 7 5 5 2 9 6 2 1 0 0
 2001 7 1 3 0 125  0 0 0 0 3 0 0 0 1 3 4 2 7 4 3 3 6 3 5 7 8 6 0 0 0 0 0 0 0 0 3 0 0 2 3 3 3 6 5 4 6 11 3 1 5 3 2 0 0 0
 1977 7 2 3 0 125  0 0 0 0 1 1 5 2 4 3 0 3 3 2 4 5 1 5 3 6 4 10 0 0 0 0 0 0 0 0 0 4 4 3 3 3 3 0 0 2 5 7 1 3 12 6 3 4 0 0
 1980 7 2 3 0 125  0 0 0 0 2 2 1 2 3 4 4 2 4 2 2 3 1 3 2 7 9 5 1 0 0 0 0 0 0 3 2 0 2 1 5 4 4 6 2 1 6 4 4 5 8 1 5 3 0 0
 1983 7 2 3 0 125  0 0 0 0 5 1 1 3 1 4 6 5 4 2 6 0 4 2 6 6 6 8 0 0 0 0 0 0 0 3 0 0 1 3 3 5 5 5 3 3 2 2 4 5 4 7 0 0 0 0
 1986 7 2 3 0 125  0 0 0 0 1 2 2 6 6 2 5 3 3 5 1 1 6 4 0 5 3 6 5 0 0 0 0 0 2 1 2 5 4 2 2 4 3 3 5 3 6 2 4 5 2 1 3 0 0 0
 1989 7 2 3 0 125  0 0 0 0 0 4 0 4 3 4 7 5 6 9 3 2 4 7 2 3 5 4 0 0 0 0 0 0 1 0 0 3 0 2 2 6 1 6 5 3 2 1 7 4 10 0 0 0 0 0
 1992 7 2 3 0 125  0 0 0 0 0 0 2 1 6 13 5 2 5 0 2 2 2 3 4 4 7 0 0 0 0 0 0 0 0 0 5 1 9 8 7 6 9 4 4 2 2 0 4 1 4 1 0 0 0 0
 1995 7 2 3 0 125  0 0 0 0 6 1 1 1 4 1 1 5 1 4 6 6 7 2 6 6 1 2 0 0 0 0 0 0 0 0 3 3 2 2 5 2 4 7 0 9 2 6 6 4 2 2 5 0 0 0
 1998 7 2 3 0 125  0 0 0 1 1 3 4 9 4 4 1 2 5 3 2 1 4 2 2 2 4 3 0 0 0 0 0 0 0 3 6 6 4 3 5 1 6 3 2 0 6 1 6 4 8 3 1 0 0 0
 2001 7 2 3 0 125  0 0 0 0 0 10 5 4 1 10 6 6 4 2 1 6 2 1 2 2 5 0 0 0 0 0 0 0 0 6 1 2 3 3 3 7 5 3 1 7 4 1 1 3 3 5 0 0 0 0
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
1971  7 1  3 0 2 1 -1 75  0 0 0 0 12 0 2 2 2 1 2 3 1 0 3 1 7 0 0 2 3 3 5 0 2 1 2 1 3 1 3 7 1 5
1972  7 1  3 0 2 1 -1 75  2 1 0 2 0 4 3 4 2 2 4 5 4 1 7 0 5 0 0 0 1 2 1 1 3 3 3 0 0 0 5 3 5 2
1973  7 1  3 0 2 1 -1 75  0 0 2 1 3 4 1 2 2 2 1 1 4 1 5 2 7 0 0 0 1 1 1 0 3 1 2 4 1 0 1 12 4 6
1974  7 1  3 0 2 1 -1 75  0 0 2 2 2 2 2 0 2 1 0 1 2 1 9 9 8 0 0 1 0 2 2 2 1 4 0 2 0 2 2 4 3 7
1975  7 1  3 0 2 1 -1 75  0 0 5 5 2 2 3 1 4 2 2 1 2 2 11 3 3 0 0 0 0 5 1 3 1 1 2 1 2 2 3 3 3 0
1976  7 1  3 0 2 1 -1 75  0 0 4 0 1 3 1 2 4 3 2 0 2 2 3 1 6 0 0 0 0 6 0 2 3 3 3 1 4 0 0 11 8 0
1977  7 1  3 0 2 1 -1 75  0 0 0 0 4 1 0 1 3 1 3 0 3 2 4 5 7 0 0 2 1 2 2 2 2 2 2 1 2 1 1 9 6 6
1978  7 1  3 0 2 1 -1 75  0 0 2 2 3 1 3 2 1 4 1 4 3 0 9 6 3 0 0 1 5 2 0 1 0 1 0 3 4 2 1 5 2 4
1979  7 1  3 0 2 1 -1 75  0 0 0 2 4 3 3 1 1 4 2 0 1 2 3 7 0 0 0 4 2 6 0 3 5 2 3 1 1 1 2 3 3 6
1980  7 1  3 0 2 1 -1 75  0 0 1 1 3 2 1 4 4 2 1 3 2 0 6 13 0 0 0 0 6 3 1 1 4 2 0 1 0 1 0 8 2 3
1981  7 1  3 0 2 1 -1 75  0 2 0 2 2 3 2 0 3 1 1 2 2 1 5 2 5 0 0 4 3 4 3 3 2 3 2 1 1 1 1 7 2 5
1982  7 1  3 0 2 1 -1 75  0 1 1 5 5 2 6 1 3 0 1 2 2 2 2 3 5 0 0 0 0 3 3 3 2 1 0 2 0 1 2 8 9 0
1983  7 1  3 0 2 1 -1 75  0 0 0 5 1 3 5 0 1 0 1 1 0 1 3 4 4 0 0 2 2 9 5 0 3 3 1 1 0 6 1 9 3 1
1984  7 1  3 0 2 1 -1 75  0 0 0 3 3 4 2 1 1 3 1 3 3 1 5 3 4 0 0 4 2 2 1 5 2 2 3 1 0 4 1 4 3 4
1985  7 1  3 0 2 1 -1 75  0 0 0 6 4 2 4 3 1 3 2 0 1 3 2 3 4 0 0 0 3 0 4 2 4 0 4 4 0 3 0 3 5 5
1986  7 1  3 0 2 1 -1 75  0 4 1 1 2 1 4 2 5 4 0 0 3 4 6 3 4 0 0 0 0 3 1 1 3 3 6 1 1 2 1 5 4 0
1987  7 1  3 0 2 1 -1 75  0 2 0 3 5 2 2 4 3 5 0 1 0 3 3 5 0 0 0 2 0 1 5 3 6 4 3 3 1 0 0 5 1 3
1988  7 1  3 0 2 1 -1 75  0 0 2 2 2 5 1 3 3 3 3 0 1 2 2 4 0 0 1 1 2 3 3 1 2 4 2 1 1 2 1 9 9 0
1989  7 1  3 0 2 1 -1 75  0 3 2 1 5 6 0 1 2 3 3 2 2 1 4 9 0 0 0 0 2 6 2 3 1 4 1 0 0 0 2 6 4 0
1990  7 1  3 0 2 1 -1 75  0 0 8 4 6 0 4 3 0 2 4 1 1 1 3 2 0 0 2 2 2 1 6 4 3 3 1 2 1 0 0 2 7 0
1991  7 1  3 0 2 1 -1 75  0 0 5 2 2 1 7 2 3 0 2 1 0 1 5 1 0 0 3 4 2 1 7 3 5 3 0 0 4 1 2 3 5 0
1992  7 1  3 0 2 1 -1 75  0 0 11 1 2 2 3 7 4 0 2 3 3 2 3 0 1 0 0 7 4 1 3 0 4 2 2 1 1 1 3 2 0 0
1993  7 1  3 0 2 1 -1 75  0 0 5 2 4 2 3 2 2 0 4 4 1 3 0 0 0 0 0 5 8 4 4 2 4 3 2 1 0 1 2 7 0 0
1994  7 1  3 0 2 1 -1 75  0 0 1 2 3 7 2 4 4 5 2 2 1 0 4 0 2 0 0 0 8 8 6 2 0 3 2 3 0 4 0 0 0 0
1995  7 1  3 0 2 1 -1 75  2 3 2 2 8 10 3 0 3 2 3 2 3 5 0 0 0 0 0 0 0 1 6 4 4 2 1 1 1 1 0 3 0 3
1996  7 1  3 0 2 1 -1 75  0 0 7 3 1 3 6 6 3 2 6 2 0 0 1 1 0 0 3 4 1 3 3 5 4 2 1 1 1 0 2 4 0 0
1997  7 1  3 0 2 1 -1 75  0 6 2 0 3 2 6 4 4 3 1 0 1 2 5 0 0 0 0 0 9 5 4 3 4 4 1 1 0 2 3 0 0 0
1998  7 1  3 0 2 1 -1 75  0 3 2 5 3 3 2 5 3 4 1 2 0 2 5 0 0 0 0 3 3 4 0 2 3 7 3 3 0 2 1 2 2 0
1999  7 1  3 0 2 1 -1 75  3 2 6 1 2 3 3 2 1 2 3 2 2 0 4 0 0 0 2 5 5 3 3 1 3 0 5 3 3 1 0 5 0 0
2000  7 1  3 0 2 1 -1 75  0 1 3 5 1 2 3 1 0 5 0 6 2 0 5 0 0 0 0 2 8 8 1 5 5 1 3 3 1 0 0 4 0 0
2001  7 1  3 0 2 1 -1 75  0 1 1 1 10 3 5 1 1 2 3 3 1 0 4 0 0 0 0 1 3 9 4 5 2 0 3 1 2 1 4 4 0 0
1977  7 2  3 0 2 1 -1 75  4 0 2 3 5 2 4 3 3 1 0 0 1 3 3 4 0 0 0 3 2 3 6 1 2 2 4 1 4 1 1 3 4 0
1980  7 2  3 0 2 1 -1 75  2 0 4 1 2 4 4 2 1 0 3 0 0 0 1 1 6 0 1 3 4 4 4 3 5 3 1 3 0 1 0 6 2 4
1983  7 2  3 0 2 1 -1 75  2 1 3 4 7 0 1 1 2 1 1 2 1 2 4 6 0 0 2 3 6 4 5 1 0 1 2 3 1 1 1 3 2 2
1986  7 2  3 0 2 1 -1 75  5 5 7 6 2 2 3 1 2 2 2 1 1 0 0 1 3 0 0 5 5 3 2 0 2 0 3 1 2 1 0 4 4 0
1989  7 2  3 0 2 1 -1 75  2 1 4 7 0 6 1 0 0 2 0 2 0 6 0 0 0 0 8 3 5 4 4 4 2 1 5 2 1 5 0 0 0 0
1992  7 2  3 0 2 1 -1 75  2 3 6 5 3 3 0 5 1 1 2 2 1 0 3 0 0 0 2 8 5 3 3 2 5 3 1 1 2 0 0 3 0 0
1995  7 2  3 0 2 1 -1 75  0 4 4 3 5 6 6 2 2 0 1 1 1 2 3 0 0 0 4 1 6 3 4 2 3 0 1 0 3 1 1 6 0 0
1998  7 2  3 0 2 1 -1 75  4 5 3 1 4 1 0 2 1 5 1 0 0 4 0 0 0 0 11 4 7 4 4 2 3 4 2 2 0 1 0 0 0 0
2001  7 2  3 0 2 1 -1 75  2 0 1 6 6 7 0 3 1 3 2 1 1 1 2 0 0 0 1 4 10 6 4 2 1 1 3 3 0 2 0 2 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(female-male)
#                                          samplesize(female-male)
1971  7 1  3 0 1 2 31.8151 38.9001 44.6742 47.1265 52.9541 56.2683 57.3131 60.5443 62.9117 61.2493 66.3529 62.6256 64.5983 67.0349 72.0725 72.5378 73.9383 31.4051 40.4255 43.4394 49.0613 53.6698 54.117 58.2663 59.79 63.2121 62.6009 63.6518 66.1775 65.1574 64.8033 68.8109 70.3677 70.0703
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 1  3 0 1 2 31.8776 40.4336 44.6492 48.7396 51.4127 55.478 57.2274 60.2705 62.8654 64.1773 64.5335 65.4706 67.4865 69.1905 67.9671 68.205 73.0202 33.0319 39.335 45.5631 49.913 53.5973 54.2691 57.3823 60.8181 61.3169 62.4692 63.7988 65.1332 67.8284 64.0995 66.4356 69.9533 72.3047
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1971  7 2  3 0 1 2 34.216 40.8447 41.2422 48.6635 50.9294 54.2301 55.9082 56.8138 61.4284 60.0735 65.3566 64.9556 65.8779 67.1132 65.9204 72.6492 74.6653 36.4514 40.3455 43.2622 45.6414 50.2893 54.6305 55.7565 57.0948 58.8333 60.2432 63.9961 62.054 62.5969 65.1935 66.6547 65.3354 69.0535
 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
1995  7 2  3 0 1 2 34.0364 39.612 45.2777 47.6174 49.7918 53.3174 55.563 59.767 59.3402 62.7541 64.8781 64.4896 62.7739 64.5168 68.0225 70.4586 72.6029 35.0206 40.946 42.9963 48.4664 50.1867 52.7745 56.7907 57.7279 58.3138 62.2036 62.2876 62.6607 68.0304 66.5572 65.8236 69.1441 71.2703
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

