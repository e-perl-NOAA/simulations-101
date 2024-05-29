#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:14 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403954 first rand#: 0.377427
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
1950 1 1 1.16639 0.05
1951 1 1 2.07335 0.05
1952 1 1 3.04274 0.05
1953 1 1 3.93784 0.05
1954 1 1 4.78629 0.05
1955 1 1 5.73471 0.05
1956 1 1 6.85627 0.05
1957 1 1 7.97741 0.05
1958 1 1 8.8078 0.05
1959 1 1 9.81388 0.05
1960 1 1 10.9266 0.05
1961 1 1 12.3057 0.05
1962 1 1 14.0603 0.05
1963 1 1 14.4517 0.05
1964 1 1 14.7239 0.05
1965 1 1 15.6982 0.05
1966 1 1 8.29251 0.05
1967 1 1 17.1907 0.05
1968 1 1 28.3273 0.05
1969 1 1 41.8227 0.05
1970 1 1 36.6121 0.05
1971 1 1 38.6014 0.05
1972 1 1 36.3982 0.05
1973 1 1 55.9231 0.05
1974 1 1 56.1071 0.05
1975 1 1 124.032 0.05
1976 1 1 106.612 0.05
1977 1 1 161.047 0.05
1978 1 1 125.158 0.05
1979 1 1 90.8753 0.05
1980 1 1 66.8929 0.05
1981 1 1 104.876 0.05
1982 1 1 113.716 0.05
1983 1 1 169.856 0.05
1984 1 1 214.352 0.05
1985 1 1 283.341 0.05
1986 1 1 302.001 0.05
1987 1 1 240.623 0.05
1988 1 1 246.959 0.05
1989 1 1 226.144 0.05
1990 1 1 536.095 0.05
1991 1 1 419.873 0.05
1992 1 1 556.838 0.05
1993 1 1 741.233 0.05
1994 1 1 790.45 0.05
1995 1 1 705.043 0.05
1996 1 1 516.137 0.05
1997 1 1 456.739 0.05
1998 1 1 348.751 0.05
1999 1 1 419.124 0.05
2000 1 1 306.811 0.05
2001 1 1 347.636 0.05
2002 1 1 416.137 0.05
2003 1 1 572.48 0.05
2004 1 1 443.786 0.05
2005 1 1 440.051 0.05
2006 1 1 501.235 0.05
2007 1 1 503.176 0.05
2008 1 1 785.04 0.05
2009 1 1 1266.67 0.05
2010 1 1 573.627 0.05
2011 1 1 1035.4 0.05
2012 1 1 735.856 0.05
2013 1 1 439.478 0.05
2014 1 1 473.215 0.05
2015 1 1 361.216 0.05
2016 1 1 362.3 0.05
2017 1 1 399.111 0.05
-999 1 2 0 0.01
1950 1 2 0.757006 0.05
1951 1 2 1.51092 0.05
1952 1 2 2.02914 0.05
1953 1 2 2.84479 0.05
1954 1 2 3.46876 0.05
1955 1 2 4.44892 0.05
1956 1 2 5.10079 0.05
1957 1 2 5.86575 0.05
1958 1 2 6.30642 0.05
1959 1 2 7.38145 0.05
1960 1 2 7.60658 0.05
1961 1 2 8.42053 0.05
1962 1 2 9.74925 0.05
1963 1 2 10.0955 0.05
1964 1 2 11.2885 0.05
1965 1 2 10.079 0.05
1966 1 2 3.21213 0.05
1967 1 2 7.55318 0.05
1968 1 2 23.187 0.05
1969 1 2 13.5662 0.05
1970 1 2 20.1662 0.05
1971 1 2 21.4653 0.05
1972 1 2 20.8532 0.05
1973 1 2 25.9524 0.05
1974 1 2 27.1838 0.05
1975 1 2 47.757 0.05
1976 1 2 28.4861 0.05
1977 1 2 86.9245 0.05
1978 1 2 70.7067 0.05
1979 1 2 94.5189 0.05
1980 1 2 71.7049 0.05
1981 1 2 49.5914 0.05
1982 1 2 70.5539 0.05
1983 1 2 70.2782 0.05
1984 1 2 367.019 0.05
1985 1 2 344.638 0.05
1986 1 2 437.754 0.05
1987 1 2 469.69 0.05
1988 1 2 452.048 0.05
1989 1 2 406.388 0.05
1990 1 2 442.862 0.05
1991 1 2 369.087 0.05
1992 1 2 470.892 0.05
1993 1 2 455.226 0.05
1994 1 2 457.776 0.05
1995 1 2 299.543 0.05
1996 1 2 299.775 0.05
1997 1 2 480.829 0.05
1998 1 2 397.117 0.05
1999 1 2 481.069 0.05
2000 1 2 362.66 0.05
2001 1 2 392.068 0.05
2002 1 2 448.807 0.05
2003 1 2 522.3 0.05
2004 1 2 569.509 0.05
2005 1 2 408.931 0.05
2006 1 2 278.458 0.05
2007 1 2 522.921 0.05
2008 1 2 403.962 0.05
2009 1 2 419.438 0.05
2010 1 2 375.424 0.05
2011 1 2 317.262 0.05
2012 1 2 381.958 0.05
2013 1 2 241.544 0.05
2014 1 2 289.025 0.05
2015 1 2 320.373 0.05
2016 1 2 335.112 0.05
2017 1 2 306.6 0.05
-999 1 3 0 0.01
1950 1 3 5.37647 0.15
1951 1 3 13.3723 0.15
1952 1 3 33.3041 0.15
1953 1 3 35.5185 0.15
1954 1 3 46.4106 0.15
1955 1 3 56.4348 0.15
1956 1 3 79.6204 0.15
1957 1 3 81.8222 0.15
1958 1 3 103.527 0.15
1959 1 3 88.0634 0.15
1960 1 3 76.3985 0.15
1961 1 3 91.9616 0.15
1962 1 3 136.75 0.15
1963 1 3 119.387 0.15
1964 1 3 132.28 0.15
1965 1 3 179.584 0.15
1966 1 3 206.384 0.15
1967 1 3 200.617 0.15
1968 1 3 148.884 0.15
1969 1 3 235.338 0.15
1970 1 3 230.223 0.15
1971 1 3 170.15 0.15
1972 1 3 218.818 0.15
1973 1 3 260.063 0.15
1974 1 3 243.1 0.15
1975 1 3 240.51 0.15
1976 1 3 239.959 0.15
1977 1 3 184.144 0.15
1978 1 3 370.146 0.15
1979 1 3 248.577 0.15
1980 1 3 376.801 0.15
1981 1 3 327.69 0.15
1982 1 3 695.088 0.15
1983 1 3 258.481 0.15
1984 1 3 443.99 0.15
1985 1 3 850.375 0.15
1986 1 3 1231.14 0.15
1987 1 3 1113.86 0.15
1988 1 3 1543.45 0.15
1989 1 3 1303.99 0.15
1990 1 3 1278.07 0.15
1991 1 3 1216.79 0.15
1992 1 3 2209.76 0.15
1993 1 3 1586.29 0.15
1994 1 3 1120.99 0.15
1995 1 3 1752.13 0.15
1996 1 3 583.615 0.15
1997 1 3 811.798 0.15
1998 1 3 328.388 0.15
1999 1 3 804.513 0.15
2000 1 3 450.106 0.15
2001 1 3 1007.78 0.15
2002 1 3 779.625 0.15
2003 1 3 1027.06 0.15
2004 1 3 1113.24 0.15
2005 1 3 786.282 0.15
2006 1 3 969.307 0.15
2007 1 3 709.593 0.15
2008 1 3 494.66 0.15
2009 1 3 1089.36 0.15
2010 1 3 973.588 0.15
2011 1 3 1546.46 0.15
2012 1 3 1191.14 0.15
2013 1 3 1734.76 0.15
2014 1 3 1481.56 0.15
2015 1 3 1185.62 0.15
2016 1 3 1275.23 0.15
2017 1 3 2900.57 0.15
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
1993 7 1 1.23189 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 0.875046 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 1.19668 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 1.15535 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 1.13811 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 1.4988 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 1.05332 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 1.03556 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 0.873069 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.23811 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 0.941152 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 0.892157 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 1.34624 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.794775 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 1.27 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 0.974629 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 0.759215 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.653847 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 1.34592 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 1.11723 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 0.802454 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.00827 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 1.17156 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.10629 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 0.872429 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.28157 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.784723 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.756277 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.21052 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.12213 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.38613 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.63869 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 0.819542 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 0.818702 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.34467 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.44268 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.35727 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.21634 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.651122 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.72778 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.631345 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.824043 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 1.2096 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.928056 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.81013 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.737722 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.691095 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.475617 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.316203 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.557536 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.713589 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.583185 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.701347 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 1.16544 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.666615 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.713808 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.940235 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.932652 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.936158 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.843579 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.042507 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.0399478 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.0254359 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.0515982 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.0423472 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.0340599 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.0359723 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.0454602 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.0391232 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.0354716 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.0520299 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.0366824 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.034534 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.0530662 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.0287376 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.0454674 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.0508399 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.0394674 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.0421133 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.0481323 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.0312067 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.032961 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.0354615 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.0371134 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.0336529 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.0348415 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.0321333 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.0348365 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.0512836 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.0630202 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.0343893 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.0523683 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.0476301 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.0311658 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.0488057 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.0333817 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.0381705 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.0370337 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.0553837 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.0411627 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.0422959 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.0577011 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.0298489 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.0426216 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.0396568 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.037818 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.0326973 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.0413609 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.0463032 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.0467319 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.0367806 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.045869 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.0368896 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.0294231 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.041897 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.0567349 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.0462924 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.0500824 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.0420173 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.0365865 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.0256134 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.0346976 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.0363449 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.053164 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.0335972 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.0372483 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.0371723 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.0758378 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 0.955314 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.888828 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 0.949648 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 1.43324 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 0.956682 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 1.14511 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 1.16075 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.0343 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.944299 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 0.634582 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.760383 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 0.885098 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.700096 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 0.805969 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.854661 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 1.17723 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 0.916432 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.01869 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.20613 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 0.858894 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 0.725023 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 0.864436 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.929989 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 1.22117 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 1.37474 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 1.16952 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.778393 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 1.28984 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 0.994324 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 0.985172 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 0.926092 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.625461 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 0.780581 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 0.963285 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.627113 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 1.8069 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.99541 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 1.1967 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.748554 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 0.998902 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 1.15939 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 1.09066 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.73705 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.639468 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.870946 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.747933 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 1.0408 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 0.713074 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 0.559868 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.742684 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 1.1783 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 0.881846 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 0.93006 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 0.795535 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 0.698009 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 1.17475 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.925794 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.711999 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.818758 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 1.07587 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 1.22735 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 0.774127 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 1.09326 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.97015 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.02181 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 0.722094 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 1.16368 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 0.848382 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 1.11359 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.952097 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 1.32219 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.980331 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 1.10559 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 1.03362 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 1.06968 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.91903 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 0.856466 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.812411 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.878925 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.01506 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 1.03735 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 1.17298 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.869453 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 1.34436 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.881648 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 0.835003 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 0.876658 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.859817 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.783141 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.870511 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.821273 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 0.832117 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 0.815955 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.801182 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 0.622408 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.02294 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.2677 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.927394 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 1.14889 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 1.41256 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.00514 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 1.16047 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 1.26309 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.885609 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.05773 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.08016 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 1.43359 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.908827 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.716556 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.799017 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 1.26548 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.824201 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 0.740326 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 1.20353 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 0.665405 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  12.6749 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  17.3647 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  13.0702 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  18.4524 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  11.6643 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  8.99123 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  10.4341 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  5.67205 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  7.03441 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  7.2666 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  16.4325 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  7.81033 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  147.125 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  269.443 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  430.758 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  73.554 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  109.804 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  33.3947 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  174.733 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  102.854 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  33.9435 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  66.8259 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  39.3498 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  67.2047 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  29.921 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  6.92732 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  9.34887 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  2.77199 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  6.24057 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  6.82732 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  5.04394 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  7.16541 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  3.58355 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  8.06584 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  12.3088 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  7.24002 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  9.53756 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  98.908 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  115.669 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  118.973 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  34.0148 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  42.5491 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  37.8652 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  21.4859 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  61.0721 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  10.6756 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  21.3629 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  16.4029 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  21.7098 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  23.3227 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  5.91297 0.3 #_orig_obs: 1 #_ REC
1983 7 3  1.46537 0.3 #_orig_obs: 53 #_ REC
1984 7 3  2.97789 0.3 #_orig_obs: 25 #_ REC
1985 7 3  5.45542 0.3 #_orig_obs: 24 #_ REC
1986 7 3  6.72578 0.3 #_orig_obs: 85 #_ REC
1987 7 3  6.64489 0.3 #_orig_obs: 90 #_ REC
1988 7 3  17.9519 0.3 #_orig_obs: 356 #_ REC
1989 7 3  12.8955 0.3 #_orig_obs: 174 #_ REC
1990 7 3  295.796 0.3 #_orig_obs: 145 #_ REC
1991 7 3  268.101 0.3 #_orig_obs: 319 #_ REC
1992 7 3  569.127 0.3 #_orig_obs: 281 #_ REC
1993 7 3  167.64 0.3 #_orig_obs: 561 #_ REC
1994 7 3  254.029 0.3 #_orig_obs: 172 #_ REC
1995 7 3  350.226 0.3 #_orig_obs: 567 #_ REC
1996 7 3  95.0697 0.3 #_orig_obs: 205 #_ REC
1997 7 3  545.408 0.3 #_orig_obs: 57 #_ REC
1998 7 3  358.937 0.3 #_orig_obs: 46 #_ REC
1999 7 3  434.639 0.3 #_orig_obs: 145 #_ REC
2000 7 3  240.742 0.3 #_orig_obs: 61 #_ REC
2001 7 3  842.376 0.3 #_orig_obs: 127 #_ REC
2002 7 3  643.135 0.3 #_orig_obs: 290 #_ REC
2003 7 3  570.408 0.3 #_orig_obs: 309 #_ REC
2004 7 3  580.624 0.3 #_orig_obs: 202 #_ REC
2005 7 3  940.218 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1148.44 0.3 #_orig_obs: 229 #_ REC
2007 7 3  1618.15 0.3 #_orig_obs: 194 #_ REC
2008 7 3  405.019 0.3 #_orig_obs: 161 #_ REC
2009 7 3  684.289 0.3 #_orig_obs: 211 #_ REC
2010 7 3  375.727 0.3 #_orig_obs: 84 #_ REC
2011 7 3  1350.11 0.3 #_orig_obs: 168 #_ REC
2012 7 3  482.995 0.3 #_orig_obs: 210 #_ REC
2013 7 3  1162.65 0.3 #_orig_obs: 477 #_ REC
2014 7 3  1170.85 0.3 #_orig_obs: 394 #_ REC
2015 7 3  1007.71 0.3 #_orig_obs: 291 #_ REC
2016 7 3  495.596 0.3 #_orig_obs: 329 #_ REC
2017 7 3  1361.06 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  235.131 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  217.887 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  217.887 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  217.887 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  217.887 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  217.887 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  217.887 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  217.887 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  217.887 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  217.887 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  217.887 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  217.887 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  217.887 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  217.887 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  217.887 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  217.887 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  217.887 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  217.887 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  217.887 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  217.887 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  217.887 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  217.887 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  217.887 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  217.887 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  217.887 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  217.887 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  217.887 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  217.887 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  217.887 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  217.887 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  217.887 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  217.887 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  217.887 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  217.887 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  217.887 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  217.887 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  217.887 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  217.887 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  217.887 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  217.887 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  217.887 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  217.887 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  217.887 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  217.887 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  217.887 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  217.887 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 2 2 7 1 4 1 0 0 0 0
 2004 7 8 0 0 6  0 0 0 1 1 0 3 0 1 0 0 0
 2005 7 8 0 0 38  0 0 1 6 10 11 7 2 0 1 0 0
 2006 7 8 0 0 18  0 0 3 2 7 2 2 2 0 0 0 0
 2007 7 8 0 0 11  0 0 1 1 4 4 0 1 0 0 0 0
 2008 7 8 0 0 8  0 0 0 2 1 4 1 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 6 10 7 1 0 1 0 0 0
 2010 7 8 0 0 32  0 0 4 7 6 10 0 4 1 0 0 0
 2011 7 8 0 0 47  0 2 5 9 11 12 6 1 1 0 0 0
 2012 7 8 0 0 39  0 0 5 11 8 8 4 1 2 0 0 0
 2013 7 8 0 0 100  0 0 6 15 33 23 10 8 5 0 0 0
 2014 7 8 0 0 100  0 0 6 16 27 28 14 5 4 0 0 0
 2015 7 8 0 0 74  0 1 1 6 14 24 14 9 2 1 2 0
 2016 7 8 0 0 32  0 1 1 6 7 7 5 2 3 0 0 0
 2017 7 8 0 0 100  0 0 4 16 26 25 16 5 6 2 0 0
 2009 7 9 0 0 35  0 0 8 18 8 1 0 0 0 0 0 0
 2010 7 9 0 0 100  0 2 24 41 29 4 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 8 3 6 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 2 2 4 2 1 0 0 0 0 0 0
 2013 7 9 0 0 37  0 0 8 13 16 0 0 0 0 0 0 0
 2014 7 9 0 0 69  0 2 10 27 26 4 0 0 0 0 0 0
 2015 7 9 0 0 37  0 2 5 18 10 2 0 0 0 0 0 0
 2016 7 9 0 0 38  0 0 7 18 13 0 0 0 0 0 0 0
 2017 7 9 0 0 100  0 9 21 39 29 2 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 1 1 1 0 0 0 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 1 1 0 2 1 0 0 1 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 2 0 3 0 0 0 0 0 0 1 1 0 1
2001  7 1  0 2 1 -1 -1 23  0 4 4 1 5 1 1 3 1 0 0 1 1 1
2002  7 1  0 2 1 -1 -1 100  0 9 19 25 4 12 6 4 5 6 3 3 0 4
2003  7 1  0 2 1 -1 -1 23  0 0 3 7 6 1 1 0 2 0 2 1 0 0
2004  7 1  0 2 1 -1 -1 33  0 2 9 3 5 2 1 4 1 1 1 1 2 1
2005  7 1  0 2 1 -1 -1 100  0 2 5 24 18 6 9 8 11 5 3 2 1 6
2006  7 1  0 2 1 -1 -1 59  0 0 3 6 13 10 5 10 1 6 1 2 0 2
2007  7 1  0 2 1 -1 -1 54  0 0 9 5 4 8 6 3 5 2 4 2 0 6
2008  7 1  0 2 1 -1 -1 100  0 8 14 22 6 3 10 11 0 5 4 7 1 9
2009  7 1  0 2 1 -1 -1 100  0 11 23 12 16 8 4 9 2 2 5 0 3 5
2010  7 1  0 2 1 -1 -1 32  0 1 11 6 2 3 2 2 3 1 0 0 1 0
2011  7 1  0 2 1 -1 -1 87  0 7 15 15 17 9 4 6 3 5 0 2 3 1
2012  7 1  0 2 1 -1 -1 99  0 5 21 14 18 13 6 9 2 1 3 3 1 3
2013  7 1  0 2 1 -1 -1 55  0 7 14 8 6 7 6 1 0 4 0 1 0 1
2014  7 1  0 2 1 -1 -1 79  0 3 18 10 11 5 7 8 3 3 2 2 1 6
2015  7 1  0 2 1 -1 -1 100  0 4 11 22 14 13 8 9 2 6 4 1 0 6
2016  7 1  0 2 1 -1 -1 100  0 3 15 22 19 10 5 6 6 4 1 5 0 4
2017  7 1  0 2 1 -1 -1 100  0 4 11 13 22 15 8 7 7 3 3 0 2 5
1994  7 2  0 2 1 -1 -1 8  0 0 3 1 0 0 0 0 1 1 0 0 1 1
1995  7 2  0 2 1 -1 -1 7  0 1 0 1 2 3 0 0 0 0 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 4 9 10 8 7 7 2 2 3 5 2 5
2001  7 2  0 2 1 -1 -1 48  0 1 7 7 11 6 1 3 5 2 2 0 2 1
2002  7 2  0 2 1 -1 -1 34  0 0 1 3 3 6 5 2 2 2 4 0 1 5
2003  7 2  0 2 1 -1 -1 30  0 2 3 5 2 2 4 3 1 1 1 3 0 3
2004  7 2  0 2 1 -1 -1 100  0 4 8 11 18 17 7 10 3 3 1 6 3 9
2005  7 2  0 2 1 -1 -1 21  0 0 0 4 6 0 1 1 3 1 1 1 1 2
2006  7 2  0 2 1 -1 -1 16  0 0 0 1 3 1 2 2 2 0 2 0 0 3
2007  7 2  0 2 1 -1 -1 100  0 1 4 12 5 14 9 10 16 8 5 6 2 8
2008  7 2  0 2 1 -1 -1 100  0 2 6 16 9 13 18 11 4 4 2 7 3 5
2009  7 2  0 2 1 -1 -1 100  0 2 15 11 14 6 12 13 7 5 4 1 4 6
2010  7 2  0 2 1 -1 -1 59  1 0 5 11 8 12 5 2 6 3 0 1 0 5
2011  7 2  0 2 1 -1 -1 100  0 2 2 13 26 19 11 5 5 3 1 4 2 7
2012  7 2  0 2 1 -1 -1 89  0 3 7 9 21 17 6 6 4 3 8 1 0 4
2013  7 2  0 2 1 -1 -1 48  0 2 4 7 5 12 8 2 6 1 0 0 1 0
2014  7 2  0 2 1 -1 -1 47  0 1 6 11 9 6 2 3 2 2 0 0 1 4
2015  7 2  0 2 1 -1 -1 23  0 1 0 8 2 2 0 0 2 3 2 0 0 3
2016  7 2  0 2 1 -1 -1 82  0 2 3 6 26 8 12 3 11 6 2 1 0 2
2017  7 2  0 2 1 -1 -1 89  0 2 4 3 13 23 14 6 7 4 5 1 1 6
1994  7 3  0 2 1 -1 -1 13  0 0 5 4 2 2 0 0 0 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 2 1 0 1 2 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 5 24 14 18 8 3 4 0 1 0 0 0 0
1997  7 3  0 2 1 -1 -1 15  0 3 3 6 0 1 1 1 0 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 3 2 1 3 1 2 1 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 0 6 5 2 2 2 3 3 1 0 0 1 0
2000  7 3  0 2 1 -1 -1 61  0 5 11 18 9 6 7 0 1 0 2 1 0 1
2001  7 3  0 2 1 -1 -1 7  0 1 2 1 1 1 1 0 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 2 1 1 3 7 1 0 0 0 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 3 2 6 2 2 3 0 0 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 1 0 2 0 0 0 0 0 1 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 4 8 15 8 7 8 1 2 0 1 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 1 10 11 25 15 13 6 4 8 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 1 19 15 22 27 7 0 4 0 1 2 0 2
2008  7 3  0 2 1 -1 -1 42  0 1 8 10 5 5 6 2 1 2 0 1 0 1
2009  7 3  0 2 1 -1 -1 100  1 15 30 12 20 5 7 3 2 1 2 1 1 0
2010  7 3  0 2 1 -1 -1 20  0 1 5 3 3 3 3 0 1 0 0 0 0 1
2011  7 3  0 2 1 -1 -1 78  0 8 9 29 15 6 7 0 1 1 1 1 0 0
2012  7 3  0 2 1 -1 -1 100  1 5 22 20 22 15 6 6 0 1 1 0 0 1
2013  7 3  0 2 1 -1 -1 100  0 13 26 22 18 11 6 2 0 0 1 0 1 0
2014  7 3  0 2 1 -1 -1 100  0 10 33 20 18 3 10 5 0 0 1 0 0 0
2015  7 3  0 2 1 -1 -1 46  1 2 9 12 10 5 2 4 0 0 1 0 0 0
2016  7 3  0 2 1 -1 -1 100  0 6 15 23 20 14 14 4 1 1 0 0 0 2
2017  7 3  0 2 1 -1 -1 100  0 7 15 23 19 13 8 6 3 1 2 0 1 2
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

