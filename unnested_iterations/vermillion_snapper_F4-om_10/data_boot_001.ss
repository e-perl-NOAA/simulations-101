#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:16 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403956 first rand#: -1.77643
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
1950 1 1 1.03893 0.05
1951 1 1 1.98468 0.05
1952 1 1 2.89217 0.05
1953 1 1 3.84191 0.05
1954 1 1 4.67174 0.05
1955 1 1 6.0008 0.05
1956 1 1 6.7727 0.05
1957 1 1 8.18464 0.05
1958 1 1 8.48711 0.05
1959 1 1 10.1887 0.05
1960 1 1 10.4365 0.05
1961 1 1 10.962 0.05
1962 1 1 12.1317 0.05
1963 1 1 14.2536 0.05
1964 1 1 15.8639 0.05
1965 1 1 14.5582 0.05
1966 1 1 7.39981 0.05
1967 1 1 15.1731 0.05
1968 1 1 30.9839 0.05
1969 1 1 41.8706 0.05
1970 1 1 38.0425 0.05
1971 1 1 42.7105 0.05
1972 1 1 35.5137 0.05
1973 1 1 62.6357 0.05
1974 1 1 59.557 0.05
1975 1 1 124.323 0.05
1976 1 1 123.159 0.05
1977 1 1 145.013 0.05
1978 1 1 127.879 0.05
1979 1 1 100.964 0.05
1980 1 1 75.9562 0.05
1981 1 1 106.193 0.05
1982 1 1 105.753 0.05
1983 1 1 157.011 0.05
1984 1 1 251.69 0.05
1985 1 1 321.42 0.05
1986 1 1 319.258 0.05
1987 1 1 248.383 0.05
1988 1 1 207.137 0.05
1989 1 1 230.296 0.05
1990 1 1 487.731 0.05
1991 1 1 404.338 0.05
1992 1 1 592.499 0.05
1993 1 1 732.806 0.05
1994 1 1 706.287 0.05
1995 1 1 664.247 0.05
1996 1 1 508.223 0.05
1997 1 1 498.722 0.05
1998 1 1 351.497 0.05
1999 1 1 414.459 0.05
2000 1 1 334.773 0.05
2001 1 1 358.647 0.05
2002 1 1 434.333 0.05
2003 1 1 529.942 0.05
2004 1 1 462.509 0.05
2005 1 1 438.731 0.05
2006 1 1 523.219 0.05
2007 1 1 585.12 0.05
2008 1 1 763.958 0.05
2009 1 1 1337.83 0.05
2010 1 1 642.626 0.05
2011 1 1 1085.4 0.05
2012 1 1 792.619 0.05
2013 1 1 438.22 0.05
2014 1 1 489.296 0.05
2015 1 1 305.761 0.05
2016 1 1 397.808 0.05
2017 1 1 434.919 0.05
-999 1 2 0 0.01
1950 1 2 0.769794 0.05
1951 1 2 1.43869 0.05
1952 1 2 2.33171 0.05
1953 1 2 2.82912 0.05
1954 1 2 3.80181 0.05
1955 1 2 4.17521 0.05
1956 1 2 5.21483 0.05
1957 1 2 5.77245 0.05
1958 1 2 6.49646 0.05
1959 1 2 7.05221 0.05
1960 1 2 8.86254 0.05
1961 1 2 8.70896 0.05
1962 1 2 9.64326 0.05
1963 1 2 10.3314 0.05
1964 1 2 10.5581 0.05
1965 1 2 10.0598 0.05
1966 1 2 3.27207 0.05
1967 1 2 6.94319 0.05
1968 1 2 22.8609 0.05
1969 1 2 11.1994 0.05
1970 1 2 22.9613 0.05
1971 1 2 21.9785 0.05
1972 1 2 20.1587 0.05
1973 1 2 27.2235 0.05
1974 1 2 29.566 0.05
1975 1 2 45.1643 0.05
1976 1 2 27.8825 0.05
1977 1 2 89.425 0.05
1978 1 2 71.0355 0.05
1979 1 2 101.41 0.05
1980 1 2 68.5144 0.05
1981 1 2 51.1599 0.05
1982 1 2 62.7938 0.05
1983 1 2 71.9889 0.05
1984 1 2 401.509 0.05
1985 1 2 343.358 0.05
1986 1 2 429.963 0.05
1987 1 2 461.126 0.05
1988 1 2 419.907 0.05
1989 1 2 412.83 0.05
1990 1 2 432.701 0.05
1991 1 2 412.364 0.05
1992 1 2 454.876 0.05
1993 1 2 431.105 0.05
1994 1 2 470.85 0.05
1995 1 2 315.846 0.05
1996 1 2 277.918 0.05
1997 1 2 489.114 0.05
1998 1 2 430.652 0.05
1999 1 2 455.398 0.05
2000 1 2 336.746 0.05
2001 1 2 435.996 0.05
2002 1 2 428.078 0.05
2003 1 2 556.3 0.05
2004 1 2 557.456 0.05
2005 1 2 409.47 0.05
2006 1 2 281.999 0.05
2007 1 2 551.239 0.05
2008 1 2 457.36 0.05
2009 1 2 441.786 0.05
2010 1 2 358.892 0.05
2011 1 2 314.398 0.05
2012 1 2 387.835 0.05
2013 1 2 235.155 0.05
2014 1 2 298.14 0.05
2015 1 2 297.377 0.05
2016 1 2 346.285 0.05
2017 1 2 294.122 0.05
-999 1 3 0 0.01
1950 1 3 6.42587 0.15
1951 1 3 18.6518 0.15
1952 1 3 42.637 0.15
1953 1 3 29.5828 0.15
1954 1 3 40.7927 0.15
1955 1 3 53.6236 0.15
1956 1 3 70.8175 0.15
1957 1 3 78.1362 0.15
1958 1 3 97.5482 0.15
1959 1 3 98.5516 0.15
1960 1 3 117.245 0.15
1961 1 3 123.88 0.15
1962 1 3 145.168 0.15
1963 1 3 124.827 0.15
1964 1 3 132.272 0.15
1965 1 3 143.794 0.15
1966 1 3 193.891 0.15
1967 1 3 166.244 0.15
1968 1 3 207.203 0.15
1969 1 3 234.787 0.15
1970 1 3 179.139 0.15
1971 1 3 190.979 0.15
1972 1 3 213.365 0.15
1973 1 3 282.292 0.15
1974 1 3 287.461 0.15
1975 1 3 258.377 0.15
1976 1 3 228.26 0.15
1977 1 3 282.911 0.15
1978 1 3 224.473 0.15
1979 1 3 354.194 0.15
1980 1 3 343.124 0.15
1981 1 3 309.344 0.15
1982 1 3 895.48 0.15
1983 1 3 255.716 0.15
1984 1 3 395.777 0.15
1985 1 3 761.273 0.15
1986 1 3 1002.93 0.15
1987 1 3 1530.16 0.15
1988 1 3 1564.8 0.15
1989 1 3 973.556 0.15
1990 1 3 1392.7 0.15
1991 1 3 1959.47 0.15
1992 1 3 1911.81 0.15
1993 1 3 1166.47 0.15
1994 1 3 1257.28 0.15
1995 1 3 1212.22 0.15
1996 1 3 633.773 0.15
1997 1 3 750.617 0.15
1998 1 3 392.659 0.15
1999 1 3 716.008 0.15
2000 1 3 366.934 0.15
2001 1 3 1235 0.15
2002 1 3 1186.06 0.15
2003 1 3 1208.01 0.15
2004 1 3 991.09 0.15
2005 1 3 745.294 0.15
2006 1 3 796.048 0.15
2007 1 3 925.42 0.15
2008 1 3 886.627 0.15
2009 1 3 927.199 0.15
2010 1 3 704.884 0.15
2011 1 3 1535.02 0.15
2012 1 3 959.221 0.15
2013 1 3 1674.61 0.15
2014 1 3 1703.48 0.15
2015 1 3 1340.91 0.15
2016 1 3 2055.49 0.15
2017 1 3 2358.24 0.15
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
1993 7 1 0.598542 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.03843 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.755542 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.870696 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 1.05645 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 0.937799 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 1.03322 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 1.2492 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 0.911031 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.24244 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.1148 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.171 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 1.02678 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.499511 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 0.822812 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.09864 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 1.32006 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.893363 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 0.946098 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 0.751096 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 0.910345 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.04316 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 1.33835 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.03004 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 0.958307 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.04976 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.593116 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.869225 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.20344 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.05028 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 0.718272 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 0.939955 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 1.12708 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.13546 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 0.922513 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.16292 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 0.874775 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 0.932895 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.995781 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.565762 0.22 #_orig_obs: 0.2738 REC
1998 7 3 1.05901 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.807517 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.985026 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 1.01358 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.823219 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.842251 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.894789 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.507945 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.58064 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.476706 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.73585 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.846287 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.608971 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.735211 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.867841 0.185 #_orig_obs: 0.8812 REC
2013 7 3 1.19154 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.716239 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.931551 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.702232 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.616629 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.0330787 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.0267224 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.0361481 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.0451221 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.0364157 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.0458336 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.0329958 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.034673 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.0376946 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.048374 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.0271861 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.0413061 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.0424606 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.0423029 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.0310267 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.0402776 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.0361867 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.0351456 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.0294636 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.0320656 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.0334899 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.0456954 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.0415614 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.0410374 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.0328913 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.057313 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.0507281 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.0528502 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.0444657 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.0503496 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.0467337 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.0454159 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.0358162 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.0369151 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.0391652 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.0497524 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.0379679 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.0456028 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.0326367 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.0493072 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.0467238 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.0357087 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.0437426 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.0357045 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.04234 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.0361228 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.037719 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.045064 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.0399205 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.0297146 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.0427701 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.0417115 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.0373656 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.0429443 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.038779 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.0378837 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.0432473 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.0476748 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.0419557 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.0353275 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.0469009 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.038672 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.0374735 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.0410385 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.0396264 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.0438465 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.0372959 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.0348539 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 1.49032 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.922424 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.26885 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 1.04492 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 1.10292 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.949092 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 0.930875 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.06641 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.790857 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.743924 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 1.0681 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.905469 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.846814 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.62743 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 1.11198 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 1.01295 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.925247 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.33531 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 0.999425 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 1.03901 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.04189 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.0881 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.66269 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 1.09549 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.928346 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.856726 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.828352 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.826478 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 1.17819 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 1.16938 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.891023 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.700703 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.0558 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 1.29539 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 1.17195 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 0.79835 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.843801 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.951543 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.794745 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 0.828733 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.767298 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.761775 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 1.16452 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 1.23339 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 1.02387 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 1.25432 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 1.15776 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 0.942296 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.814765 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.814429 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.780948 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 1.07694 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 0.810632 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 0.825836 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 0.912441 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.709207 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.798909 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.883875 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.782615 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.969629 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.995847 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 1.03757 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.906499 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.641313 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.8516 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 0.918283 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 0.863189 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.21065 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.26171 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.867247 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.932041 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.760347 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 1.02661 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 1.17322 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 1.18984 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.980819 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.05678 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.813797 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.950546 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 0.619336 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.872089 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.03042 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.849133 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 0.783825 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.98448 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 0.825588 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 1.18957 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 1.08656 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.512627 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 1.76722 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 1.20045 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.25179 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.16546 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.960759 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 1.02228 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 0.772919 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.19916 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.849895 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 1.23825 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 1.04501 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.09202 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 1.07328 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.910989 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.815052 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.02749 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 0.95986 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 1.02711 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 1.0859 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.981479 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.837224 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 1.5092 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.62534 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 0.748252 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.717951 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 0.648797 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  19.6054 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  20.282 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  8.03712 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  9.17115 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  7.0868 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  10.866 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  5.26991 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  3.83072 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  8.75153 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  10.1615 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  14.0623 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  5.43416 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  160.817 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  136.244 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  181.713 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  73.7399 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  184.5 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  48.675 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  73.8746 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  44.6184 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  40.6245 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  88.4736 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  17.5055 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  32.7767 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  31.7241 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  8.55325 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  10.076 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  4.87647 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  6.86781 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  6.93743 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  6.53004 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  4.43122 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  4.78672 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  6.7793 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  6.50685 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  9.46217 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  6.47885 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  99.9389 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  77.1485 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  84.893 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  50.8782 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  47.3127 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  17.2586 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  16.2619 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  38.5597 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  10.4839 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  39.9532 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  16.2463 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  28.0467 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  24.3979 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  6.90682 0.3 #_orig_obs: 1 #_ REC
1983 7 3  2.90289 0.3 #_orig_obs: 53 #_ REC
1984 7 3  3.38318 0.3 #_orig_obs: 25 #_ REC
1985 7 3  4.68156 0.3 #_orig_obs: 24 #_ REC
1986 7 3  3.87829 0.3 #_orig_obs: 85 #_ REC
1987 7 3  7.34648 0.3 #_orig_obs: 90 #_ REC
1988 7 3  14.4022 0.3 #_orig_obs: 356 #_ REC
1989 7 3  9.76572 0.3 #_orig_obs: 174 #_ REC
1990 7 3  242.707 0.3 #_orig_obs: 145 #_ REC
1991 7 3  397.445 0.3 #_orig_obs: 319 #_ REC
1992 7 3  278.455 0.3 #_orig_obs: 281 #_ REC
1993 7 3  191.753 0.3 #_orig_obs: 561 #_ REC
1994 7 3  241.526 0.3 #_orig_obs: 172 #_ REC
1995 7 3  341.297 0.3 #_orig_obs: 567 #_ REC
1996 7 3  128.813 0.3 #_orig_obs: 205 #_ REC
1997 7 3  511.952 0.3 #_orig_obs: 57 #_ REC
1998 7 3  174.008 0.3 #_orig_obs: 46 #_ REC
1999 7 3  524.234 0.3 #_orig_obs: 145 #_ REC
2000 7 3  233.304 0.3 #_orig_obs: 61 #_ REC
2001 7 3  861.477 0.3 #_orig_obs: 127 #_ REC
2002 7 3  895.722 0.3 #_orig_obs: 290 #_ REC
2003 7 3  476.439 0.3 #_orig_obs: 309 #_ REC
2004 7 3  596.46 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1274.87 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1274.72 0.3 #_orig_obs: 229 #_ REC
2007 7 3  1093.77 0.3 #_orig_obs: 194 #_ REC
2008 7 3  456.762 0.3 #_orig_obs: 161 #_ REC
2009 7 3  1067.68 0.3 #_orig_obs: 211 #_ REC
2010 7 3  489.987 0.3 #_orig_obs: 84 #_ REC
2011 7 3  1829.28 0.3 #_orig_obs: 168 #_ REC
2012 7 3  760.866 0.3 #_orig_obs: 210 #_ REC
2013 7 3  1092.64 0.3 #_orig_obs: 477 #_ REC
2014 7 3  1248.68 0.3 #_orig_obs: 394 #_ REC
2015 7 3  674.304 0.3 #_orig_obs: 291 #_ REC
2016 7 3  759.235 0.3 #_orig_obs: 329 #_ REC
2017 7 3  1212.2 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  210.672 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  220.474 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  220.474 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  220.474 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  220.474 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  220.474 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  220.474 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  220.474 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  220.474 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  220.474 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  220.474 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  220.474 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  220.474 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  220.474 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  220.474 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  220.474 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  220.474 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  220.474 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  220.474 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  220.474 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  220.474 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  220.474 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  220.474 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  220.474 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  220.474 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  220.474 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  220.474 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  220.474 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  220.474 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  220.474 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  220.474 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  220.474 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  220.474 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  220.474 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  220.474 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  220.474 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  220.474 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  220.474 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  220.474 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  220.474 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  220.474 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  220.474 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  220.474 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  220.474 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  220.474 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  220.474 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 3 4 7 1 1 0 1 0 0 0
 2004 7 8 0 0 6  0 0 0 2 0 1 3 0 0 0 0 0
 2005 7 8 0 0 38  0 0 4 2 12 8 7 2 3 0 0 0
 2006 7 8 0 0 18  0 0 2 2 5 5 2 2 0 0 0 0
 2007 7 8 0 0 11  0 0 0 3 3 1 1 2 1 0 0 0
 2008 7 8 0 0 8  0 0 0 2 2 3 0 0 1 0 0 0
 2009 7 8 0 0 25  0 0 0 8 3 9 2 2 0 1 0 0
 2010 7 8 0 0 32  0 0 3 5 9 5 6 1 3 0 0 0
 2011 7 8 0 0 47  0 2 5 7 13 7 7 1 3 1 1 0
 2012 7 8 0 0 39  0 0 2 10 12 7 2 3 3 0 0 0
 2013 7 8 0 0 100  0 0 3 7 25 33 15 11 6 0 0 0
 2014 7 8 0 0 100  0 0 3 8 35 29 15 5 3 1 1 0
 2015 7 8 0 0 74  0 1 8 7 28 16 9 3 1 1 0 0
 2016 7 8 0 0 32  0 1 1 2 11 9 5 1 1 1 0 0
 2017 7 8 0 0 100  0 0 11 21 37 15 10 3 3 0 0 0
 2009 7 9 0 0 35  0 3 6 14 11 1 0 0 0 0 0 0
 2010 7 9 0 0 100  0 7 20 37 32 4 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 2 8 6 1 0 0 0 0 0 0
 2012 7 9 0 0 11  0 1 2 5 3 0 0 0 0 0 0 0
 2013 7 9 0 0 37  0 0 4 16 15 2 0 0 0 0 0 0
 2014 7 9 0 0 69  0 6 13 30 18 2 0 0 0 0 0 0
 2015 7 9 0 0 37  0 1 6 16 13 1 0 0 0 0 0 0
 2016 7 9 0 0 38  0 4 7 14 10 3 0 0 0 0 0 0
 2017 7 9 0 0 100  0 2 15 44 37 2 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 1 1 0 0 0 0 0 1 0 0
1998  7 1  0 2 1 -1 -1 6  0 1 1 1 0 2 0 0 0 0 0 1 0 0
2000  7 1  0 2 1 -1 -1 8  0 0 0 2 3 0 1 0 0 0 0 0 1 1
2001  7 1  0 2 1 -1 -1 23  0 2 3 3 6 2 1 0 2 1 0 1 1 1
2002  7 1  0 2 1 -1 -1 100  1 8 28 9 9 8 16 3 6 3 3 3 2 1
2003  7 1  0 2 1 -1 -1 23  0 4 4 6 4 1 3 0 0 0 1 0 0 0
2004  7 1  0 2 1 -1 -1 33  0 1 9 2 10 2 1 1 2 1 0 1 2 1
2005  7 1  0 2 1 -1 -1 100  0 4 8 11 11 24 7 5 7 7 4 3 2 7
2006  7 1  0 2 1 -1 -1 59  0 1 4 5 16 7 4 6 4 6 1 0 0 5
2007  7 1  0 2 1 -1 -1 54  0 0 9 10 3 6 2 9 7 0 4 0 2 2
2008  7 1  0 2 1 -1 -1 100  0 3 15 24 10 5 6 5 5 1 4 5 2 15
2009  7 1  0 2 1 -1 -1 100  0 9 17 18 8 10 6 6 4 5 3 4 4 6
2010  7 1  0 2 1 -1 -1 32  0 0 8 4 5 6 1 2 3 2 0 1 0 0
2011  7 1  0 2 1 -1 -1 87  0 2 15 13 15 6 11 3 5 8 2 3 0 4
2012  7 1  0 2 1 -1 -1 99  0 7 20 14 8 8 11 7 6 4 2 3 4 5
2013  7 1  0 2 1 -1 -1 55  0 5 20 5 5 4 4 2 2 2 2 3 0 1
2014  7 1  0 2 1 -1 -1 79  0 4 11 23 9 9 5 4 3 2 1 0 1 7
2015  7 1  0 2 1 -1 -1 100  0 1 16 22 26 12 8 3 3 1 1 1 1 5
2016  7 1  0 2 1 -1 -1 100  0 7 7 27 16 14 6 5 6 1 2 3 0 6
2017  7 1  0 2 1 -1 -1 100  0 4 17 9 17 8 16 5 2 4 5 5 2 6
1994  7 2  0 2 1 -1 -1 8  0 0 1 1 2 0 0 1 1 0 1 0 0 1
1995  7 2  0 2 1 -1 -1 7  0 0 0 0 0 2 1 0 0 4 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 5 11 14 10 5 4 4 1 1 1 2 6
2001  7 2  0 2 1 -1 -1 48  0 5 4 5 8 10 5 1 0 3 0 2 1 4
2002  7 2  0 2 1 -1 -1 34  0 0 4 5 5 6 3 0 3 1 1 0 2 4
2003  7 2  0 2 1 -1 -1 30  0 0 2 3 2 3 6 4 3 2 1 2 1 1
2004  7 2  0 2 1 -1 -1 100  0 1 10 5 19 26 8 12 6 3 2 4 1 3
2005  7 2  0 2 1 -1 -1 21  0 0 2 3 0 6 3 3 0 1 0 1 0 2
2006  7 2  0 2 1 -1 -1 16  0 0 1 1 2 2 3 2 0 0 2 0 0 3
2007  7 2  0 2 1 -1 -1 100  0 0 11 6 12 14 6 9 6 4 9 8 2 13
2008  7 2  0 2 1 -1 -1 100  0 0 2 18 8 11 14 4 16 5 3 4 7 8
2009  7 2  0 2 1 -1 -1 100  0 2 8 21 21 3 5 10 6 4 2 2 3 13
2010  7 2  0 2 1 -1 -1 59  0 0 2 7 8 10 3 3 6 2 3 4 3 8
2011  7 2  0 2 1 -1 -1 100  0 0 4 14 18 14 6 5 3 13 6 9 4 4
2012  7 2  0 2 1 -1 -1 89  0 2 7 11 16 9 10 8 8 1 4 2 2 9
2013  7 2  0 2 1 -1 -1 48  0 1 6 7 5 8 8 2 2 2 1 2 0 4
2014  7 2  0 2 1 -1 -1 47  0 0 5 13 7 8 2 0 2 0 2 1 1 6
2015  7 2  0 2 1 -1 -1 23  0 0 2 1 6 3 0 2 3 3 0 0 0 3
2016  7 2  0 2 1 -1 -1 82  0 2 6 15 13 18 7 4 3 1 3 2 1 7
2017  7 2  0 2 1 -1 -1 89  0 2 3 12 19 15 16 3 5 2 2 2 3 5
1994  7 3  0 2 1 -1 -1 13  0 0 2 5 4 1 1 0 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 2 3 1 0 0 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 6 31 8 13 4 5 6 0 1 0 0 3 0
1997  7 3  0 2 1 -1 -1 15  0 0 5 1 3 3 2 1 0 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 3 2 3 3 0 1 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 1 4 4 4 6 3 2 1 0 0 0 0 0
2000  7 3  0 2 1 -1 -1 61  0 5 12 11 9 11 7 4 1 0 0 0 1 0
2001  7 3  0 2 1 -1 -1 7  0 0 0 3 1 1 1 1 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 1 4 2 2 1 2 0 2 1 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 2 2 6 3 3 1 1 0 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 3 0 0 0 0 1 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 2 4 18 5 10 5 3 5 0 2 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 2 12 13 20 12 18 4 3 9 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 3 17 20 11 20 9 11 3 2 1 0 1 2
2008  7 3  0 2 1 -1 -1 42  1 2 5 10 2 7 8 1 4 0 0 1 1 0
2009  7 3  0 2 1 -1 -1 100  0 13 23 17 18 8 5 8 1 3 1 0 3 0
2010  7 3  0 2 1 -1 -1 20  0 3 3 4 3 4 2 0 1 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  1 4 14 20 15 8 9 1 1 2 1 2 0 0
2012  7 3  0 2 1 -1 -1 100  2 12 18 19 21 11 6 2 0 2 3 1 1 2
2013  7 3  0 2 1 -1 -1 100  1 9 39 13 11 7 12 2 2 0 2 1 1 0
2014  7 3  0 2 1 -1 -1 100  0 6 19 34 13 14 7 4 1 0 0 0 1 1
2015  7 3  0 2 1 -1 -1 46  0 1 13 10 9 5 4 1 1 2 0 0 0 0
2016  7 3  0 2 1 -1 -1 100  0 9 8 27 20 20 8 4 4 0 0 0 0 0
2017  7 3  0 2 1 -1 -1 100  0 7 20 14 17 19 13 6 1 1 0 0 1 1
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

