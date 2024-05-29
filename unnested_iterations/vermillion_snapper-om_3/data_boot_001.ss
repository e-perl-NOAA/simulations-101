#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:18:53 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403933 first rand#: 0.599353
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
1950 1 1 1349.22 0.05
1951 1 1 1149.54 0.05
1952 1 1 1126.65 0.05
1953 1 1 966.116 0.05
1954 1 1 914.338 0.05
1955 1 1 793.949 0.05
1956 1 1 841.397 0.05
1957 1 1 815.673 0.05
1958 1 1 769.793 0.05
1959 1 1 789.712 0.05
1960 1 1 771.254 0.05
1961 1 1 775.175 0.05
1962 1 1 770.975 0.05
1963 1 1 772.755 0.05
1964 1 1 680.019 0.05
1965 1 1 790.306 0.05
1966 1 1 729.943 0.05
1967 1 1 696.285 0.05
1968 1 1 739.353 0.05
1969 1 1 708.318 0.05
1970 1 1 721.199 0.05
1971 1 1 705.745 0.05
1972 1 1 758.8 0.05
1973 1 1 741.182 0.05
1974 1 1 703.856 0.05
1975 1 1 729.032 0.05
1976 1 1 759.747 0.05
1977 1 1 753.386 0.05
1978 1 1 666.811 0.05
1979 1 1 764.381 0.05
1980 1 1 821.049 0.05
1981 1 1 703.242 0.05
1982 1 1 701.745 0.05
1983 1 1 665.198 0.05
1984 1 1 694.354 0.05
1985 1 1 747.456 0.05
1986 1 1 747.098 0.05
1987 1 1 671.627 0.05
1988 1 1 762.952 0.05
1989 1 1 748.746 0.05
1990 1 1 770.013 0.05
1991 1 1 726.011 0.05
1992 1 1 662.183 0.05
1993 1 1 721.852 0.05
1994 1 1 678.38 0.05
1995 1 1 742.195 0.05
1996 1 1 683.032 0.05
1997 1 1 749.338 0.05
1998 1 1 704.218 0.05
1999 1 1 698.895 0.05
2000 1 1 626.831 0.05
2001 1 1 643.393 0.05
2002 1 1 725.739 0.05
2003 1 1 809.252 0.05
2004 1 1 826.48 0.05
2005 1 1 595.169 0.05
2006 1 1 628.488 0.05
2007 1 1 636.216 0.05
2008 1 1 867.609 0.05
2009 1 1 816.383 0.05
2010 1 1 773.482 0.05
2011 1 1 710.345 0.05
2012 1 1 765.381 0.05
2013 1 1 759.796 0.05
2014 1 1 735.799 0.05
2015 1 1 669.665 0.05
2016 1 1 700.362 0.05
2017 1 1 797.492 0.05
-999 1 2 0 0.01
1950 1 2 1117.65 0.05
1951 1 2 1008.49 0.05
1952 1 2 996.521 0.05
1953 1 2 796.151 0.05
1954 1 2 759.703 0.05
1955 1 2 730.923 0.05
1956 1 2 657.84 0.05
1957 1 2 607.761 0.05
1958 1 2 614.258 0.05
1959 1 2 576.884 0.05
1960 1 2 591.434 0.05
1961 1 2 555.562 0.05
1962 1 2 600.483 0.05
1963 1 2 547.703 0.05
1964 1 2 522.269 0.05
1965 1 2 571.444 0.05
1966 1 2 549.515 0.05
1967 1 2 537.715 0.05
1968 1 2 519.833 0.05
1969 1 2 564.952 0.05
1970 1 2 507.692 0.05
1971 1 2 505.9 0.05
1972 1 2 538.688 0.05
1973 1 2 493.809 0.05
1974 1 2 530.306 0.05
1975 1 2 539.017 0.05
1976 1 2 503.379 0.05
1977 1 2 518.333 0.05
1978 1 2 522.434 0.05
1979 1 2 531.624 0.05
1980 1 2 481.996 0.05
1981 1 2 499.722 0.05
1982 1 2 550.601 0.05
1983 1 2 531.63 0.05
1984 1 2 553.103 0.05
1985 1 2 530.345 0.05
1986 1 2 495.571 0.05
1987 1 2 498.867 0.05
1988 1 2 488.289 0.05
1989 1 2 520.279 0.05
1990 1 2 497.896 0.05
1991 1 2 558.381 0.05
1992 1 2 504.547 0.05
1993 1 2 578.279 0.05
1994 1 2 535.987 0.05
1995 1 2 534.871 0.05
1996 1 2 578.132 0.05
1997 1 2 558.027 0.05
1998 1 2 482.296 0.05
1999 1 2 475.339 0.05
2000 1 2 450.204 0.05
2001 1 2 483.724 0.05
2002 1 2 486.818 0.05
2003 1 2 510.166 0.05
2004 1 2 537.127 0.05
2005 1 2 444.662 0.05
2006 1 2 468.932 0.05
2007 1 2 506.39 0.05
2008 1 2 686.374 0.05
2009 1 2 575.607 0.05
2010 1 2 616.368 0.05
2011 1 2 550.363 0.05
2012 1 2 599.425 0.05
2013 1 2 517.283 0.05
2014 1 2 543.293 0.05
2015 1 2 581.574 0.05
2016 1 2 528.255 0.05
2017 1 2 532.987 0.05
-999 1 3 0 0.01
1950 1 3 1765.54 0.15
1951 1 3 1809.82 0.15
1952 1 3 1492.19 0.15
1953 1 3 1316.04 0.15
1954 1 3 1577.06 0.15
1955 1 3 1450.59 0.15
1956 1 3 1900.29 0.15
1957 1 3 1118.69 0.15
1958 1 3 1583.6 0.15
1959 1 3 1159.94 0.15
1960 1 3 1234.48 0.15
1961 1 3 941.859 0.15
1962 1 3 1404.85 0.15
1963 1 3 1505.59 0.15
1964 1 3 1362.8 0.15
1965 1 3 1470.52 0.15
1966 1 3 1750.77 0.15
1967 1 3 1296.49 0.15
1968 1 3 1013.1 0.15
1969 1 3 1156.64 0.15
1970 1 3 1131.81 0.15
1971 1 3 1181.83 0.15
1972 1 3 1256.09 0.15
1973 1 3 1245.89 0.15
1974 1 3 1628.82 0.15
1975 1 3 1288 0.15
1976 1 3 1448.94 0.15
1977 1 3 1463.27 0.15
1978 1 3 1609.72 0.15
1979 1 3 1394.08 0.15
1980 1 3 1434.1 0.15
1981 1 3 1434.88 0.15
1982 1 3 1362.57 0.15
1983 1 3 1260.42 0.15
1984 1 3 1348.75 0.15
1985 1 3 1567.46 0.15
1986 1 3 1400.93 0.15
1987 1 3 1263 0.15
1988 1 3 1334.71 0.15
1989 1 3 1405.12 0.15
1990 1 3 879.007 0.15
1991 1 3 1325.56 0.15
1992 1 3 1214.16 0.15
1993 1 3 1219.14 0.15
1994 1 3 1368.12 0.15
1995 1 3 1236.8 0.15
1996 1 3 1128.27 0.15
1997 1 3 765.812 0.15
1998 1 3 647.018 0.15
1999 1 3 598.166 0.15
2000 1 3 904.09 0.15
2001 1 3 848.512 0.15
2002 1 3 942.763 0.15
2003 1 3 1071.45 0.15
2004 1 3 1209.59 0.15
2005 1 3 623.94 0.15
2006 1 3 582.345 0.15
2007 1 3 609.463 0.15
2008 1 3 860.697 0.15
2009 1 3 796.838 0.15
2010 1 3 886.057 0.15
2011 1 3 706.014 0.15
2012 1 3 980.93 0.15
2013 1 3 1015.37 0.15
2014 1 3 948.015 0.15
2015 1 3 791.996 0.15
2016 1 3 771.425 0.15
2017 1 3 992.069 0.15
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
1993 7 1 1.41379 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 0.8803 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.841991 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.905557 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 0.932576 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 0.914897 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.980123 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 1.73146 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 0.896432 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.13992 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.01173 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.23107 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.992192 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.646289 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 0.971269 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 0.849706 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 1.03695 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.805133 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 1.00373 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 0.93399 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.08607 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 0.928287 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 0.974426 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.52147 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 1.06202 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 0.978083 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.960666 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.813473 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.21526 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.1705 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.71638 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.1523 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.98369 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.14391 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.09292 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.09556 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 0.904328 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.07644 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 1.31335 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.58378 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.853274 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.675794 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.655543 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.73982 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.630968 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.762249 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.868835 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.412635 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.424326 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.809846 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.640997 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.659098 0.225 #_orig_obs: 1.0235 REC
2010 7 3 1.1408 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.747792 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.677164 0.185 #_orig_obs: 0.8812 REC
2013 7 3 1.01007 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.760589 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.821233 0.156 #_orig_obs: 0.9581 REC
2016 7 3 1.03535 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 1.05625 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.186489 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.273248 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.228923 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.208584 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.241169 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.228781 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.278261 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.163462 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.231281 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.179543 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.315497 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.214831 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.17603 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.166964 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.196052 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.200563 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.218843 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.217626 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.133267 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.177044 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.207857 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.158691 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.192811 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.140823 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.188759 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.247439 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.159343 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.170002 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.224768 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.194117 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.151089 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.185357 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.170928 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.137875 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.258602 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.274197 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.245231 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.184928 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.262847 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.183267 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.124812 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.237569 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.178347 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.169778 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.196878 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.189719 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.186972 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.172884 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.202776 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.201339 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.189147 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.193946 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.174204 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.19728 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.157596 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.303488 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.267949 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.221773 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.117434 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.226563 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.296197 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.18207 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.215975 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.145174 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.158003 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.174566 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.253835 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.173024 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 1.07019 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.665724 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.00803 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.808642 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 1.34428 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.725682 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 0.859638 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 0.952356 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 1.08739 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.833705 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.912301 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.945895 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.773083 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.13251 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.784388 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.583549 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.828046 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.13359 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.11589 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 1.29742 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.2042 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.15562 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.727476 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 1.08053 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.937494 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.994205 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.945097 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 1.08259 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 1.13514 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 0.894799 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.959278 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 1.2247 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 0.803177 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 0.967014 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 1.35327 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 0.830261 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.592341 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.840293 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.979376 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 1.35627 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.724575 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.905302 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.740459 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.756841 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.880043 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.726548 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.948725 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.01527 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.667401 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 1.15801 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 1.44556 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 1.17032 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 1.08413 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.1543 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 1.06933 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 1.09426 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 1.18849 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.934939 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.896677 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.65427 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.653526 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 0.822977 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.979903 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 1.01122 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.13084 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 0.802556 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 0.674853 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.08053 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.17137 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 1.22385 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.785314 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 1.08083 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.904035 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.798686 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.849905 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.803955 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 0.910865 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 1.14638 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.984992 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.13483 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.921926 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.14937 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 1.0464 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 0.764339 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 1.06749 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 1.09342 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 1.19916 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 1.22849 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.684226 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.692108 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 1.06286 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 0.885395 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.3463 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 1.19056 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 0.97852 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.18693 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.04631 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 1.01071 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 1.00844 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 0.910703 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.00432 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.871475 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.986244 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 1.01621 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.06406 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.25305 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 1.41706 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.77701 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.714861 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.630428 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.64247 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.559891 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.35284 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 1.0371 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.00877 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  13.8827 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  14.3934 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  17.1419 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  19.2885 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  22.4438 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  19.4524 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  18.3966 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  31.4618 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  12.8028 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  15.7483 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  15.4943 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  19.3755 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  230.419 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  345.651 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  381.79 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  80.8619 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  107.357 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  96.7875 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  113.456 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  72.4734 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  97.9346 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  109.372 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  102.77 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  76.956 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  109.253 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  7.18644 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  9.62339 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  7.21035 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  11.9034 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  7.14211 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  8.49792 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  7.54691 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  10.0777 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  7.222 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  11.3051 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  10.1268 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  14.2947 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  95.5135 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  143.518 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  104.693 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  54.2236 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  39.541 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  38.9169 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  59.5778 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  53.1412 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  38.0464 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  40.0123 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  23.668 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  36.3012 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  41.9543 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  5.08762 0.3 #_orig_obs: 1 #_ REC
1983 7 3  9.30611 0.3 #_orig_obs: 53 #_ REC
1984 7 3  15.5421 0.3 #_orig_obs: 25 #_ REC
1985 7 3  13.9759 0.3 #_orig_obs: 24 #_ REC
1986 7 3  14.4114 0.3 #_orig_obs: 85 #_ REC
1987 7 3  20.7771 0.3 #_orig_obs: 90 #_ REC
1988 7 3  13.4532 0.3 #_orig_obs: 356 #_ REC
1989 7 3  8.18714 0.3 #_orig_obs: 174 #_ REC
1990 7 3  167.191 0.3 #_orig_obs: 145 #_ REC
1991 7 3  299.589 0.3 #_orig_obs: 319 #_ REC
1992 7 3  132.751 0.3 #_orig_obs: 281 #_ REC
1993 7 3  275.128 0.3 #_orig_obs: 561 #_ REC
1994 7 3  206.4 0.3 #_orig_obs: 172 #_ REC
1995 7 3  210.395 0.3 #_orig_obs: 567 #_ REC
1996 7 3  140.237 0.3 #_orig_obs: 205 #_ REC
1997 7 3  491.373 0.3 #_orig_obs: 57 #_ REC
1998 7 3  505.39 0.3 #_orig_obs: 46 #_ REC
1999 7 3  457.199 0.3 #_orig_obs: 145 #_ REC
2000 7 3  394.599 0.3 #_orig_obs: 61 #_ REC
2001 7 3  702.546 0.3 #_orig_obs: 127 #_ REC
2002 7 3  525.602 0.3 #_orig_obs: 290 #_ REC
2003 7 3  641.262 0.3 #_orig_obs: 309 #_ REC
2004 7 3  907.151 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1202.56 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1479.43 0.3 #_orig_obs: 229 #_ REC
2007 7 3  899.643 0.3 #_orig_obs: 194 #_ REC
2008 7 3  646.232 0.3 #_orig_obs: 161 #_ REC
2009 7 3  556.405 0.3 #_orig_obs: 211 #_ REC
2010 7 3  737.305 0.3 #_orig_obs: 84 #_ REC
2011 7 3  499.818 0.3 #_orig_obs: 168 #_ REC
2012 7 3  393.784 0.3 #_orig_obs: 210 #_ REC
2013 7 3  426.11 0.3 #_orig_obs: 477 #_ REC
2014 7 3  468.306 0.3 #_orig_obs: 394 #_ REC
2015 7 3  740.998 0.3 #_orig_obs: 291 #_ REC
2016 7 3  654.553 0.3 #_orig_obs: 329 #_ REC
2017 7 3  824.804 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  920.185 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  1017.24 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  1017.24 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  1017.24 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  1017.24 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  1017.24 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  1017.24 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  1017.24 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  1017.24 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  1017.24 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  1017.24 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  1017.24 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  1017.24 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  1017.24 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  1017.24 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  1017.24 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  1017.24 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  1017.24 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  1017.24 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  1017.24 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  1017.24 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  1017.24 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  1017.24 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  1017.24 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  1017.24 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  1017.24 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  1017.24 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  1017.24 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  1017.24 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  1017.24 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  1017.24 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  1017.24 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  1017.24 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  1017.24 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  1017.24 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  1017.24 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  1017.24 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  1017.24 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  1017.24 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  1017.24 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  1017.24 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  1017.24 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  1017.24 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  1017.24 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  1017.24 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  1017.24 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 0 4 9 3 0 1 0 0 0 0
 2004 7 8 0 0 6  0 0 0 1 0 3 1 1 0 0 0 0
 2005 7 8 0 0 38  0 0 3 4 15 11 3 1 1 0 0 0
 2006 7 8 0 0 18  0 0 1 2 5 6 1 3 0 0 0 0
 2007 7 8 0 0 11  0 0 1 0 2 3 4 1 0 0 0 0
 2008 7 8 0 0 8  0 0 0 2 5 1 0 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 4 9 9 0 1 1 1 0 0
 2010 7 8 0 0 32  0 0 1 3 9 7 1 8 3 0 0 0
 2011 7 8 0 0 47  0 3 3 4 17 13 4 2 1 0 0 0
 2012 7 8 0 0 39  0 1 1 3 13 12 4 4 1 0 0 0
 2013 7 8 0 0 100  0 0 6 16 40 21 9 6 2 0 0 0
 2014 7 8 0 0 100  0 0 19 14 17 20 20 6 3 1 0 0
 2015 7 8 0 0 74  0 1 7 13 23 18 10 1 1 0 0 0
 2016 7 8 0 0 32  0 1 3 8 4 8 4 2 2 0 0 0
 2017 7 8 0 0 100  0 0 5 16 39 25 8 6 1 0 0 0
 2009 7 9 0 0 35  0 1 8 15 11 0 0 0 0 0 0 0
 2010 7 9 0 0 100  0 5 19 44 29 3 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 3 8 6 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 0 0 9 1 1 0 0 0 0 0 0
 2013 7 9 0 0 37  0 4 8 17 7 1 0 0 0 0 0 0
 2014 7 9 0 0 69  0 5 20 32 12 0 0 0 0 0 0 0
 2015 7 9 0 0 37  0 0 7 22 8 0 0 0 0 0 0 0
 2016 7 9 0 0 38  0 2 13 16 5 2 0 0 0 0 0 0
 2017 7 9 0 0 100  0 1 17 44 36 2 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 3 0 0 0 0 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 1 1 2 0 0 2 0 0 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 1 2 1 1 0 1 2 0 0 0 0 0 0
2001  7 1  0 2 1 -1 -1 23  0 3 7 3 1 4 0 1 1 0 0 1 0 2
2002  7 1  0 2 1 -1 -1 100  1 14 28 20 8 8 5 6 1 3 1 2 0 3
2003  7 1  0 2 1 -1 -1 23  1 0 5 7 3 0 4 0 1 0 0 0 0 2
2004  7 1  0 2 1 -1 -1 33  0 3 8 3 9 5 2 1 1 0 0 0 0 1
2005  7 1  0 2 1 -1 -1 100  0 9 9 20 20 13 10 0 3 6 1 0 5 4
2006  7 1  0 2 1 -1 -1 59  0 1 12 17 7 7 4 2 3 2 0 1 1 2
2007  7 1  0 2 1 -1 -1 54  0 4 2 13 6 7 5 5 4 1 2 1 2 2
2008  7 1  0 2 1 -1 -1 100  0 3 14 8 30 11 12 4 2 3 1 3 1 8
2009  7 1  0 2 1 -1 -1 100  0 8 16 18 15 14 5 6 11 2 0 0 1 4
2010  7 1  0 2 1 -1 -1 32  0 1 8 8 4 0 3 0 3 1 2 0 0 2
2011  7 1  0 2 1 -1 -1 87  0 5 23 12 8 6 5 12 5 1 4 2 2 2
2012  7 1  0 2 1 -1 -1 99  0 6 16 23 6 10 8 4 11 2 4 1 5 3
2013  7 1  0 2 1 -1 -1 55  0 1 15 9 9 4 4 5 1 0 2 2 1 2
2014  7 1  0 2 1 -1 -1 79  0 5 14 13 8 9 6 4 7 2 1 2 3 5
2015  7 1  0 2 1 -1 -1 100  1 9 23 18 11 7 7 5 1 3 3 4 2 6
2016  7 1  0 2 1 -1 -1 100  0 16 20 11 13 8 6 12 2 4 3 1 0 4
2017  7 1  0 2 1 -1 -1 100  0 6 43 10 12 3 4 2 3 3 1 6 0 7
1994  7 2  0 2 1 -1 -1 8  0 0 0 4 2 0 1 0 0 0 1 0 0 0
1995  7 2  0 2 1 -1 -1 7  0 0 0 1 2 1 2 0 1 0 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 10 16 12 6 7 3 1 4 1 2 1 1
2001  7 2  0 2 1 -1 -1 48  0 3 2 6 11 4 5 9 3 0 2 0 1 2
2002  7 2  0 2 1 -1 -1 34  0 6 3 9 1 4 3 1 2 1 1 0 3 0
2003  7 2  0 2 1 -1 -1 30  0 2 2 9 5 1 3 1 2 3 0 0 1 1
2004  7 2  0 2 1 -1 -1 100  1 1 8 15 28 15 6 7 0 3 5 1 3 7
2005  7 2  0 2 1 -1 -1 21  0 0 1 3 5 7 3 0 1 1 0 0 0 0
2006  7 2  0 2 1 -1 -1 16  0 0 2 3 5 2 0 1 0 1 0 0 0 2
2007  7 2  0 2 1 -1 -1 100  0 0 4 24 13 17 12 8 8 4 4 0 1 5
2008  7 2  0 2 1 -1 -1 100  0 1 6 17 21 10 13 12 7 4 3 1 0 5
2009  7 2  0 2 1 -1 -1 100  0 3 9 9 11 24 12 11 8 0 4 2 5 2
2010  7 2  0 2 1 -1 -1 59  0 2 0 9 10 7 13 3 4 6 0 2 1 2
2011  7 2  0 2 1 -1 -1 100  0 2 10 12 15 10 8 16 7 6 5 3 0 6
2012  7 2  0 2 1 -1 -1 89  0 1 6 18 14 11 10 8 1 5 3 5 1 6
2013  7 2  0 2 1 -1 -1 48  0 1 8 7 10 4 3 4 2 2 1 2 0 4
2014  7 2  0 2 1 -1 -1 47  0 0 6 7 8 6 2 2 4 3 1 1 1 6
2015  7 2  0 2 1 -1 -1 23  0 0 4 3 6 1 2 2 1 1 2 1 0 0
2016  7 2  0 2 1 -1 -1 82  1 1 3 13 22 12 6 8 1 3 1 2 7 2
2017  7 2  0 2 1 -1 -1 89  0 2 16 7 19 12 8 7 4 5 2 1 0 6
1994  7 3  0 2 1 -1 -1 13  0 0 10 0 2 1 0 0 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 3 1 1 1 0 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  3 7 27 17 8 6 4 0 2 1 1 1 0 0
1997  7 3  0 2 1 -1 -1 15  0 1 2 4 4 3 1 0 0 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 2 3 1 2 2 2 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 3 6 3 5 4 2 1 0 0 1 0 0 0
2000  7 3  0 2 1 -1 -1 61  0 6 14 14 12 5 3 4 1 1 1 0 0 0
2001  7 3  0 2 1 -1 -1 7  0 0 2 0 1 1 2 1 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 2 4 4 1 1 2 1 0 0 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 3 5 5 5 0 0 0 0 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 2 1 0 1 0 0 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 2 5 17 16 1 7 2 3 1 0 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 3 23 19 21 9 7 5 1 5 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 6 7 35 18 20 7 2 2 1 0 1 0 1
2008  7 3  0 2 1 -1 -1 42  0 3 5 5 14 7 6 1 1 0 0 0 0 0
2009  7 3  0 2 1 -1 -1 100  0 7 21 12 16 26 6 4 2 3 2 1 0 0
2010  7 3  0 2 1 -1 -1 20  0 3 3 6 4 0 4 0 0 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 4 21 11 17 7 12 2 2 2 0 0 0 0
2012  7 3  0 2 1 -1 -1 100  0 10 24 28 13 12 4 3 3 1 1 1 0 0
2013  7 3  0 2 1 -1 -1 100  0 7 17 27 19 10 7 3 2 3 2 2 1 0
2014  7 3  0 2 1 -1 -1 100  1 8 24 26 15 10 4 5 6 0 1 0 0 0
2015  7 3  0 2 1 -1 -1 46  0 2 9 14 7 3 6 3 0 2 0 0 0 0
2016  7 3  0 2 1 -1 -1 100  1 17 21 14 15 19 6 1 1 3 1 0 1 0
2017  7 3  0 2 1 -1 -1 100  2 2 49 15 13 6 8 2 2 1 0 0 0 0
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

