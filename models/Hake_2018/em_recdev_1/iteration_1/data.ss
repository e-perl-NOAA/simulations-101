#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Fri Jul  7 11:09:26 2023
#_bootdata:_3
#C 2018 Hake data file
#_bootstrap file: 1  irand_seed: 1688742566 first rand#: -0.505315
#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1966 #_StartYr
2017 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
20 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
2 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 Fishery  # 1
 3 1 1 2 0 Acoustic_Survey  # 2
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
1966 1 1 136525 0.01
1967 1 1 215555 0.01
1968 1 1 122049 0.01
1969 1 1 180047 0.01
1970 1 1 230651 0.01
1971 1 1 154328 0.01
1972 1 1 118620 0.01
1973 1 1 162432 0.01
1974 1 1 212702 0.01
1975 1 1 217982 0.01
1976 1 1 235960 0.01
1977 1 1 133542 0.01
1978 1 1 103901 0.01
1979 1 1 138657 0.01
1980 1 1 90227.8 0.01
1981 1 1 139399 0.01
1982 1 1 105617 0.01
1983 1 1 113030 0.01
1984 1 1 138015 0.01
1985 1 1 97449.9 0.01
1986 1 1 72916.9 0.01
1987 1 1 95787.9 0.01
1988 1 1 103894 0.01
1989 1 1 93387.8 0.01
1990 1 1 103199 0.01
1991 1 1 193328 0.01
1992 1 1 261289 0.01
1993 1 1 200599 0.01
1994 1 1 137827 0.01
1995 1 1 125541 0.01
1996 1 1 106979 0.01
1997 1 1 88721.1 0.01
1998 1 1 66368.9 0.01
1999 1 1 108941 0.01
2000 1 1 200690 0.01
2001 1 1 185319 0.01
2002 1 1 156326 0.01
2003 1 1 160701 0.01
2004 1 1 197973 0.01
2005 1 1 183475 0.01
2006 1 1 358336 0.01
2007 1 1 293482 0.01
2008 1 1 320487 0.01
2009 1 1 179107 0.01
2010 1 1 232586 0.01
2011 1 1 293960 0.01
2012 1 1 205617 0.01
2013 1 1 285507 0.01
2014 1 1 283410 0.01
2015 1 1 177976 0.01
2016 1 1 174866 0.01
2017 1 1 134143 0.01
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Fishery
2 1 0 0 # Acoustic_Survey
#_year month index obs err
1995 7 2 1.11526e+06 0.0893 #_orig_obs: 1.31804e+06 Acoustic_Survey
1996 7 -2 334085 1 #_orig_obs: 1 Acoustic_Survey
1997 7 -2 253984 1 #_orig_obs: 1 Acoustic_Survey
1998 7 2 326500 0.0526 #_orig_obs: 1.5346e+06 Acoustic_Survey
1999 7 -2 533646 1 #_orig_obs: 1 Acoustic_Survey
2000 7 -2 1.34468e+06 1 #_orig_obs: 1 Acoustic_Survey
2001 7 2 850892 0.1059 #_orig_obs: 861744 Acoustic_Survey
2002 7 -2 3.57835e+06 1 #_orig_obs: 1 Acoustic_Survey
2003 7 2 1.28149e+06 0.0642 #_orig_obs: 2.13753e+06 Acoustic_Survey
2004 7 -2 5.15747e+06 1 #_orig_obs: 1 Acoustic_Survey
2005 7 2 771767 0.0638 #_orig_obs: 1.3761e+06 Acoustic_Survey
2006 7 -2 3.08864e+06 1 #_orig_obs: 1 Acoustic_Survey
2007 7 2 1.07516e+07 0.0766 #_orig_obs: 942721 Acoustic_Survey
2008 7 -2 3.46763e+07 1 #_orig_obs: 1 Acoustic_Survey
2009 7 2 5.38971e+06 0.0995 #_orig_obs: 1.50227e+06 Acoustic_Survey
2010 7 -2 4.02538e+06 1 #_orig_obs: 1 Acoustic_Survey
2011 7 2 3.21851e+06 0.1177 #_orig_obs: 674617 Acoustic_Survey
2012 7 2 4.38354e+06 0.0673 #_orig_obs: 1.27942e+06 Acoustic_Survey
2013 7 2 4.35315e+06 0.0646 #_orig_obs: 1.92924e+06 Acoustic_Survey
2014 7 -2 1.68786e+07 1 #_orig_obs: 1 Acoustic_Survey
2015 7 2 1.96816e+06 0.0829 #_orig_obs: 2.15585e+06 Acoustic_Survey
2016 7 -2 982171 1 #_orig_obs: 1 Acoustic_Survey
2017 7 2 507973 0.0632 #_orig_obs: 1.41781e+06 Acoustic_Survey
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
70 # maximum size in the population (lower edge of last bin) 
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
-1 0.001 0 0 0 0 0.001 #_fleet:1_Fishery
-1 0.001 0 0 0 0 0.001 #_fleet:2_Acoustic_Survey
26 #_N_LengthBins
 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
15 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
45 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.190804 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.202748 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.217422 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.23545 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.190804 0.368632 0.395312 0.42809 0.257599 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.202748 0.395312 0.42809 0.468362 0.284813 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.217422 0.42809 0.468362 0.517841 0.318246 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.23545 0.468362 0.517841 0.57863 0.359324 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.257599 0.517841 0.57863 0.653316 0.409792 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.284813 0.57863 0.653316 0.745076 0.471797 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.318246 0.653316 0.745076 0.857813 0.547977 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.359324 0.745076 0.857813 0.996322 0.641575 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.409792 0.857813 0.996322 1.1665 0.756564 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.471797 0.996322 1.1665 1.37557 0.897842 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.547977 1.1665 1.37557 1.63244 1.0219 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 0.641575 1.37557 1.63244 1.858 1.1946 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 0.756564 1.63244 1.858 2.172 1.3915 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 0.897842 1.858 2.172 2.53 1.6137 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.0219 2.172 2.53 2.934 1.8634
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.190804 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 1.1946 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.202748 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 1.3915 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.217422 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 1.6137 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.23545 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 1.8634
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.257599 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.284813 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.318246 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.359324 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.409792 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.471797 0.996322 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.547977 1.1665 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.190804 0.368632 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 0.641575 1.37557 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.202748 0.395312 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 0.756564 1.63244 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.217422 0.42809 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 0.897842 1.858 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.368632 0.395312 0.23545 0.468362 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.0219 2.172 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.190804 0.368632 0.395312 0.42809 0.257599 0.517841 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 1.1946 2.53 2.934 3.388
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.329242 0.329242 0.346917 0.202748 0.395312 0.42809 0.468362 0.284813 0.57863 0.653316 0.745076 0.857813 0.996322 1.1665 1.37557 1.63244 1.858 2.172 1.3915 2.934 3.388
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 1 1 0.001 #_fleet:1_Fishery
-1 0.001 0 0 1 2 0.001 #_fleet:2_Acoustic_Survey
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1975  7 1  0 0 3 -1 -1 6  0 0 2 2 0 1 1 0 0 0 0 0 0 0 0
1976  7 1  0 0 4 -1 -1 64  3 15 12 13 5 7 4 1 1 2 0 0 0 0 1
1977  7 1  0 0 5 -1 -1 145  1 24 39 24 25 16 11 1 2 0 1 1 0 0 0
1978  7 1  0 0 6 -1 -1 154  2 17 35 40 29 17 7 2 2 0 1 0 1 1 0
1979  7 1  0 0 7 -1 -1 53  2 3 9 15 7 6 4 4 0 1 1 0 0 0 1
1980  7 1  0 0 8 -1 -1 100  1 16 12 20 13 21 13 3 0 0 1 0 0 0 0
1981  7 1  0 0 9 -1 -1 70  1 4 17 9 16 14 5 3 1 0 0 0 0 0 0
1982  7 1  0 0 10 -1 -1 77  1 3 7 14 9 17 13 7 2 0 2 1 0 0 1
1983  7 1  0 0 11 -1 -1 53  1 7 9 0 14 5 7 3 4 3 0 0 0 0 0
1984  7 1  0 0 12 -1 -1 56  0 2 10 7 9 9 8 5 5 0 1 0 0 0 0
1985  7 1  0 0 13 -1 -1 26  2 0 4 7 3 1 6 1 0 0 1 0 1 0 0
1986  7 1  0 0 14 -1 -1 54  2 30 2 5 10 3 0 0 0 1 0 0 1 0 0
1987  7 1  0 0 15 -1 -1 25  0 4 15 1 1 0 2 0 1 0 0 0 0 1 0
1988  7 1  0 0 16 -1 -1 38  2 9 5 20 0 1 0 0 0 0 0 1 0 0 0
1989  7 1  0 0 17 -1 -1 36  0 17 8 5 6 0 0 0 0 0 0 0 0 0 0
1990  7 1  0 0 18 -1 -1 74  7 17 28 10 3 7 0 1 0 1 0 0 0 0 0
1991  7 1  0 0 19 -1 -1 73  6 38 14 6 5 0 2 0 1 0 0 0 0 0 1
1992  7 1  0 0 20 -1 -1 110  2 8 73 18 6 2 0 0 0 0 0 1 0 0 0
1993  7 1  0 0 21 -1 -1 78  1 5 17 41 10 2 1 1 0 0 0 0 0 0 0
1994  7 1  0 0 22 -1 -1 106  3 14 24 11 41 11 1 0 0 0 0 1 0 0 0
1995  7 1  0 0 23 -1 -1 67  2 20 15 11 7 11 0 0 0 0 0 1 0 0 0
1996  7 1  0 0 24 -1 -1 84  0 25 36 8 7 5 2 1 0 0 0 0 0 0 0
1997  7 1  0 0 25 -1 -1 100  4 11 26 41 9 4 2 0 1 1 1 0 0 0 0
1998  7 1  0 0 26 -1 -1 110  14 29 21 18 20 7 1 0 0 0 0 0 0 0 0
1999  7 1  0 0 27 -1 -1 231  8 116 56 17 11 18 4 1 0 0 0 0 0 0 0
2000  7 1  0 0 28 -1 -1 240  2 27 139 61 7 1 1 1 0 0 0 0 0 0 1
2001  7 1  0 0 29 -1 -1 245  6 46 39 107 41 3 1 0 0 0 0 2 0 0 0
2002  7 1  0 0 30 -1 -1 203  21 49 48 24 47 9 2 0 0 0 0 1 1 0 1
2003  7 1  0 0 31 -1 -1 207  7 93 49 24 8 15 4 1 0 1 3 1 0 0 1
2004  7 1  0 0 32 -1 -1 227  8 31 126 35 19 3 2 3 0 0 0 0 0 0 0
2005  7 1  0 0 33 -1 -1 278  68 42 39 98 20 7 1 0 0 0 0 0 1 2 0
2006  7 1  0 0 34 -1 -1 326  24 221 38 13 17 6 3 1 1 1 0 1 0 0 0
2007  7 1  0 0 35 -1 -1 285  0 28 211 30 4 7 0 1 0 0 2 1 0 0 1
2008  7 1  0 0 36 -1 -1 360  1 12 49 237 48 6 4 1 0 1 0 0 1 0 0
2009  7 1  0 0 37 -1 -1 311  1 3 12 52 195 39 4 3 0 1 0 0 0 0 1
2010  7 1  0 0 38 -1 -1 396  1 14 5 14 57 251 42 3 4 0 1 1 0 3 0
2011  7 1  0 0 39 -1 -1 490  3 6 43 18 33 101 214 60 5 0 5 0 2 0 0
2012  7 1  0 0 40 -1 -1 385  1 21 13 47 18 33 56 143 47 4 0 0 1 0 1
2013  7 1  0 0 41 -1 -1 495  9 31 73 34 68 26 25 62 122 37 5 0 3 0 0
2014  7 1  0 0 42 -1 -1 512  27 71 82 104 38 45 25 14 29 45 31 1 0 0 0
2015  7 1  0 0 43 -1 -1 361  12 146 84 46 32 9 8 3 1 7 8 2 2 0 1
2016  7 1  0 0 44 -1 -1 646  1 55 404 102 32 35 3 4 2 2 3 2 1 0 0
2017  7 1  0 0 45 -1 -1 345  59 15 39 169 42 14 3 0 1 1 1 0 0 0 1
1995  7 2  0 0 23 -1 -1 63  4 28 16 6 5 4 0 0 0 0 0 0 0 0 0
1998  7 2  0 0 26 -1 -1 96  8 49 11 9 15 4 0 0 0 0 0 0 0 0 0
2001  7 2  0 0 29 -1 -1 52  0 15 11 21 5 0 0 0 0 0 0 0 0 0 0
2003  7 2  0 0 31 -1 -1 65  5 38 10 9 1 2 0 0 0 0 0 0 0 0 0
2005  7 2  0 0 33 -1 -1 43  1 11 11 14 3 2 0 0 0 1 0 0 0 0 0
2007  7 2  0 0 35 -1 -1 63  0 11 43 7 0 0 0 1 0 0 0 0 0 0 1
2009  7 2  0 0 37 -1 -1 66  1 1 6 4 42 10 2 0 0 0 0 0 0 0 0
2011  7 2  0 0 39 -1 -1 42  1 2 8 1 5 4 14 6 0 0 1 0 0 0 0
2012  7 2  0 0 40 -1 -1 86  0 12 11 5 5 4 11 28 8 1 0 0 1 0 0
2013  7 2  0 0 41 -1 -1 61  0 8 13 1 10 6 4 6 11 1 1 0 0 0 0
2015  7 2  0 0 43 -1 -1 71  4 41 9 5 7 2 1 0 0 1 0 1 0 0 0
2017  7 2  0 0 45 -1 -1 54  0 0 12 36 3 2 0 0 0 1 0 0 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
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
