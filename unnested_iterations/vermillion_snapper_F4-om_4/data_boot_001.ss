#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:08 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403948 first rand#: 0.108462
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
1950 1 1 0.992894 0.05
1951 1 1 2.01638 0.05
1952 1 1 3.10709 0.05
1953 1 1 4.05838 0.05
1954 1 1 4.71673 0.05
1955 1 1 5.95207 0.05
1956 1 1 7.043 0.05
1957 1 1 7.73852 0.05
1958 1 1 9.4847 0.05
1959 1 1 10.2988 0.05
1960 1 1 12.1946 0.05
1961 1 1 11.0275 0.05
1962 1 1 12.2052 0.05
1963 1 1 13.9923 0.05
1964 1 1 14.6866 0.05
1965 1 1 16.0076 0.05
1966 1 1 7.61581 0.05
1967 1 1 14.8281 0.05
1968 1 1 34.3612 0.05
1969 1 1 37.4309 0.05
1970 1 1 37.3619 0.05
1971 1 1 39.5343 0.05
1972 1 1 35.3656 0.05
1973 1 1 59.0591 0.05
1974 1 1 57.8112 0.05
1975 1 1 132.381 0.05
1976 1 1 115.518 0.05
1977 1 1 156.43 0.05
1978 1 1 130.92 0.05
1979 1 1 96.6145 0.05
1980 1 1 72.4971 0.05
1981 1 1 114.041 0.05
1982 1 1 115.841 0.05
1983 1 1 175.552 0.05
1984 1 1 226.623 0.05
1985 1 1 308.894 0.05
1986 1 1 319.075 0.05
1987 1 1 241.399 0.05
1988 1 1 223.606 0.05
1989 1 1 230.68 0.05
1990 1 1 521.319 0.05
1991 1 1 432.115 0.05
1992 1 1 490.704 0.05
1993 1 1 760.92 0.05
1994 1 1 658.294 0.05
1995 1 1 611.857 0.05
1996 1 1 510.93 0.05
1997 1 1 496.557 0.05
1998 1 1 373.408 0.05
1999 1 1 428.194 0.05
2000 1 1 301.765 0.05
2001 1 1 355.388 0.05
2002 1 1 419.681 0.05
2003 1 1 505.698 0.05
2004 1 1 411.283 0.05
2005 1 1 396.671 0.05
2006 1 1 445.066 0.05
2007 1 1 543.205 0.05
2008 1 1 808.143 0.05
2009 1 1 1399.09 0.05
2010 1 1 657.035 0.05
2011 1 1 996.569 0.05
2012 1 1 732.607 0.05
2013 1 1 422.561 0.05
2014 1 1 517.066 0.05
2015 1 1 310.021 0.05
2016 1 1 352.955 0.05
2017 1 1 421.062 0.05
-999 1 2 0 0.01
1950 1 2 0.730407 0.05
1951 1 2 1.48107 0.05
1952 1 2 2.37374 0.05
1953 1 2 2.89281 0.05
1954 1 2 3.70772 0.05
1955 1 2 4.64822 0.05
1956 1 2 4.97747 0.05
1957 1 2 5.64371 0.05
1958 1 2 6.9065 0.05
1959 1 2 7.27905 0.05
1960 1 2 8.32113 0.05
1961 1 2 9.1081 0.05
1962 1 2 9.52997 0.05
1963 1 2 10.9749 0.05
1964 1 2 11.5268 0.05
1965 1 2 9.07614 0.05
1966 1 2 3.30162 0.05
1967 1 2 7.56925 0.05
1968 1 2 22.7869 0.05
1969 1 2 12.6558 0.05
1970 1 2 20.6414 0.05
1971 1 2 20.8994 0.05
1972 1 2 21.6116 0.05
1973 1 2 26.7355 0.05
1974 1 2 31.1538 0.05
1975 1 2 48.6817 0.05
1976 1 2 26.8251 0.05
1977 1 2 93.3913 0.05
1978 1 2 69.5894 0.05
1979 1 2 102.023 0.05
1980 1 2 67.5904 0.05
1981 1 2 52.8264 0.05
1982 1 2 65.9828 0.05
1983 1 2 72.959 0.05
1984 1 2 385.071 0.05
1985 1 2 352.02 0.05
1986 1 2 397.018 0.05
1987 1 2 499.01 0.05
1988 1 2 471.057 0.05
1989 1 2 458.446 0.05
1990 1 2 439.717 0.05
1991 1 2 374.034 0.05
1992 1 2 502.039 0.05
1993 1 2 442.989 0.05
1994 1 2 483.259 0.05
1995 1 2 286.071 0.05
1996 1 2 291.365 0.05
1997 1 2 483.941 0.05
1998 1 2 376.098 0.05
1999 1 2 498.012 0.05
2000 1 2 323.286 0.05
2001 1 2 423.815 0.05
2002 1 2 424.925 0.05
2003 1 2 573.286 0.05
2004 1 2 543.481 0.05
2005 1 2 405.506 0.05
2006 1 2 289.629 0.05
2007 1 2 546.583 0.05
2008 1 2 495.176 0.05
2009 1 2 441.482 0.05
2010 1 2 373.774 0.05
2011 1 2 322.067 0.05
2012 1 2 368.416 0.05
2013 1 2 241.736 0.05
2014 1 2 307.934 0.05
2015 1 2 304.169 0.05
2016 1 2 356.474 0.05
2017 1 2 317.174 0.05
-999 1 3 0 0.01
1950 1 3 6.13079 0.15
1951 1 3 14.9567 0.15
1952 1 3 29.9439 0.15
1953 1 3 39.9113 0.15
1954 1 3 43.0937 0.15
1955 1 3 36.2412 0.15
1956 1 3 79.2943 0.15
1957 1 3 75.9829 0.15
1958 1 3 82.7744 0.15
1959 1 3 123.986 0.15
1960 1 3 115.894 0.15
1961 1 3 121.402 0.15
1962 1 3 111.687 0.15
1963 1 3 146.625 0.15
1964 1 3 136.371 0.15
1965 1 3 164.634 0.15
1966 1 3 178.277 0.15
1967 1 3 188.197 0.15
1968 1 3 198.898 0.15
1969 1 3 219.29 0.15
1970 1 3 218.594 0.15
1971 1 3 230.138 0.15
1972 1 3 201.406 0.15
1973 1 3 220.034 0.15
1974 1 3 239.09 0.15
1975 1 3 280.729 0.15
1976 1 3 259.772 0.15
1977 1 3 269.835 0.15
1978 1 3 239.138 0.15
1979 1 3 290.454 0.15
1980 1 3 273.553 0.15
1981 1 3 286.239 0.15
1982 1 3 538.873 0.15
1983 1 3 260.88 0.15
1984 1 3 329.55 0.15
1985 1 3 865.335 0.15
1986 1 3 858.139 0.15
1987 1 3 928.693 0.15
1988 1 3 1942.87 0.15
1989 1 3 1115.5 0.15
1990 1 3 1308.31 0.15
1991 1 3 1581.88 0.15
1992 1 3 1959.45 0.15
1993 1 3 1689.55 0.15
1994 1 3 1389.15 0.15
1995 1 3 1568.68 0.15
1996 1 3 552.082 0.15
1997 1 3 737.367 0.15
1998 1 3 315.109 0.15
1999 1 3 744.407 0.15
2000 1 3 445.283 0.15
2001 1 3 1293.51 0.15
2002 1 3 1271.85 0.15
2003 1 3 937.348 0.15
2004 1 3 911.67 0.15
2005 1 3 1060.59 0.15
2006 1 3 618.807 0.15
2007 1 3 658.474 0.15
2008 1 3 573.183 0.15
2009 1 3 1391.59 0.15
2010 1 3 918.275 0.15
2011 1 3 1405.41 0.15
2012 1 3 980.211 0.15
2013 1 3 1465.18 0.15
2014 1 3 2013.85 0.15
2015 1 3 1713.89 0.15
2016 1 3 1658.75 0.15
2017 1 3 1967.87 0.15
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
1993 7 1 1.10402 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.24222 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 1.63647 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 1.13938 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 1.11486 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 1.19192 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.928104 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 1.16687 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.46132 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.06209 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.36962 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 0.936132 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 1.16426 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.975764 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 1.83032 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 0.898568 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 1.15565 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.794398 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 1.19741 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 1.0796 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.1259 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 0.615693 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 0.990155 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 1.06481 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 1.0434 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 1.07064 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.756479 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.793001 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.25946 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.05212 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 0.804022 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.41746 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 1.24186 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 0.952423 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 1.1123 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.23533 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 1.1616 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 1.10913 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 0.926193 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.824879 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.561669 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.760044 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.917324 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.511585 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.719285 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 0.967197 0.1792 #_orig_obs: 0.422 REC
2004 7 3 1.03665 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.534859 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.426052 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.620233 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.921971 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.552693 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.845663 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.738571 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.926763 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.781242 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.942493 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.683953 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.681136 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.611491 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.0302521 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.0453152 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.0374888 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.0312631 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.0412009 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.0466914 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.0420788 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.0318044 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.0348628 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.0329569 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.0338959 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.0464773 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.052752 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.0427944 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.0363747 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.0335801 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.0422481 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.0417914 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.0385084 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.0483831 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.0611437 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.0398739 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.0377621 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.0287325 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.0358609 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.0273871 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.0346465 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.0465992 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.0384385 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.0446812 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.0464003 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.0348864 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.0554817 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.0393976 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.0439913 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.0333444 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.0299726 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.050631 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.0468455 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.0567755 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.041686 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.0393681 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.0434739 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.042286 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.0327098 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.0383388 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.039145 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.0337513 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.0456882 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.0335081 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.0421011 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.0373045 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.0426011 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.032515 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.039832 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.0397774 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.0549449 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.0285447 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.0441536 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.0375861 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.0366671 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.0389301 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.0425795 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.0217434 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.0480441 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.0499906 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.0415462 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.0384586 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 0.595279 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 1.24591 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 0.920151 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.800587 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 1.20586 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.893037 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 0.937384 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 0.65153 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.960705 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 1.05852 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.917949 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 1.0057 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.577935 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 1.47554 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.760657 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.826624 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 1.26061 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 1.02267 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 0.554403 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 1.08346 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 0.913613 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 0.931661 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 0.902581 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 0.892252 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 1.04403 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 1.15551 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 1.26457 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 1.04127 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 0.756226 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 0.722257 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 1.07604 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.823998 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.46581 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 1.08983 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 0.877171 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 0.967429 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.962641 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.875729 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 1.12049 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 0.935842 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.886012 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.828027 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.731288 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 1.0176 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.704804 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.970109 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.849114 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 0.834519 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 1.0501 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 1.15959 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.862427 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 1.00225 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 1.0529 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 0.717434 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 0.844728 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 1.24154 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.75827 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 1.60254 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 0.934185 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 0.931481 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.661554 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 0.725898 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.97183 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.882602 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.44409 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.35729 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 1.04834 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 1.09094 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 0.856906 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 1.09643 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 0.89199 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 1.03108 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 0.722388 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.76776 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.740786 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 0.627449 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 0.942181 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 0.896779 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 1.12126 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 0.827888 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 0.731943 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 0.981149 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 0.810479 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 1.42679 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 1.07245 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 1.00385 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 1.41506 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.920646 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.902489 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.759355 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.669556 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 1.11685 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 0.882131 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.872736 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 1.00601 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 1.02715 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.36086 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.781455 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.987012 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 1.19846 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 0.843909 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.950132 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.956234 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 0.836675 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 0.848553 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 0.832012 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 1.68571 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.978563 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.817494 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 1.30741 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 1.2156 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.565674 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 0.8574 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.695817 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.16318 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  12.3237 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  13.3552 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  17.5955 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  10.0178 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  16.1904 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  10.9825 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  7.1964 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  8.35214 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  8.69202 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  8.40246 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  7.5997 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  8.21994 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  99.3332 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  152.006 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  246.644 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  102.289 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  160.297 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  85.887 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  142.344 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  109.361 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  84.6004 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  45.2045 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  41.1394 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  38.2191 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  52.4512 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  6.91836 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  8.30636 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  4.58007 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  5.1329 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  4.50044 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  5.23447 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  8.08436 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  5.19803 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  7.51369 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  5.24607 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  10.1847 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  17.6033 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  120.39 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  48.7434 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  169.89 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  34.1665 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  21.0925 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  23.2649 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  19.9457 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  36.3859 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  12.0806 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  16.5167 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  25.711 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  21.0176 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  29.948 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  4.74247 0.3 #_orig_obs: 1 #_ REC
1983 7 3  1.42393 0.3 #_orig_obs: 53 #_ REC
1984 7 3  3.81413 0.3 #_orig_obs: 25 #_ REC
1985 7 3  5.93871 0.3 #_orig_obs: 24 #_ REC
1986 7 3  10.7545 0.3 #_orig_obs: 85 #_ REC
1987 7 3  13.3598 0.3 #_orig_obs: 90 #_ REC
1988 7 3  16.6183 0.3 #_orig_obs: 356 #_ REC
1989 7 3  7.69183 0.3 #_orig_obs: 174 #_ REC
1990 7 3  340.545 0.3 #_orig_obs: 145 #_ REC
1991 7 3  354.269 0.3 #_orig_obs: 319 #_ REC
1992 7 3  312.604 0.3 #_orig_obs: 281 #_ REC
1993 7 3  282.832 0.3 #_orig_obs: 561 #_ REC
1994 7 3  214.465 0.3 #_orig_obs: 172 #_ REC
1995 7 3  266.924 0.3 #_orig_obs: 567 #_ REC
1996 7 3  205.21 0.3 #_orig_obs: 205 #_ REC
1997 7 3  283.317 0.3 #_orig_obs: 57 #_ REC
1998 7 3  235.149 0.3 #_orig_obs: 46 #_ REC
1999 7 3  355.505 0.3 #_orig_obs: 145 #_ REC
2000 7 3  194.199 0.3 #_orig_obs: 61 #_ REC
2001 7 3  738.875 0.3 #_orig_obs: 127 #_ REC
2002 7 3  812.541 0.3 #_orig_obs: 290 #_ REC
2003 7 3  328.315 0.3 #_orig_obs: 309 #_ REC
2004 7 3  668.556 0.3 #_orig_obs: 202 #_ REC
2005 7 3  648.264 0.3 #_orig_obs: 363 #_ REC
2006 7 3  2197.01 0.3 #_orig_obs: 229 #_ REC
2007 7 3  1309.93 0.3 #_orig_obs: 194 #_ REC
2008 7 3  336.296 0.3 #_orig_obs: 161 #_ REC
2009 7 3  504.361 0.3 #_orig_obs: 211 #_ REC
2010 7 3  263.933 0.3 #_orig_obs: 84 #_ REC
2011 7 3  939.157 0.3 #_orig_obs: 168 #_ REC
2012 7 3  614.85 0.3 #_orig_obs: 210 #_ REC
2013 7 3  803.493 0.3 #_orig_obs: 477 #_ REC
2014 7 3  584.656 0.3 #_orig_obs: 394 #_ REC
2015 7 3  803.644 0.3 #_orig_obs: 291 #_ REC
2016 7 3  1158.21 0.3 #_orig_obs: 329 #_ REC
2017 7 3  1732.98 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  252.237 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  218.257 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  218.257 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  218.257 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  218.257 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  218.257 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  218.257 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  218.257 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  218.257 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  218.257 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  218.257 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  218.257 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  218.257 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  218.257 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  218.257 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  218.257 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  218.257 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  218.257 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  218.257 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  218.257 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  218.257 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  218.257 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  218.257 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  218.257 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  218.257 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  218.257 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  218.257 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  218.257 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  218.257 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  218.257 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  218.257 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  218.257 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  218.257 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  218.257 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  218.257 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  218.257 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  218.257 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  218.257 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  218.257 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  218.257 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  218.257 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  218.257 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  218.257 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  218.257 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  218.257 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  218.257 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 4 0 3 8 1 0 1 0 0 0
 2004 7 8 0 0 6  0 0 0 2 0 2 1 1 0 0 0 0
 2005 7 8 0 0 38  0 0 0 7 8 15 5 1 2 0 0 0
 2006 7 8 0 0 18  0 0 4 2 4 4 4 0 0 0 0 0
 2007 7 8 0 0 11  0 0 1 4 1 2 1 0 1 1 0 0
 2008 7 8 0 0 8  0 0 0 2 2 1 2 1 0 0 0 0
 2009 7 8 0 0 25  0 0 0 6 8 6 2 2 1 0 0 0
 2010 7 8 0 0 32  0 0 2 3 8 11 5 2 1 0 0 0
 2011 7 8 0 0 47  0 2 7 3 17 11 4 1 2 0 0 0
 2012 7 8 0 0 39  0 2 3 9 9 8 4 2 2 0 0 0
 2013 7 8 0 0 100  0 0 13 11 31 22 13 8 2 0 0 0
 2014 7 8 0 0 100  0 0 9 10 27 28 12 6 7 1 0 0
 2015 7 8 0 0 74  0 3 4 6 21 24 5 7 3 0 1 0
 2016 7 8 0 0 32  0 0 2 3 7 9 7 3 0 1 0 0
 2017 7 8 0 0 100  0 0 10 18 25 20 16 5 3 3 0 0
 2009 7 9 0 0 35  0 2 7 10 15 1 0 0 0 0 0 0
 2010 7 9 0 0 100  0 4 23 36 33 4 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 8 7 2 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 0 2 8 1 0 0 0 0 0 0 0
 2013 7 9 0 0 37  0 6 10 6 12 2 1 0 0 0 0 0
 2014 7 9 0 0 69  0 3 9 27 27 3 0 0 0 0 0 0
 2015 7 9 0 0 37  0 3 3 14 15 2 0 0 0 0 0 0
 2016 7 9 0 0 38  0 1 9 18 10 0 0 0 0 0 0 0
 2017 7 9 0 0 100  0 4 16 40 38 2 0 0 0 0 0 0
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
1998  7 1  0 2 1 -1 -1 6  0 1 0 1 1 2 0 0 1 0 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 0 2 1 4 0 0 0 0 0 1 0 0 0
2001  7 1  0 2 1 -1 -1 23  0 1 6 4 2 4 0 2 0 1 0 1 0 2
2002  7 1  0 2 1 -1 -1 100  0 17 24 11 11 6 14 3 6 2 3 0 0 3
2003  7 1  0 2 1 -1 -1 23  0 1 8 4 3 0 0 2 1 1 1 0 1 1
2004  7 1  0 2 1 -1 -1 33  0 4 2 9 4 4 4 1 0 0 2 2 0 1
2005  7 1  0 2 1 -1 -1 100  0 1 13 26 19 10 6 3 3 8 0 5 1 5
2006  7 1  0 2 1 -1 -1 59  0 2 4 8 13 9 7 8 1 2 2 0 0 3
2007  7 1  0 2 1 -1 -1 54  0 0 10 6 10 7 6 8 2 0 1 2 0 2
2008  7 1  0 2 1 -1 -1 100  0 7 12 16 5 13 12 12 7 6 4 0 0 6
2009  7 1  0 2 1 -1 -1 100  0 5 13 11 15 7 13 11 8 4 5 2 1 5
2010  7 1  0 2 1 -1 -1 32  0 3 7 8 2 3 0 3 1 1 1 0 1 2
2011  7 1  0 2 1 -1 -1 87  0 5 12 19 13 5 8 5 4 4 5 1 1 5
2012  7 1  0 2 1 -1 -1 99  0 7 13 24 9 14 6 5 1 2 4 6 2 6
2013  7 1  0 2 1 -1 -1 55  0 2 10 12 8 3 3 3 4 0 2 3 1 4
2014  7 1  0 2 1 -1 -1 79  0 4 11 17 10 11 9 3 2 3 2 0 3 4
2015  7 1  0 2 1 -1 -1 100  0 9 6 18 14 12 12 8 3 3 4 0 1 10
2016  7 1  0 2 1 -1 -1 100  0 6 27 14 5 6 9 7 7 7 4 1 1 6
2017  7 1  0 2 1 -1 -1 100  0 7 13 25 6 11 7 8 6 2 6 0 1 8
1994  7 2  0 2 1 -1 -1 8  0 0 1 0 2 3 0 0 0 0 2 0 0 0
1995  7 2  0 2 1 -1 -1 7  0 0 1 0 0 2 0 1 1 2 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 7 1 20 5 5 9 6 4 0 1 1 5
2001  7 2  0 2 1 -1 -1 48  0 2 8 7 7 7 2 7 0 5 0 1 0 2
2002  7 2  0 2 1 -1 -1 34  0 2 5 2 3 0 8 2 3 3 0 3 1 2
2003  7 2  0 2 1 -1 -1 30  0 2 0 6 4 4 4 4 0 1 2 1 1 1
2004  7 2  0 2 1 -1 -1 100  0 7 9 18 13 13 8 10 3 5 1 4 0 9
2005  7 2  0 2 1 -1 -1 21  0 0 0 2 9 5 0 0 0 1 0 0 1 3
2006  7 2  0 2 1 -1 -1 16  0 0 0 2 3 1 1 1 0 0 4 1 0 3
2007  7 2  0 2 1 -1 -1 100  0 0 7 9 15 17 14 13 4 5 5 0 0 11
2008  7 2  0 2 1 -1 -1 100  0 2 3 13 7 25 14 12 4 3 3 2 2 10
2009  7 2  0 2 1 -1 -1 100  0 2 11 8 18 8 10 10 7 4 3 5 3 11
2010  7 2  0 2 1 -1 -1 59  0 0 5 8 3 5 3 8 3 11 5 1 1 6
2011  7 2  0 2 1 -1 -1 100  0 0 11 22 21 6 5 3 10 6 4 3 3 6
2012  7 2  0 2 1 -1 -1 89  0 1 6 10 14 15 9 7 4 4 8 5 2 4
2013  7 2  0 2 1 -1 -1 48  0 2 3 7 9 6 5 4 1 2 1 0 1 7
2014  7 2  0 2 1 -1 -1 47  0 1 2 5 13 5 4 4 0 8 0 0 2 3
2015  7 2  0 2 1 -1 -1 23  0 1 0 1 4 3 6 2 1 1 1 0 1 2
2016  7 2  0 2 1 -1 -1 82  0 1 7 11 9 12 5 12 8 3 1 4 5 4
2017  7 2  0 2 1 -1 -1 89  0 1 2 23 9 7 9 10 8 2 5 1 2 10
1994  7 3  0 2 1 -1 -1 13  0 0 3 1 2 5 1 0 1 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 5 1 0 0 0 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 2 24 20 10 8 4 5 2 1 0 0 1 0
1997  7 3  0 2 1 -1 -1 15  0 0 2 4 1 2 4 0 2 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 0 4 3 2 0 1 3 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 1 4 6 1 4 2 2 2 0 1 0 2 0
2000  7 3  0 2 1 -1 -1 61  0 5 11 12 18 2 5 4 2 0 1 0 0 1
2001  7 3  0 2 1 -1 -1 7  0 0 2 2 0 1 1 0 0 0 0 0 1 0
2002  7 3  0 2 1 -1 -1 15  0 0 4 1 2 2 1 1 2 1 0 0 1 0
2003  7 3  0 2 1 -1 -1 19  0 3 4 4 2 1 2 2 0 1 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 0 2 1 0 0 1 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 1 9 15 9 10 4 2 1 3 0 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 3 8 18 18 22 7 7 1 9 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 3 18 12 22 26 12 3 0 2 0 1 0 1
2008  7 3  0 2 1 -1 -1 42  0 6 4 10 4 7 7 2 2 0 0 0 0 0
2009  7 3  0 2 1 -1 -1 100  0 13 26 12 16 9 6 6 5 1 1 2 3 0
2010  7 3  0 2 1 -1 -1 20  0 2 4 7 1 1 2 1 1 0 1 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 8 17 15 18 2 7 3 4 1 1 2 0 0
2012  7 3  0 2 1 -1 -1 100  0 5 16 31 12 13 6 6 2 4 2 2 1 0
2013  7 3  0 2 1 -1 -1 100  0 4 23 11 20 17 11 3 3 3 2 0 3 0
2014  7 3  0 2 1 -1 -1 100  0 5 17 26 16 20 7 5 1 2 0 0 0 1
2015  7 3  0 2 1 -1 -1 46  0 1 8 14 5 9 3 1 2 1 0 0 0 2
2016  7 3  0 2 1 -1 -1 100  0 4 32 19 15 14 8 2 2 2 0 0 0 2
2017  7 3  0 2 1 -1 -1 100  0 7 20 22 21 9 10 9 1 0 0 0 0 1
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

