#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:18:54 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403934 first rand#: 0.273711
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
1950 1 1 1418.84 0.05
1951 1 1 1342.42 0.05
1952 1 1 1096.5 0.05
1953 1 1 1065.27 0.05
1954 1 1 1022.6 0.05
1955 1 1 971.85 0.05
1956 1 1 810.471 0.05
1957 1 1 744.086 0.05
1958 1 1 816.837 0.05
1959 1 1 818.91 0.05
1960 1 1 743.058 0.05
1961 1 1 787.983 0.05
1962 1 1 719.601 0.05
1963 1 1 735.096 0.05
1964 1 1 666.56 0.05
1965 1 1 758.881 0.05
1966 1 1 707.431 0.05
1967 1 1 711.47 0.05
1968 1 1 727.525 0.05
1969 1 1 631.006 0.05
1970 1 1 711.469 0.05
1971 1 1 729.226 0.05
1972 1 1 757.312 0.05
1973 1 1 684.094 0.05
1974 1 1 707.302 0.05
1975 1 1 709.926 0.05
1976 1 1 742.035 0.05
1977 1 1 708.321 0.05
1978 1 1 713.082 0.05
1979 1 1 682.282 0.05
1980 1 1 744.903 0.05
1981 1 1 683.696 0.05
1982 1 1 710.913 0.05
1983 1 1 721.92 0.05
1984 1 1 710.909 0.05
1985 1 1 676.388 0.05
1986 1 1 723.164 0.05
1987 1 1 797.576 0.05
1988 1 1 697.98 0.05
1989 1 1 720.097 0.05
1990 1 1 639.344 0.05
1991 1 1 716.188 0.05
1992 1 1 721.991 0.05
1993 1 1 738.908 0.05
1994 1 1 728.202 0.05
1995 1 1 702.055 0.05
1996 1 1 646.558 0.05
1997 1 1 698.552 0.05
1998 1 1 739.915 0.05
1999 1 1 800.039 0.05
2000 1 1 706.9 0.05
2001 1 1 791.375 0.05
2002 1 1 764.361 0.05
2003 1 1 783.609 0.05
2004 1 1 820.833 0.05
2005 1 1 634.216 0.05
2006 1 1 659.717 0.05
2007 1 1 655.292 0.05
2008 1 1 803.518 0.05
2009 1 1 741.789 0.05
2010 1 1 724.578 0.05
2011 1 1 675.95 0.05
2012 1 1 666.465 0.05
2013 1 1 642.056 0.05
2014 1 1 592.479 0.05
2015 1 1 633.82 0.05
2016 1 1 728.065 0.05
2017 1 1 747.913 0.05
-999 1 2 0 0.01
1950 1 2 1132.11 0.05
1951 1 2 1073.64 0.05
1952 1 2 921.503 0.05
1953 1 2 854.456 0.05
1954 1 2 749.762 0.05
1955 1 2 707.304 0.05
1956 1 2 649.202 0.05
1957 1 2 616.902 0.05
1958 1 2 616.032 0.05
1959 1 2 608.958 0.05
1960 1 2 560.028 0.05
1961 1 2 550.543 0.05
1962 1 2 587.982 0.05
1963 1 2 548.315 0.05
1964 1 2 533.831 0.05
1965 1 2 601.388 0.05
1966 1 2 530.561 0.05
1967 1 2 505.475 0.05
1968 1 2 506.973 0.05
1969 1 2 552.429 0.05
1970 1 2 560.402 0.05
1971 1 2 500.666 0.05
1972 1 2 551.318 0.05
1973 1 2 503.007 0.05
1974 1 2 504.645 0.05
1975 1 2 485.109 0.05
1976 1 2 551.468 0.05
1977 1 2 505.624 0.05
1978 1 2 478.175 0.05
1979 1 2 541.281 0.05
1980 1 2 515.265 0.05
1981 1 2 455.087 0.05
1982 1 2 522.92 0.05
1983 1 2 500.36 0.05
1984 1 2 551.558 0.05
1985 1 2 532.949 0.05
1986 1 2 523.608 0.05
1987 1 2 497.766 0.05
1988 1 2 535.43 0.05
1989 1 2 535.367 0.05
1990 1 2 504.143 0.05
1991 1 2 503.367 0.05
1992 1 2 534.795 0.05
1993 1 2 467.177 0.05
1994 1 2 519.507 0.05
1995 1 2 523.837 0.05
1996 1 2 527.187 0.05
1997 1 2 522.906 0.05
1998 1 2 559.766 0.05
1999 1 2 562.988 0.05
2000 1 2 601.356 0.05
2001 1 2 523.462 0.05
2002 1 2 550.014 0.05
2003 1 2 578.279 0.05
2004 1 2 603.686 0.05
2005 1 2 514.999 0.05
2006 1 2 537.063 0.05
2007 1 2 539.515 0.05
2008 1 2 639.901 0.05
2009 1 2 592.661 0.05
2010 1 2 554.431 0.05
2011 1 2 548.388 0.05
2012 1 2 575.131 0.05
2013 1 2 486.791 0.05
2014 1 2 544.227 0.05
2015 1 2 463.053 0.05
2016 1 2 479.42 0.05
2017 1 2 545.314 0.05
-999 1 3 0 0.01
1950 1 3 2599.65 0.15
1951 1 3 1706.66 0.15
1952 1 3 2164.97 0.15
1953 1 3 1512.9 0.15
1954 1 3 977.613 0.15
1955 1 3 1111.09 0.15
1956 1 3 1333.34 0.15
1957 1 3 1447.32 0.15
1958 1 3 1600.87 0.15
1959 1 3 1336.72 0.15
1960 1 3 1367.13 0.15
1961 1 3 1569.6 0.15
1962 1 3 1384.9 0.15
1963 1 3 1246.73 0.15
1964 1 3 1297.6 0.15
1965 1 3 1336.79 0.15
1966 1 3 1135.55 0.15
1967 1 3 1003.77 0.15
1968 1 3 1233.68 0.15
1969 1 3 1457.14 0.15
1970 1 3 1395.4 0.15
1971 1 3 1116.96 0.15
1972 1 3 1310.03 0.15
1973 1 3 1549.15 0.15
1974 1 3 1540.39 0.15
1975 1 3 1321.5 0.15
1976 1 3 1130.28 0.15
1977 1 3 1528.91 0.15
1978 1 3 1226.12 0.15
1979 1 3 1469.91 0.15
1980 1 3 777.242 0.15
1981 1 3 1248.77 0.15
1982 1 3 1528.4 0.15
1983 1 3 1102.98 0.15
1984 1 3 1382.09 0.15
1985 1 3 1601.8 0.15
1986 1 3 1394.16 0.15
1987 1 3 1225.18 0.15
1988 1 3 1221.19 0.15
1989 1 3 1194.87 0.15
1990 1 3 1082.64 0.15
1991 1 3 1286.16 0.15
1992 1 3 826.014 0.15
1993 1 3 1057.96 0.15
1994 1 3 1116.74 0.15
1995 1 3 1378.99 0.15
1996 1 3 883.735 0.15
1997 1 3 843.392 0.15
1998 1 3 907.009 0.15
1999 1 3 771.036 0.15
2000 1 3 903.668 0.15
2001 1 3 774.423 0.15
2002 1 3 1012.49 0.15
2003 1 3 1057.43 0.15
2004 1 3 877.028 0.15
2005 1 3 526.905 0.15
2006 1 3 659.756 0.15
2007 1 3 608.15 0.15
2008 1 3 1078.76 0.15
2009 1 3 1007.97 0.15
2010 1 3 1108.12 0.15
2011 1 3 660.349 0.15
2012 1 3 742.976 0.15
2013 1 3 693.831 0.15
2014 1 3 580.339 0.15
2015 1 3 767.03 0.15
2016 1 3 899.257 0.15
2017 1 3 1040.61 0.15
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
1993 7 1 0.615302 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.29276 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.824579 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.735691 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 0.582255 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 0.874267 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.98153 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 0.704902 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.08859 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.20601 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.42486 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.40025 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.686745 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.81575 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 1.2142 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.34979 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 0.814896 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.760762 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 0.778689 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 1.09346 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.14834 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 0.858113 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 1.19558 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.14219 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 0.737069 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.24279 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 1.17946 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.953899 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.33965 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.96774 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.08096 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.36176 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.745473 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.27433 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 0.928702 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.46266 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 0.694656 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.26519 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.968543 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.698292 0.22 #_orig_obs: 0.2738 REC
1998 7 3 1.01652 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.58496 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 1.44961 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.939145 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.778047 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.902759 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.93226 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.516887 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.568893 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.864612 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.982429 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 1.17245 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.588813 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.597831 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.800445 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.808046 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.553585 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.759418 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.873168 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.615365 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.245057 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.220125 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.199025 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.183561 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.186419 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.215718 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.213118 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.204202 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.224973 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.241829 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.161361 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.209665 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.162931 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.186544 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.228549 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.126049 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.154873 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.156193 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.173611 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.249953 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.211613 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.19165 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.185686 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.197483 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.148829 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.196647 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.207409 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.195266 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.178509 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.253144 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.210004 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.248348 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.164716 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.227277 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.148717 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.224828 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.138145 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.133296 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.188345 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.221563 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.176534 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.231972 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.211663 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.219564 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.159301 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.205685 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.206829 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.21901 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.221021 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.184478 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.208596 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.159433 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.205056 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.220895 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.19097 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.209031 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.150237 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.279017 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.185154 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.232756 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.173848 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.165356 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.172387 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.25057 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.266204 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.214983 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.270778 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.167293 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 0.953319 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.869677 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.32881 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.687456 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 0.943199 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.725322 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 1.14608 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.01597 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 1.47478 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.749702 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.881871 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 1.12248 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.944194 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.14624 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.926611 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.959945 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.908688 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.00866 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.1734 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 1.05162 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 0.873686 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.24407 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.879571 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 0.979295 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.807793 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.877943 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 1.06551 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.693304 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 0.712806 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 1.20761 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.989569 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 1.17284 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.02723 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 0.715226 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.81289 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 1.11865 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.88064 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.694061 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 1.14276 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 0.854497 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.977409 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 1.41211 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.857035 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 1.01633 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.906691 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 1.04471 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.916249 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.22054 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.82985 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.906071 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.820675 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 0.894804 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 0.931608 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.09154 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 1.28376 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.898853 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.735686 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.84512 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.663074 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.833696 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.608747 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 0.878262 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 1.11931 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 1.11279 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.07859 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 0.796772 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 1.28848 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 0.852528 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 0.962298 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.996637 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.926955 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 1.43339 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.910998 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.862715 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 1.17938 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 1.00629 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.09564 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 1.19535 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 1.05726 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 0.824131 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 1.18146 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.04898 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.960981 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 0.690556 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.802318 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 0.785728 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 1.26035 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.818324 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.869436 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 1.23018 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.896445 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 0.997706 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.65992 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 1.02065 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 1.02536 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.18228 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 0.978483 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 1.07284 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 1.02671 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 1.06146 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 0.993692 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 1.17573 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.93633 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.86832 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 0.969566 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.28479 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.750891 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.625414 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.578411 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.703495 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 1.49776 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 1.00807 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.03155 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.846756 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.1414 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  14.6603 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  15.1649 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  11.7832 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  16.2558 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  21.1892 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  20.2656 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  37.8543 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  15.7887 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  25.9026 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  20.983 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  24.4086 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  37.2228 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  203.522 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  275.212 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  164.663 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  109.203 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  66.6169 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  92.324 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  37.9643 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  59.7865 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  62.1263 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  69.6752 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  78.2643 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  95.9254 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  85.4598 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  8.59829 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  11.1228 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  10.2592 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  8.23643 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  13.3888 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  10.805 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  9.2716 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  6.76143 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  10.3738 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  13.005 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  16.1718 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  8.46991 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  157.105 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  138.296 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  138.723 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  35.0433 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  43.0334 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  56.8621 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  37.4228 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  21.0273 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  54.6915 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  44.0777 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  31.4212 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  29.0614 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  77.4223 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  8.3512 0.3 #_orig_obs: 1 #_ REC
1983 7 3  5.3284 0.3 #_orig_obs: 53 #_ REC
1984 7 3  8.67877 0.3 #_orig_obs: 25 #_ REC
1985 7 3  12.5524 0.3 #_orig_obs: 24 #_ REC
1986 7 3  11.1812 0.3 #_orig_obs: 85 #_ REC
1987 7 3  13.5833 0.3 #_orig_obs: 90 #_ REC
1988 7 3  5.45468 0.3 #_orig_obs: 356 #_ REC
1989 7 3  11.1314 0.3 #_orig_obs: 174 #_ REC
1990 7 3  132.856 0.3 #_orig_obs: 145 #_ REC
1991 7 3  235.152 0.3 #_orig_obs: 319 #_ REC
1992 7 3  213.75 0.3 #_orig_obs: 281 #_ REC
1993 7 3  148.039 0.3 #_orig_obs: 561 #_ REC
1994 7 3  151.056 0.3 #_orig_obs: 172 #_ REC
1995 7 3  258.859 0.3 #_orig_obs: 567 #_ REC
1996 7 3  267.441 0.3 #_orig_obs: 205 #_ REC
1997 7 3  521.615 0.3 #_orig_obs: 57 #_ REC
1998 7 3  434.02 0.3 #_orig_obs: 46 #_ REC
1999 7 3  508.961 0.3 #_orig_obs: 145 #_ REC
2000 7 3  617.821 0.3 #_orig_obs: 61 #_ REC
2001 7 3  473.046 0.3 #_orig_obs: 127 #_ REC
2002 7 3  435.871 0.3 #_orig_obs: 290 #_ REC
2003 7 3  337.001 0.3 #_orig_obs: 309 #_ REC
2004 7 3  848.077 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1366.53 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1131.08 0.3 #_orig_obs: 229 #_ REC
2007 7 3  456.362 0.3 #_orig_obs: 194 #_ REC
2008 7 3  441.282 0.3 #_orig_obs: 161 #_ REC
2009 7 3  599.316 0.3 #_orig_obs: 211 #_ REC
2010 7 3  479.371 0.3 #_orig_obs: 84 #_ REC
2011 7 3  533.326 0.3 #_orig_obs: 168 #_ REC
2012 7 3  339.324 0.3 #_orig_obs: 210 #_ REC
2013 7 3  644.135 0.3 #_orig_obs: 477 #_ REC
2014 7 3  586.63 0.3 #_orig_obs: 394 #_ REC
2015 7 3  883.333 0.3 #_orig_obs: 291 #_ REC
2016 7 3  529.376 0.3 #_orig_obs: 329 #_ REC
2017 7 3  398.492 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  948.166 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  1010.31 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  1010.31 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  1010.31 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  1010.31 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  1010.31 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  1010.31 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  1010.31 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  1010.31 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  1010.31 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  1010.31 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  1010.31 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  1010.31 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  1010.31 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  1010.31 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  1010.31 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  1010.31 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  1010.31 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  1010.31 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  1010.31 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  1010.31 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  1010.31 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  1010.31 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  1010.31 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  1010.31 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  1010.31 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  1010.31 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  1010.31 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  1010.31 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  1010.31 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  1010.31 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  1010.31 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  1010.31 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  1010.31 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  1010.31 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  1010.31 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  1010.31 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  1010.31 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  1010.31 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  1010.31 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  1010.31 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  1010.31 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  1010.31 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  1010.31 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  1010.31 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  1010.31 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 1 1 5 3 5 2 0 0 0 0
 2004 7 8 0 0 6  0 0 0 2 1 1 1 1 0 0 0 0
 2005 7 8 0 0 38  0 0 2 5 17 7 4 1 2 0 0 0
 2006 7 8 0 0 18  0 0 0 3 2 8 3 2 0 0 0 0
 2007 7 8 0 0 11  0 0 0 1 5 2 1 0 1 1 0 0
 2008 7 8 0 0 8  0 0 0 1 2 2 1 0 2 0 0 0
 2009 7 8 0 0 25  0 0 0 4 6 6 5 3 1 0 0 0
 2010 7 8 0 0 32  0 0 5 3 2 9 6 3 4 0 0 0
 2011 7 8 0 0 47  0 0 2 6 10 15 9 4 0 1 0 0
 2012 7 8 0 0 39  0 1 2 7 8 13 4 4 0 0 0 0
 2013 7 8 0 0 100  0 0 16 16 30 19 9 6 4 0 0 0
 2014 7 8 0 0 100  0 0 7 20 31 26 10 4 1 1 0 0
 2015 7 8 0 0 74  0 2 3 19 17 16 12 1 2 0 2 0
 2016 7 8 0 0 32  0 0 2 4 7 11 5 2 1 0 0 0
 2017 7 8 0 0 100  0 0 7 22 30 22 7 6 3 3 0 0
 2009 7 9 0 0 35  0 0 8 14 10 3 0 0 0 0 0 0
 2010 7 9 0 0 100  0 3 26 41 28 2 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 5 8 3 1 0 0 0 0 0 0
 2012 7 9 0 0 11  0 1 3 4 3 0 0 0 0 0 0 0
 2013 7 9 0 0 37  0 0 12 16 6 3 0 0 0 0 0 0
 2014 7 9 0 0 69  0 0 11 34 23 1 0 0 0 0 0 0
 2015 7 9 0 0 37  0 1 10 11 12 3 0 0 0 0 0 0
 2016 7 9 0 0 38  0 4 6 13 15 0 0 0 0 0 0 0
 2017 7 9 0 0 100  0 4 20 40 34 2 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 2 0 1 0 0 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 0 1 0 2 1 0 0 0 0 1 1 0 0
2000  7 1  0 2 1 -1 -1 8  0 1 0 1 0 1 1 0 1 0 0 1 1 1
2001  7 1  0 2 1 -1 -1 23  0 4 4 4 4 0 1 2 1 0 2 0 0 1
2002  7 1  0 2 1 -1 -1 100  0 15 20 21 9 8 9 6 2 3 0 3 1 3
2003  7 1  0 2 1 -1 -1 23  0 5 3 3 6 1 1 2 0 0 0 0 2 0
2004  7 1  0 2 1 -1 -1 33  0 6 8 5 5 2 2 2 2 0 1 0 0 0
2005  7 1  0 2 1 -1 -1 100  0 3 20 20 5 17 17 6 2 7 0 2 0 1
2006  7 1  0 2 1 -1 -1 59  0 3 11 14 13 4 3 5 1 3 0 0 0 2
2007  7 1  0 2 1 -1 -1 54  0 0 7 6 8 12 1 4 8 0 2 2 2 2
2008  7 1  0 2 1 -1 -1 100  0 3 9 21 21 11 11 9 6 5 0 0 0 4
2009  7 1  0 2 1 -1 -1 100  0 8 17 16 14 9 9 9 2 4 3 3 2 4
2010  7 1  0 2 1 -1 -1 32  0 1 7 5 3 3 3 3 2 1 1 0 2 1
2011  7 1  0 2 1 -1 -1 87  0 4 21 14 11 3 13 6 6 4 2 2 0 1
2012  7 1  0 2 1 -1 -1 99  0 6 11 21 14 13 6 11 3 2 3 1 5 3
2013  7 1  0 2 1 -1 -1 55  0 3 13 6 9 6 3 1 3 2 3 3 0 3
2014  7 1  0 2 1 -1 -1 79  0 7 13 17 2 15 9 3 1 1 2 5 3 1
2015  7 1  0 2 1 -1 -1 100  0 14 23 11 13 4 11 7 6 0 0 2 2 7
2016  7 1  0 2 1 -1 -1 100  0 2 32 24 7 14 1 5 7 0 2 1 1 4
2017  7 1  0 2 1 -1 -1 100  0 11 7 37 15 5 9 4 2 1 1 0 0 8
1994  7 2  0 2 1 -1 -1 8  0 0 1 3 0 1 0 2 0 0 0 0 0 1
1995  7 2  0 2 1 -1 -1 7  0 0 2 1 1 1 1 0 0 1 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 8 10 14 7 7 6 2 3 0 2 0 5
2001  7 2  0 2 1 -1 -1 48  0 0 8 6 6 10 3 4 1 3 1 2 2 2
2002  7 2  0 2 1 -1 -1 34  0 0 3 6 4 4 8 1 3 1 1 1 1 1
2003  7 2  0 2 1 -1 -1 30  0 1 1 6 9 3 3 3 0 3 0 0 0 1
2004  7 2  0 2 1 -1 -1 100  0 3 17 16 14 14 6 4 12 5 3 3 0 3
2005  7 2  0 2 1 -1 -1 21  0 0 2 5 0 2 4 2 3 1 0 0 1 1
2006  7 2  0 2 1 -1 -1 16  0 0 0 1 2 2 3 2 0 2 0 1 1 2
2007  7 2  0 2 1 -1 -1 100  0 1 4 6 29 19 7 8 9 6 2 3 2 4
2008  7 2  0 2 1 -1 -1 100  0 1 10 10 13 27 18 3 2 6 0 4 3 3
2009  7 2  0 2 1 -1 -1 100  0 2 7 14 11 12 13 15 5 7 4 1 2 7
2010  7 2  0 2 1 -1 -1 59  1 0 6 2 6 9 7 13 4 1 3 4 0 3
2011  7 2  0 2 1 -1 -1 100  0 0 8 10 22 17 8 9 5 7 1 2 3 8
2012  7 2  0 2 1 -1 -1 89  0 2 5 11 10 14 4 12 13 6 7 1 1 3
2013  7 2  0 2 1 -1 -1 48  0 2 3 3 14 6 4 6 2 1 3 1 1 2
2014  7 2  0 2 1 -1 -1 47  0 1 4 9 8 6 3 2 2 2 2 2 1 5
2015  7 2  0 2 1 -1 -1 23  0 0 4 2 3 2 6 3 1 0 2 0 0 0
2016  7 2  0 2 1 -1 -1 82  0 0 13 18 16 11 3 3 2 4 1 2 3 6
2017  7 2  0 2 1 -1 -1 89  0 1 1 18 21 15 10 6 2 2 3 4 1 5
1994  7 3  0 2 1 -1 -1 13  0 0 4 5 2 0 0 2 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 1 2 0 1 2 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  2 5 22 17 16 6 2 3 2 2 0 0 0 0
1997  7 3  0 2 1 -1 -1 15  0 2 3 1 2 4 1 1 1 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 0 8 2 1 0 1 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 1 6 10 1 3 3 0 0 0 0 0 1 0
2000  7 3  0 2 1 -1 -1 61  0 11 16 9 13 3 3 4 0 0 1 0 0 1
2001  7 3  0 2 1 -1 -1 7  0 1 3 0 0 1 0 1 0 1 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 1 2 3 1 1 3 1 2 1 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 1 5 5 2 0 4 2 0 0 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 2 0 0 2 0 0 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 0 16 14 10 7 6 1 0 0 0 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 2 13 26 18 9 9 9 2 5 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 5 9 17 27 24 8 6 2 1 0 0 0 1
2008  7 3  0 2 1 -1 -1 42  0 2 12 6 4 10 5 0 2 1 0 0 0 0
2009  7 3  0 2 1 -1 -1 100  0 1 18 14 16 23 14 7 3 1 0 2 1 0
2010  7 3  0 2 1 -1 -1 20  0 0 5 6 2 2 3 2 0 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  2 2 24 15 14 9 4 2 3 1 0 2 0 0
2012  7 3  0 2 1 -1 -1 100  1 9 26 23 15 7 6 3 3 5 1 0 0 1
2013  7 3  0 2 1 -1 -1 100  0 2 33 15 15 15 10 7 1 1 0 0 1 0
2014  7 3  0 2 1 -1 -1 100  1 16 18 25 10 11 6 5 0 2 0 3 3 0
2015  7 3  0 2 1 -1 -1 46  0 7 15 10 5 4 3 0 0 0 1 0 1 0
2016  7 3  0 2 1 -1 -1 100  0 4 41 23 8 11 5 3 2 2 0 0 0 1
2017  7 3  0 2 1 -1 -1 100  0 5 10 39 23 8 6 3 2 2 0 0 0 2
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

