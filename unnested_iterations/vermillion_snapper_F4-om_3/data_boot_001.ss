#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:06 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403946 first rand#: -1.5193
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
1950 1 1 1.01926 0.05
1951 1 1 2.09102 0.05
1952 1 1 2.88896 0.05
1953 1 1 3.70451 0.05
1954 1 1 4.97441 0.05
1955 1 1 5.96297 0.05
1956 1 1 6.66751 0.05
1957 1 1 7.69587 0.05
1958 1 1 8.88184 0.05
1959 1 1 9.58278 0.05
1960 1 1 11.2586 0.05
1961 1 1 12.4783 0.05
1962 1 1 13.8545 0.05
1963 1 1 15.3134 0.05
1964 1 1 14.7254 0.05
1965 1 1 16.5366 0.05
1966 1 1 8.47817 0.05
1967 1 1 15.11 0.05
1968 1 1 31.2826 0.05
1969 1 1 39.2181 0.05
1970 1 1 36.7488 0.05
1971 1 1 39.2905 0.05
1972 1 1 32.868 0.05
1973 1 1 58.0347 0.05
1974 1 1 57.2014 0.05
1975 1 1 118.634 0.05
1976 1 1 111.475 0.05
1977 1 1 160.151 0.05
1978 1 1 129.151 0.05
1979 1 1 103.435 0.05
1980 1 1 74.6499 0.05
1981 1 1 107.088 0.05
1982 1 1 116.926 0.05
1983 1 1 185.281 0.05
1984 1 1 246.554 0.05
1985 1 1 332.306 0.05
1986 1 1 293.821 0.05
1987 1 1 245.152 0.05
1988 1 1 224.535 0.05
1989 1 1 212.496 0.05
1990 1 1 492.681 0.05
1991 1 1 429.998 0.05
1992 1 1 538.554 0.05
1993 1 1 693.83 0.05
1994 1 1 776.441 0.05
1995 1 1 704.242 0.05
1996 1 1 492.788 0.05
1997 1 1 470.59 0.05
1998 1 1 357.585 0.05
1999 1 1 373.255 0.05
2000 1 1 321.377 0.05
2001 1 1 337.649 0.05
2002 1 1 444.71 0.05
2003 1 1 500.678 0.05
2004 1 1 426.204 0.05
2005 1 1 453.449 0.05
2006 1 1 502.937 0.05
2007 1 1 537.329 0.05
2008 1 1 869.543 0.05
2009 1 1 1200.27 0.05
2010 1 1 620.769 0.05
2011 1 1 1050.5 0.05
2012 1 1 689.725 0.05
2013 1 1 446.615 0.05
2014 1 1 470.261 0.05
2015 1 1 293.982 0.05
2016 1 1 397.313 0.05
2017 1 1 439.444 0.05
-999 1 2 0 0.01
1950 1 2 0.715638 0.05
1951 1 2 1.40974 0.05
1952 1 2 2.28772 0.05
1953 1 2 2.66835 0.05
1954 1 2 3.5297 0.05
1955 1 2 4.17916 0.05
1956 1 2 5.08562 0.05
1957 1 2 5.37786 0.05
1958 1 2 6.17748 0.05
1959 1 2 7.6073 0.05
1960 1 2 7.68588 0.05
1961 1 2 8.59567 0.05
1962 1 2 9.36758 0.05
1963 1 2 10.2239 0.05
1964 1 2 10.0821 0.05
1965 1 2 9.33327 0.05
1966 1 2 3.03121 0.05
1967 1 2 7.17595 0.05
1968 1 2 21.9474 0.05
1969 1 2 11.3945 0.05
1970 1 2 21.3451 0.05
1971 1 2 21.5962 0.05
1972 1 2 21.0709 0.05
1973 1 2 26.0716 0.05
1974 1 2 28.667 0.05
1975 1 2 48.95 0.05
1976 1 2 27.4764 0.05
1977 1 2 85.2521 0.05
1978 1 2 73.539 0.05
1979 1 2 100.97 0.05
1980 1 2 65.9551 0.05
1981 1 2 55.3454 0.05
1982 1 2 67.8536 0.05
1983 1 2 75.4864 0.05
1984 1 2 380.589 0.05
1985 1 2 330.691 0.05
1986 1 2 410.533 0.05
1987 1 2 471.193 0.05
1988 1 2 426.374 0.05
1989 1 2 494.651 0.05
1990 1 2 424.515 0.05
1991 1 2 345.557 0.05
1992 1 2 467.945 0.05
1993 1 2 429.271 0.05
1994 1 2 496.277 0.05
1995 1 2 285.749 0.05
1996 1 2 282.559 0.05
1997 1 2 481.254 0.05
1998 1 2 410.33 0.05
1999 1 2 501.973 0.05
2000 1 2 335.961 0.05
2001 1 2 385.662 0.05
2002 1 2 450.55 0.05
2003 1 2 557.141 0.05
2004 1 2 588.367 0.05
2005 1 2 404.197 0.05
2006 1 2 298.685 0.05
2007 1 2 590.022 0.05
2008 1 2 467.26 0.05
2009 1 2 438.831 0.05
2010 1 2 380.184 0.05
2011 1 2 316.431 0.05
2012 1 2 369.078 0.05
2013 1 2 196.67 0.05
2014 1 2 306.862 0.05
2015 1 2 301.228 0.05
2016 1 2 356.978 0.05
2017 1 2 310.574 0.05
-999 1 3 0 0.01
1950 1 3 7.14534 0.15
1951 1 3 16.205 0.15
1952 1 3 22.5615 0.15
1953 1 3 47.6947 0.15
1954 1 3 39.3479 0.15
1955 1 3 66.9643 0.15
1956 1 3 63.6462 0.15
1957 1 3 87.1155 0.15
1958 1 3 73.983 0.15
1959 1 3 94.7332 0.15
1960 1 3 110.548 0.15
1961 1 3 102.364 0.15
1962 1 3 108.859 0.15
1963 1 3 163.086 0.15
1964 1 3 121.238 0.15
1965 1 3 171.064 0.15
1966 1 3 246.263 0.15
1967 1 3 201.937 0.15
1968 1 3 200.92 0.15
1969 1 3 236.563 0.15
1970 1 3 184.308 0.15
1971 1 3 233.85 0.15
1972 1 3 209.502 0.15
1973 1 3 223.548 0.15
1974 1 3 273.998 0.15
1975 1 3 221.244 0.15
1976 1 3 313.179 0.15
1977 1 3 230.766 0.15
1978 1 3 271.221 0.15
1979 1 3 290.888 0.15
1980 1 3 278.609 0.15
1981 1 3 354.424 0.15
1982 1 3 704.056 0.15
1983 1 3 267.405 0.15
1984 1 3 473.813 0.15
1985 1 3 861.967 0.15
1986 1 3 940.285 0.15
1987 1 3 1223.91 0.15
1988 1 3 1856.85 0.15
1989 1 3 1358.43 0.15
1990 1 3 1234.34 0.15
1991 1 3 1493.87 0.15
1992 1 3 2016.35 0.15
1993 1 3 1529.68 0.15
1994 1 3 1232.34 0.15
1995 1 3 1713.28 0.15
1996 1 3 514.695 0.15
1997 1 3 699.888 0.15
1998 1 3 338.434 0.15
1999 1 3 575.925 0.15
2000 1 3 360.097 0.15
2001 1 3 949.359 0.15
2002 1 3 997.873 0.15
2003 1 3 1057.74 0.15
2004 1 3 931.07 0.15
2005 1 3 983.132 0.15
2006 1 3 792.118 0.15
2007 1 3 684.23 0.15
2008 1 3 874.534 0.15
2009 1 3 1250.73 0.15
2010 1 3 821.284 0.15
2011 1 3 1726.28 0.15
2012 1 3 725.74 0.15
2013 1 3 1622.24 0.15
2014 1 3 1423.54 0.15
2015 1 3 1679.69 0.15
2016 1 3 2227.09 0.15
2017 1 3 2091.3 0.15
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
1993 7 1 1.0089 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.1457 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.982361 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.756598 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 0.73578 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 0.758173 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.669015 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 1.36788 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.22706 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.12222 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.27867 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 0.924741 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.655681 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 1.33084 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 1.41649 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 0.915824 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 1.14833 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.911149 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 0.919343 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 1.04174 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.06602 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 0.749542 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 0.852766 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.06344 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 1.17394 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.57871 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.725462 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 1.0685 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.38174 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 0.951439 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.96026 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 0.988678 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.978368 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 1.28558 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.18904 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.06087 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.0944 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.39836 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 1.15347 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.689619 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.765404 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.804611 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 1.24613 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.898628 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.934977 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 1.20024 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.848817 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.49806 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.538259 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.588657 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.621372 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.542662 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.452635 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.425235 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.660071 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.404006 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.560135 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.832254 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.709239 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.552953 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.0469525 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.053385 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.0415578 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.0411772 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.0501512 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.0462122 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.0662961 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.0312756 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.0362238 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.0466581 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.0483236 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.0304792 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.0392228 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.0340898 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.0395139 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.0601234 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.0332504 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.0336273 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.0288147 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.036341 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.0280347 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.0384927 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.0271937 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.0365099 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.0391719 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.031728 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.0485706 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.0463896 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.0320066 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.0490345 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.041699 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.0315043 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.0417352 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.0307925 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.0472773 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.0303601 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.0225805 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.0516312 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.0446344 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.0392943 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.035245 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.0396944 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.04442 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.0308423 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.0338178 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.043605 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.0310508 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.0526649 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.0391884 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.0395449 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.0300557 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.0530814 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.0262392 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.0358583 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.0566784 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.0412261 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.0340722 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.047428 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.0338391 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.036566 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.0483809 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.0304977 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.0440992 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.0278689 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.0518984 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.0394358 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.0360665 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.0424965 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 1.08853 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 1.20049 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.10316 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 1.22124 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 0.995134 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.583608 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 1.11737 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.02345 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.883298 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.963694 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.759542 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.727271 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 1.10345 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.21801 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 1.27661 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.987539 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 1.33592 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.20087 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.1138 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 1.0614 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 0.938756 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.0044 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.762448 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 0.782216 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.64599 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.656631 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.651287 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.877801 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 0.75121 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 1.04353 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.784185 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.948624 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.43477 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 0.945308 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.98696 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 0.944835 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.886552 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.661829 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 1.14675 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 0.763262 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.917791 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 1.05518 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.776453 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.813291 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 1.04438 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 1.30402 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.987753 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.1019 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 1.26365 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 1.06249 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.892182 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 1.41328 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 1.54824 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.09172 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 0.824091 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.674621 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.648017 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.692822 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.775804 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.918106 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.582864 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 1.01356 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.782013 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 1.03269 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.01473 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.35452 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 0.976984 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.20931 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.4331 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 1.01454 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.590161 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.963938 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 1.14931 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.81343 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.986588 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 1.1513 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.2665 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 1.15088 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 1.14901 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 0.88036 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.74793 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 0.773954 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.810639 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 0.840147 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 1.00931 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 0.651407 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 0.804999 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.652918 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 2.05727 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.905768 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.963515 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.19968 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.07886 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 1.0213 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 0.982203 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 0.934906 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 0.811658 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.884969 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.924794 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 0.938466 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 0.94358 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.91323 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 1.07315 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.875493 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.06382 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 0.901222 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 0.882721 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 1.13612 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.960996 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.789545 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 0.606491 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 1.09425 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 1.03342 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 1.1837 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 0.774797 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  10.7627 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  14.9238 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  28.4391 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  17.3861 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  13.8913 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  8.63524 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  6.68892 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  10.2425 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  6.34821 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  13.1596 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  7.72521 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  8.88695 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  238.635 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  176.927 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  114.214 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  65.3645 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  103.566 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  58.3502 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  108.764 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  110.39 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  51.2063 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  67.1047 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  32.9722 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  61.1222 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  38.2374 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  4.25769 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  5.13124 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  4.90639 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  3.54489 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  9.25081 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  8.89287 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  11.1371 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  7.36492 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  4.37004 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  9.27202 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  14.2891 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  12.4691 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  185.213 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  70.7441 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  103.078 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  20.3035 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  25.289 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  21.5177 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  29.2857 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  35.1845 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  34.1909 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  39.6882 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  29.7913 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  28.1632 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  23.6127 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  4.28404 0.3 #_orig_obs: 1 #_ REC
1983 7 3  1.96927 0.3 #_orig_obs: 53 #_ REC
1984 7 3  4.67881 0.3 #_orig_obs: 25 #_ REC
1985 7 3  6.74368 0.3 #_orig_obs: 24 #_ REC
1986 7 3  11.6993 0.3 #_orig_obs: 85 #_ REC
1987 7 3  9.05228 0.3 #_orig_obs: 90 #_ REC
1988 7 3  16.8693 0.3 #_orig_obs: 356 #_ REC
1989 7 3  6.85796 0.3 #_orig_obs: 174 #_ REC
1990 7 3  387.131 0.3 #_orig_obs: 145 #_ REC
1991 7 3  336.027 0.3 #_orig_obs: 319 #_ REC
1992 7 3  328.907 0.3 #_orig_obs: 281 #_ REC
1993 7 3  197.245 0.3 #_orig_obs: 561 #_ REC
1994 7 3  229.826 0.3 #_orig_obs: 172 #_ REC
1995 7 3  302.248 0.3 #_orig_obs: 567 #_ REC
1996 7 3  53.7683 0.3 #_orig_obs: 205 #_ REC
1997 7 3  374.33 0.3 #_orig_obs: 57 #_ REC
1998 7 3  157.468 0.3 #_orig_obs: 46 #_ REC
1999 7 3  368.681 0.3 #_orig_obs: 145 #_ REC
2000 7 3  253.079 0.3 #_orig_obs: 61 #_ REC
2001 7 3  671.914 0.3 #_orig_obs: 127 #_ REC
2002 7 3  691.654 0.3 #_orig_obs: 290 #_ REC
2003 7 3  685.332 0.3 #_orig_obs: 309 #_ REC
2004 7 3  696.299 0.3 #_orig_obs: 202 #_ REC
2005 7 3  1482.36 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1739.25 0.3 #_orig_obs: 229 #_ REC
2007 7 3  730.401 0.3 #_orig_obs: 194 #_ REC
2008 7 3  390.855 0.3 #_orig_obs: 161 #_ REC
2009 7 3  551.71 0.3 #_orig_obs: 211 #_ REC
2010 7 3  590.313 0.3 #_orig_obs: 84 #_ REC
2011 7 3  1666.96 0.3 #_orig_obs: 168 #_ REC
2012 7 3  856.713 0.3 #_orig_obs: 210 #_ REC
2013 7 3  1782.46 0.3 #_orig_obs: 477 #_ REC
2014 7 3  974.68 0.3 #_orig_obs: 394 #_ REC
2015 7 3  1109.88 0.3 #_orig_obs: 291 #_ REC
2016 7 3  1110.71 0.3 #_orig_obs: 329 #_ REC
2017 7 3  1327.87 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  240.415 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  218.351 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  218.351 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  218.351 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  218.351 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  218.351 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  218.351 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  218.351 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  218.351 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  218.351 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  218.351 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  218.351 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  218.351 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  218.351 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  218.351 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  218.351 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  218.351 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  218.351 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  218.351 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  218.351 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  218.351 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  218.351 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  218.351 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  218.351 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  218.351 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  218.351 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  218.351 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  218.351 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  218.351 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  218.351 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  218.351 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  218.351 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  218.351 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  218.351 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  218.351 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  218.351 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  218.351 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  218.351 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  218.351 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  218.351 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  218.351 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  218.351 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  218.351 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  218.351 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  218.351 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  218.351 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 1 3 6 3 1 1 2 0 0 0
 2004 7 8 0 0 6  0 0 0 0 3 1 0 1 1 0 0 0
 2005 7 8 0 0 38  0 0 3 7 7 11 5 4 1 0 0 0
 2006 7 8 0 0 18  0 0 3 2 5 4 2 2 0 0 0 0
 2007 7 8 0 0 11  0 0 0 1 2 4 3 1 0 0 0 0
 2008 7 8 0 0 8  0 0 0 2 2 1 1 1 1 0 0 0
 2009 7 8 0 0 25  0 0 0 8 5 4 5 1 1 0 1 0
 2010 7 8 0 0 32  0 0 5 5 5 8 5 3 1 0 0 0
 2011 7 8 0 0 47  0 0 9 7 13 4 9 2 1 1 1 0
 2012 7 8 0 0 39  0 0 1 12 7 7 5 4 3 0 0 0
 2013 7 8 0 0 100  0 0 6 13 38 26 9 7 1 0 0 0
 2014 7 8 0 0 100  0 0 8 19 28 26 12 4 1 2 0 0
 2015 7 8 0 0 74  0 1 5 17 14 16 14 5 1 0 1 0
 2016 7 8 0 0 32  0 0 0 7 9 7 5 1 2 1 0 0
 2017 7 8 0 0 100  0 0 15 19 21 22 14 6 3 0 0 0
 2009 7 9 0 0 35  0 1 8 14 10 2 0 0 0 0 0 0
 2010 7 9 0 0 100  0 4 28 36 28 4 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 9 2 6 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 0 3 4 4 0 0 0 0 0 0 0
 2013 7 9 0 0 37  0 1 6 17 13 0 0 0 0 0 0 0
 2014 7 9 0 0 69  0 9 13 27 16 4 0 0 0 0 0 0
 2015 7 9 0 0 37  0 1 8 15 11 2 0 0 0 0 0 0
 2016 7 9 0 0 38  0 0 4 12 20 2 0 0 0 0 0 0
 2017 7 9 0 0 100  0 4 13 42 38 3 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 2 0 0 0 1 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 0 3 1 0 0 0 1 1 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 3 0 2 1 0 0 1 0 1 0 0 0 0
2001  7 1  0 2 1 -1 -1 23  0 3 5 2 5 1 1 1 1 1 3 0 0 0
2002  7 1  0 2 1 -1 -1 100  0 10 15 28 13 9 8 4 3 2 1 2 0 5
2003  7 1  0 2 1 -1 -1 23  1 1 1 7 3 3 2 0 1 0 0 1 1 2
2004  7 1  0 2 1 -1 -1 33  0 4 3 5 6 6 3 2 1 0 0 0 1 2
2005  7 1  0 2 1 -1 -1 100  0 4 11 15 11 17 17 4 5 1 3 1 2 9
2006  7 1  0 2 1 -1 -1 59  0 0 14 8 8 2 6 10 4 1 0 0 1 5
2007  7 1  0 2 1 -1 -1 54  0 0 5 14 5 8 2 5 4 3 1 3 1 3
2008  7 1  0 2 1 -1 -1 100  0 2 16 8 25 10 6 4 2 15 3 2 2 5
2009  7 1  0 2 1 -1 -1 100  0 3 17 11 11 15 10 6 4 8 3 0 5 7
2010  7 1  0 2 1 -1 -1 32  0 2 5 4 2 5 3 6 2 1 1 0 0 1
2011  7 1  0 2 1 -1 -1 87  0 5 9 14 6 8 8 9 7 4 3 4 3 7
2012  7 1  0 2 1 -1 -1 99  0 11 14 14 12 7 5 6 9 9 4 1 0 7
2013  7 1  0 2 1 -1 -1 55  0 3 16 11 5 5 4 1 1 4 0 1 0 4
2014  7 1  0 2 1 -1 -1 79  0 9 11 21 7 5 7 3 1 4 4 1 2 4
2015  7 1  0 2 1 -1 -1 100  1 9 19 21 13 3 5 13 3 1 1 4 0 7
2016  7 1  0 2 1 -1 -1 100  0 6 23 12 14 21 5 4 3 1 1 1 3 6
2017  7 1  0 2 1 -1 -1 100  0 9 18 22 14 11 10 2 2 3 1 0 1 7
1994  7 2  0 2 1 -1 -1 8  0 0 1 4 1 1 1 0 0 0 0 0 0 0
1995  7 2  0 2 1 -1 -1 7  0 0 1 4 1 0 0 1 0 0 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 5 10 15 6 3 7 4 4 2 2 0 6
2001  7 2  0 2 1 -1 -1 48  0 2 5 6 9 9 3 3 1 2 2 2 0 4
2002  7 2  0 2 1 -1 -1 34  0 3 2 3 3 5 9 1 1 1 2 0 1 3
2003  7 2  0 2 1 -1 -1 30  1 0 3 6 8 4 1 1 1 2 0 1 0 2
2004  7 2  0 2 1 -1 -1 100  2 7 8 14 12 20 5 12 5 6 1 2 0 6
2005  7 2  0 2 1 -1 -1 21  0 1 0 1 2 3 0 3 1 4 1 0 0 5
2006  7 2  0 2 1 -1 -1 16  0 0 2 1 0 2 4 2 1 3 0 0 0 1
2007  7 2  0 2 1 -1 -1 100  0 0 4 13 23 17 7 7 8 4 5 1 1 10
2008  7 2  0 2 1 -1 -1 100  0 1 7 7 18 19 14 5 7 5 3 4 3 7
2009  7 2  0 2 1 -1 -1 100  0 2 1 9 9 27 7 10 7 5 3 6 2 12
2010  7 2  0 2 1 -1 -1 59  0 0 3 6 7 2 11 10 5 7 2 1 0 5
2011  7 2  0 2 1 -1 -1 100  0 2 8 8 12 10 9 12 9 9 5 3 8 5
2012  7 2  0 2 1 -1 -1 89  0 2 8 7 12 12 5 11 7 7 5 2 4 7
2013  7 2  0 2 1 -1 -1 48  0 1 3 8 10 4 3 1 4 3 3 0 0 8
2014  7 2  0 2 1 -1 -1 47  0 0 5 12 4 3 6 3 0 2 2 4 1 5
2015  7 2  0 2 1 -1 -1 23  0 2 3 1 7 1 2 3 1 0 0 1 2 0
2016  7 2  0 2 1 -1 -1 82  0 0 10 14 15 11 9 2 4 2 3 0 3 9
2017  7 2  0 2 1 -1 -1 89  0 3 4 15 18 16 7 5 2 5 2 0 2 10
1994  7 3  0 2 1 -1 -1 13  0 0 1 2 2 2 3 3 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 1 1 2 1 1 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  1 9 20 12 13 7 10 1 1 2 0 0 1 0
1997  7 3  0 2 1 -1 -1 15  0 1 0 2 4 3 2 1 2 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 1 2 2 4 1 1 2 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 2 9 5 3 2 0 2 1 0 0 0 1 0
2000  7 3  0 2 1 -1 -1 61  0 2 16 14 11 6 5 2 1 2 1 0 1 0
2001  7 3  0 2 1 -1 -1 7  0 0 4 1 2 0 0 0 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 1 7 1 4 2 0 0 0 0 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 2 3 6 5 1 1 0 0 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 0 2 0 1 0 1 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 3 10 10 3 9 8 2 7 2 0 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 2 17 18 23 8 10 7 5 3 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 0 16 16 13 22 12 8 3 3 2 2 0 3
2008  7 3  0 2 1 -1 -1 42  0 6 5 13 9 4 2 1 1 1 0 0 0 0
2009  7 3  0 2 1 -1 -1 100  0 5 14 19 13 22 9 8 4 3 1 0 2 0
2010  7 3  0 2 1 -1 -1 20  0 3 2 2 2 4 5 1 0 0 1 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 9 11 14 11 9 10 8 3 1 0 2 0 0
2012  7 3  0 2 1 -1 -1 100  1 14 28 17 18 6 3 0 4 4 2 1 0 2
2013  7 3  0 2 1 -1 -1 100  0 10 41 13 9 8 7 7 0 3 0 0 2 0
2014  7 3  0 2 1 -1 -1 100  0 8 25 33 10 11 5 2 2 1 2 0 0 1
2015  7 3  0 2 1 -1 -1 46  0 4 14 5 11 7 3 0 0 0 0 0 1 1
2016  7 3  0 2 1 -1 -1 100  0 5 25 19 17 22 2 2 1 2 0 0 2 3
2017  7 3  0 2 1 -1 -1 100  0 8 25 21 18 8 9 6 1 2 1 1 0 0
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

