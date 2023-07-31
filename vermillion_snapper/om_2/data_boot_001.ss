#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Fri Jul  7 11:04:38 2023
#_bootdata:_3
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1688742278 first rand#: -0.755603
#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1950 #_StartYr
2017 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
14 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
9 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 CM_E  # 1
 1 -1 1 1 0 CM_W  # 2
 1 -1 1 2 0 REC  # 3
 2 -1 1 2 0 SMP_BYC  # 4
 3 1 1 1 0 HB_E  # 5
 3 1 1 1 0 HB_W  # 6
 3 1 1 1 0 LARVAL  # 7
 3 1 1 1 0 VIDEO  # 8
 3 1 1 1 0 SEAMAP  # 9
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
 4 1 3 2011 2014 999  # SMP_BYC
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 0.01
1950 1 1 1486.92 0.05
1951 1 1 1190.23 0.05
1952 1 1 1059.73 0.05
1953 1 1 1086.98 0.05
1954 1 1 969.623 0.05
1955 1 1 875.244 0.05
1956 1 1 842.462 0.05
1957 1 1 823.14 0.05
1958 1 1 836.145 0.05
1959 1 1 734.836 0.05
1960 1 1 774.695 0.05
1961 1 1 752.463 0.05
1962 1 1 719.989 0.05
1963 1 1 792.952 0.05
1964 1 1 657.976 0.05
1965 1 1 734.982 0.05
1966 1 1 704.357 0.05
1967 1 1 726.623 0.05
1968 1 1 708.733 0.05
1969 1 1 789.877 0.05
1970 1 1 675.845 0.05
1971 1 1 713.396 0.05
1972 1 1 712.744 0.05
1973 1 1 734.414 0.05
1974 1 1 764.501 0.05
1975 1 1 702.208 0.05
1976 1 1 676.064 0.05
1977 1 1 692.085 0.05
1978 1 1 716.812 0.05
1979 1 1 705.841 0.05
1980 1 1 729.381 0.05
1981 1 1 698.35 0.05
1982 1 1 711.696 0.05
1983 1 1 689.54 0.05
1984 1 1 717.002 0.05
1985 1 1 691.361 0.05
1986 1 1 779.784 0.05
1987 1 1 691.386 0.05
1988 1 1 709.751 0.05
1989 1 1 704.893 0.05
1990 1 1 715.672 0.05
1991 1 1 686.483 0.05
1992 1 1 734.169 0.05
1993 1 1 724.35 0.05
1994 1 1 729.472 0.05
1995 1 1 672.31 0.05
1996 1 1 746.968 0.05
1997 1 1 721.43 0.05
1998 1 1 694.15 0.05
1999 1 1 668.991 0.05
2000 1 1 648.849 0.05
2001 1 1 645.784 0.05
2002 1 1 722.316 0.05
2003 1 1 685.429 0.05
2004 1 1 714.251 0.05
2005 1 1 530.137 0.05
2006 1 1 547.621 0.05
2007 1 1 499.367 0.05
2008 1 1 695.192 0.05
2009 1 1 668.623 0.05
2010 1 1 620.443 0.05
2011 1 1 749.343 0.05
2012 1 1 691.48 0.05
2013 1 1 882.612 0.05
2014 1 1 785.24 0.05
2015 1 1 777.323 0.05
2016 1 1 800.783 0.05
2017 1 1 728.465 0.05
-999 1 2 0 0.01
1950 1 2 1205.23 0.05
1951 1 2 1021.8 0.05
1952 1 2 901.077 0.05
1953 1 2 844.317 0.05
1954 1 2 724.665 0.05
1955 1 2 718.739 0.05
1956 1 2 671.799 0.05
1957 1 2 627.568 0.05
1958 1 2 611.256 0.05
1959 1 2 610.869 0.05
1960 1 2 591.608 0.05
1961 1 2 575.608 0.05
1962 1 2 579.038 0.05
1963 1 2 539.316 0.05
1964 1 2 559.164 0.05
1965 1 2 568.932 0.05
1966 1 2 524.722 0.05
1967 1 2 517.257 0.05
1968 1 2 534.104 0.05
1969 1 2 574.643 0.05
1970 1 2 501.655 0.05
1971 1 2 533.609 0.05
1972 1 2 511.353 0.05
1973 1 2 514.397 0.05
1974 1 2 494.369 0.05
1975 1 2 532.802 0.05
1976 1 2 537.024 0.05
1977 1 2 515.5 0.05
1978 1 2 565.026 0.05
1979 1 2 496.455 0.05
1980 1 2 524.113 0.05
1981 1 2 545.172 0.05
1982 1 2 538.601 0.05
1983 1 2 493.017 0.05
1984 1 2 455.218 0.05
1985 1 2 551.901 0.05
1986 1 2 547.881 0.05
1987 1 2 571.41 0.05
1988 1 2 500.788 0.05
1989 1 2 499.56 0.05
1990 1 2 517.749 0.05
1991 1 2 481.062 0.05
1992 1 2 517.726 0.05
1993 1 2 514.594 0.05
1994 1 2 488.508 0.05
1995 1 2 507.184 0.05
1996 1 2 522.25 0.05
1997 1 2 518.482 0.05
1998 1 2 529.831 0.05
1999 1 2 529.253 0.05
2000 1 2 494.325 0.05
2001 1 2 485.684 0.05
2002 1 2 510.603 0.05
2003 1 2 582.705 0.05
2004 1 2 548.722 0.05
2005 1 2 396.451 0.05
2006 1 2 432.455 0.05
2007 1 2 437.714 0.05
2008 1 2 555.326 0.05
2009 1 2 533.32 0.05
2010 1 2 540.13 0.05
2011 1 2 557.167 0.05
2012 1 2 597.823 0.05
2013 1 2 525.117 0.05
2014 1 2 642.909 0.05
2015 1 2 635.272 0.05
2016 1 2 697.151 0.05
2017 1 2 618.4 0.05
-999 1 3 0 0.01
1950 1 3 1870.91 0.15
1951 1 3 1575.59 0.15
1952 1 3 1852.55 0.15
1953 1 3 1638.55 0.15
1954 1 3 1422.05 0.15
1955 1 3 1246.76 0.15
1956 1 3 1353.09 0.15
1957 1 3 1619.63 0.15
1958 1 3 1454.63 0.15
1959 1 3 1516.55 0.15
1960 1 3 1405.45 0.15
1961 1 3 1224.41 0.15
1962 1 3 1454.81 0.15
1963 1 3 1175.66 0.15
1964 1 3 1364.21 0.15
1965 1 3 1640.67 0.15
1966 1 3 1352.04 0.15
1967 1 3 1294.47 0.15
1968 1 3 1582.72 0.15
1969 1 3 1201.58 0.15
1970 1 3 1087.85 0.15
1971 1 3 1405.57 0.15
1972 1 3 1073.78 0.15
1973 1 3 1583.35 0.15
1974 1 3 1130.44 0.15
1975 1 3 1385.72 0.15
1976 1 3 1494.16 0.15
1977 1 3 1403.38 0.15
1978 1 3 1233.08 0.15
1979 1 3 1097.56 0.15
1980 1 3 1524.37 0.15
1981 1 3 1459.85 0.15
1982 1 3 1134.22 0.15
1983 1 3 1098.16 0.15
1984 1 3 1386.07 0.15
1985 1 3 1639.96 0.15
1986 1 3 1220.3 0.15
1987 1 3 1573.04 0.15
1988 1 3 1328.23 0.15
1989 1 3 1144.51 0.15
1990 1 3 869.717 0.15
1991 1 3 1018.94 0.15
1992 1 3 1140.42 0.15
1993 1 3 1131.36 0.15
1994 1 3 1101.16 0.15
1995 1 3 1013.48 0.15
1996 1 3 1329.97 0.15
1997 1 3 1030.25 0.15
1998 1 3 652.806 0.15
1999 1 3 604.003 0.15
2000 1 3 766.772 0.15
2001 1 3 795.882 0.15
2002 1 3 1193.71 0.15
2003 1 3 884.779 0.15
2004 1 3 688.468 0.15
2005 1 3 529.055 0.15
2006 1 3 474.475 0.15
2007 1 3 317.469 0.15
2008 1 3 857.412 0.15
2009 1 3 717.643 0.15
2010 1 3 717.96 0.15
2011 1 3 869.568 0.15
2012 1 3 884.132 0.15
2013 1 3 1171.38 0.15
2014 1 3 975.379 0.15
2015 1 3 914.008 0.15
2016 1 3 1227 0.15
2017 1 3 872.187 0.15
-999 1 4 0 0.01
1950 1 4 0.1 0.1
1951 1 4 0.1 0.1
1952 1 4 0.1 0.1
1953 1 4 0.1 0.1
1954 1 4 0.1 0.1
1955 1 4 0.1 0.1
1956 1 4 0.1 0.1
1957 1 4 0.1 0.1
1958 1 4 0.1 0.1
1959 1 4 0.1 0.1
1960 1 4 0.1 0.1
1961 1 4 0.1 0.1
1962 1 4 0.1 0.1
1963 1 4 0.1 0.1
1964 1 4 0.1 0.1
1965 1 4 0.1 0.1
1966 1 4 0.1 0.1
1967 1 4 0.1 0.1
1968 1 4 0.1 0.1
1969 1 4 0.1 0.1
1970 1 4 0.1 0.1
1971 1 4 0.1 0.1
1972 1 4 0.1 0.1
1973 1 4 0.1 0.1
1974 1 4 0.1 0.1
1975 1 4 0.1 0.1
1976 1 4 0.1 0.1
1977 1 4 0.1 0.1
1978 1 4 0.1 0.1
1979 1 4 0.1 0.1
1980 1 4 0.1 0.1
1981 1 4 0.1 0.1
1982 1 4 0.1 0.1
1983 1 4 0.1 0.1
1984 1 4 0.1 0.1
1985 1 4 0.1 0.1
1986 1 4 0.1 0.1
1987 1 4 0.1 0.1
1988 1 4 0.1 0.1
1989 1 4 0.1 0.1
1990 1 4 0.1 0.1
1991 1 4 0.1 0.1
1992 1 4 0.1 0.1
1993 1 4 0.1 0.1
1994 1 4 0.1 0.1
1995 1 4 0.1 0.1
1996 1 4 0.1 0.1
1997 1 4 0.1 0.1
1998 1 4 0.1 0.1
1999 1 4 0.1 0.1
2000 1 4 0.1 0.1
2001 1 4 0.1 0.1
2002 1 4 0.1 0.1
2003 1 4 0.1 0.1
2004 1 4 0.1 0.1
2005 1 4 0.1 0.1
2006 1 4 0.1 0.1
2007 1 4 0.1 0.1
2008 1 4 0.1 0.1
2009 1 4 0.1 0.1
2010 1 4 0.1 0.1
2011 1 4 0.1 0.1
2012 1 4 0.1 0.1
2013 1 4 0.1 0.1
2014 1 4 0.1 0.1
2015 1 4 0.1 0.1
2016 1 4 0.1 0.1
2017 1 4 0.1 0.1
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # CM_E
2 1 0 0 # CM_W
3 0 0 0 # REC
4 2 0 0 # SMP_BYC
5 0 0 0 # HB_E
6 0 0 0 # HB_W
7 30 0 0 # LARVAL
8 0 0 0 # VIDEO
9 0 0 0 # SEAMAP
#_year month index obs err
1993 7 1 0.949054 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.17196 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 1.95841 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.854493 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 1.10725 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 1.2939 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.838236 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 0.901076 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.15926 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.00421 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 0.815469 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.49236 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.84703 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 1.23372 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 1.30305 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.16543 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 0.646238 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 1.16561 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 0.766863 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 0.880117 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.0149 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 0.977491 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 0.972617 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 0.981032 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 0.9775 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 0.986238 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.863147 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.605458 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.17307 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.52263 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.27164 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.49512 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.702766 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.06785 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 0.88474 0.1364 #_orig_obs: 1.382 REC
1993 7 3 0.979855 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.03117 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 0.977346 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.804546 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.527528 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.645504 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.661098 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.677626 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.674963 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 1.07372 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 1.04657 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.704219 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.521555 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.474003 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.563575 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 1.02492 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.715853 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.823377 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.667994 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.834279 0.185 #_orig_obs: 0.8812 REC
2013 7 3 1.1473 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.981762 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.78672 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.715908 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.839629 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.291039 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.288566 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.201555 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.173605 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.305178 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.202036 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.176615 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.304759 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.184413 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.186482 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.229271 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.352227 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.200009 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.206462 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.200128 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.264813 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.185513 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.240474 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.156452 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.232402 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.199399 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.199197 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.194969 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.15432 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.221874 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.228536 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.22041 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.139555 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.19251 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.191837 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.151191 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.176485 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.138303 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.208631 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.249789 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.205118 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.228023 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.191432 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.212598 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.24427 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.193964 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.188126 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.210901 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.172943 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.233685 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.215489 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.25125 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.211529 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.146319 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.274026 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.160272 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.13345 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.237453 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.227557 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.150021 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.268714 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.175281 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.265416 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.223274 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.244162 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.167309 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.276588 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.179475 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.240642 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.20942 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.176329 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.17782 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.238358 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 1.3449 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.889413 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 0.821872 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.883358 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 1.05148 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 1.08537 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 1.04961 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.11476 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 1.2828 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.796666 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 1.16083 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.996154 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.634001 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 0.94354 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.813306 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 1.23633 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.876433 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 0.835153 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.00369 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 0.861108 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 0.844455 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.12702 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 1.17434 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 1.09846 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 1.1037 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.849912 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.908567 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 1.00435 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 1.45958 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 1.46393 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.94655 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 1.07434 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.20549 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 0.682877 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 1.15578 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 0.900966 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.839959 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.845621 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.76689 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 1.08591 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 1.04835 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 1.12147 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.905554 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.980206 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.640117 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.935105 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.879849 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 0.987511 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.76117 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.986634 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 1.02371 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 0.832203 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 0.961362 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 0.851812 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 1.19367 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.668378 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.70718 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.948592 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 1.18701 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 1.2064 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 1.62319 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 1.16106 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.608964 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.831627 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.01623 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.02206 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 1.04902 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.10438 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 0.808103 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.941575 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.594038 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.967393 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 1.02245 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.733338 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.999204 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.826056 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.01904 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.869241 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 1.14988 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.02392 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.900438 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.21981 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 1.11479 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 1.0239 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 1.21484 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 1.13514 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 0.908589 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 1.30224 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.47377 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 1.32927 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 1.10997 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.29251 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 0.973448 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.695467 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 0.67996 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 0.973133 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 0.811215 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.712751 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.906918 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 1.06315 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.23341 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 1.003 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 1.08357 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.938691 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.24681 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.20073 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.759802 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 1.28728 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 1.71715 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.850098 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.807423 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.615279 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 0.69472 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 1.24224 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 0.849341 0.250359 #_orig_obs: 0.693874 SEAMAP
-9999 1 1 1 1 # terminator for survey observations 
#
4 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
1 1 -2 # CM_E
2 1 -2 # CM_W
3 1 -2 # REC
4 1 -2 # SMP_BYC
#_yr month fleet obs stderr
1993 7 1  12.6414 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  18.6524 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  23.2612 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  16.1358 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  18.1039 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  11.4338 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  17.674 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  18.0538 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  13.0319 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  15.0816 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  16.5579 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  11.7103 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  147.528 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  182.714 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  186.554 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  66.6207 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  72.471 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  97.5249 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  60.954 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  85.3985 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  88.9649 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  92.6944 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  87.3424 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  52.1625 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  63.8073 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  12.0226 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  7.40417 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  8.44513 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  6.35058 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  7.57456 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  12.8395 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  3.81957 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  7.96484 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  6.56099 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  8.47074 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  8.61993 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  9.75936 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  103.877 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  257.238 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  115.057 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  53.058 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  45.1613 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  56.8304 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  65.2229 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  42.5081 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  36.6158 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  54.7512 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  79.421 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  45.4947 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  59.8017 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  10.4046 0.3 #_orig_obs: 1 #_ REC
1983 7 3  5.5541 0.3 #_orig_obs: 53 #_ REC
1984 7 3  17.0042 0.3 #_orig_obs: 25 #_ REC
1985 7 3  13.715 0.3 #_orig_obs: 24 #_ REC
1986 7 3  14.6193 0.3 #_orig_obs: 85 #_ REC
1987 7 3  7.07325 0.3 #_orig_obs: 90 #_ REC
1988 7 3  6.27307 0.3 #_orig_obs: 356 #_ REC
1989 7 3  8.76734 0.3 #_orig_obs: 174 #_ REC
1990 7 3  356.444 0.3 #_orig_obs: 145 #_ REC
1991 7 3  246.436 0.3 #_orig_obs: 319 #_ REC
1992 7 3  278.251 0.3 #_orig_obs: 281 #_ REC
1993 7 3  161.578 0.3 #_orig_obs: 561 #_ REC
1994 7 3  186.043 0.3 #_orig_obs: 172 #_ REC
1995 7 3  259.692 0.3 #_orig_obs: 567 #_ REC
1996 7 3  267.005 0.3 #_orig_obs: 205 #_ REC
1997 7 3  459.426 0.3 #_orig_obs: 57 #_ REC
1998 7 3  408.696 0.3 #_orig_obs: 46 #_ REC
1999 7 3  458.261 0.3 #_orig_obs: 145 #_ REC
2000 7 3  610.532 0.3 #_orig_obs: 61 #_ REC
2001 7 3  496.329 0.3 #_orig_obs: 127 #_ REC
2002 7 3  578.915 0.3 #_orig_obs: 290 #_ REC
2003 7 3  409.785 0.3 #_orig_obs: 309 #_ REC
2004 7 3  994.011 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1033.42 0.3 #_orig_obs: 363 #_ REC
2006 7 3  733.933 0.3 #_orig_obs: 229 #_ REC
2007 7 3  759.103 0.3 #_orig_obs: 194 #_ REC
2008 7 3  423.349 0.3 #_orig_obs: 161 #_ REC
2009 7 3  615.582 0.3 #_orig_obs: 211 #_ REC
2010 7 3  384.035 0.3 #_orig_obs: 84 #_ REC
2011 7 3  410.808 0.3 #_orig_obs: 168 #_ REC
2012 7 3  828.711 0.3 #_orig_obs: 210 #_ REC
2013 7 3  955.08 0.3 #_orig_obs: 477 #_ REC
2014 7 3  474.67 0.3 #_orig_obs: 394 #_ REC
2015 7 3  1080.78 0.3 #_orig_obs: 291 #_ REC
2016 7 3  740.015 0.3 #_orig_obs: 329 #_ REC
2017 7 3  768.24 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  924.746 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  1015.79 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  1015.79 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  1015.79 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  1015.79 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  1015.79 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  1015.79 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  1015.79 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  1015.79 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  1015.79 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  1015.79 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  1015.79 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  1015.79 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  1015.79 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  1015.79 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  1015.79 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  1015.79 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  1015.79 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  1015.79 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  1015.79 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  1015.79 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  1015.79 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  1015.79 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  1015.79 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  1015.79 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  1015.79 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  1015.79 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  1015.79 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  1015.79 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  1015.79 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  1015.79 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  1015.79 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  1015.79 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  1015.79 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  1015.79 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  1015.79 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  1015.79 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  1015.79 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  1015.79 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  1015.79 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  1015.79 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  1015.79 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  1015.79 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  1015.79 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  1015.79 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  1015.79 0.5 #_orig_obs: 212.3 #_ SMP_BYC
-9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
1 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
# no additional input for option 1
# read binwidth, minsize, lastbin size for option 2
# read N poplen bins, then vector of bin lower boundaries, for option 3
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
0.0001 1e-07 0 0 0 0 1 #_fleet:1_CM_E
0.0001 1e-07 0 0 0 0 1 #_fleet:2_CM_W
0.0001 1e-07 0 0 0 0 1 #_fleet:3_REC
0.0001 1e-07 0 0 0 0 1 #_fleet:4_SMP_BYC
0.0001 1e-07 0 0 0 0 1 #_fleet:5_HB_E
0.0001 1e-07 0 0 0 0 1 #_fleet:6_HB_W
0.0001 1e-07 0 0 0 0 1 #_fleet:7_LARVAL
0.0001 1e-07 0 0 0 0 1 #_fleet:8_VIDEO
0.0001 1e-07 0 0 0 0 1 #_fleet:9_SEAMAP
12 #_N_LengthBins
 1 5 10 15 20 25 30 35 40 45 50 55
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 2002 7 8 0 0 17  0 0 3 3 6 2 0 3 0 0 0 0
 2004 7 8 0 0 6  0 0 0 0 3 2 1 0 0 0 0 0
 2005 7 8 0 0 38  0 0 6 5 14 5 6 1 1 0 0 0
 2006 7 8 0 0 18  0 0 0 3 4 4 6 1 0 0 0 0
 2007 7 8 0 0 11  0 0 1 1 2 6 1 0 0 0 0 0
 2008 7 8 0 0 8  0 0 0 2 3 2 1 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 3 8 6 3 3 2 0 0 0
 2010 7 8 0 0 32  0 0 5 4 7 6 5 1 4 0 0 0
 2011 7 8 0 0 47  0 2 4 9 12 12 5 3 0 0 0 0
 2012 7 8 0 0 39  0 0 5 1 13 8 8 0 4 0 0 0
 2013 7 8 0 0 100  0 0 12 13 39 20 8 3 5 0 0 0
 2014 7 8 0 0 100  0 0 10 16 31 25 9 5 4 0 0 0
 2015 7 8 0 0 74  0 3 4 12 19 18 12 5 0 1 0 0
 2016 7 8 0 0 32  0 1 1 7 8 10 3 1 1 0 0 0
 2017 7 8 0 0 100  0 0 5 16 38 21 9 6 2 3 0 0
 2009 7 9 0 2 35  0 2 8 10 13 2 0 0 0 0 0 0
 2010 7 9 0 2 100  0 1 31 47 18 3 0 0 0 0 0 0
 2011 7 9 0 2 17  0 0 2 9 2 4 0 0 0 0 0 0
 2012 7 9 0 2 11  0 0 2 3 6 0 0 0 0 0 0 0
 2013 7 9 0 2 37  0 2 6 18 11 0 0 0 0 0 0 0
 2014 7 9 0 2 69  0 2 13 26 26 2 0 0 0 0 0 0
 2015 7 9 0 2 37  0 1 6 17 12 1 0 0 0 0 0 0
 2016 7 9 0 2 38  0 2 7 13 15 1 0 0 0 0 0 0
 2017 7 9 0 2 100  0 5 19 44 29 3 0 0 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
14 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5
 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0.0001 1e-07 0 0 0 0 1 #_fleet:1_CM_E
0.0001 1e-07 0 0 0 0 1 #_fleet:2_CM_W
0.0001 1e-07 0 0 0 0 1 #_fleet:3_REC
0.0001 1e-07 0 0 0 0 1 #_fleet:4_SMP_BYC
0.0001 1e-07 0 0 0 0 1 #_fleet:5_HB_E
0.0001 1e-07 0 0 0 0 1 #_fleet:6_HB_W
0.0001 1e-07 0 0 0 0 1 #_fleet:7_LARVAL
0.0001 1e-07 0 0 0 0 1 #_fleet:8_VIDEO
0.0001 1e-07 0 0 0 0 1 #_fleet:9_SEAMAP
2 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 3 0 0 0 0 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 1 1 1 1 1 1 0 0 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 1 1 2 2 0 0 0 2 0 0 0 0 0
2001  7 1  0 2 1 -1 -1 23  0 2 9 4 4 1 0 1 2 0 0 0 0 0
2002  7 1  0 2 1 -1 -1 100  0 9 35 19 9 11 5 0 2 2 1 1 3 3
2003  7 1  0 2 1 -1 -1 23  0 4 5 4 3 2 3 1 1 0 0 0 0 0
2004  7 1  0 2 1 -1 -1 33  0 2 10 6 2 8 1 0 3 0 1 0 0 0
2005  7 1  0 2 1 -1 -1 100  0 1 19 13 12 14 15 7 2 2 2 4 3 6
2006  7 1  0 2 1 -1 -1 59  0 1 15 5 9 3 5 5 6 2 2 4 0 2
2007  7 1  0 2 1 -1 -1 54  0 2 8 7 8 5 7 5 5 0 1 1 1 4
2008  7 1  0 2 1 -1 -1 100  0 5 25 13 11 7 14 4 6 5 5 2 1 2
2009  7 1  0 2 1 -1 -1 100  0 7 15 24 16 12 6 3 8 2 2 2 0 3
2010  7 1  0 2 1 -1 -1 32  0 4 9 3 6 3 2 2 1 0 2 0 0 0
2011  7 1  0 2 1 -1 -1 87  1 3 17 16 10 12 6 3 6 5 2 1 2 3
2012  7 1  0 2 1 -1 -1 99  1 18 19 21 11 7 7 7 2 2 0 1 2 1
2013  7 1  0 2 1 -1 -1 55  0 4 18 5 11 2 3 3 2 2 1 1 2 1
2014  7 1  0 2 1 -1 -1 79  0 2 5 33 9 13 4 3 3 3 1 0 1 2
2015  7 1  0 2 1 -1 -1 100  0 6 20 6 30 6 8 5 5 3 2 4 2 3
2016  7 1  0 2 1 -1 -1 100  0 9 25 13 6 22 6 3 0 3 3 3 2 5
2017  7 1  0 2 1 -1 -1 100  0 8 26 18 14 7 19 1 3 1 1 1 0 1
1994  7 2  0 2 1 -1 -1 8  0 0 3 0 1 0 1 0 0 0 1 1 0 1
1995  7 2  0 2 1 -1 -1 7  0 0 1 0 1 1 0 1 2 1 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 8 12 3 11 11 5 3 2 1 3 2 3
2001  7 2  0 2 1 -1 -1 48  0 4 8 4 12 4 2 2 3 4 1 2 1 1
2002  7 2  0 2 1 -1 -1 34  0 2 3 4 2 5 5 5 2 2 0 0 0 4
2003  7 2  0 2 1 -1 -1 30  0 0 4 10 5 4 0 3 0 0 1 3 0 0
2004  7 2  0 2 1 -1 -1 100  0 2 4 17 22 19 9 10 3 4 5 0 0 5
2005  7 2  0 2 1 -1 -1 21  0 1 1 5 0 3 3 1 3 1 1 1 0 1
2006  7 2  0 2 1 -1 -1 16  0 0 1 3 4 1 3 2 1 1 0 0 0 0
2007  7 2  0 2 1 -1 -1 100  0 1 6 13 13 18 8 14 8 6 2 3 0 8
2008  7 2  0 2 1 -1 -1 100  0 2 14 14 14 15 12 11 3 5 4 0 2 4
2009  7 2  0 2 1 -1 -1 100  0 2 6 22 19 9 10 12 3 4 4 1 3 5
2010  7 2  0 2 1 -1 -1 59  0 1 4 7 15 9 6 1 4 5 2 1 1 3
2011  7 2  0 2 1 -1 -1 100  0 1 9 16 16 14 10 9 8 6 2 1 3 5
2012  7 2  0 2 1 -1 -1 89  0 5 6 8 21 15 10 10 2 7 2 0 2 1
2013  7 2  0 2 1 -1 -1 48  0 0 7 3 10 7 7 6 1 3 0 2 0 2
2014  7 2  0 2 1 -1 -1 47  0 0 2 20 3 5 1 4 5 1 2 1 0 3
2015  7 2  0 2 1 -1 -1 23  0 2 3 2 11 1 0 1 1 0 0 0 0 2
2016  7 2  0 2 1 -1 -1 82  0 1 8 15 7 24 6 3 2 4 5 4 0 3
2017  7 2  0 2 1 -1 -1 89  0 3 8 18 10 9 19 5 6 6 4 0 0 1
1994  7 3  0 2 1 -1 -1 13  0 0 7 3 1 1 0 0 1 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 3 1 1 0 1 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 5 19 22 13 7 4 3 4 0 0 0 0 0
1997  7 3  0 2 1 -1 -1 15  0 0 2 4 3 2 2 2 0 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 1 1 4 3 4 0 0 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  1 1 9 5 3 1 0 1 2 0 0 1 1 0
2000  7 3  0 2 1 -1 -1 61  0 7 13 13 10 5 6 5 1 1 0 0 0 0
2001  7 3  0 2 1 -1 -1 7  0 0 3 0 1 1 0 0 0 1 0 0 1 0
2002  7 3  0 2 1 -1 -1 15  0 2 2 6 1 0 0 1 2 0 0 0 1 0
2003  7 3  0 2 1 -1 -1 19  0 0 5 7 5 0 1 1 0 0 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 1 0 2 0 0 0 0 0 1 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 1 10 10 11 9 5 2 2 3 1 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 1 18 22 16 12 10 7 2 5 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 4 19 17 24 14 8 7 2 1 1 0 0 3
2008  7 3  0 2 1 -1 -1 42  0 3 14 11 5 5 1 2 1 0 0 0 0 0
2009  7 3  0 2 1 -1 -1 100  0 4 22 29 14 12 8 6 2 1 2 0 0 0
2010  7 3  0 2 1 -1 -1 20  0 0 7 4 7 0 1 1 0 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  1 1 26 14 12 9 9 4 0 1 0 1 0 0
2012  7 3  0 2 1 -1 -1 100  0 17 17 23 16 11 6 5 2 1 0 1 0 1
2013  7 3  0 2 1 -1 -1 100  0 7 44 8 16 12 8 1 2 0 0 0 2 0
2014  7 3  0 2 1 -1 -1 100  0 8 14 48 6 8 5 2 5 1 0 0 1 2
2015  7 3  0 2 1 -1 -1 46  0 5 10 4 21 1 3 1 0 1 0 0 0 0
2016  7 3  0 2 1 -1 -1 100  1 5 18 22 10 30 6 3 2 1 0 1 0 1
2017  7 3  0 2 1 -1 -1 100  0 12 26 19 16 6 12 1 3 3 2 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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

