#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:00 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403940 first rand#: 1.68209
#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1950 #_StartYr
2017 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Nsexes: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
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
1950 1 1 1299.66 0.05
1951 1 1 1289.89 0.05
1952 1 1 1141.87 0.05
1953 1 1 1047.86 0.05
1954 1 1 1082.41 0.05
1955 1 1 910.065 0.05
1956 1 1 812.762 0.05
1957 1 1 851.21 0.05
1958 1 1 775.649 0.05
1959 1 1 889.77 0.05
1960 1 1 754.271 0.05
1961 1 1 807.848 0.05
1962 1 1 755.026 0.05
1963 1 1 748.349 0.05
1964 1 1 695.426 0.05
1965 1 1 745.252 0.05
1966 1 1 778.458 0.05
1967 1 1 688.053 0.05
1968 1 1 733.085 0.05
1969 1 1 766.452 0.05
1970 1 1 738.989 0.05
1971 1 1 748.351 0.05
1972 1 1 778.758 0.05
1973 1 1 702.614 0.05
1974 1 1 708.395 0.05
1975 1 1 718.239 0.05
1976 1 1 710.762 0.05
1977 1 1 670.968 0.05
1978 1 1 690.997 0.05
1979 1 1 706.105 0.05
1980 1 1 738.675 0.05
1981 1 1 731.458 0.05
1982 1 1 700.797 0.05
1983 1 1 736.361 0.05
1984 1 1 668.552 0.05
1985 1 1 747.819 0.05
1986 1 1 727.181 0.05
1987 1 1 740.889 0.05
1988 1 1 683.381 0.05
1989 1 1 750.141 0.05
1990 1 1 693.335 0.05
1991 1 1 698.004 0.05
1992 1 1 705.791 0.05
1993 1 1 686.633 0.05
1994 1 1 666.64 0.05
1995 1 1 737.795 0.05
1996 1 1 750.707 0.05
1997 1 1 672.018 0.05
1998 1 1 757.767 0.05
1999 1 1 789.699 0.05
2000 1 1 802.649 0.05
2001 1 1 785.911 0.05
2002 1 1 782.132 0.05
2003 1 1 721.733 0.05
2004 1 1 688.352 0.05
2005 1 1 582.166 0.05
2006 1 1 566.168 0.05
2007 1 1 565.605 0.05
2008 1 1 723.251 0.05
2009 1 1 763.612 0.05
2010 1 1 807.057 0.05
2011 1 1 826.434 0.05
2012 1 1 733.138 0.05
2013 1 1 730.194 0.05
2014 1 1 715.042 0.05
2015 1 1 778.451 0.05
2016 1 1 820.347 0.05
2017 1 1 727.432 0.05
-999 1 2 0 0.01
1950 1 2 1128.15 0.05
1951 1 2 944.306 0.05
1952 1 2 910.512 0.05
1953 1 2 812.558 0.05
1954 1 2 769.678 0.05
1955 1 2 750.893 0.05
1956 1 2 605.15 0.05
1957 1 2 700.266 0.05
1958 1 2 573.643 0.05
1959 1 2 573.405 0.05
1960 1 2 579.207 0.05
1961 1 2 583.764 0.05
1962 1 2 553.884 0.05
1963 1 2 554.991 0.05
1964 1 2 551.676 0.05
1965 1 2 531.159 0.05
1966 1 2 529.6 0.05
1967 1 2 526.674 0.05
1968 1 2 564.794 0.05
1969 1 2 543.219 0.05
1970 1 2 494.008 0.05
1971 1 2 568.803 0.05
1972 1 2 534.454 0.05
1973 1 2 510.66 0.05
1974 1 2 499.502 0.05
1975 1 2 526.252 0.05
1976 1 2 522.576 0.05
1977 1 2 499.995 0.05
1978 1 2 515.189 0.05
1979 1 2 529.106 0.05
1980 1 2 524.868 0.05
1981 1 2 532.154 0.05
1982 1 2 515.641 0.05
1983 1 2 528.017 0.05
1984 1 2 516.111 0.05
1985 1 2 503.137 0.05
1986 1 2 470.091 0.05
1987 1 2 527.504 0.05
1988 1 2 519.294 0.05
1989 1 2 547.595 0.05
1990 1 2 507.225 0.05
1991 1 2 495.396 0.05
1992 1 2 496.703 0.05
1993 1 2 502.104 0.05
1994 1 2 528.419 0.05
1995 1 2 517.24 0.05
1996 1 2 511.185 0.05
1997 1 2 540.888 0.05
1998 1 2 552.231 0.05
1999 1 2 571.308 0.05
2000 1 2 512.992 0.05
2001 1 2 529.789 0.05
2002 1 2 562.802 0.05
2003 1 2 601.846 0.05
2004 1 2 518.749 0.05
2005 1 2 407.724 0.05
2006 1 2 441.749 0.05
2007 1 2 442.106 0.05
2008 1 2 562.854 0.05
2009 1 2 642.831 0.05
2010 1 2 662.053 0.05
2011 1 2 616.797 0.05
2012 1 2 600.115 0.05
2013 1 2 561.406 0.05
2014 1 2 565.132 0.05
2015 1 2 591.639 0.05
2016 1 2 640.807 0.05
2017 1 2 583.995 0.05
-999 1 3 0 0.01
1950 1 3 1728.78 0.15
1951 1 3 1980.4 0.15
1952 1 3 1475.47 0.15
1953 1 3 1134.81 0.15
1954 1 3 1177.57 0.15
1955 1 3 1670.61 0.15
1956 1 3 1511.72 0.15
1957 1 3 1448.08 0.15
1958 1 3 1787.83 0.15
1959 1 3 1204.02 0.15
1960 1 3 1437.12 0.15
1961 1 3 1330.67 0.15
1962 1 3 1487.99 0.15
1963 1 3 1052.77 0.15
1964 1 3 1384.38 0.15
1965 1 3 1475.14 0.15
1966 1 3 1474.88 0.15
1967 1 3 1086.56 0.15
1968 1 3 1369.26 0.15
1969 1 3 1043.8 0.15
1970 1 3 1044.94 0.15
1971 1 3 1547.65 0.15
1972 1 3 1205.68 0.15
1973 1 3 1247.57 0.15
1974 1 3 1476.81 0.15
1975 1 3 1077.95 0.15
1976 1 3 1290.02 0.15
1977 1 3 1508.99 0.15
1978 1 3 1041.09 0.15
1979 1 3 1845.15 0.15
1980 1 3 1561.64 0.15
1981 1 3 1290.6 0.15
1982 1 3 1374.95 0.15
1983 1 3 1439.29 0.15
1984 1 3 931.043 0.15
1985 1 3 1395.82 0.15
1986 1 3 1532.22 0.15
1987 1 3 1191.1 0.15
1988 1 3 1249.36 0.15
1989 1 3 1151.41 0.15
1990 1 3 997.24 0.15
1991 1 3 919.039 0.15
1992 1 3 1111.46 0.15
1993 1 3 1385.83 0.15
1994 1 3 1050.67 0.15
1995 1 3 1125.73 0.15
1996 1 3 1230.52 0.15
1997 1 3 1164.09 0.15
1998 1 3 905.447 0.15
1999 1 3 967.704 0.15
2000 1 3 1001.2 0.15
2001 1 3 872.119 0.15
2002 1 3 859.361 0.15
2003 1 3 687.403 0.15
2004 1 3 801.22 0.15
2005 1 3 397.605 0.15
2006 1 3 462.852 0.15
2007 1 3 594.857 0.15
2008 1 3 1058.62 0.15
2009 1 3 908.918 0.15
2010 1 3 999.673 0.15
2011 1 3 1034.56 0.15
2012 1 3 1061.22 0.15
2013 1 3 611.676 0.15
2014 1 3 1166.12 0.15
2015 1 3 1013.64 0.15
2016 1 3 1003.69 0.15
2017 1 3 773.812 0.15
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
#_Errtype:  -1=normal; 0=lognormal; 1=lognormal with bias correction; >1=df for T-dist
#_SD_Report: 0=not; 1=include survey expected value with se
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
1993 7 1 1.4728 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.37549 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 1.06306 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.838442 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 0.981749 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 0.989579 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 1.26807 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 1.19422 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.12845 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 0.755019 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.09984 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 0.926865 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.624532 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.707212 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 1.76628 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.0508 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 0.898935 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 1.04278 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 0.914324 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 0.720658 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 0.899925 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.26439 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 0.884294 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 0.812127 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 1.40243 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.35341 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.779861 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.963297 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 0.973227 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.33056 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 0.723972 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 0.960551 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.775489 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.16983 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 0.804147 0.1364 #_orig_obs: 1.382 REC
1993 7 3 0.687816 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 0.974773 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 0.844199 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.852501 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.734561 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.599939 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.921888 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.802295 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.911774 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.701953 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.917474 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.65667 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.394308 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.37839 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.531031 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.903202 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.704657 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.674515 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.675933 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 1.09868 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.891645 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.729347 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 1.15341 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.808846 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.937999 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.184092 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.163588 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.210581 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.174672 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.274138 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.197828 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.240331 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.200209 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.216123 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.169201 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.278097 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.202023 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.283786 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.203878 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.236752 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.173055 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.166618 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.215589 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.182139 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.285583 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.18047 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.223649 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.177959 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.229352 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.210619 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.174286 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.134146 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.203174 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.258866 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.196144 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.200727 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.206329 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.252858 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.15342 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.262179 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.195029 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.179354 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.178948 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.227709 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.274411 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.203268 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.25232 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.257979 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.278946 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.17735 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.163755 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.151579 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.215409 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.199257 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.266587 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.279768 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.190136 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.193565 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.227243 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.209545 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.178327 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.227745 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.316907 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.156851 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.23961 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.178396 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.158833 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.135252 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.218104 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.152916 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.22501 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.228099 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.200522 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 0.65178 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.836419 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 0.808977 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.76865 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 0.736066 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.707202 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 0.882185 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 0.737635 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 1.15982 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.948599 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 1.00256 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 1.00432 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 1.22207 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.23327 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.772109 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.898768 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.729167 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 0.718834 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 0.676389 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 0.596627 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.03087 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.09403 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 1.21473 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 1.11941 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 1.09754 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.598074 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.817619 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.919403 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 0.981791 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 1.09214 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 1.08113 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.889737 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 0.987828 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 0.946063 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.5909 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 1.01007 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.679804 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 1.08747 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.747044 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 1.17917 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 1.0137 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.955626 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.808461 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.930754 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 1.02582 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.925334 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.970885 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.1427 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.857203 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.769376 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 1.14568 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 0.762106 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 0.889864 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 0.785692 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 1.10448 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.976805 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 1.33522 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.950976 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.754438 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.829327 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.729154 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 1.87344 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 1.29111 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.750412 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 0.616467 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.15736 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 0.768378 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 0.804249 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.09211 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.766881 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 1.13733 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.798057 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.907723 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 1.43163 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 1.20259 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.898063 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 0.987963 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 1.02135 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.974508 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.45173 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 1.29024 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 0.931945 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.762517 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 1.11591 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.942336 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 1.1341 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 0.917164 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.935388 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 2.63316 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 1.0794 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.859898 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.0151 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 0.884979 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 1.03984 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 1.18751 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.34969 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.08676 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.995214 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.798083 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 0.905513 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 0.982059 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 1.01451 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 1.35507 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 1.10965 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 0.931268 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 0.958968 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.661896 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.979087 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.824711 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.882316 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.827203 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.526365 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.03902 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.76594 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.01198 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  19.4638 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  28.0873 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  15.3141 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  13.6825 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  13.6736 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  29.8852 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  12.6284 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  10.8326 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  25.8171 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  25.0032 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  13.8189 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  15.7267 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  187.249 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  270.564 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  165.194 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  72.7885 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  115.022 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  112.174 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  117.576 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  72.7553 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  128.634 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  77.5964 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  64.3468 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  110.612 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  50.3979 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  6.5226 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  9.02248 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  8.88308 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  8.24089 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  9.60932 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  10.4435 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  15.7298 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  12.0501 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  13.6257 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  8.17305 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  10.487 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  13.7168 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  124.224 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  108.703 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  297.873 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  47.227 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  59.707 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  63.0435 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  78.7374 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  45.8998 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  40.1706 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  64.95 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  41.8683 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  36.4363 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  34.7915 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  18.0136 0.3 #_orig_obs: 1 #_ REC
1983 7 3  9.72098 0.3 #_orig_obs: 53 #_ REC
1984 7 3  8.20467 0.3 #_orig_obs: 25 #_ REC
1985 7 3  13.6664 0.3 #_orig_obs: 24 #_ REC
1986 7 3  7.1033 0.3 #_orig_obs: 85 #_ REC
1987 7 3  8.08049 0.3 #_orig_obs: 90 #_ REC
1988 7 3  7.72151 0.3 #_orig_obs: 356 #_ REC
1989 7 3  8.8717 0.3 #_orig_obs: 174 #_ REC
1990 7 3  351.226 0.3 #_orig_obs: 145 #_ REC
1991 7 3  238.149 0.3 #_orig_obs: 319 #_ REC
1992 7 3  305.243 0.3 #_orig_obs: 281 #_ REC
1993 7 3  216.036 0.3 #_orig_obs: 561 #_ REC
1994 7 3  306.31 0.3 #_orig_obs: 172 #_ REC
1995 7 3  497.927 0.3 #_orig_obs: 567 #_ REC
1996 7 3  215.019 0.3 #_orig_obs: 205 #_ REC
1997 7 3  381.022 0.3 #_orig_obs: 57 #_ REC
1998 7 3  602.224 0.3 #_orig_obs: 46 #_ REC
1999 7 3  738.521 0.3 #_orig_obs: 145 #_ REC
2000 7 3  884.383 0.3 #_orig_obs: 61 #_ REC
2001 7 3  592.277 0.3 #_orig_obs: 127 #_ REC
2002 7 3  586.194 0.3 #_orig_obs: 290 #_ REC
2003 7 3  450.427 0.3 #_orig_obs: 309 #_ REC
2004 7 3  580.108 0.3 #_orig_obs: 202 #_ REC
2005 7 3  504.331 0.3 #_orig_obs: 363 #_ REC
2006 7 3  805.12 0.3 #_orig_obs: 229 #_ REC
2007 7 3  685.909 0.3 #_orig_obs: 194 #_ REC
2008 7 3  444.519 0.3 #_orig_obs: 161 #_ REC
2009 7 3  823.257 0.3 #_orig_obs: 211 #_ REC
2010 7 3  489.291 0.3 #_orig_obs: 84 #_ REC
2011 7 3  395.475 0.3 #_orig_obs: 168 #_ REC
2012 7 3  604.266 0.3 #_orig_obs: 210 #_ REC
2013 7 3  993.08 0.3 #_orig_obs: 477 #_ REC
2014 7 3  466.851 0.3 #_orig_obs: 394 #_ REC
2015 7 3  758.457 0.3 #_orig_obs: 291 #_ REC
2016 7 3  672.573 0.3 #_orig_obs: 329 #_ REC
2017 7 3  1016.77 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  942.192 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  1024.5 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  1024.5 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  1024.5 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  1024.5 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  1024.5 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  1024.5 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  1024.5 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  1024.5 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  1024.5 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  1024.5 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  1024.5 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  1024.5 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  1024.5 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  1024.5 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  1024.5 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  1024.5 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  1024.5 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  1024.5 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  1024.5 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  1024.5 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  1024.5 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  1024.5 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  1024.5 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  1024.5 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  1024.5 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  1024.5 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  1024.5 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  1024.5 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  1024.5 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  1024.5 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  1024.5 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  1024.5 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  1024.5 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  1024.5 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  1024.5 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  1024.5 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  1024.5 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  1024.5 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  1024.5 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  1024.5 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  1024.5 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  1024.5 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  1024.5 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  1024.5 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  1024.5 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
#_combM+F: males and females treated as combined sex below this bin number 
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
 2002 7 8 0 0 17  0 0 2 1 5 5 2 1 1 0 0 0
 2004 7 8 0 0 6  0 0 0 2 2 1 1 0 0 0 0 0
 2005 7 8 0 0 38  0 0 4 9 7 10 5 1 2 0 0 0
 2006 7 8 0 0 18  0 0 0 3 7 1 2 5 0 0 0 0
 2007 7 8 0 0 11  0 0 0 2 2 6 1 0 0 0 0 0
 2008 7 8 0 0 8  0 0 0 2 3 3 0 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 6 8 5 3 2 1 0 0 0
 2010 7 8 0 0 32  0 0 2 4 5 9 4 2 6 0 0 0
 2011 7 8 0 0 47  0 2 5 9 13 8 6 4 0 0 0 0
 2012 7 8 0 0 39  0 0 6 8 9 10 2 2 2 0 0 0
 2013 7 8 0 0 100  0 0 8 17 25 27 10 7 6 0 0 0
 2014 7 8 0 0 100  0 0 5 11 45 23 10 3 2 1 0 0
 2015 7 8 0 0 74  0 4 2 12 19 22 4 8 2 1 0 0
 2016 7 8 0 0 32  0 1 3 4 7 11 3 3 0 0 0 0
 2017 7 8 0 0 100  0 0 6 13 31 21 14 6 9 0 0 0
 2009 7 9 0 0 35  1 2 7 11 11 3 0 0 0 0 0 0
 2010 7 9 0 0 100  0 3 12 39 43 3 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 8 5 4 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 0 1 8 2 0 0 0 0 0 0 0
 2013 7 9 0 0 37  0 2 4 17 14 0 0 0 0 0 0 0
 2014 7 9 0 0 69  0 3 9 30 26 1 0 0 0 0 0 0
 2015 7 9 0 0 37  0 0 5 17 14 1 0 0 0 0 0 0
 2016 7 9 0 0 38  0 0 4 19 12 3 0 0 0 0 0 0
 2017 7 9 0 0 100  0 2 14 43 36 5 0 0 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
14 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5
 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined sex below this bin number 
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 1 0 1 1 0 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  1 2 1 0 2 0 0 0 0 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 2 0 3 0 1 0 1 0 0 0 0 1 0
2001  7 1  0 2 1 -1 -1 23  0 3 3 5 5 3 2 0 1 1 0 0 0 0
2002  7 1  0 2 1 -1 -1 100  0 8 11 29 14 13 8 4 3 5 3 1 0 1
2003  7 1  0 2 1 -1 -1 23  0 2 4 1 4 4 2 3 0 1 1 1 0 0
2004  7 1  0 2 1 -1 -1 33  0 3 4 4 3 7 4 4 3 0 0 1 0 0
2005  7 1  0 2 1 -1 -1 100  0 5 13 8 18 13 14 5 9 7 3 3 1 1
2006  7 1  0 2 1 -1 -1 59  0 1 17 9 6 6 9 3 1 1 2 1 2 1
2007  7 1  0 2 1 -1 -1 54  0 3 11 11 4 2 5 5 2 2 3 2 2 2
2008  7 1  0 2 1 -1 -1 100  0 11 18 19 22 5 2 6 2 2 2 3 3 5
2009  7 1  0 2 1 -1 -1 100  0 5 21 12 17 17 10 4 5 2 2 2 1 2
2010  7 1  0 2 1 -1 -1 32  0 1 4 9 6 7 3 0 1 1 0 0 0 0
2011  7 1  0 2 1 -1 -1 87  0 3 9 20 14 13 4 8 4 0 3 2 4 3
2012  7 1  0 2 1 -1 -1 99  0 5 14 18 13 14 6 10 5 4 2 3 0 5
2013  7 1  0 2 1 -1 -1 55  0 6 7 8 8 6 6 4 1 2 1 1 4 1
2014  7 1  0 2 1 -1 -1 79  0 8 19 8 7 8 8 6 2 3 4 2 1 3
2015  7 1  0 2 1 -1 -1 100  1 3 22 25 12 3 6 7 10 2 3 0 1 5
2016  7 1  0 2 1 -1 -1 100  0 8 23 17 18 6 7 7 5 1 0 4 1 3
2017  7 1  0 2 1 -1 -1 100  0 3 22 19 16 20 4 4 2 3 3 2 0 2
1994  7 2  0 2 1 -1 -1 8  0 0 0 1 3 2 1 0 0 0 1 0 0 0
1995  7 2  0 2 1 -1 -1 7  0 0 2 0 1 1 0 1 1 1 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 9 11 11 5 5 6 7 1 0 4 1 4
2001  7 2  0 2 1 -1 -1 48  0 3 5 13 5 11 4 0 1 1 1 1 0 3
2002  7 2  0 2 1 -1 -1 34  0 3 4 10 4 3 2 1 2 1 2 0 0 2
2003  7 2  0 2 1 -1 -1 30  0 0 3 5 5 5 3 2 1 2 0 4 0 0
2004  7 2  0 2 1 -1 -1 100  0 3 3 21 17 18 10 11 7 2 3 3 1 1
2005  7 2  0 2 1 -1 -1 21  0 1 1 2 2 3 3 4 3 0 0 1 0 1
2006  7 2  0 2 1 -1 -1 16  0 0 4 1 0 1 2 2 2 1 1 0 2 0
2007  7 2  0 2 1 -1 -1 100  0 0 9 18 21 9 8 10 10 1 2 6 1 5
2008  7 2  0 2 1 -1 -1 100  0 1 6 10 27 13 11 10 1 7 1 3 3 7
2009  7 2  0 2 1 -1 -1 100  0 4 10 14 14 25 11 3 5 4 5 0 3 2
2010  7 2  0 2 1 -1 -1 59  0 0 9 12 6 11 3 2 3 1 2 4 2 4
2011  7 2  0 2 1 -1 -1 100  0 1 11 12 27 12 13 8 3 3 2 0 5 3
2012  7 2  0 2 1 -1 -1 89  0 3 4 11 18 22 7 8 7 3 0 2 2 2
2013  7 2  0 2 1 -1 -1 48  0 2 2 2 14 8 5 4 2 2 2 0 2 3
2014  7 2  0 2 1 -1 -1 47  0 0 4 5 5 9 5 8 1 4 2 0 0 4
2015  7 2  0 2 1 -1 -1 23  0 1 3 7 1 5 2 1 2 0 1 0 0 0
2016  7 2  0 2 1 -1 -1 82  0 3 6 17 25 4 7 3 5 1 0 1 3 7
2017  7 2  0 2 1 -1 -1 89  0 1 8 16 19 16 8 3 2 6 5 2 1 2
1994  7 3  0 2 1 -1 -1 13  0 0 5 6 2 0 0 0 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 3 1 0 2 0 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 8 26 16 11 8 2 1 4 1 0 0 0 0
1997  7 3  0 2 1 -1 -1 15  0 2 3 5 4 0 1 0 0 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 1 4 2 1 0 4 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 4 6 7 6 1 0 1 0 0 0 0 0 0
2000  7 3  0 2 1 -1 -1 61  0 10 13 15 11 2 4 3 0 2 0 0 1 0
2001  7 3  0 2 1 -1 -1 7  0 0 0 4 0 1 1 1 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 0 2 4 5 1 1 2 0 0 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 0 5 5 5 2 0 1 1 0 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 1 0 1 2 0 0 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 5 5 7 14 7 8 0 2 3 3 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 3 15 19 8 19 14 8 0 7 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 4 27 32 11 8 7 4 3 2 1 1 0 0
2008  7 3  0 2 1 -1 -1 42  0 4 12 6 12 2 1 1 0 2 0 1 1 0
2009  7 3  0 2 1 -1 -1 100  0 7 19 22 19 21 6 3 1 0 1 1 0 0
2010  7 3  0 2 1 -1 -1 20  0 1 6 6 1 0 2 2 0 2 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 2 14 13 20 8 9 9 3 0 0 0 0 0
2012  7 3  0 2 1 -1 -1 100  1 6 15 26 17 20 6 4 3 1 0 0 0 1
2013  7 3  0 2 1 -1 -1 100  1 12 20 19 19 11 7 4 1 3 0 0 3 0
2014  7 3  0 2 1 -1 -1 100  0 7 42 9 13 14 10 1 2 0 1 0 0 1
2015  7 3  0 2 1 -1 -1 46  1 3 16 12 5 3 2 1 2 1 0 0 0 0
2016  7 3  0 2 1 -1 -1 100  0 5 22 25 31 7 3 4 3 0 0 0 0 0
2017  7 3  0 2 1 -1 -1 100  0 5 19 30 24 14 3 3 0 1 1 0 0 0
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

