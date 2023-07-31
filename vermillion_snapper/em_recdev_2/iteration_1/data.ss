#V3.30.21.beta: not an official version of SS;_safe;_compile_date:_Apr 28 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Fri Jul  7 11:04:02 2023
#_bootdata:_3
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1688742242 first rand#: -1.70011
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
1950 1 1 1417.74 0.05
1951 1 1 1204.84 0.05
1952 1 1 1146.12 0.05
1953 1 1 1015.67 0.05
1954 1 1 933.54 0.05
1955 1 1 948.063 0.05
1956 1 1 879.702 0.05
1957 1 1 750.544 0.05
1958 1 1 814.066 0.05
1959 1 1 770.806 0.05
1960 1 1 760.048 0.05
1961 1 1 774.644 0.05
1962 1 1 724.622 0.05
1963 1 1 753.525 0.05
1964 1 1 778.136 0.05
1965 1 1 722.75 0.05
1966 1 1 706.371 0.05
1967 1 1 760.511 0.05
1968 1 1 808.55 0.05
1969 1 1 733.426 0.05
1970 1 1 712.087 0.05
1971 1 1 722.403 0.05
1972 1 1 694.019 0.05
1973 1 1 724.852 0.05
1974 1 1 739.237 0.05
1975 1 1 714.969 0.05
1976 1 1 719.812 0.05
1977 1 1 716.643 0.05
1978 1 1 773.899 0.05
1979 1 1 719.12 0.05
1980 1 1 695.7 0.05
1981 1 1 711.488 0.05
1982 1 1 711.201 0.05
1983 1 1 657.015 0.05
1984 1 1 642.405 0.05
1985 1 1 716.519 0.05
1986 1 1 696.606 0.05
1987 1 1 646.328 0.05
1988 1 1 686.592 0.05
1989 1 1 775.063 0.05
1990 1 1 713.933 0.05
1991 1 1 705.504 0.05
1992 1 1 695.543 0.05
1993 1 1 740.897 0.05
1994 1 1 748.872 0.05
1995 1 1 700.496 0.05
1996 1 1 711.014 0.05
1997 1 1 669.428 0.05
1998 1 1 620.82 0.05
1999 1 1 687.114 0.05
2000 1 1 677.807 0.05
2001 1 1 726.808 0.05
2002 1 1 661.472 0.05
2003 1 1 642.683 0.05
2004 1 1 728.701 0.05
2005 1 1 534.106 0.05
2006 1 1 535.554 0.05
2007 1 1 662.485 0.05
2008 1 1 759.347 0.05
2009 1 1 851.172 0.05
2010 1 1 758.325 0.05
2011 1 1 790.11 0.05
2012 1 1 748.14 0.05
2013 1 1 821.253 0.05
2014 1 1 742.208 0.05
2015 1 1 710.833 0.05
2016 1 1 684.632 0.05
2017 1 1 756.065 0.05
-999 1 2 0 0.01
1950 1 2 1126.42 0.05
1951 1 2 982.027 0.05
1952 1 2 941.214 0.05
1953 1 2 731.971 0.05
1954 1 2 677.941 0.05
1955 1 2 663.81 0.05
1956 1 2 658.241 0.05
1957 1 2 642.954 0.05
1958 1 2 625.558 0.05
1959 1 2 556.034 0.05
1960 1 2 545.199 0.05
1961 1 2 559.027 0.05
1962 1 2 549.149 0.05
1963 1 2 583.925 0.05
1964 1 2 518.323 0.05
1965 1 2 501.4 0.05
1966 1 2 524.907 0.05
1967 1 2 501.154 0.05
1968 1 2 526.938 0.05
1969 1 2 535.944 0.05
1970 1 2 498.229 0.05
1971 1 2 524.175 0.05
1972 1 2 514.49 0.05
1973 1 2 485.876 0.05
1974 1 2 512.98 0.05
1975 1 2 558.017 0.05
1976 1 2 511.633 0.05
1977 1 2 580.863 0.05
1978 1 2 560.45 0.05
1979 1 2 565.455 0.05
1980 1 2 527.145 0.05
1981 1 2 527.187 0.05
1982 1 2 582.241 0.05
1983 1 2 505.423 0.05
1984 1 2 508.886 0.05
1985 1 2 489.635 0.05
1986 1 2 560.249 0.05
1987 1 2 504.319 0.05
1988 1 2 538.883 0.05
1989 1 2 495.498 0.05
1990 1 2 556.525 0.05
1991 1 2 506.641 0.05
1992 1 2 510.789 0.05
1993 1 2 495.411 0.05
1994 1 2 530.974 0.05
1995 1 2 558.434 0.05
1996 1 2 556.404 0.05
1997 1 2 558.833 0.05
1998 1 2 560.645 0.05
1999 1 2 458.412 0.05
2000 1 2 491.484 0.05
2001 1 2 469.865 0.05
2002 1 2 471.963 0.05
2003 1 2 498.098 0.05
2004 1 2 511.927 0.05
2005 1 2 403.428 0.05
2006 1 2 470.411 0.05
2007 1 2 450.764 0.05
2008 1 2 598.895 0.05
2009 1 2 615.688 0.05
2010 1 2 637.492 0.05
2011 1 2 628.203 0.05
2012 1 2 634.001 0.05
2013 1 2 533.019 0.05
2014 1 2 573.819 0.05
2015 1 2 580.265 0.05
2016 1 2 525.686 0.05
2017 1 2 562.922 0.05
-999 1 3 0 0.01
1950 1 3 1750.05 0.15
1951 1 3 1587.41 0.15
1952 1 3 1885.29 0.15
1953 1 3 1213.2 0.15
1954 1 3 2217.31 0.15
1955 1 3 1459.01 0.15
1956 1 3 1424.53 0.15
1957 1 3 1735.89 0.15
1958 1 3 1260.84 0.15
1959 1 3 1342.89 0.15
1960 1 3 1626.27 0.15
1961 1 3 1238.86 0.15
1962 1 3 1573.08 0.15
1963 1 3 1285.7 0.15
1964 1 3 1706.14 0.15
1965 1 3 2024.13 0.15
1966 1 3 1090.51 0.15
1967 1 3 1168.22 0.15
1968 1 3 1515.57 0.15
1969 1 3 1853.23 0.15
1970 1 3 2043.82 0.15
1971 1 3 1600.28 0.15
1972 1 3 1463.8 0.15
1973 1 3 1363.87 0.15
1974 1 3 1098.55 0.15
1975 1 3 1418.82 0.15
1976 1 3 1113.95 0.15
1977 1 3 1356.31 0.15
1978 1 3 1521.13 0.15
1979 1 3 1308.48 0.15
1980 1 3 1242.19 0.15
1981 1 3 1040.91 0.15
1982 1 3 1169.17 0.15
1983 1 3 1293.34 0.15
1984 1 3 1296.01 0.15
1985 1 3 1358.99 0.15
1986 1 3 1351.96 0.15
1987 1 3 1213.96 0.15
1988 1 3 1563.7 0.15
1989 1 3 1740.2 0.15
1990 1 3 958.33 0.15
1991 1 3 1249.87 0.15
1992 1 3 862.334 0.15
1993 1 3 795.532 0.15
1994 1 3 1166.13 0.15
1995 1 3 1249.65 0.15
1996 1 3 1122 0.15
1997 1 3 1010.41 0.15
1998 1 3 855.65 0.15
1999 1 3 826.115 0.15
2000 1 3 771.01 0.15
2001 1 3 868.193 0.15
2002 1 3 725.374 0.15
2003 1 3 877.327 0.15
2004 1 3 845.347 0.15
2005 1 3 559.556 0.15
2006 1 3 462.444 0.15
2007 1 3 613.187 0.15
2008 1 3 1153.73 0.15
2009 1 3 937.212 0.15
2010 1 3 1129.11 0.15
2011 1 3 1024.56 0.15
2012 1 3 934.902 0.15
2013 1 3 998.431 0.15
2014 1 3 763.741 0.15
2015 1 3 796.056 0.15
2016 1 3 994.602 0.15
2017 1 3 906.647 0.15
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
1993 7 1 1.30359 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 0.945241 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.905014 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 1.29037 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 0.845445 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 1.00096 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.582743 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 0.857912 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.08294 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.11523 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.16548 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.08346 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.799805 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 1.31424 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 0.901146 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.24822 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 0.70419 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 1.26155 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 1.07939 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 1.18454 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 0.935872 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.18832 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 1.2969 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 0.771323 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 1.08182 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.21326 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 1.02155 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.805019 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.28752 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.10936 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.90197 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.10056 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 1.18732 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.04365 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.15208 0.1364 #_orig_obs: 1.382 REC
1993 7 3 0.873952 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.03608 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.24889 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 1.92342 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.609123 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.930912 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.815385 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.632863 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.550379 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.668764 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.622865 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.891757 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.479011 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.448415 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.624204 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.924246 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 1.09875 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.731853 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.66981 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 1.01599 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.971964 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.6059 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.950892 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.7776 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 1.03908 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.2677 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.193753 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.256114 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.228095 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.134495 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.237896 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.171902 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.174425 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.197972 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.21796 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.20655 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.221372 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.209281 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.195507 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.202664 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.186823 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.214463 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.19654 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.174898 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.152716 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.246712 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.223282 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.214535 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.19394 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.287822 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.212496 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.179651 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.226008 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.21753 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.144991 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.254588 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.204545 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.166053 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.212334 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.178264 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.172431 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.217681 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.149738 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.282727 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.146361 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.206861 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.301114 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.22536 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.112647 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.166156 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.313701 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.173776 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.19716 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.177728 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.220482 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.249246 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.247464 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.222569 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.183609 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.23979 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.287218 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.181855 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.23678 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.199329 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.223308 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.224071 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.172127 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.172831 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.294012 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.1821 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.173158 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.171723 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.236485 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 0.56967 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 1.56128 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.06991 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.681613 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 1.11173 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.752805 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 0.965102 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 0.960115 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.731223 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.907961 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.886079 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.875907 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 1.08782 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 0.85 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.811948 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.978197 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.647294 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 0.755031 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 0.989812 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 0.869617 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.45938 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.30069 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 1.09825 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 1.06021 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 1.23273 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 1.17081 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.828972 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.810915 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 1.0427 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 0.928372 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 1.17404 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 1.27465 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 0.798541 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 1.08221 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 1.25893 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 1.09147 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.836744 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 1.0134 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 1.38502 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 1.02071 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 1.04513 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.976295 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 1.04637 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.777935 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.776612 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.730613 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.637393 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.09596 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.911976 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.857998 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.888315 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 0.935722 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 1.33867 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.16672 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 0.846495 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.778534 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 1.20402 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 1.32271 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 1.10282 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.912936 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 1.13979 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 0.846506 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.989881 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 1.0097 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 0.721194 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 0.893778 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 0.664911 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.33547 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.07341 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.624354 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.974425 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.82768 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.76237 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.964936 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.973184 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.905908 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 0.871728 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.76237 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 1.20387 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.51535 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 1.3445 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.2449 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 1.07978 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 1.24794 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 1.04945 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 1.29375 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 1.64892 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.852462 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 1.28512 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.639568 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.839522 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.0113 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.07483 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.926961 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 1.3892 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.07888 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 0.782667 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 1.03013 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.859356 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 1.03903 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 0.803792 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.795902 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.973746 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 1.39674 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.27624 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 0.989837 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.755581 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.934122 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 1.46969 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.649308 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.594883 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 1.01561 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.363 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.910626 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.31815 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  24.3894 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  18.7472 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  19.9984 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  28.2116 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  16.6124 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  19.4767 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  11.7889 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  17.5298 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  23.0191 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  25.048 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  24.6567 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  12.6732 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  272.012 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  284.808 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  133.695 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  100.24 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  115.521 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  116.096 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  86.7487 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  134.495 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  108.637 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  89.2246 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  89.0929 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  63.1512 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  99.3979 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  10.5195 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  7.28166 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  6.21727 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  10.5098 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  13.1919 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  9.6376 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  8.37897 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  7.05272 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  9.56382 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  6.76305 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  6.34428 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  7.80259 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  158.623 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  143.154 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  102.11 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  55.1853 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  44.5923 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  37.9167 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  50.1036 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  49.6116 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  97.7455 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  63.2449 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  71.4632 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  50.7094 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  54.5179 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  12.9577 0.3 #_orig_obs: 1 #_ REC
1983 7 3  10.5043 0.3 #_orig_obs: 53 #_ REC
1984 7 3  9.747 0.3 #_orig_obs: 25 #_ REC
1985 7 3  9.26159 0.3 #_orig_obs: 24 #_ REC
1986 7 3  14.1201 0.3 #_orig_obs: 85 #_ REC
1987 7 3  11.8386 0.3 #_orig_obs: 90 #_ REC
1988 7 3  12.4754 0.3 #_orig_obs: 356 #_ REC
1989 7 3  12.0858 0.3 #_orig_obs: 174 #_ REC
1990 7 3  244.41 0.3 #_orig_obs: 145 #_ REC
1991 7 3  429.475 0.3 #_orig_obs: 319 #_ REC
1992 7 3  260.699 0.3 #_orig_obs: 281 #_ REC
1993 7 3  209.861 0.3 #_orig_obs: 561 #_ REC
1994 7 3  234.701 0.3 #_orig_obs: 172 #_ REC
1995 7 3  215.647 0.3 #_orig_obs: 567 #_ REC
1996 7 3  392.044 0.3 #_orig_obs: 205 #_ REC
1997 7 3  414.607 0.3 #_orig_obs: 57 #_ REC
1998 7 3  1008.94 0.3 #_orig_obs: 46 #_ REC
1999 7 3  404.752 0.3 #_orig_obs: 145 #_ REC
2000 7 3  778.677 0.3 #_orig_obs: 61 #_ REC
2001 7 3  354.851 0.3 #_orig_obs: 127 #_ REC
2002 7 3  296.267 0.3 #_orig_obs: 290 #_ REC
2003 7 3  568.157 0.3 #_orig_obs: 309 #_ REC
2004 7 3  582.433 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1684.76 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1387.01 0.3 #_orig_obs: 229 #_ REC
2007 7 3  1290.71 0.3 #_orig_obs: 194 #_ REC
2008 7 3  564.989 0.3 #_orig_obs: 161 #_ REC
2009 7 3  529.884 0.3 #_orig_obs: 211 #_ REC
2010 7 3  489.301 0.3 #_orig_obs: 84 #_ REC
2011 7 3  399.328 0.3 #_orig_obs: 168 #_ REC
2012 7 3  454.5 0.3 #_orig_obs: 210 #_ REC
2013 7 3  322.76 0.3 #_orig_obs: 477 #_ REC
2014 7 3  444.273 0.3 #_orig_obs: 394 #_ REC
2015 7 3  472.696 0.3 #_orig_obs: 291 #_ REC
2016 7 3  450.203 0.3 #_orig_obs: 329 #_ REC
2017 7 3  780.276 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  1179.69 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  1009.75 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  1009.75 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  1009.75 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  1009.75 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  1009.75 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  1009.75 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  1009.75 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  1009.75 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  1009.75 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  1009.75 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  1009.75 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  1009.75 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  1009.75 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  1009.75 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  1009.75 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  1009.75 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  1009.75 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  1009.75 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  1009.75 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  1009.75 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  1009.75 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  1009.75 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  1009.75 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  1009.75 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  1009.75 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  1009.75 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  1009.75 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  1009.75 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  1009.75 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  1009.75 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  1009.75 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  1009.75 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  1009.75 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  1009.75 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  1009.75 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  1009.75 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  1009.75 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  1009.75 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  1009.75 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  1009.75 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  1009.75 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  1009.75 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  1009.75 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  1009.75 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  1009.75 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 2 2 5 5 2 0 1 0 0 0
 2004 7 8 0 0 6  0 0 0 4 0 1 0 1 0 0 0 0
 2005 7 8 0 0 38  0 0 5 4 11 11 3 2 1 1 0 0
 2006 7 8 0 0 18  0 0 0 5 7 2 2 2 0 0 0 0
 2007 7 8 0 0 11  0 0 1 0 5 0 4 0 1 0 0 0
 2008 7 8 0 0 8  0 0 0 2 0 3 1 1 0 1 0 0
 2009 7 8 0 0 25  0 0 0 9 8 6 2 0 0 0 0 0
 2010 7 8 0 0 32  0 0 3 6 9 4 7 2 1 0 0 0
 2011 7 8 0 0 47  0 0 2 13 8 13 9 2 0 0 0 0
 2012 7 8 0 0 39  0 1 5 3 7 13 6 2 2 0 0 0
 2013 7 8 0 0 100  0 0 12 16 25 25 12 7 3 0 0 0
 2014 7 8 0 0 100  0 0 18 21 24 17 13 5 0 2 0 0
 2015 7 8 0 0 74  0 2 4 13 28 14 6 2 4 1 0 0
 2016 7 8 0 0 32  0 0 3 2 8 9 3 2 4 1 0 0
 2017 7 8 0 0 100  0 0 14 16 26 24 17 2 1 0 0 0
 2009 7 9 0 2 35  1 1 5 14 14 0 0 0 0 0 0 0
 2010 7 9 0 2 100  0 11 20 39 23 7 0 0 0 0 0 0
 2011 7 9 0 2 17  0 0 4 7 6 0 0 0 0 0 0 0
 2012 7 9 0 2 11  0 1 2 5 3 0 0 0 0 0 0 0
 2013 7 9 0 2 37  0 1 10 10 14 1 1 0 0 0 0 0
 2014 7 9 0 2 69  0 4 17 20 26 2 0 0 0 0 0 0
 2015 7 9 0 2 37  0 1 6 14 14 2 0 0 0 0 0 0
 2016 7 9 0 2 38  0 1 11 14 10 2 0 0 0 0 0 0
 2017 7 9 0 2 100  0 7 14 38 39 2 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 2 0 0 0 1 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 0 4 0 1 1 0 0 0 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 0 1 1 2 0 1 1 1 0 0 0 0 1
2001  7 1  0 2 1 -1 -1 23  0 0 3 5 5 3 3 2 0 1 0 0 0 1
2002  7 1  0 2 1 -1 -1 100  0 8 21 21 7 10 14 1 5 1 1 4 1 6
2003  7 1  0 2 1 -1 -1 23  0 2 3 7 5 0 1 3 1 0 1 0 0 0
2004  7 1  0 2 1 -1 -1 33  0 4 13 6 3 1 1 0 3 0 0 0 0 2
2005  7 1  0 2 1 -1 -1 100  0 3 24 21 8 13 9 6 4 2 0 1 2 7
2006  7 1  0 2 1 -1 -1 59  0 6 5 15 12 4 5 3 2 2 2 0 0 3
2007  7 1  0 2 1 -1 -1 54  0 0 11 9 8 7 10 4 2 2 1 0 0 0
2008  7 1  0 2 1 -1 -1 100  0 6 19 21 10 11 7 7 4 5 1 5 1 3
2009  7 1  0 2 1 -1 -1 100  0 11 13 17 22 8 10 6 2 6 0 2 0 3
2010  7 1  0 2 1 -1 -1 32  1 0 6 5 8 4 1 1 3 1 0 1 1 0
2011  7 1  0 2 1 -1 -1 87  0 6 14 19 8 5 6 8 3 7 2 4 2 3
2012  7 1  0 2 1 -1 -1 99  0 10 23 10 13 9 5 10 1 9 2 2 2 3
2013  7 1  0 2 1 -1 -1 55  0 3 12 16 0 9 2 4 2 2 2 0 1 2
2014  7 1  0 2 1 -1 -1 79  0 6 9 17 14 8 6 4 3 5 3 1 2 1
2015  7 1  0 2 1 -1 -1 100  1 7 14 11 14 15 5 4 6 10 2 1 3 7
2016  7 1  0 2 1 -1 -1 100  0 8 19 17 12 16 7 3 7 1 2 3 3 2
2017  7 1  0 2 1 -1 -1 100  0 7 40 10 12 5 8 5 4 2 2 1 2 2
1994  7 2  0 2 1 -1 -1 8  0 0 0 1 2 2 0 2 0 0 0 0 1 0
1995  7 2  0 2 1 -1 -1 7  0 1 0 0 1 1 0 1 0 3 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 7 11 10 7 10 6 2 3 3 1 1 3
2001  7 2  0 2 1 -1 -1 48  0 0 11 2 12 8 2 2 3 6 0 1 1 0
2002  7 2  0 2 1 -1 -1 34  0 0 3 7 7 4 5 1 4 1 1 0 1 0
2003  7 2  0 2 1 -1 -1 30  0 5 1 5 5 2 2 2 0 3 1 1 2 1
2004  7 2  0 2 1 -1 -1 100  1 8 10 16 13 20 7 9 4 3 2 4 1 2
2005  7 2  0 2 1 -1 -1 21  0 0 2 4 2 2 4 2 3 1 0 1 0 0
2006  7 2  0 2 1 -1 -1 16  0 0 1 3 4 2 2 0 0 0 2 1 0 1
2007  7 2  0 2 1 -1 -1 100  0 1 10 13 16 15 8 9 13 0 6 4 2 3
2008  7 2  0 2 1 -1 -1 100  0 3 7 28 12 15 18 5 4 0 2 2 3 1
2009  7 2  0 2 1 -1 -1 100  0 3 7 20 25 11 15 6 0 3 3 0 1 6
2010  7 2  0 2 1 -1 -1 59  0 0 6 7 12 12 3 5 4 3 1 1 1 4
2011  7 2  0 2 1 -1 -1 100  0 3 3 23 9 20 13 7 7 5 3 2 0 5
2012  7 2  0 2 1 -1 -1 89  0 2 8 6 26 12 10 10 5 4 1 1 0 4
2013  7 2  0 2 1 -1 -1 48  0 0 2 9 6 8 3 5 5 4 3 3 0 0
2014  7 2  0 2 1 -1 -1 47  0 2 4 8 10 2 7 0 2 5 3 0 1 3
2015  7 2  0 2 1 -1 -1 23  0 1 2 1 10 3 1 1 2 0 2 0 0 0
2016  7 2  0 2 1 -1 -1 82  1 5 7 6 15 14 7 3 5 2 3 7 3 4
2017  7 2  0 2 1 -1 -1 89  0 2 9 12 9 6 12 6 6 9 4 4 3 7
1994  7 3  0 2 1 -1 -1 13  0 0 4 4 2 1 0 1 1 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 2 1 1 0 2 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 6 18 23 9 10 3 3 2 1 1 1 0 0
1997  7 3  0 2 1 -1 -1 15  0 1 3 4 1 2 2 0 2 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 2 4 2 1 2 1 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 2 10 5 0 2 4 2 0 0 0 0 0 0
2000  7 3  0 2 1 -1 -1 61  0 7 9 25 6 4 6 1 1 0 1 0 1 0
2001  7 3  0 2 1 -1 -1 7  0 0 4 0 1 0 0 0 1 0 0 0 1 0
2002  7 3  0 2 1 -1 -1 15  0 0 5 3 5 2 0 0 0 0 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 0 3 4 6 1 2 3 0 0 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 2 0 0 1 0 1 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 1 15 14 8 3 6 5 0 0 2 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 5 10 23 17 14 14 8 1 1 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 2 21 16 28 13 10 5 4 1 0 0 0 0
2008  7 3  0 2 1 -1 -1 42  0 3 10 9 3 8 3 1 2 1 1 0 1 0
2009  7 3  0 2 1 -1 -1 100  1 7 17 23 24 11 13 0 0 2 1 1 0 0
2010  7 3  0 2 1 -1 -1 20  0 2 4 3 3 4 3 1 0 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 4 7 27 14 10 9 2 2 3 0 0 0 0
2012  7 3  0 2 1 -1 -1 100  0 8 36 14 14 6 9 7 2 3 0 0 0 1
2013  7 3  0 2 1 -1 -1 100  0 2 29 26 10 16 2 6 7 0 0 2 0 0
2014  7 3  0 2 1 -1 -1 100  0 4 14 34 24 9 9 1 2 1 1 0 1 0
2015  7 3  0 2 1 -1 -1 46  0 3 9 10 12 3 4 1 1 2 1 0 0 0
2016  7 3  0 2 1 -1 -1 100  1 14 32 17 5 16 7 4 2 1 1 0 0 0
2017  7 3  0 2 1 -1 -1 100  0 9 35 22 9 10 6 3 1 2 0 2 0 1
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

