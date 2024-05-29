#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:14:30 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C file write time: 2024-02-21 21:56:58.049084
#_bootstrap file: 1  irand_seed: 1714403670 first rand#: 0.86589
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1980 #_StartYr
2010 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
95 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
13 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 TRAWL  # 1
 1 -1 1 1 0 Trawl_Discard  # 2
 1 -1 1 1 0 MIDWATER  # 3
 1 -1 1 1 0 A-SHOP  # 4
 1 -1 1 1 0 HKL  # 5
 1 -1 1 1 0 Hkl_Discard  # 6
 1 -1 1 1 0 OTHERS  # 7
 1 -1 1 1 0 RECREATIONAL  # 8
 3 1 1 2 0 AFSC_triennial  # 9
 3 1 1 2 0 AFSC_slope  # 10
 3 1 1 2 0 NWFSC_shelf_slope  # 11
 3 1 1 2 0 NWFSC_slope  # 12
 3 1 1 2 0 IPHC  # 13
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
1980 1 1 0 0.01
1981 1 1 0 0.01
1982 1 1 0 0.01
1983 1 1 0 0.01
1984 1 1 0 0.01
1985 1 1 0 0.01
1986 1 1 0 0.01
1987 1 1 0 0.01
1988 1 1 0 0.01
1989 1 1 0 0.01
1990 1 1 0 0.01
1991 1 1 0 0.01
1992 1 1 0 0.01
1993 1 1 0 0.01
1994 1 1 0 0.01
1995 1 1 0 0.01
1996 1 1 0 0.01
1997 1 1 0 0.01
1998 1 1 0 0.01
1999 1 1 0 0.01
2000 1 1 0 0.01
2001 1 1 0 0.01
2002 1 1 0 0.01
2003 1 1 0 0.01
2004 1 1 0 0.01
2005 1 1 0 0.01
2006 1 1 0 0.01
2007 1 1 0 0.01
2008 1 1 0 0.01
2009 1 1 0 0.01
2010 1 1 0 0.01
-999 1 2 0 0.01
1980 1 2 899.502 0.05
1981 1 2 923.318 0.05
1982 1 2 948.914 0.05
1983 1 2 492.591 0.05
1984 1 2 968.421 0.05
1985 1 2 961.398 0.05
1986 1 2 892.037 0.05
1987 1 2 978.396 0.05
1988 1 2 910.179 0.05
1989 1 2 845.295 0.05
1990 1 2 989.06 0.05
1991 1 2 615.127 0.05
1992 1 2 488.711 0.05
1993 1 2 534.371 0.05
1994 1 2 341.345 0.05
1995 1 2 922.319 0.05
1996 1 2 941.456 0.05
1997 1 2 953.063 0.05
1998 1 2 916.798 0.05
1999 1 2 842.237 0.05
2000 1 2 965.546 0.05
2001 1 2 948.982 0.05
2002 1 2 943.505 0.05
2003 1 2 855.874 0.05
2004 1 2 1206.05 0.05
2005 1 2 1445.71 0.05
2006 1 2 898.895 0.05
2007 1 2 635.655 0.05
2008 1 2 975.31 0.05
2009 1 2 649.651 0.05
2010 1 2 665.821 0.05
-999 1 3 0 0.05
1980 1 3 0 0.01
1981 1 3 0 0.01
1982 1 3 0 0.01
1983 1 3 0 0.01
1984 1 3 0 0.01
1985 1 3 0 0.01
1986 1 3 0 0.01
1987 1 3 0 0.01
1988 1 3 0 0.01
1989 1 3 0 0.01
1990 1 3 0 0.01
1991 1 3 0 0.01
1992 1 3 0 0.01
1993 1 3 0 0.01
1994 1 3 0 0.01
1995 1 3 0 0.01
1996 1 3 0 0.01
1997 1 3 0 0.01
1998 1 3 0 0.01
1999 1 3 0 0.01
2000 1 3 0 0.01
2001 1 3 0 0.01
2002 1 3 0 0.01
2003 1 3 0 0.01
2004 1 3 0 0.01
2005 1 3 0 0.01
2006 1 3 0 0.01
2007 1 3 0 0.01
2008 1 3 0 0.01
2009 1 3 0 0.01
2010 1 3 0 0.01
-999 1 4 0 0.01
1980 1 4 0 0.01
1981 1 4 0 0.01
1982 1 4 0 0.01
1983 1 4 0 0.01
1984 1 4 0 0.01
1985 1 4 0 0.01
1986 1 4 0 0.01
1987 1 4 0 0.01
1988 1 4 0 0.01
1989 1 4 0 0.01
1990 1 4 0 0.01
1991 1 4 0 0.01
1992 1 4 0 0.01
1993 1 4 0 0.01
1994 1 4 0 0.01
1995 1 4 0 0.01
1996 1 4 0 0.01
1997 1 4 0 0.01
1998 1 4 0 0.01
1999 1 4 0 0.01
2000 1 4 0 0.01
2001 1 4 0 0.01
2002 1 4 0 0.01
2003 1 4 0 0.01
2004 1 4 0 0.01
2005 1 4 0 0.01
2006 1 4 0 0.01
2007 1 4 0 0.01
2008 1 4 0 0.01
2009 1 4 0 0.01
2010 1 4 0 0.01
-999 1 5 0 0.01
1980 1 5 0 0.01
1981 1 5 0 0.01
1982 1 5 0 0.01
1983 1 5 0 0.01
1984 1 5 0 0.01
1985 1 5 0 0.01
1986 1 5 0 0.01
1987 1 5 0 0.01
1988 1 5 0 0.01
1989 1 5 0 0.01
1990 1 5 0 0.01
1991 1 5 0 0.01
1992 1 5 0 0.01
1993 1 5 0 0.01
1994 1 5 0 0.01
1995 1 5 0 0.01
1996 1 5 0 0.01
1997 1 5 0 0.01
1998 1 5 0 0.01
1999 1 5 0 0.01
2000 1 5 0 0.01
2001 1 5 0 0.01
2002 1 5 0 0.01
2003 1 5 0 0.01
2004 1 5 0 0.01
2005 1 5 0 0.01
2006 1 5 0 0.01
2007 1 5 0 0.01
2008 1 5 0 0.01
2009 1 5 0 0.01
2010 1 5 0 0.01
-999 1 6 0 0.01
1980 1 6 0 0.01
1981 1 6 0 0.01
1982 1 6 0 0.01
1983 1 6 0 0.01
1984 1 6 0 0.01
1985 1 6 0 0.01
1986 1 6 0 0.01
1987 1 6 0 0.01
1988 1 6 0 0.01
1989 1 6 0 0.01
1990 1 6 0 0.01
1991 1 6 0 0.01
1992 1 6 0 0.01
1993 1 6 0 0.01
1994 1 6 0 0.01
1995 1 6 0 0.01
1996 1 6 0 0.01
1997 1 6 0 0.01
1998 1 6 0 0.01
1999 1 6 0 0.01
2000 1 6 0 0.01
2001 1 6 0 0.01
2002 1 6 0 0.01
2003 1 6 0 0.01
2004 1 6 0 0.01
2005 1 6 0 0.01
2006 1 6 0 0.01
2007 1 6 0 0.01
2008 1 6 0 0.01
2009 1 6 0 0.01
2010 1 6 0 0.01
-999 1 7 0 0.01
1980 1 7 0 0.01
1981 1 7 0 0.01
1982 1 7 0 0.01
1983 1 7 0 0.01
1984 1 7 0 0.01
1985 1 7 0 0.01
1986 1 7 0 0.01
1987 1 7 0 0.01
1988 1 7 0 0.01
1989 1 7 0 0.01
1990 1 7 0 0.01
1991 1 7 0 0.01
1992 1 7 0 0.01
1993 1 7 0 0.01
1994 1 7 0 0.01
1995 1 7 0 0.01
1996 1 7 0 0.01
1997 1 7 0 0.01
1998 1 7 0 0.01
1999 1 7 0 0.01
2000 1 7 0 0.01
2001 1 7 0 0.01
2002 1 7 0 0.01
2003 1 7 0 0.01
2004 1 7 0 0.01
2005 1 7 0 0.01
2006 1 7 0 0.01
2007 1 7 0 0.01
2008 1 7 0 0.01
2009 1 7 0 0.01
2010 1 7 0 0.01
-999 1 8 0 0.01
1980 1 8 0.11662 0.05
1981 1 8 31.831 0.05
1982 1 8 45.1306 0.05
1983 1 8 16.8524 0.05
1984 1 8 15.3109 0.05
1985 1 8 48.3189 0.05
1986 1 8 68.3666 0.05
1987 1 8 9.04777 0.05
1988 1 8 50.38 0.05
1989 1 8 25.2555 0.05
1990 1 8 25.9141 0.05
1991 1 8 24.9116 0.05
1992 1 8 23.4276 0.05
1993 1 8 23.4657 0.05
1994 1 8 10.8321 0.05
1995 1 8 20.6566 0.05
1996 1 8 18.0755 0.05
1997 1 8 4.57157 0.05
1998 1 8 0.876945 0.05
1999 1 8 11.317 0.05
2000 1 8 10.3203 0.05
2001 1 8 8.65479 0.05
2002 1 8 15.6915 0.05
2003 1 8 11.5552 0.05
2004 1 8 2.78495 0.05
2005 1 8 3.86698 0.05
2006 1 8 3.67114 0.05
2007 1 8 5.72718 0.05
2008 1 8 2.62194 0.05
2009 1 8 3.90206 0.05
2010 1 8 2.22921 0.05
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
#_Fleet Units Errtype SD_Report
1 1 0 0 # TRAWL
2 1 0 0 # Trawl_Discard
3 1 0 0 # MIDWATER
4 1 0 0 # A-SHOP
5 1 0 0 # HKL
6 1 0 0 # Hkl_Discard
7 1 0 0 # OTHERS
8 1 0 0 # RECREATIONAL
9 1 0 0 # AFSC_triennial
10 1 0 0 # AFSC_slope
11 1 0 0 # NWFSC_shelf_slope
12 1 0 0 # NWFSC_slope
13 0 0 0 # IPHC
#_year month index obs err
1980 7 9 22120.7 0.151894 #_orig_obs: 18273.5 AFSC_triennial
1983 7 9 42112.3 0.118064 #_orig_obs: 47555.4 AFSC_triennial
1986 7 9 22738.1 0.0791693 #_orig_obs: 19401.2 AFSC_triennial
1989 7 9 57502.7 0.0929376 #_orig_obs: 47852.1 AFSC_triennial
1992 7 9 12574.4 0.122436 #_orig_obs: 43344.3 AFSC_triennial
1995 7 9 13512.5 0.113045 #_orig_obs: 17029.6 AFSC_triennial
1998 7 9 24169.7 0.0884319 #_orig_obs: 36857 AFSC_triennial
2001 7 9 12743.5 0.130304 #_orig_obs: 19207.1 AFSC_triennial
2004 7 9 36720.9 0.130246 #_orig_obs: 19591.5 AFSC_triennial
1997 7 10 182570 0.208844 #_orig_obs: 170735 AFSC_slope
1999 7 10 55393.2 0.225988 #_orig_obs: 95279 AFSC_slope
2000 7 10 56245.6 0.305577 #_orig_obs: 151996 AFSC_slope
2001 7 10 39902.7 0.274456 #_orig_obs: 25888.8 AFSC_slope
2003 7 11 129203 0.160463 #_orig_obs: 381759 NWFSC_shelf_slope
2004 7 11 27086.3 0.108161 #_orig_obs: 159889 NWFSC_shelf_slope
2005 7 11 28280.6 0.085744 #_orig_obs: 69961.2 NWFSC_shelf_slope
2006 7 11 48374.6 0.0986847 #_orig_obs: 52321 NWFSC_shelf_slope
2007 7 11 118398 0.106461 #_orig_obs: 45088.5 NWFSC_shelf_slope
2008 7 11 59116.7 0.0895469 #_orig_obs: 38536.2 NWFSC_shelf_slope
2009 7 11 58301.5 0.0960376 #_orig_obs: 12661.3 NWFSC_shelf_slope
2010 7 11 297465 0.0974445 #_orig_obs: 36687.7 NWFSC_shelf_slope
1998 7 12 41675 0.294833 #_orig_obs: 18304 NWFSC_slope
1999 7 12 6907.16 0.373825 #_orig_obs: 30482.3 NWFSC_slope
2000 7 12 1826.62 0.263906 #_orig_obs: 4836.28 NWFSC_slope
2001 7 12 2193.24 0.289792 #_orig_obs: 1338.67 NWFSC_slope
2002 7 12 4883.48 0.224642 #_orig_obs: 3104.27 NWFSC_slope
1999 7 13 0.0427165 0.0404267 #_orig_obs: 0.0466089 IPHC
2001 7 13 0.0407093 0.06015 #_orig_obs: 0.0315406 IPHC
2002 7 13 0.0306629 0.0638011 #_orig_obs: 0.0304644 IPHC
2003 7 13 0.0382905 0.0585752 #_orig_obs: 0.0338292 IPHC
2004 7 13 0.0285887 0.0694216 #_orig_obs: 0.0219166 IPHC
2005 7 13 0.0293536 0.0451848 #_orig_obs: 0.0411536 IPHC
2006 7 13 0.0336775 0.0608805 #_orig_obs: 0.0276063 IPHC
2007 7 13 0.0300485 0.0451782 #_orig_obs: 0.0591668 IPHC
2008 7 13 0.0306848 0.0528482 #_orig_obs: 0.0403427 IPHC
2009 7 13 0.0281835 0.0484689 #_orig_obs: 0.0350126 IPHC
2010 7 13 0.0332104 0.0479552 #_orig_obs: 0.0310872 IPHC
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
1 #_use meanbodysize_data (0/1)
30 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
2002 7 2 0 2 0.619033 0.5 #_orig_obs: 1.17  #_ Trawl_Discard
2003 7 2 0 2 2.0703 0.5 #_orig_obs: 1.19  #_ Trawl_Discard
2004 7 2 0 2 1.44524 0.5 #_orig_obs: 1.11  #_ Trawl_Discard
2005 7 2 0 2 1.9605 0.5 #_orig_obs: 1.17  #_ Trawl_Discard
2002 7 6 0 2 2.77207 0.5 #_orig_obs: 1.36  #_ Hkl_Discard
2003 7 6 0 2 2.4125 0.5 #_orig_obs: 1.14  #_ Hkl_Discard
2004 7 6 0 2 1.72287 0.5 #_orig_obs: 1.55  #_ Hkl_Discard
2005 7 6 0 2 2.37548 0.5 #_orig_obs: 2.06  #_ Hkl_Discard
 -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
10 # minimum size in the population (lower edge of first bin and size at age 0.00) 
136 # maximum size in the population (lower edge of last bin) 
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
-1 1e-05 0 0 0 0 1 #_fleet:1_TRAWL
-1 1e-05 0 0 0 0 1 #_fleet:2_Trawl_Discard
-1 1e-05 0 0 0 0 1 #_fleet:3_MIDWATER
-1 1e-05 0 0 0 0 1 #_fleet:4_A-SHOP
-1 1e-05 0 0 0 0 1 #_fleet:5_HKL
-1 1e-05 0 0 0 0 1 #_fleet:6_Hkl_Discard
-1 1e-05 0 0 0 0 1 #_fleet:7_OTHERS
-1 1e-05 0 0 0 0 1 #_fleet:8_RECREATIONAL
-1 1e-05 0 0 0 0 1 #_fleet:9_AFSC_triennial
-1 1e-05 0 0 0 0 1 #_fleet:10_AFSC_slope
-1 1e-05 0 0 0 0 1 #_fleet:11_NWFSC_shelf_slope
-1 1e-05 0 0 0 0 1 #_fleet:12_NWFSC_slope
-1 1e-05 0 0 0 0 1 #_fleet:13_IPHC
31 #_N_LengthBins
 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120 124 128 132
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 2003 7 1 3 0 2  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 1 3 0 25  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 3 0 1 1 1 0 2 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 2 7 3 0 0 0 0 0 0 0 0 0 0 0 0
 2007 7 1 3 0 42  0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 1 2 3 1 0 5 1 2 2 1 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 0 3 4 7 1 0 0 0 0 0 0 0 0 0 0 0
 2009 7 1 3 0 18  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 2 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 1 1 2 2 0 1 0 0 0 0 0 0 0 0 0 0
 2004 7 2 3 0 17  0 0 1 0 0 0 0 1 0 0 1 1 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 0 1 0 1 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 2 3 0 400  0 0 0 3 1 1 3 4 7 11 6 13 17 20 10 14 13 6 9 8 4 3 2 2 2 0 1 1 0 2 1 0 0 0 0 2 0 4 8 10 7 16 17 22 33 36 30 18 17 11 5 0 0 0 0 0 0 0 0 0 0 0
 2007 7 2 3 0 298  0 0 0 2 1 2 7 2 5 12 10 6 14 18 9 9 11 7 10 5 3 3 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 3 6 4 5 8 13 16 10 26 24 17 15 9 2 1 0 0 0 0 0 0 0 0 0 0
 2008 7 2 3 0 138  0 0 1 1 1 0 2 4 1 3 1 5 7 8 6 4 5 3 3 2 1 1 0 1 0 1 0 0 0 0 0 0 1 0 1 0 0 2 3 0 5 4 8 6 15 5 7 9 6 3 2 0 0 0 0 0 0 0 0 0 0 0
 2009 7 2 3 0 565  0 0 1 4 3 8 3 8 8 10 17 22 14 19 20 19 17 16 7 14 5 3 3 4 2 1 1 0 1 0 0 0 0 1 3 3 3 7 6 11 17 28 36 37 34 46 30 29 23 14 6 1 0 0 0 0 0 0 0 0 0 0
 2005 7 3 3 0 21  0 0 0 0 0 0 0 0 0 2 1 3 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 3 1 1 0 1 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 3 3 0 56  0 0 0 0 0 1 2 0 3 2 2 5 2 4 2 0 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 3 2 5 4 3 5 1 2 0 0 0 0 0 0 0 0 0 0 0 0
 2007 7 3 3 0 106  0 0 0 0 0 0 1 1 4 6 1 11 4 4 1 2 2 2 2 2 0 0 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 2 1 3 3 9 11 4 5 4 7 2 3 5 0 0 1 0 0 0 0 0 0 0 0 0
 2008 7 3 3 0 21  0 0 0 0 0 0 0 0 1 2 0 2 0 1 0 1 1 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 3 2 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 7 3 3 0 28  0 0 0 0 0 0 0 0 2 1 0 1 3 0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 2 5 2 0 1 3 3 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 3 3 0 78  0 0 0 0 0 0 0 2 2 3 5 2 5 3 2 1 2 1 1 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 4 7 7 11 3 2 4 3 2 0 1 1 0 0 0 0 0 0 0 0 0 0 0
 2007 7 4 3 0 80  0 0 0 0 1 0 0 1 3 3 3 2 2 4 1 3 2 2 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 4 8 3 6 8 3 3 3 1 3 1 0 0 0 0 0 0 0 0 0 0
 2008 7 4 3 0 438  0 0 0 0 0 2 1 5 10 23 30 19 20 18 20 11 14 6 5 7 7 2 2 2 4 1 0 1 0 0 0 0 0 0 0 1 1 1 6 22 19 22 26 23 21 20 23 11 19 8 5 0 0 0 0 0 0 0 0 0 0 0
 2009 7 4 3 0 118  0 0 0 0 0 0 1 1 3 8 2 4 3 3 5 4 2 3 3 2 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 0 1 10 11 5 4 6 7 8 7 5 1 2 0 0 0 0 0 0 0 0 0 0 0
 2010 7 4 3 0 234  0 0 0 0 0 1 4 2 8 5 7 13 11 3 7 7 3 3 4 4 5 1 0 2 2 0 0 1 0 0 0 0 0 0 0 1 1 1 2 4 9 15 17 15 18 12 16 14 7 7 0 1 1 0 0 0 0 0 0 0 0 0
 2003 7 5 3 0 12  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 2 0 1 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0
 2004 7 5 3 0 9  0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 5 3 0 49  0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 2 4 2 6 4 4 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 4 4 4 2 4 0 0 0 0 0 0 0 0 0 0 0
 2007 7 5 3 0 39  0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 1 1 3 1 4 4 3 2 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 1 2 2 4 3 0 0 0 0 0 0 0 0 0 0 0
 2008 7 5 3 0 74  0 0 0 1 1 0 1 2 0 0 0 0 1 2 1 3 2 4 4 3 7 5 5 2 2 3 0 0 2 1 1 0 0 0 2 0 0 0 0 0 0 0 0 0 2 4 0 4 3 3 2 0 1 0 0 0 0 0 0 0 0 0
 2009 7 5 3 0 24  0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 0 2 0 0 6 1 0 0 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 5 2 0 1 0 0 0 0 0 0 0 0 0 0
 2003 7 6 0 0 22  0 0 0 0 0 0 0 0 0 1 4 1 1 1 3 5 1 0 2 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 7 6 0 0 13  0 0 0 0 0 0 0 0 0 2 0 0 3 3 2 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 6 3 0 374  0 0 0 0 0 0 3 1 4 6 13 14 19 23 17 11 17 6 3 3 2 2 2 4 1 4 2 1 0 1 1 0 0 0 0 0 1 0 2 1 7 14 16 23 35 34 29 14 23 10 2 3 0 0 0 0 0 0 0 0 0 0
 2007 7 6 3 0 411  0 0 0 1 1 2 1 2 4 15 9 13 20 18 22 16 11 5 10 9 9 3 1 3 2 0 2 0 1 1 1 0 0 0 0 0 0 1 0 4 9 17 22 21 26 27 29 21 26 18 6 2 0 0 0 0 0 0 0 0 0 0
 2008 7 6 3 0 18  0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 2 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 3 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 7 6 3 0 28  0 0 0 0 0 0 0 0 0 1 1 1 3 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 3 3 2 2 3 0 0 0 0 0 0 0 0 0 0 0 0
 1993 7 8 0 0 11  0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 0 2 0 0 1 1 0 0 0 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 7 8 0 0 11  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 2 3 2 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 7 8 0 0 12  0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 1 2 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 7 8 0 0 14  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 4 3 0 2 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 7 8 0 0 4  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 7 8 0 0 21  0 0 0 0 0 1 0 0 0 0 0 0 2 1 0 2 2 4 2 0 2 0 1 2 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 7 8 0 0 9  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 2 0 2 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 7 8 0 0 4  0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 7 8 0 0 7  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 7 8 0 0 10  0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 1 0 1 0 0 1 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 7 8 0 0 13  0 0 0 0 0 1 0 0 2 1 0 0 0 0 0 1 2 0 1 1 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 7 8 0 0 21  0 1 0 1 0 0 0 0 0 0 0 1 1 0 0 0 1 4 1 4 0 0 0 2 1 0 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 8 0 0 52  0 0 0 1 1 0 1 1 0 0 0 2 2 1 2 3 4 3 6 3 4 7 4 0 2 1 3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 7 8 0 0 36  0 0 0 0 0 1 1 2 0 0 0 1 0 2 0 3 0 4 1 7 6 1 1 3 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 7 8 0 0 24  0 0 0 0 0 0 0 1 0 0 1 2 0 0 1 1 0 2 4 0 2 3 3 1 0 0 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 1 2 1 3 4 3 2 2 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 8 0 0 10  0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 2 0 1 0 2 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 7 9 0 0 50  0 0 0 0 2 2 2 2 4 5 4 10 4 6 2 4 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 7 9 3 0 149  0 0 1 2 5 4 4 10 8 6 7 12 3 3 2 4 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 12 5 2 5 4 3 12 6 8 8 2 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0
 2004 7 9 3 0 169  0 0 0 3 1 2 7 6 3 8 5 3 6 5 7 5 4 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 2 4 3 7 7 6 9 7 16 7 11 6 8 5 2 0 0 1 0 0 0 0 0 0 0 0 0 0
 1997 7 10 0 0 140  0 0 0 1 0 3 7 4 14 13 18 15 12 11 13 10 9 6 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 7 10 3 0 111  0 0 0 0 1 0 2 5 4 5 6 5 5 4 1 4 3 3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 2 3 6 6 8 6 6 5 0 3 6 6 0 1 0 0 0 0 0 0 0 0 0 0
 2000 7 10 3 0 71  0 0 0 0 1 2 0 1 1 3 2 4 3 4 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 3 3 4 9 7 4 4 3 1 2 3 1 0 0 0 0 0 0 0 0 0 0 0
 2001 7 10 3 0 42  0 0 0 0 1 1 0 2 2 2 1 3 0 2 1 1 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 3 0 0 1 4 1 4 3 2 1 0 0 0 0 0 0 0 0 0 0 0 0
 2003 7 11 3 0 132  0 0 0 4 3 2 5 5 8 8 5 3 1 3 7 4 1 1 0 1 0 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 4 5 4 4 9 9 6 4 7 6 1 5 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 7 11 3 0 99  0 0 0 1 5 1 6 0 4 3 2 8 3 2 3 3 3 1 0 0 0 0 0 0 0 0 2 0 0 0 1 0 0 0 1 4 5 1 3 2 3 2 5 4 5 0 5 6 4 0 1 0 0 0 0 0 0 0 0 0 0 0
 2005 7 11 3 0 149  0 0 1 3 2 2 10 4 5 5 5 7 7 1 3 6 2 3 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 1 0 3 3 7 6 6 9 4 8 4 9 6 9 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 7 11 3 0 148  0 0 1 2 3 6 5 4 5 4 4 5 4 5 2 3 1 0 1 0 1 2 0 1 0 0 1 0 0 0 0 0 0 2 1 4 6 5 4 3 10 4 8 5 3 9 6 7 6 4 1 0 0 0 0 0 0 0 0 0 0 0
 2007 7 11 3 0 119  0 0 0 2 3 4 1 1 5 7 6 4 6 8 4 4 1 1 2 2 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 3 2 3 4 4 2 7 4 2 5 3 5 4 4 1 0 1 1 0 0 0 0 0 0 0 0 0
 2008 7 11 3 0 133  0 0 0 2 3 2 7 6 4 4 5 5 10 6 5 2 3 1 2 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1 3 1 2 3 5 3 9 4 6 5 6 4 6 4 2 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 7 11 3 0 95  0 0 0 0 2 5 3 5 6 4 0 5 5 1 4 4 2 0 2 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 2 2 3 4 3 6 2 2 7 4 2 1 4 1 1 0 0 0 0 0 0 0 0 0 0 0
 2010 7 11 3 0 103  0 0 0 1 3 4 5 2 5 6 6 5 4 2 8 1 0 2 1 2 1 0 1 0 1 0 1 0 0 0 0 0 0 0 1 2 2 3 2 2 4 5 5 6 4 2 0 0 3 0 1 0 0 0 0 0 0 0 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
91 #_N_age_bins
 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5 21.5 22.5 23.5 24.5 25.5 26.5 27.5 28.5 29.5 30.5 31.5 32.5 33.5 34.5 35.5 36.5 37.5 38.5 39.5 40.5 41.5 42.5 43.5 44.5 45.5 46.5 47.5 48.5 49.5 50.5 51.5 52.5 53.5 54.5 55.5 56.5 57.5 58.5 59.5 60.5 61.5 62.5 63.5 64.5 65.5 66.5 67.5 68.5 69.5 70.5 71.5 72.5 73.5 74.5 75.5 76.5 77.5 78.5 79.5 80.5 81.5 82.5 83.5 84.5 85.5 86.5 87.5 88.5 89.5 90.5 91.5 92.5 93.5 94.5 95.5
 0.0986548 0.0986548 0.197731 0.297273 0.397333 0.497964 0.599228 0.70119 0.803922 0.907503 1.01202 1.11757 1.22425 1.33217 1.44147 1.55226 1.66471 1.77897 1.89521 2.01363 2.13443 2.25783 2.3841 2.51348 2.64629 2.78282 2.92344 3.06851 3.21845 3.3737 3.53476 3.70214 3.87642 4.05823 4.24823 4.44718 4.65587 4.87516 5.10601 5.34944 5.60656 5.87858 6.16681 6.47267 6.79772 7.14362 7.51219 7.90541 8.32542 8.77452 9.25525 9.77031 10.3227 10.9155 11.5524 12.237 12.9734 13.766 14.6196 15.5394 16.531 17.6005 18.7545 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 1e-05 0 0 0 0 1 #_fleet:1_TRAWL
-1 1e-05 0 0 0 0 1 #_fleet:2_Trawl_Discard
-1 1e-05 0 0 0 0 1 #_fleet:3_MIDWATER
-1 1e-05 0 0 0 0 1 #_fleet:4_A-SHOP
-1 1e-05 0 0 0 0 1 #_fleet:5_HKL
-1 1e-05 0 0 0 0 1 #_fleet:6_Hkl_Discard
-1 1e-05 0 0 0 0 1 #_fleet:7_OTHERS
-1 1e-05 0 0 0 0 1 #_fleet:8_RECREATIONAL
-1 1e-05 0 0 0 0 1 #_fleet:9_AFSC_triennial
-1 1e-05 0 0 0 0 1 #_fleet:10_AFSC_slope
-1 1e-05 0 0 0 0 1 #_fleet:11_NWFSC_shelf_slope
-1 1e-05 0 0 0 0 1 #_fleet:12_NWFSC_slope
-1 1e-05 0 0 0 0 1 #_fleet:13_IPHC
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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

