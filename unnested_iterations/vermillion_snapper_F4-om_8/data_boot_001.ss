#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:13 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403953 first rand#: 1.54247
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
1950 1 1 0.998687 0.05
1951 1 1 2.03919 0.05
1952 1 1 3.12508 0.05
1953 1 1 3.80075 0.05
1954 1 1 5.26199 0.05
1955 1 1 6.06451 0.05
1956 1 1 6.57584 0.05
1957 1 1 7.94062 0.05
1958 1 1 9.04325 0.05
1959 1 1 9.93901 0.05
1960 1 1 10.1229 0.05
1961 1 1 12.9283 0.05
1962 1 1 12.6257 0.05
1963 1 1 15.017 0.05
1964 1 1 15.082 0.05
1965 1 1 15.7439 0.05
1966 1 1 7.88651 0.05
1967 1 1 15.4963 0.05
1968 1 1 32.8261 0.05
1969 1 1 40.4766 0.05
1970 1 1 36.8684 0.05
1971 1 1 42.4469 0.05
1972 1 1 34.2823 0.05
1973 1 1 64.674 0.05
1974 1 1 56.1329 0.05
1975 1 1 128.502 0.05
1976 1 1 112.713 0.05
1977 1 1 149.889 0.05
1978 1 1 132.315 0.05
1979 1 1 97.1123 0.05
1980 1 1 73.8554 0.05
1981 1 1 103.682 0.05
1982 1 1 110.723 0.05
1983 1 1 173.904 0.05
1984 1 1 240.029 0.05
1985 1 1 314.319 0.05
1986 1 1 305.889 0.05
1987 1 1 252.018 0.05
1988 1 1 226.095 0.05
1989 1 1 220.056 0.05
1990 1 1 525.767 0.05
1991 1 1 420.421 0.05
1992 1 1 511.634 0.05
1993 1 1 713.52 0.05
1994 1 1 723.534 0.05
1995 1 1 701.633 0.05
1996 1 1 531.035 0.05
1997 1 1 521.107 0.05
1998 1 1 388.146 0.05
1999 1 1 433.849 0.05
2000 1 1 299.669 0.05
2001 1 1 379.866 0.05
2002 1 1 432.046 0.05
2003 1 1 563.012 0.05
2004 1 1 415.608 0.05
2005 1 1 451.132 0.05
2006 1 1 491.679 0.05
2007 1 1 523.393 0.05
2008 1 1 849.799 0.05
2009 1 1 1391.01 0.05
2010 1 1 644.794 0.05
2011 1 1 1073.91 0.05
2012 1 1 789.214 0.05
2013 1 1 412.979 0.05
2014 1 1 487.383 0.05
2015 1 1 311.825 0.05
2016 1 1 394.859 0.05
2017 1 1 401.242 0.05
-999 1 2 0 0.01
1950 1 2 0.775412 0.05
1951 1 2 1.38014 0.05
1952 1 2 2.2474 0.05
1953 1 2 3.14223 0.05
1954 1 2 3.78345 0.05
1955 1 2 3.98805 0.05
1956 1 2 5.38431 0.05
1957 1 2 5.41551 0.05
1958 1 2 6.41753 0.05
1959 1 2 7.63105 0.05
1960 1 2 7.81156 0.05
1961 1 2 8.85856 0.05
1962 1 2 9.76645 0.05
1963 1 2 10.2897 0.05
1964 1 2 9.88155 0.05
1965 1 2 8.84845 0.05
1966 1 2 3.28416 0.05
1967 1 2 8.24328 0.05
1968 1 2 21.0996 0.05
1969 1 2 10.8653 0.05
1970 1 2 20.4576 0.05
1971 1 2 21.7979 0.05
1972 1 2 20.271 0.05
1973 1 2 23.7735 0.05
1974 1 2 28.9089 0.05
1975 1 2 55.0901 0.05
1976 1 2 26.7584 0.05
1977 1 2 88.6293 0.05
1978 1 2 71.4258 0.05
1979 1 2 103.182 0.05
1980 1 2 74.9007 0.05
1981 1 2 52.6739 0.05
1982 1 2 65.8937 0.05
1983 1 2 70.7969 0.05
1984 1 2 373.082 0.05
1985 1 2 341.924 0.05
1986 1 2 395.905 0.05
1987 1 2 454.599 0.05
1988 1 2 464.932 0.05
1989 1 2 440.784 0.05
1990 1 2 401.354 0.05
1991 1 2 352.755 0.05
1992 1 2 464.838 0.05
1993 1 2 440.293 0.05
1994 1 2 471.118 0.05
1995 1 2 285.836 0.05
1996 1 2 288.945 0.05
1997 1 2 468.817 0.05
1998 1 2 370.439 0.05
1999 1 2 517.655 0.05
2000 1 2 337.277 0.05
2001 1 2 400.2 0.05
2002 1 2 468.416 0.05
2003 1 2 635.168 0.05
2004 1 2 524.957 0.05
2005 1 2 387.324 0.05
2006 1 2 294.015 0.05
2007 1 2 536.192 0.05
2008 1 2 483.479 0.05
2009 1 2 451.088 0.05
2010 1 2 349.815 0.05
2011 1 2 340.166 0.05
2012 1 2 404.414 0.05
2013 1 2 209.982 0.05
2014 1 2 293.3 0.05
2015 1 2 295.538 0.05
2016 1 2 330.491 0.05
2017 1 2 290.317 0.05
-999 1 3 0 0.01
1950 1 3 6.26691 0.15
1951 1 3 13.0241 0.15
1952 1 3 34.8291 0.15
1953 1 3 34.9045 0.15
1954 1 3 40.2837 0.15
1955 1 3 61.3162 0.15
1956 1 3 70.655 0.15
1957 1 3 95.8759 0.15
1958 1 3 119.724 0.15
1959 1 3 103.581 0.15
1960 1 3 85.5155 0.15
1961 1 3 118.251 0.15
1962 1 3 120.445 0.15
1963 1 3 151.706 0.15
1964 1 3 144.856 0.15
1965 1 3 218.717 0.15
1966 1 3 173.571 0.15
1967 1 3 161.098 0.15
1968 1 3 176.814 0.15
1969 1 3 231.97 0.15
1970 1 3 213.569 0.15
1971 1 3 313.123 0.15
1972 1 3 246.861 0.15
1973 1 3 248.428 0.15
1974 1 3 257.667 0.15
1975 1 3 250.453 0.15
1976 1 3 266.883 0.15
1977 1 3 284.5 0.15
1978 1 3 290.481 0.15
1979 1 3 257.209 0.15
1980 1 3 343.204 0.15
1981 1 3 361.613 0.15
1982 1 3 694.213 0.15
1983 1 3 247.592 0.15
1984 1 3 423.234 0.15
1985 1 3 681.272 0.15
1986 1 3 1150.83 0.15
1987 1 3 1400.2 0.15
1988 1 3 1678.07 0.15
1989 1 3 879.069 0.15
1990 1 3 1310.84 0.15
1991 1 3 1498.03 0.15
1992 1 3 1973.3 0.15
1993 1 3 1538.94 0.15
1994 1 3 1252.38 0.15
1995 1 3 1333.56 0.15
1996 1 3 622.047 0.15
1997 1 3 720.716 0.15
1998 1 3 370.509 0.15
1999 1 3 616.389 0.15
2000 1 3 390.099 0.15
2001 1 3 1175.11 0.15
2002 1 3 1220.26 0.15
2003 1 3 1123.79 0.15
2004 1 3 975.93 0.15
2005 1 3 922.886 0.15
2006 1 3 643.857 0.15
2007 1 3 567.834 0.15
2008 1 3 718.875 0.15
2009 1 3 1242.44 0.15
2010 1 3 703.004 0.15
2011 1 3 1651.55 0.15
2012 1 3 1290.84 0.15
2013 1 3 1413.4 0.15
2014 1 3 1461.05 0.15
2015 1 3 1181.04 0.15
2016 1 3 1473.17 0.15
2017 1 3 2558.18 0.15
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
1993 7 1 1.13154 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.29191 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.615611 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 1.05339 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 1.20185 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 1.49896 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 1.21399 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 0.923933 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.27211 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 0.82629 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.04482 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.03284 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.626816 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.82419 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 0.710468 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 0.9437 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 0.694006 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 1.14623 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 1.07997 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 0.899125 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.14902 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.01135 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 0.690242 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.29328 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 0.983586 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.00994 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.731815 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.894808 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.39153 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.02787 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.15333 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 0.796256 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.858443 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.39043 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.54244 0.1364 #_orig_obs: 1.382 REC
1993 7 3 0.986299 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.63325 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 0.806384 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.922763 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.620763 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.662249 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.768291 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.615239 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.942625 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.831201 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.526754 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.786523 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.433551 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.520654 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.515216 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.802388 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.564902 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.943059 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.832078 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.617258 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.758905 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.922265 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.670307 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.906368 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.959799 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.0433999 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.0365585 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.0407542 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.0322067 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.0406155 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.0290907 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.0371071 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.0302414 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.0406031 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.0392884 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.0468352 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.0411918 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.0387094 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.0473571 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.0365669 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.0255194 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.0559776 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.0327567 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.036385 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.0482382 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.0563454 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.0327655 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.0547723 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.0366821 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.0491548 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.0523608 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.0410455 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.0495889 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.0300813 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.0426348 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.0427699 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.0402381 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.0567924 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.04655 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.0407845 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.055154 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.0359082 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.0291353 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.0492224 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.0296186 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.0355701 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.0295197 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.038904 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.0310658 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.0317393 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.0303416 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.0343985 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.0386437 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.0369388 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.040987 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.0355627 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.0341252 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.0341527 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.0421539 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.0393987 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.0448699 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.037146 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.0364479 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.0405576 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.0355721 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.0281422 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.0412842 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.0357834 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.035222 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.0309703 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.0288829 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.0398629 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.0467607 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 1.44724 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.858917 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.02869 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 1.04236 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 0.889665 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 1.00429 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 1.19448 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.07384 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.899074 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 1.11851 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.794278 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.908741 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 1.47339 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.16113 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 1.76035 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.662982 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.944046 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 0.960316 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.23902 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 0.750905 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.06132 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 0.605575 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 1.11277 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 0.618233 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.80587 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.889311 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.98496 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 1.10043 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 1.1462 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 1.23857 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 1.23546 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 1.1251 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.21327 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 1.03566 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.986464 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 1.34396 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 1.02078 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.993062 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.877238 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 1.05518 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.893038 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.859078 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.868657 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 1.02788 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 1.01653 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 1.11307 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.825242 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.05393 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 1.07325 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.878199 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.950886 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 0.656685 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 0.692521 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.53563 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 1.16363 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 1.07404 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.507666 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 1.00223 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.93024 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.854942 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.983493 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 1.11316 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.912144 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 1.3798 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.57539 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.24473 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 0.930275 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 0.988149 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.35033 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.981646 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 1.10875 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 1.34615 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.791132 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 1.05179 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 1.28329 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.827917 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.25721 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.547918 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.871332 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 0.684762 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.952791 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.06375 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.954587 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 1.12425 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.957138 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 0.985208 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 1.53141 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.784999 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.815822 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.854062 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 1.14776 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.02566 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.16678 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.948108 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 0.81565 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 0.77863 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.17097 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 1.04109 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.850425 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 0.789694 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.13188 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.87835 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 1.02295 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 1.04101 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 0.955222 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.06322 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.747348 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.436419 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.837601 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.841263 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.754706 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 1.40765 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.04652 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.946257 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.07742 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  15.5492 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  11.8471 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  14.7802 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  14.398 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  10.2496 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  12.9357 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  7.38168 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  5.66484 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  7.77973 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  8.47599 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  12.1331 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  12.9412 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  104.743 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  185.503 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  174.731 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  90.8846 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  112.083 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  44.3227 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  124.876 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  116.839 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  35.4543 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  77.6294 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  46.765 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  37.3097 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  38.1782 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  6.97162 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  6.70506 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  7.1343 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  8.71558 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  8.38685 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  11.1722 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  12.457 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  5.20745 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  5.72342 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  7.75876 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  7.38422 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  5.56601 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  70.3051 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  48.5993 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  136.424 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  30.2807 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  45.32 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  28.1835 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  25.6905 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  33.5509 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  20.3514 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  23.4773 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  19.177 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  56.6669 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  15.9658 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  5.08366 0.3 #_orig_obs: 1 #_ REC
1983 7 3  0.98544 0.3 #_orig_obs: 53 #_ REC
1984 7 3  2.07501 0.3 #_orig_obs: 25 #_ REC
1985 7 3  7.38375 0.3 #_orig_obs: 24 #_ REC
1986 7 3  6.37289 0.3 #_orig_obs: 85 #_ REC
1987 7 3  4.77638 0.3 #_orig_obs: 90 #_ REC
1988 7 3  7.5266 0.3 #_orig_obs: 356 #_ REC
1989 7 3  5.37287 0.3 #_orig_obs: 174 #_ REC
1990 7 3  202.007 0.3 #_orig_obs: 145 #_ REC
1991 7 3  307.029 0.3 #_orig_obs: 319 #_ REC
1992 7 3  499.703 0.3 #_orig_obs: 281 #_ REC
1993 7 3  225.086 0.3 #_orig_obs: 561 #_ REC
1994 7 3  189.718 0.3 #_orig_obs: 172 #_ REC
1995 7 3  353.017 0.3 #_orig_obs: 567 #_ REC
1996 7 3  103.342 0.3 #_orig_obs: 205 #_ REC
1997 7 3  395.185 0.3 #_orig_obs: 57 #_ REC
1998 7 3  192.616 0.3 #_orig_obs: 46 #_ REC
1999 7 3  370.61 0.3 #_orig_obs: 145 #_ REC
2000 7 3  168.468 0.3 #_orig_obs: 61 #_ REC
2001 7 3  468.449 0.3 #_orig_obs: 127 #_ REC
2002 7 3  535.487 0.3 #_orig_obs: 290 #_ REC
2003 7 3  564.207 0.3 #_orig_obs: 309 #_ REC
2004 7 3  395.371 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1181.39 0.3 #_orig_obs: 363 #_ REC
2006 7 3  838.186 0.3 #_orig_obs: 229 #_ REC
2007 7 3  765.44 0.3 #_orig_obs: 194 #_ REC
2008 7 3  282.29 0.3 #_orig_obs: 161 #_ REC
2009 7 3  499.22 0.3 #_orig_obs: 211 #_ REC
2010 7 3  365.412 0.3 #_orig_obs: 84 #_ REC
2011 7 3  821.627 0.3 #_orig_obs: 168 #_ REC
2012 7 3  442.429 0.3 #_orig_obs: 210 #_ REC
2013 7 3  1755.42 0.3 #_orig_obs: 477 #_ REC
2014 7 3  859.841 0.3 #_orig_obs: 394 #_ REC
2015 7 3  1119.99 0.3 #_orig_obs: 291 #_ REC
2016 7 3  1407.16 0.3 #_orig_obs: 329 #_ REC
2017 7 3  1421.68 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  219.308 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  216.606 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  216.606 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  216.606 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  216.606 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  216.606 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  216.606 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  216.606 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  216.606 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  216.606 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  216.606 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  216.606 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  216.606 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  216.606 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  216.606 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  216.606 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  216.606 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  216.606 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  216.606 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  216.606 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  216.606 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  216.606 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  216.606 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  216.606 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  216.606 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  216.606 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  216.606 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  216.606 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  216.606 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  216.606 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  216.606 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  216.606 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  216.606 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  216.606 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  216.606 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  216.606 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  216.606 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  216.606 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  216.606 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  216.606 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  216.606 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  216.606 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  216.606 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  216.606 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  216.606 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  216.606 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 3 3 4 3 2 1 1 0 0 0
 2004 7 8 0 0 6  0 0 0 4 1 0 1 0 0 0 0 0
 2005 7 8 0 0 38  0 0 3 8 10 7 5 5 0 0 0 0
 2006 7 8 0 0 18  0 0 0 2 7 7 0 2 0 0 0 0
 2007 7 8 0 0 11  0 0 2 0 2 1 2 1 1 2 0 0
 2008 7 8 0 0 8  0 0 0 0 5 3 0 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 8 5 8 1 2 1 0 0 0
 2010 7 8 0 0 32  0 0 7 4 9 8 2 2 0 0 0 0
 2011 7 8 0 0 47  0 0 3 11 9 12 5 6 0 1 0 0
 2012 7 8 0 0 39  0 2 5 9 10 6 5 1 1 0 0 0
 2013 7 8 0 0 100  0 0 17 15 27 22 12 3 4 0 0 0
 2014 7 8 0 0 100  0 0 7 16 33 24 9 7 2 1 1 0
 2015 7 8 0 0 74  0 2 7 10 22 11 10 6 5 0 1 0
 2016 7 8 0 0 32  0 0 5 4 11 5 5 2 0 0 0 0
 2017 7 8 0 0 100  0 0 9 14 24 25 14 8 2 4 0 0
 2009 7 9 0 0 35  0 1 4 18 11 1 0 0 0 0 0 0
 2010 7 9 0 0 100  0 6 28 41 22 3 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 3 7 7 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 1 4 4 2 0 0 0 0 0 0 0
 2013 7 9 0 0 37  0 4 13 10 10 0 0 0 0 0 0 0
 2014 7 9 0 0 69  0 1 12 31 18 7 0 0 0 0 0 0
 2015 7 9 0 0 37  0 1 5 8 20 3 0 0 0 0 0 0
 2016 7 9 0 0 38  0 1 10 15 10 2 0 0 0 0 0 0
 2017 7 9 0 0 100  0 11 22 33 27 7 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 1 2 0 0 0 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 0 3 0 0 0 0 0 1 0 0 2 0 0
2000  7 1  0 2 1 -1 -1 8  0 0 1 1 1 2 1 0 0 0 1 0 0 1
2001  7 1  0 2 1 -1 -1 23  0 3 3 2 6 1 0 1 1 2 2 0 1 1
2002  7 1  0 2 1 -1 -1 100  0 7 19 19 17 7 10 4 4 2 4 1 0 6
2003  7 1  0 2 1 -1 -1 23  0 4 5 1 1 3 4 1 0 3 1 0 0 0
2004  7 1  0 2 1 -1 -1 33  0 4 8 4 3 5 1 2 2 0 2 0 0 2
2005  7 1  0 2 1 -1 -1 100  0 2 15 24 4 6 10 6 7 8 2 4 1 11
2006  7 1  0 2 1 -1 -1 59  0 1 2 9 17 7 4 1 1 3 4 4 1 5
2007  7 1  0 2 1 -1 -1 54  0 1 7 8 7 9 6 1 7 2 1 0 0 5
2008  7 1  0 2 1 -1 -1 100  0 3 14 21 12 13 14 7 8 1 0 2 1 4
2009  7 1  0 2 1 -1 -1 100  0 10 9 20 16 7 8 11 5 3 3 2 1 5
2010  7 1  0 2 1 -1 -1 32  0 0 8 3 7 1 0 1 5 2 1 0 0 4
2011  7 1  0 2 1 -1 -1 87  0 10 12 23 4 8 14 2 1 3 1 1 1 7
2012  7 1  0 2 1 -1 -1 99  1 9 14 18 21 4 9 11 1 3 2 3 0 3
2013  7 1  0 2 1 -1 -1 55  0 7 7 5 10 3 6 2 6 1 1 4 0 3
2014  7 1  0 2 1 -1 -1 79  0 6 17 15 5 11 6 3 3 8 0 2 1 2
2015  7 1  0 2 1 -1 -1 100  0 9 22 24 15 7 7 6 2 0 2 1 0 5
2016  7 1  0 2 1 -1 -1 100  0 1 28 17 23 5 5 4 6 2 1 1 0 7
2017  7 1  0 2 1 -1 -1 100  0 11 15 25 13 12 8 3 6 2 1 0 2 2
1994  7 2  0 2 1 -1 -1 8  0 0 1 2 0 0 0 0 0 0 0 1 1 3
1995  7 2  0 2 1 -1 -1 7  0 1 0 2 1 0 0 1 0 2 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 3 7 13 10 10 3 4 3 2 0 2 7
2001  7 2  0 2 1 -1 -1 48  0 1 3 8 18 5 4 1 0 2 3 1 0 2
2002  7 2  0 2 1 -1 -1 34  0 0 3 5 5 5 9 0 1 0 2 0 1 3
2003  7 2  0 2 1 -1 -1 30  0 2 1 4 5 2 3 5 1 2 1 1 0 3
2004  7 2  0 2 1 -1 -1 100  0 1 8 12 11 16 14 15 5 1 1 5 3 8
2005  7 2  0 2 1 -1 -1 21  0 0 1 5 0 2 2 2 3 0 1 1 0 4
2006  7 2  0 2 1 -1 -1 16  0 0 0 3 3 1 3 3 0 2 0 0 0 1
2007  7 2  0 2 1 -1 -1 100  0 1 9 7 21 17 5 8 11 7 5 3 0 6
2008  7 2  0 2 1 -1 -1 100  0 3 4 22 7 17 18 8 4 4 3 1 1 8
2009  7 2  0 2 1 -1 -1 100  0 1 4 18 18 15 14 11 3 2 3 1 2 8
2010  7 2  0 2 1 -1 -1 59  0 1 7 3 7 10 3 8 3 3 0 6 1 7
2011  7 2  0 2 1 -1 -1 100  0 4 15 18 5 20 10 2 12 5 3 1 0 5
2012  7 2  0 2 1 -1 -1 89  0 1 3 10 22 7 13 10 2 5 5 4 2 5
2013  7 2  0 2 1 -1 -1 48  0 1 6 3 9 9 2 7 2 0 3 1 1 4
2014  7 2  0 2 1 -1 -1 47  0 3 5 7 4 7 3 2 3 5 1 5 0 2
2015  7 2  0 2 1 -1 -1 23  0 1 2 4 3 1 1 5 0 1 1 1 1 2
2016  7 2  0 2 1 -1 -1 82  0 1 11 7 20 12 10 7 4 1 2 2 0 5
2017  7 2  0 2 1 -1 -1 89  1 1 4 23 15 18 6 2 5 3 2 3 0 6
1994  7 3  0 2 1 -1 -1 13  0 0 7 2 2 2 0 0 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 0 3 0 1 2 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  1 7 12 18 16 14 2 2 1 1 1 0 2 0
1997  7 3  0 2 1 -1 -1 15  0 1 2 2 2 2 2 1 3 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 2 4 1 2 1 1 2 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 2 8 8 4 1 1 0 1 0 0 0 0 0
2000  7 3  0 2 1 -1 -1 61  0 4 13 17 11 5 5 3 1 0 1 0 0 1
2001  7 3  0 2 1 -1 -1 7  0 0 1 0 2 3 0 1 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 1 2 3 4 2 1 0 0 0 0 1 1 0
2003  7 3  0 2 1 -1 -1 19  0 2 4 0 4 3 2 2 1 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 1 2 0 0 0 1 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 2 15 16 8 6 4 0 1 1 1 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 6 10 24 17 11 6 9 1 9 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 3 29 10 17 22 6 6 3 1 1 0 0 2
2008  7 3  0 2 1 -1 -1 42  0 1 15 13 1 5 4 2 0 1 0 0 0 0
2009  7 3  0 2 1 -1 -1 100  0 11 13 24 22 4 11 6 6 1 1 0 1 0
2010  7 3  0 2 1 -1 -1 20  0 1 9 2 2 2 3 0 1 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 7 22 19 9 7 5 4 3 1 0 1 0 0
2012  7 3  0 2 1 -1 -1 100  3 9 18 29 13 4 9 11 1 1 0 0 1 1
2013  7 3  0 2 1 -1 -1 100  0 9 28 17 15 17 5 2 3 2 1 0 1 0
2014  7 3  0 2 1 -1 -1 100  0 5 31 26 13 10 8 2 3 1 0 0 0 1
2015  7 3  0 2 1 -1 -1 46  1 3 14 7 6 7 5 2 0 1 0 0 0 0
2016  7 3  0 2 1 -1 -1 100  0 4 27 33 16 9 4 4 1 1 0 0 0 1
2017  7 3  0 2 1 -1 -1 100  0 7 7 38 17 17 8 4 0 1 0 0 0 1
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

