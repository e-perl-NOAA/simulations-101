#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:05 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403945 first rand#: 0.344203
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
1950 1 1 0.978442 0.05
1951 1 1 1.91689 0.05
1952 1 1 2.83294 0.05
1953 1 1 3.81843 0.05
1954 1 1 5.13389 0.05
1955 1 1 5.84935 0.05
1956 1 1 6.53924 0.05
1957 1 1 7.85454 0.05
1958 1 1 9.36874 0.05
1959 1 1 9.58666 0.05
1960 1 1 10.7929 0.05
1961 1 1 12.099 0.05
1962 1 1 12.6466 0.05
1963 1 1 12.9468 0.05
1964 1 1 15.0577 0.05
1965 1 1 15.8704 0.05
1966 1 1 7.87949 0.05
1967 1 1 15.2406 0.05
1968 1 1 30.8219 0.05
1969 1 1 46.3988 0.05
1970 1 1 36.308 0.05
1971 1 1 38.614 0.05
1972 1 1 36.1827 0.05
1973 1 1 64.8539 0.05
1974 1 1 58.3863 0.05
1975 1 1 137.292 0.05
1976 1 1 113.841 0.05
1977 1 1 157.596 0.05
1978 1 1 124.884 0.05
1979 1 1 96.9454 0.05
1980 1 1 73.0286 0.05
1981 1 1 108.821 0.05
1982 1 1 110.261 0.05
1983 1 1 173.835 0.05
1984 1 1 254.693 0.05
1985 1 1 310.971 0.05
1986 1 1 312.375 0.05
1987 1 1 206.785 0.05
1988 1 1 234.441 0.05
1989 1 1 211.81 0.05
1990 1 1 497.322 0.05
1991 1 1 441.529 0.05
1992 1 1 492.417 0.05
1993 1 1 676.678 0.05
1994 1 1 683.378 0.05
1995 1 1 694.818 0.05
1996 1 1 495.868 0.05
1997 1 1 486.673 0.05
1998 1 1 378.332 0.05
1999 1 1 422.504 0.05
2000 1 1 304.037 0.05
2001 1 1 357.409 0.05
2002 1 1 434.539 0.05
2003 1 1 506.841 0.05
2004 1 1 411.882 0.05
2005 1 1 452.813 0.05
2006 1 1 501.964 0.05
2007 1 1 525.695 0.05
2008 1 1 822.553 0.05
2009 1 1 1228.74 0.05
2010 1 1 576.938 0.05
2011 1 1 1034.5 0.05
2012 1 1 747.706 0.05
2013 1 1 395.242 0.05
2014 1 1 525.197 0.05
2015 1 1 294.234 0.05
2016 1 1 390.509 0.05
2017 1 1 432.103 0.05
-999 1 2 0 0.01
1950 1 2 0.753206 0.05
1951 1 2 1.52479 0.05
1952 1 2 2.15686 0.05
1953 1 2 2.7644 0.05
1954 1 2 3.74935 0.05
1955 1 2 4.51763 0.05
1956 1 2 5.02081 0.05
1957 1 2 5.64665 0.05
1958 1 2 6.67104 0.05
1959 1 2 7.80043 0.05
1960 1 2 8.46946 0.05
1961 1 2 9.98665 0.05
1962 1 2 9.68858 0.05
1963 1 2 10.3985 0.05
1964 1 2 10.8818 0.05
1965 1 2 8.82222 0.05
1966 1 2 3.02173 0.05
1967 1 2 7.31846 0.05
1968 1 2 22.5632 0.05
1969 1 2 11.5424 0.05
1970 1 2 19.5457 0.05
1971 1 2 22.0949 0.05
1972 1 2 21.6587 0.05
1973 1 2 24.5939 0.05
1974 1 2 30.7017 0.05
1975 1 2 50.3551 0.05
1976 1 2 27.4573 0.05
1977 1 2 77.8693 0.05
1978 1 2 78.0901 0.05
1979 1 2 94.6097 0.05
1980 1 2 66.1096 0.05
1981 1 2 54.2651 0.05
1982 1 2 65.7424 0.05
1983 1 2 76.849 0.05
1984 1 2 373.844 0.05
1985 1 2 336.393 0.05
1986 1 2 448.803 0.05
1987 1 2 466.891 0.05
1988 1 2 442.806 0.05
1989 1 2 495.691 0.05
1990 1 2 437.281 0.05
1991 1 2 331.916 0.05
1992 1 2 480.42 0.05
1993 1 2 481.964 0.05
1994 1 2 437.488 0.05
1995 1 2 284.158 0.05
1996 1 2 283.086 0.05
1997 1 2 505.608 0.05
1998 1 2 392.526 0.05
1999 1 2 496.423 0.05
2000 1 2 329.437 0.05
2001 1 2 405.64 0.05
2002 1 2 470.536 0.05
2003 1 2 550.513 0.05
2004 1 2 586.354 0.05
2005 1 2 384.132 0.05
2006 1 2 294.304 0.05
2007 1 2 515.882 0.05
2008 1 2 457.874 0.05
2009 1 2 432.019 0.05
2010 1 2 331.886 0.05
2011 1 2 316.44 0.05
2012 1 2 402.301 0.05
2013 1 2 232.856 0.05
2014 1 2 289.058 0.05
2015 1 2 338.678 0.05
2016 1 2 356.273 0.05
2017 1 2 292.053 0.05
-999 1 3 0 0.01
1950 1 3 6.96764 0.15
1951 1 3 14.0907 0.15
1952 1 3 24.4064 0.15
1953 1 3 41.3967 0.15
1954 1 3 46.1299 0.15
1955 1 3 56.9641 0.15
1956 1 3 77.261 0.15
1957 1 3 80.3073 0.15
1958 1 3 70.2366 0.15
1959 1 3 100.807 0.15
1960 1 3 118.658 0.15
1961 1 3 102.091 0.15
1962 1 3 104.6 0.15
1963 1 3 156.379 0.15
1964 1 3 133.222 0.15
1965 1 3 193.362 0.15
1966 1 3 168.6 0.15
1967 1 3 167.562 0.15
1968 1 3 194.153 0.15
1969 1 3 159.828 0.15
1970 1 3 155.173 0.15
1971 1 3 199.657 0.15
1972 1 3 268.592 0.15
1973 1 3 234.421 0.15
1974 1 3 268.555 0.15
1975 1 3 208.974 0.15
1976 1 3 283.467 0.15
1977 1 3 243.69 0.15
1978 1 3 355.786 0.15
1979 1 3 272.941 0.15
1980 1 3 334.929 0.15
1981 1 3 298.896 0.15
1982 1 3 644.839 0.15
1983 1 3 226.135 0.15
1984 1 3 439.188 0.15
1985 1 3 633.87 0.15
1986 1 3 1174.67 0.15
1987 1 3 1351.59 0.15
1988 1 3 1850.5 0.15
1989 1 3 1134.05 0.15
1990 1 3 892.924 0.15
1991 1 3 1321.11 0.15
1992 1 3 1983.56 0.15
1993 1 3 1337.4 0.15
1994 1 3 1081.97 0.15
1995 1 3 1434.19 0.15
1996 1 3 568.86 0.15
1997 1 3 787.674 0.15
1998 1 3 325.333 0.15
1999 1 3 702.291 0.15
2000 1 3 388.722 0.15
2001 1 3 982.953 0.15
2002 1 3 1132.92 0.15
2003 1 3 1093.93 0.15
2004 1 3 995.719 0.15
2005 1 3 693.341 0.15
2006 1 3 726.528 0.15
2007 1 3 667.494 0.15
2008 1 3 750.284 0.15
2009 1 3 1169.91 0.15
2010 1 3 680.652 0.15
2011 1 3 1728.89 0.15
2012 1 3 889.647 0.15
2013 1 3 1591.54 0.15
2014 1 3 1485.94 0.15
2015 1 3 1467.89 0.15
2016 1 3 1925.06 0.15
2017 1 3 2181.11 0.15
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
1993 7 1 0.982747 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.08298 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 1.02293 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.824053 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 1.2535 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 0.893924 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.850112 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 0.887015 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.43841 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 0.928418 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.17633 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.55019 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 1.14882 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.749513 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 0.891097 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.01773 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 1.38226 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 1.06789 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 0.932001 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 1.17237 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.23108 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.36757 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 1.37015 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.34329 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 0.847962 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 0.699836 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.705725 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.932699 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.50495 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.99884 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 0.985641 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.56443 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 1.1897 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.21656 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.17131 0.1364 #_orig_obs: 1.382 REC
1993 7 3 0.933861 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.17569 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.34456 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 1.08566 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.86587 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.983862 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.811905 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.766807 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.760446 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 1.18179 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.860695 0.1792 #_orig_obs: 0.422 REC
2004 7 3 1.01577 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.54856 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.547079 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.564087 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 1.66558 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.638753 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.793869 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.867447 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.694598 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.779166 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.629932 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.527706 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.77777 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.750699 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.0399933 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.048875 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.0465364 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.0360415 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.0435834 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.0399967 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.0446653 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.0346839 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.0285003 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.0302461 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.039472 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.043552 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.0569503 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.0436622 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.0336101 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.0351259 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.0410452 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.0357093 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.0410647 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.0523011 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.0318062 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.0413769 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.0327913 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.0417635 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.0244281 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.0358221 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.0362486 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.0387889 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.0513683 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.0321424 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.03955 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.0407795 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.0488555 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.0503764 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.0306198 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.031658 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.0468291 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.0443611 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.0696108 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.0324708 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.0367666 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.0332318 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.0468753 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.0444542 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.0275544 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.035127 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.0271869 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.0504365 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.0471653 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.0648007 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.0455499 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.036012 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.0350906 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.0300509 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.0380218 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.0455272 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.0408713 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.0450844 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.0401903 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.0267141 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.045773 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.0519295 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.0376772 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.0306246 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.0331808 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.0368495 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.0460273 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.0393832 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 1.25009 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 1.00725 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.14803 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 2.08003 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 0.847212 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.992213 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 1.18143 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 0.81852 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.651476 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 1.01084 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.911808 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 1.05609 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 1.59487 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 0.755302 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 1.09061 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.881891 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 1.37359 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.28006 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.558 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 0.997524 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.07668 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 0.820395 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.939425 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 0.981827 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.654804 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.885914 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 1.09304 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.986955 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 0.896743 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 0.825078 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.684049 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.914667 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.31704 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 1.23215 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.950366 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 1.05353 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.961956 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 1.37942 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.943618 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 0.980797 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 1.10673 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.92794 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 1.19112 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 1.14465 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 1.02055 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.761412 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 1.24368 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.08097 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.992942 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 1.29755 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.995275 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 1.05325 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 1.0449 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.03122 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 0.967355 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.802102 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.874249 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.887041 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.885214 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.787374 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.77243 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 0.778669 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.715673 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.842837 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.1723 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.4241 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 1.24842 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.49643 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 0.670808 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.913966 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.932423 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 1.14611 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.945953 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 1.01808 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.944755 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 1.28112 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.41195 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.923783 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.787919 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.02853 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.876789 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 0.983223 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 1.03621 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 0.671171 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.617478 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 0.799392 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 0.947569 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.854601 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 1.2191 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.916052 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 1.35656 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.29217 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.00528 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.935489 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 1.14155 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.25648 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.51859 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 1.03237 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 1.13229 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 0.827669 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.14144 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.952326 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.881148 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.910398 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.14291 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.05923 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.855543 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.770947 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 1.22052 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.937661 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.730202 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 1.0446 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.09543 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 1.09961 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 0.978533 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  12.5001 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  13.863 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  12.5214 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  16.7321 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  13.2991 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  7.75193 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  13.9863 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  8.62514 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  5.46273 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  14.9068 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  12.4292 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  8.25251 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  137.668 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  158.838 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  399.721 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  84.8606 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  168.208 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  46.2463 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  92.2172 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  68.1107 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  63.7706 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  58.277 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  43.6107 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  30.7177 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  45.3284 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  5.96282 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  6.27772 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  6.58836 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  3.14478 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  7.9604 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  5.9588 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  4.74774 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  4.83767 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  4.26053 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  6.13248 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  12.2842 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  14.4868 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  106.465 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  93.6745 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  204.65 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  19.1389 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  22.4994 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  24.0128 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  11.5524 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  21.341 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  17.4685 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  19.5666 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  20.631 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  36.471 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  23.3228 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  4.23647 0.3 #_orig_obs: 1 #_ REC
1983 7 3  1.884 0.3 #_orig_obs: 53 #_ REC
1984 7 3  3.78595 0.3 #_orig_obs: 25 #_ REC
1985 7 3  5.42038 0.3 #_orig_obs: 24 #_ REC
1986 7 3  5.84385 0.3 #_orig_obs: 85 #_ REC
1987 7 3  6.86481 0.3 #_orig_obs: 90 #_ REC
1988 7 3  12.723 0.3 #_orig_obs: 356 #_ REC
1989 7 3  9.1275 0.3 #_orig_obs: 174 #_ REC
1990 7 3  337.536 0.3 #_orig_obs: 145 #_ REC
1991 7 3  530.059 0.3 #_orig_obs: 319 #_ REC
1992 7 3  519.013 0.3 #_orig_obs: 281 #_ REC
1993 7 3  239.216 0.3 #_orig_obs: 561 #_ REC
1994 7 3  198.399 0.3 #_orig_obs: 172 #_ REC
1995 7 3  114.864 0.3 #_orig_obs: 567 #_ REC
1996 7 3  162.431 0.3 #_orig_obs: 205 #_ REC
1997 7 3  418.891 0.3 #_orig_obs: 57 #_ REC
1998 7 3  190.175 0.3 #_orig_obs: 46 #_ REC
1999 7 3  469.316 0.3 #_orig_obs: 145 #_ REC
2000 7 3  243.671 0.3 #_orig_obs: 61 #_ REC
2001 7 3  1188.66 0.3 #_orig_obs: 127 #_ REC
2002 7 3  854.879 0.3 #_orig_obs: 290 #_ REC
2003 7 3  549.686 0.3 #_orig_obs: 309 #_ REC
2004 7 3  1016.61 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1548.04 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1061.04 0.3 #_orig_obs: 229 #_ REC
2007 7 3  1886.44 0.3 #_orig_obs: 194 #_ REC
2008 7 3  418.206 0.3 #_orig_obs: 161 #_ REC
2009 7 3  503.046 0.3 #_orig_obs: 211 #_ REC
2010 7 3  341.019 0.3 #_orig_obs: 84 #_ REC
2011 7 3  1155.53 0.3 #_orig_obs: 168 #_ REC
2012 7 3  380.543 0.3 #_orig_obs: 210 #_ REC
2013 7 3  1081.14 0.3 #_orig_obs: 477 #_ REC
2014 7 3  991.474 0.3 #_orig_obs: 394 #_ REC
2015 7 3  850.454 0.3 #_orig_obs: 291 #_ REC
2016 7 3  1450.09 0.3 #_orig_obs: 329 #_ REC
2017 7 3  2059.54 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  213.858 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  219.148 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  219.148 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  219.148 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  219.148 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  219.148 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  219.148 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  219.148 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  219.148 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  219.148 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  219.148 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  219.148 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  219.148 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  219.148 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  219.148 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  219.148 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  219.148 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  219.148 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  219.148 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  219.148 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  219.148 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  219.148 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  219.148 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  219.148 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  219.148 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  219.148 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  219.148 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  219.148 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  219.148 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  219.148 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  219.148 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  219.148 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  219.148 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  219.148 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  219.148 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  219.148 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  219.148 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  219.148 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  219.148 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  219.148 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  219.148 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  219.148 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  219.148 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  219.148 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  219.148 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  219.148 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 0 1 8 6 2 0 0 0 0 0
 2004 7 8 0 0 6  0 0 0 1 1 0 2 1 1 0 0 0
 2005 7 8 0 0 38  0 0 2 8 10 7 4 2 4 0 1 0
 2006 7 8 0 0 18  0 0 3 3 3 7 2 0 0 0 0 0
 2007 7 8 0 0 11  0 0 1 3 3 0 0 3 1 0 0 0
 2008 7 8 0 0 8  0 0 0 0 2 4 0 1 1 0 0 0
 2009 7 8 0 0 25  0 0 0 4 5 6 3 4 2 1 0 0
 2010 7 8 0 0 32  0 0 2 3 10 13 1 3 0 0 0 0
 2011 7 8 0 0 47  0 1 4 7 11 12 8 4 0 0 0 0
 2012 7 8 0 0 39  0 2 1 6 9 11 7 1 2 0 0 0
 2013 7 8 0 0 100  0 0 8 9 23 28 18 5 9 0 0 0
 2014 7 8 0 0 100  0 0 2 15 22 29 14 12 5 1 0 0
 2015 7 8 0 0 74  0 2 7 9 18 15 8 9 4 1 1 0
 2016 7 8 0 0 32  0 0 2 4 8 9 2 4 2 1 0 0
 2017 7 8 0 0 100  0 0 5 12 38 27 8 7 2 1 0 0
 2009 7 9 0 0 35  0 0 3 16 14 2 0 0 0 0 0 0
 2010 7 9 0 0 100  0 4 17 38 37 4 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 3 8 6 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 2 1 2 5 1 0 0 0 0 0 0
 2013 7 9 0 0 37  0 0 8 14 13 2 0 0 0 0 0 0
 2014 7 9 0 0 69  1 6 18 24 19 1 0 0 0 0 0 0
 2015 7 9 0 0 37  0 0 11 15 11 0 0 0 0 0 0 0
 2016 7 9 0 0 38  0 1 8 19 8 2 0 0 0 0 0 0
 2017 7 9 0 0 100  0 5 19 39 34 3 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 1 0 0 0 0 0 1 1 0 0
1998  7 1  0 2 1 -1 -1 6  0 0 3 2 0 0 1 0 0 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 1 1 3 0 2 0 0 0 1 0 0 0 0
2001  7 1  0 2 1 -1 -1 23  0 3 3 3 1 3 5 1 1 0 0 2 1 0
2002  7 1  0 2 1 -1 -1 100  0 7 32 7 14 6 4 6 8 3 2 2 2 7
2003  7 1  0 2 1 -1 -1 23  0 2 7 6 1 1 0 5 0 0 0 0 0 1
2004  7 1  0 2 1 -1 -1 33  0 1 7 3 3 3 4 2 2 1 5 0 2 0
2005  7 1  0 2 1 -1 -1 100  0 3 19 16 6 17 5 7 6 5 8 2 1 5
2006  7 1  0 2 1 -1 -1 59  0 2 1 8 16 9 6 1 3 3 2 1 4 3
2007  7 1  0 2 1 -1 -1 54  0 2 8 4 11 10 3 3 0 0 2 5 2 4
2008  7 1  0 2 1 -1 -1 100  0 5 11 21 8 12 14 6 13 0 1 0 2 7
2009  7 1  0 2 1 -1 -1 100  0 4 27 15 15 11 6 9 4 2 1 2 1 3
2010  7 1  0 2 1 -1 -1 32  0 3 3 6 3 6 4 1 2 1 1 0 0 2
2011  7 1  0 2 1 -1 -1 87  0 5 16 5 11 8 6 7 6 7 1 1 0 14
2012  7 1  0 2 1 -1 -1 99  0 9 17 8 16 10 8 6 6 7 2 1 3 6
2013  7 1  0 2 1 -1 -1 55  0 6 13 6 4 3 5 3 3 1 2 2 2 5
2014  7 1  0 2 1 -1 -1 79  0 3 11 15 10 5 3 6 5 3 5 5 5 3
2015  7 1  0 2 1 -1 -1 100  2 2 13 14 21 11 6 5 7 1 3 3 1 11
2016  7 1  0 2 1 -1 -1 100  0 13 9 12 14 9 7 13 4 0 2 2 2 13
2017  7 1  0 2 1 -1 -1 100  1 10 24 9 9 8 12 3 10 3 1 2 3 5
1994  7 2  0 2 1 -1 -1 8  0 0 2 1 0 1 0 2 1 0 0 0 0 1
1995  7 2  0 2 1 -1 -1 7  0 2 0 1 1 1 0 2 0 0 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 7 7 8 14 10 6 2 0 2 2 0 6
2001  7 2  0 2 1 -1 -1 48  0 3 3 7 6 4 6 3 9 2 0 2 1 2
2002  7 2  0 2 1 -1 -1 34  0 0 7 3 3 1 4 3 2 4 2 0 0 5
2003  7 2  0 2 1 -1 -1 30  0 1 0 8 2 6 0 1 3 2 3 1 1 2
2004  7 2  0 2 1 -1 -1 100  0 1 16 6 19 8 15 7 5 7 3 4 2 7
2005  7 2  0 2 1 -1 -1 21  0 0 2 2 2 6 0 2 1 1 2 1 1 1
2006  7 2  0 2 1 -1 -1 16  0 1 0 4 3 1 1 1 1 1 1 0 1 1
2007  7 2  0 2 1 -1 -1 100  0 1 5 14 17 16 5 18 3 4 3 3 2 9
2008  7 2  0 2 1 -1 -1 100  0 1 7 14 11 11 15 11 11 4 3 2 5 5
2009  7 2  0 2 1 -1 -1 100  0 1 6 12 17 13 11 13 4 13 2 1 2 5
2010  7 2  0 2 1 -1 -1 59  0 0 2 7 12 4 8 8 6 4 3 2 1 2
2011  7 2  0 2 1 -1 -1 100  0 1 8 12 16 7 16 9 5 7 4 4 1 10
2012  7 2  0 2 1 -1 -1 89  0 4 5 12 9 10 10 9 5 5 9 2 3 6
2013  7 2  0 2 1 -1 -1 48  0 0 7 6 8 2 5 4 5 2 2 3 2 2
2014  7 2  0 2 1 -1 -1 47  0 1 4 9 11 4 0 1 5 2 3 2 0 5
2015  7 2  0 2 1 -1 -1 23  0 0 3 1 3 3 1 3 3 0 1 0 0 5
2016  7 2  0 2 1 -1 -1 82  1 1 4 7 11 13 9 10 3 4 4 1 5 9
2017  7 2  0 2 1 -1 -1 89  0 2 7 15 11 9 11 6 6 0 4 2 3 13
1994  7 3  0 2 1 -1 -1 13  0 0 2 2 1 4 2 1 1 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 4 1 0 0 1 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 17 14 14 9 10 8 2 1 0 0 1 1 0
1997  7 3  0 2 1 -1 -1 15  0 3 5 2 4 0 0 1 0 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 1 0 3 3 2 3 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 0 6 9 6 0 0 4 0 0 0 0 0 0
2000  7 3  0 2 1 -1 -1 61  0 4 16 14 14 5 1 3 0 2 0 1 0 1
2001  7 3  0 2 1 -1 -1 7  0 1 2 2 2 0 0 0 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 0 4 1 2 5 1 0 1 0 1 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 2 1 8 2 3 1 1 0 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 1 1 1 1 0 0 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 3 10 13 9 9 4 4 0 1 1 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 8 13 19 16 11 17 2 3 4 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 1 24 13 24 22 6 6 1 1 1 0 0 1
2008  7 3  0 2 1 -1 -1 42  0 3 3 16 6 3 6 2 0 1 1 0 1 0
2009  7 3  0 2 1 -1 -1 100  0 2 23 21 22 11 6 7 2 3 1 1 1 0
2010  7 3  0 2 1 -1 -1 20  0 1 2 6 2 6 2 0 0 0 1 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 2 19 12 13 10 9 6 3 2 0 2 0 0
2012  7 3  0 2 1 -1 -1 100  0 7 28 22 10 11 7 9 1 1 3 0 0 1
2013  7 3  0 2 1 -1 -1 100  0 3 28 24 20 8 6 2 1 3 0 2 3 0
2014  7 3  0 2 1 -1 -1 100  1 6 18 27 23 12 7 3 1 0 2 0 0 0
2015  7 3  0 2 1 -1 -1 46  0 2 11 7 11 7 4 1 0 1 1 0 0 1
2016  7 3  0 2 1 -1 -1 100  1 14 11 21 21 10 10 4 2 2 1 0 1 2
2017  7 3  0 2 1 -1 -1 100  1 8 39 14 14 9 9 2 1 2 0 1 0 0
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

