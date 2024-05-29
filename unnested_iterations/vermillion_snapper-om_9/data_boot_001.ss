#V3.30.22.1;_safe;_compile_date:_Jan 30 2024;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-ost/ss3-source-code

#_Start_time: Mon Apr 29 15:19:01 2024
#_bootstrap
#C data file created using the SS_writedat function in the R package r4ss
#C should work with SS version:
#C file write time: 2020-01-23 16:14:32
#_bootstrap file: 1  irand_seed: 1714403941 first rand#: 0.970644
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
1950 1 1 1368.59 0.05
1951 1 1 1247.87 0.05
1952 1 1 1187.55 0.05
1953 1 1 988.509 0.05
1954 1 1 1042.03 0.05
1955 1 1 975.497 0.05
1956 1 1 820.475 0.05
1957 1 1 802.741 0.05
1958 1 1 780.217 0.05
1959 1 1 881.703 0.05
1960 1 1 755.294 0.05
1961 1 1 804.142 0.05
1962 1 1 744.653 0.05
1963 1 1 823.274 0.05
1964 1 1 688.981 0.05
1965 1 1 727.685 0.05
1966 1 1 750.692 0.05
1967 1 1 675.415 0.05
1968 1 1 725.796 0.05
1969 1 1 757.066 0.05
1970 1 1 749.855 0.05
1971 1 1 677.451 0.05
1972 1 1 749.753 0.05
1973 1 1 760.835 0.05
1974 1 1 679.718 0.05
1975 1 1 698.056 0.05
1976 1 1 687.991 0.05
1977 1 1 711.823 0.05
1978 1 1 624.146 0.05
1979 1 1 669.369 0.05
1980 1 1 768.417 0.05
1981 1 1 743.554 0.05
1982 1 1 721.642 0.05
1983 1 1 692.936 0.05
1984 1 1 730.076 0.05
1985 1 1 781.301 0.05
1986 1 1 699.823 0.05
1987 1 1 793.687 0.05
1988 1 1 708.693 0.05
1989 1 1 659.862 0.05
1990 1 1 742.931 0.05
1991 1 1 684.463 0.05
1992 1 1 754.877 0.05
1993 1 1 693.442 0.05
1994 1 1 751.91 0.05
1995 1 1 714.117 0.05
1996 1 1 695.464 0.05
1997 1 1 736.563 0.05
1998 1 1 718.513 0.05
1999 1 1 635.808 0.05
2000 1 1 636.605 0.05
2001 1 1 734.049 0.05
2002 1 1 679.21 0.05
2003 1 1 727.14 0.05
2004 1 1 717.763 0.05
2005 1 1 549.348 0.05
2006 1 1 552.578 0.05
2007 1 1 576.701 0.05
2008 1 1 729.435 0.05
2009 1 1 638.575 0.05
2010 1 1 621.58 0.05
2011 1 1 657.121 0.05
2012 1 1 736.934 0.05
2013 1 1 660.926 0.05
2014 1 1 600.963 0.05
2015 1 1 640.032 0.05
2016 1 1 683.741 0.05
2017 1 1 751.402 0.05
-999 1 2 0 0.01
1950 1 2 1146.83 0.05
1951 1 2 906.811 0.05
1952 1 2 891.146 0.05
1953 1 2 806.31 0.05
1954 1 2 746.637 0.05
1955 1 2 751.894 0.05
1956 1 2 599.842 0.05
1957 1 2 621.995 0.05
1958 1 2 602.595 0.05
1959 1 2 664.821 0.05
1960 1 2 566.238 0.05
1961 1 2 568.213 0.05
1962 1 2 534.811 0.05
1963 1 2 532.367 0.05
1964 1 2 497.185 0.05
1965 1 2 526.826 0.05
1966 1 2 519.004 0.05
1967 1 2 523.726 0.05
1968 1 2 538.403 0.05
1969 1 2 496.283 0.05
1970 1 2 465.184 0.05
1971 1 2 556.804 0.05
1972 1 2 511.937 0.05
1973 1 2 540.618 0.05
1974 1 2 497.425 0.05
1975 1 2 556.052 0.05
1976 1 2 569.02 0.05
1977 1 2 505.907 0.05
1978 1 2 541.455 0.05
1979 1 2 527.106 0.05
1980 1 2 533.499 0.05
1981 1 2 512.17 0.05
1982 1 2 502.392 0.05
1983 1 2 487.899 0.05
1984 1 2 500.086 0.05
1985 1 2 482.973 0.05
1986 1 2 529.307 0.05
1987 1 2 487.608 0.05
1988 1 2 571.369 0.05
1989 1 2 513.662 0.05
1990 1 2 519.462 0.05
1991 1 2 507.165 0.05
1992 1 2 520.936 0.05
1993 1 2 484.608 0.05
1994 1 2 573.07 0.05
1995 1 2 494.396 0.05
1996 1 2 487.79 0.05
1997 1 2 536.927 0.05
1998 1 2 494.548 0.05
1999 1 2 494.317 0.05
2000 1 2 446.576 0.05
2001 1 2 507.98 0.05
2002 1 2 524.467 0.05
2003 1 2 512.222 0.05
2004 1 2 521.646 0.05
2005 1 2 433.539 0.05
2006 1 2 480.042 0.05
2007 1 2 485.8 0.05
2008 1 2 543.228 0.05
2009 1 2 520.316 0.05
2010 1 2 487.277 0.05
2011 1 2 501.123 0.05
2012 1 2 527.299 0.05
2013 1 2 507.318 0.05
2014 1 2 466.187 0.05
2015 1 2 479.698 0.05
2016 1 2 542.166 0.05
2017 1 2 531.824 0.05
-999 1 3 0 0.01
1950 1 3 2173.2 0.15
1951 1 3 1846.01 0.15
1952 1 3 1556.67 0.15
1953 1 3 1469.36 0.15
1954 1 3 1353.35 0.15
1955 1 3 1380.61 0.15
1956 1 3 1213.13 0.15
1957 1 3 1404.88 0.15
1958 1 3 1295.07 0.15
1959 1 3 1424.17 0.15
1960 1 3 1223.6 0.15
1961 1 3 1546.71 0.15
1962 1 3 1188.93 0.15
1963 1 3 1466.59 0.15
1964 1 3 1251.67 0.15
1965 1 3 1399.3 0.15
1966 1 3 1068.95 0.15
1967 1 3 1243.31 0.15
1968 1 3 988.081 0.15
1969 1 3 1253.11 0.15
1970 1 3 1395.31 0.15
1971 1 3 942.387 0.15
1972 1 3 1377.24 0.15
1973 1 3 1391.31 0.15
1974 1 3 1588.92 0.15
1975 1 3 1372.93 0.15
1976 1 3 1620.76 0.15
1977 1 3 1089.75 0.15
1978 1 3 1233.28 0.15
1979 1 3 1445.09 0.15
1980 1 3 1250.26 0.15
1981 1 3 1279.84 0.15
1982 1 3 1282.51 0.15
1983 1 3 1203.55 0.15
1984 1 3 1558.43 0.15
1985 1 3 1619.2 0.15
1986 1 3 1192.63 0.15
1987 1 3 1179.21 0.15
1988 1 3 1311.26 0.15
1989 1 3 1623.39 0.15
1990 1 3 1420.09 0.15
1991 1 3 964.233 0.15
1992 1 3 911.906 0.15
1993 1 3 1088.18 0.15
1994 1 3 958.311 0.15
1995 1 3 1261.8 0.15
1996 1 3 759.381 0.15
1997 1 3 1025.56 0.15
1998 1 3 1287.36 0.15
1999 1 3 774.14 0.15
2000 1 3 735.847 0.15
2001 1 3 788.949 0.15
2002 1 3 740.561 0.15
2003 1 3 673.069 0.15
2004 1 3 706.433 0.15
2005 1 3 545.651 0.15
2006 1 3 476.462 0.15
2007 1 3 620.142 0.15
2008 1 3 729.375 0.15
2009 1 3 1046.93 0.15
2010 1 3 798.39 0.15
2011 1 3 910.205 0.15
2012 1 3 785.394 0.15
2013 1 3 733.549 0.15
2014 1 3 900.309 0.15
2015 1 3 790.698 0.15
2016 1 3 984.118 0.15
2017 1 3 1105.56 0.15
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
1993 7 1 0.926749 0.224 #_orig_obs: 1.0364 CM_E
1994 7 1 1.16452 0.1921 #_orig_obs: 1.2321 CM_E
1995 7 1 0.865242 0.2148 #_orig_obs: 0.897 CM_E
1996 7 1 0.99795 0.1909 #_orig_obs: 0.9506 CM_E
1997 7 1 0.875014 0.2007 #_orig_obs: 0.8879 CM_E
1998 7 1 1.16746 0.2021 #_orig_obs: 0.8777 CM_E
1999 7 1 0.685505 0.1857 #_orig_obs: 0.9461 CM_E
2000 7 1 0.769356 0.217 #_orig_obs: 0.7915 CM_E
2001 7 1 1.19899 0.2045 #_orig_obs: 0.8663 CM_E
2002 7 1 1.33765 0.1891 #_orig_obs: 0.9435 CM_E
2003 7 1 1.55306 0.1817 #_orig_obs: 0.9948 CM_E
2004 7 1 1.11458 0.1945 #_orig_obs: 0.9825 CM_E
2005 7 1 0.82446 0.1913 #_orig_obs: 1.2854 CM_E
2006 7 1 0.933581 0.2117 #_orig_obs: 1.3082 CM_E
1993 7 2 0.715202 0.2946 #_orig_obs: 1.0614 CM_W
1994 7 2 1.04337 0.2421 #_orig_obs: 1.4628 CM_W
1995 7 2 1.08126 0.2502 #_orig_obs: 0.9335 CM_W
1996 7 2 0.885341 0.2158 #_orig_obs: 1.0168 CM_W
1997 7 2 1.22935 0.1657 #_orig_obs: 1.2941 CM_W
1998 7 2 0.81583 0.1853 #_orig_obs: 1.0179 CM_W
1999 7 2 1.22668 0.1597 #_orig_obs: 1.0543 CM_W
2000 7 2 1.10241 0.1912 #_orig_obs: 0.7217 CM_W
2001 7 2 1.16825 0.2006 #_orig_obs: 0.7649 CM_W
2002 7 2 0.99302 0.1743 #_orig_obs: 1.0021 CM_W
2003 7 2 1.11523 0.1571 #_orig_obs: 1.262 CM_W
2004 7 2 0.925564 0.1548 #_orig_obs: 1.2453 CM_W
2005 7 2 0.783431 0.1823 #_orig_obs: 0.77 CM_W
2006 7 2 0.958852 0.2263 #_orig_obs: 0.3931 CM_W
1986 7 3 1.43202 0.1343 #_orig_obs: 2.8003 REC
1987 7 3 1.9303 0.2402 #_orig_obs: 1.1788 REC
1988 7 3 1.18769 0.2702 #_orig_obs: 1.9112 REC
1989 7 3 1.01609 0.3298 #_orig_obs: 0.8855 REC
1990 7 3 1.56943 0.2462 #_orig_obs: 2.2286 REC
1991 7 3 0.894057 0.1803 #_orig_obs: 1.4696 REC
1992 7 3 0.959049 0.1364 #_orig_obs: 1.382 REC
1993 7 3 1.21466 0.1698 #_orig_obs: 1.5362 REC
1994 7 3 0.825204 0.2315 #_orig_obs: 1.4339 REC
1995 7 3 0.774596 0.2322 #_orig_obs: 1.9825 REC
1996 7 3 1.23791 0.3018 #_orig_obs: 1.007 REC
1997 7 3 0.667364 0.22 #_orig_obs: 0.2738 REC
1998 7 3 0.515043 0.1982 #_orig_obs: 0.3607 REC
1999 7 3 0.842004 0.1405 #_orig_obs: 0.3871 REC
2000 7 3 0.875724 0.2133 #_orig_obs: 0.3466 REC
2001 7 3 0.778532 0.2051 #_orig_obs: 0.4875 REC
2002 7 3 0.878411 0.2023 #_orig_obs: 0.3628 REC
2003 7 3 1.09748 0.1792 #_orig_obs: 0.422 REC
2004 7 3 0.920796 0.144 #_orig_obs: 0.5428 REC
2005 7 3 0.536063 0.1656 #_orig_obs: 0.5814 REC
2006 7 3 0.562042 0.1823 #_orig_obs: 0.5366 REC
2007 7 3 0.637778 0.2114 #_orig_obs: 0.4248 REC
2008 7 3 0.604393 0.2243 #_orig_obs: 0.6617 REC
2009 7 3 0.988847 0.225 #_orig_obs: 1.0235 REC
2010 7 3 0.620611 0.2406 #_orig_obs: 0.5612 REC
2011 7 3 0.756115 0.1556 #_orig_obs: 1.3108 REC
2012 7 3 0.736225 0.185 #_orig_obs: 0.8812 REC
2013 7 3 0.933723 0.213 #_orig_obs: 1.0219 REC
2014 7 3 0.668042 0.1501 #_orig_obs: 1.1857 REC
2015 7 3 0.756023 0.156 #_orig_obs: 0.9581 REC
2016 7 3 0.838764 0.1563 #_orig_obs: 0.6786 REC
2017 7 3 0.785362 0.1595 #_orig_obs: 1.1759 REC
1950 7 4 0.176783 0.2 #_orig_obs: 0.1989 SMP_BYC
1951 7 4 0.255566 0.2 #_orig_obs: 0.2712 SMP_BYC
1952 7 4 0.147647 0.2 #_orig_obs: 0.3203 SMP_BYC
1953 7 4 0.187234 0.2 #_orig_obs: 0.3368 SMP_BYC
1954 7 4 0.239459 0.2 #_orig_obs: 0.4366 SMP_BYC
1955 7 4 0.1375 0.2 #_orig_obs: 0.4551 SMP_BYC
1956 7 4 0.19517 0.2 #_orig_obs: 0.5818 SMP_BYC
1957 7 4 0.235718 0.2 #_orig_obs: 0.6661 SMP_BYC
1958 7 4 0.12661 0.2 #_orig_obs: 0.8157 SMP_BYC
1959 7 4 0.144561 0.2 #_orig_obs: 0.8793 SMP_BYC
1960 7 4 0.315873 0.2 #_orig_obs: 0.879 SMP_BYC
1961 7 4 0.175295 0.2 #_orig_obs: 0.6658 SMP_BYC
1962 7 4 0.21482 0.2 #_orig_obs: 0.6411 SMP_BYC
1963 7 4 0.213223 0.2 #_orig_obs: 0.7308 SMP_BYC
1964 7 4 0.227553 0.2 #_orig_obs: 0.7719 SMP_BYC
1965 7 4 0.204464 0.2 #_orig_obs: 0.8567 SMP_BYC
1966 7 4 0.329896 0.2 #_orig_obs: 0.8431 SMP_BYC
1967 7 4 0.182603 0.2 #_orig_obs: 0.9184 SMP_BYC
1968 7 4 0.18267 0.2 #_orig_obs: 0.9332 SMP_BYC
1969 7 4 0.25907 0.2 #_orig_obs: 1.0604 SMP_BYC
1970 7 4 0.201346 0.2 #_orig_obs: 0.9991 SMP_BYC
1971 7 4 0.256281 0.2 #_orig_obs: 0.9527 SMP_BYC
1972 7 4 0.200586 0.2 #_orig_obs: 0.9488 SMP_BYC
1973 7 4 0.374137 0.2 #_orig_obs: 0.955 SMP_BYC
1974 7 4 0.241943 0.2 #_orig_obs: 0.9505 SMP_BYC
1975 7 4 0.148782 0.2 #_orig_obs: 0.9562 SMP_BYC
1976 7 4 0.175479 0.2 #_orig_obs: 0.9919 SMP_BYC
1977 7 4 0.244792 0.2 #_orig_obs: 1.0865 SMP_BYC
1978 7 4 0.182715 0.2 #_orig_obs: 1.1485 SMP_BYC
1979 7 4 0.243004 0.2 #_orig_obs: 1.2041 SMP_BYC
1980 7 4 0.174146 0.2 #_orig_obs: 1.2359 SMP_BYC
1981 7 4 0.191713 0.2 #_orig_obs: 1.1323 SMP_BYC
1982 7 4 0.178898 0.2 #_orig_obs: 1.0946 SMP_BYC
1983 7 4 0.160094 0.2 #_orig_obs: 1.132 SMP_BYC
1984 7 4 0.140673 0.2 #_orig_obs: 1.3325 SMP_BYC
1985 7 4 0.16063 0.2 #_orig_obs: 1.2756 SMP_BYC
1986 7 4 0.206973 0.2 #_orig_obs: 1.428 SMP_BYC
1987 7 4 0.129899 0.2 #_orig_obs: 1.2585 SMP_BYC
1988 7 4 0.173272 0.2 #_orig_obs: 1.1531 SMP_BYC
1989 7 4 0.215215 0.2 #_orig_obs: 1.2553 SMP_BYC
1990 7 4 0.187234 0.2 #_orig_obs: 1.143 SMP_BYC
1991 7 4 0.179727 0.2 #_orig_obs: 1.2043 SMP_BYC
1992 7 4 0.157349 0.2 #_orig_obs: 1.4239 SMP_BYC
1993 7 4 0.168779 0.2 #_orig_obs: 1.2065 SMP_BYC
1994 7 4 0.277668 0.2 #_orig_obs: 1.2105 SMP_BYC
1995 7 4 0.225426 0.2 #_orig_obs: 1.3497 SMP_BYC
1996 7 4 0.172899 0.2 #_orig_obs: 1.5532 SMP_BYC
1997 7 4 0.203254 0.2 #_orig_obs: 1.6139 SMP_BYC
1998 7 4 0.235664 0.2 #_orig_obs: 1.9655 SMP_BYC
1999 7 4 0.160067 0.2 #_orig_obs: 1.2638 SMP_BYC
2000 7 4 0.137476 0.2 #_orig_obs: 1.1051 SMP_BYC
2001 7 4 0.148161 0.2 #_orig_obs: 1.2471 SMP_BYC
2002 7 4 0.264545 0.2 #_orig_obs: 1.4721 SMP_BYC
2003 7 4 0.161753 0.2 #_orig_obs: 1.2373 SMP_BYC
2004 7 4 0.257567 0.2 #_orig_obs: 1.2403 SMP_BYC
2005 7 4 0.24565 0.2 #_orig_obs: 0.9899 SMP_BYC
2006 7 4 0.2387 0.2 #_orig_obs: 0.6319 SMP_BYC
2007 7 4 0.212812 0.2 #_orig_obs: 0.4591 SMP_BYC
2008 7 4 0.185225 0.2 #_orig_obs: 0.3236 SMP_BYC
2009 7 4 0.239267 0.2 #_orig_obs: 0.4905 SMP_BYC
2010 7 4 0.205353 0.2 #_orig_obs: 0.3512 SMP_BYC
2011 7 4 0.158265 0.2 #_orig_obs: 0.4088 SMP_BYC
2012 7 4 0.203646 0.2 #_orig_obs: 0.3685 SMP_BYC
2013 7 4 0.206729 0.2 #_orig_obs: 0.42 SMP_BYC
2014 7 4 0.225541 0.2 #_orig_obs: 0.3439 SMP_BYC
2015 7 4 0.165037 0.2 #_orig_obs: 0.292 SMP_BYC
2016 7 4 0.256684 0.2 #_orig_obs: 0.303 SMP_BYC
2017 7 4 0.223698 0.2 #_orig_obs: 0.3191 SMP_BYC
1986 7 5 0.891533 0.2867 #_orig_obs: 0.9003 HB_E
1987 7 5 0.879762 0.2748 #_orig_obs: 1.0087 HB_E
1988 7 5 1.09983 0.1925 #_orig_obs: 2.1634 HB_E
1989 7 5 0.912612 0.1934 #_orig_obs: 1.3429 HB_E
1990 7 5 1.10413 0.1798 #_orig_obs: 1.6891 HB_E
1991 7 5 0.90041 0.1783 #_orig_obs: 1.8029 HB_E
1992 7 5 0.894721 0.1707 #_orig_obs: 2.4993 HB_E
1993 7 5 1.1252 0.1765 #_orig_obs: 1.5989 HB_E
1994 7 5 0.916515 0.1742 #_orig_obs: 1.7662 HB_E
1995 7 5 1.17086 0.1863 #_orig_obs: 1.4894 HB_E
1996 7 5 0.943701 0.1988 #_orig_obs: 0.8224 HB_E
1997 7 5 1.04847 0.1964 #_orig_obs: 0.7356 HB_E
1998 7 5 0.816591 0.2188 #_orig_obs: 0.1903 HB_E
1999 7 5 0.968703 0.2329 #_orig_obs: 0.4211 HB_E
2000 7 5 0.776924 0.222 #_orig_obs: 0.354 HB_E
2001 7 5 0.953932 0.2137 #_orig_obs: 0.4418 HB_E
2002 7 5 1.08697 0.2118 #_orig_obs: 0.4825 HB_E
2003 7 5 0.731713 0.209 #_orig_obs: 0.5873 HB_E
2004 7 5 1.10711 0.204 #_orig_obs: 0.6285 HB_E
2005 7 5 1.09217 0.2055 #_orig_obs: 0.8121 HB_E
2006 7 5 1.2353 0.221 #_orig_obs: 0.5606 HB_E
2007 7 5 1.66397 0.2315 #_orig_obs: 0.3719 HB_E
2008 7 5 1.00687 0.2009 #_orig_obs: 0.6674 HB_E
2009 7 5 0.874108 0.197 #_orig_obs: 0.7899 HB_E
2010 7 5 0.943009 0.215 #_orig_obs: 0.8602 HB_E
2011 7 5 0.756688 0.1938 #_orig_obs: 1.0583 HB_E
2012 7 5 0.685561 0.1944 #_orig_obs: 0.6563 HB_E
2013 7 5 0.649114 0.1787 #_orig_obs: 0.8922 HB_E
2014 7 5 1.20482 0.1678 #_orig_obs: 0.9477 HB_E
2015 7 5 0.918533 0.1667 #_orig_obs: 0.8983 HB_E
2016 7 5 1.23393 0.1586 #_orig_obs: 0.9572 HB_E
2017 7 5 0.843642 0.1488 #_orig_obs: 1.6034 HB_E
1986 7 6 1.11468 0.2083 #_orig_obs: 1.7517 HB_W
1987 7 6 1.16277 0.1987 #_orig_obs: 1.223 HB_W
1988 7 6 1.10914 0.2146 #_orig_obs: 0.9281 HB_W
1989 7 6 0.801007 0.2046 #_orig_obs: 1.2908 HB_W
1990 7 6 0.882301 0.1904 #_orig_obs: 1.7667 HB_W
1991 7 6 0.944808 0.1948 #_orig_obs: 0.9834 HB_W
1992 7 6 0.755398 0.1829 #_orig_obs: 0.9446 HB_W
1993 7 6 1.16388 0.171 #_orig_obs: 1.1496 HB_W
1994 7 6 0.775206 0.1669 #_orig_obs: 1.1375 HB_W
1995 7 6 0.782873 0.1657 #_orig_obs: 1.2142 HB_W
1996 7 6 0.997583 0.1722 #_orig_obs: 0.8857 HB_W
1997 7 6 0.964136 0.1842 #_orig_obs: 0.8366 HB_W
1998 7 6 0.908329 0.1768 #_orig_obs: 0.7963 HB_W
1999 7 6 0.577401 0.2036 #_orig_obs: 0.687 HB_W
2000 7 6 0.77887 0.1975 #_orig_obs: 0.5193 HB_W
2001 7 6 1.11206 0.1901 #_orig_obs: 0.8356 HB_W
2002 7 6 1.20272 0.1787 #_orig_obs: 0.9742 HB_W
2003 7 6 0.919418 0.177 #_orig_obs: 0.6355 HB_W
2004 7 6 0.857093 0.1741 #_orig_obs: 1.091 HB_W
2005 7 6 1.72404 0.1719 #_orig_obs: 1.2184 HB_W
2006 7 6 1.25047 0.1868 #_orig_obs: 0.6516 HB_W
2007 7 6 1.26219 0.1805 #_orig_obs: 1.4379 HB_W
2008 7 6 1.12253 0.285 #_orig_obs: 0.261 HB_W
2009 7 6 0.994643 0.2194 #_orig_obs: 0.3444 HB_W
2010 7 6 0.764779 0.2089 #_orig_obs: 1.1398 HB_W
2011 7 6 0.960783 0.2093 #_orig_obs: 1.1647 HB_W
2012 7 6 1.35656 0.2191 #_orig_obs: 0.9129 HB_W
2013 7 6 1.93328 0.2211 #_orig_obs: 1.1026 HB_W
2014 7 6 0.763325 0.2486 #_orig_obs: 0.8964 HB_W
2015 7 6 1.00046 0.2178 #_orig_obs: 1.0534 HB_W
2016 7 6 0.997407 0.2273 #_orig_obs: 1.1514 HB_W
2017 7 6 0.943207 0.2523 #_orig_obs: 1.0145 HB_W
1986 7 7 1.06837 0.229322 #_orig_obs: 0.45421 LARVAL
1987 7 7 1.3534 0.18555 #_orig_obs: 1.48596 LARVAL
1990 7 7 1.19097 0.25466 #_orig_obs: 0.64378 LARVAL
1991 7 7 0.903135 0.220455 #_orig_obs: 1.42365 LARVAL
1993 7 7 0.858479 0.215298 #_orig_obs: 0.57936 LARVAL
1994 7 7 0.928084 0.188572 #_orig_obs: 0.96553 LARVAL
1995 7 7 1.22842 0.203662 #_orig_obs: 0.7263 LARVAL
1996 7 7 0.91172 0.20671 #_orig_obs: 0.66782 LARVAL
1997 7 7 1.19022 0.185845 #_orig_obs: 1.11842 LARVAL
1999 7 7 0.806467 0.204291 #_orig_obs: 0.58313 LARVAL
2000 7 7 0.897592 0.207054 #_orig_obs: 0.85527 LARVAL
2001 7 7 1.03919 0.196769 #_orig_obs: 0.85016 LARVAL
2003 7 7 1.18514 0.182395 #_orig_obs: 1.36716 LARVAL
2006 7 7 1.03212 0.192207 #_orig_obs: 1.3578 LARVAL
2007 7 7 0.879225 0.177098 #_orig_obs: 1.61157 LARVAL
2009 7 7 1.07155 0.186419 #_orig_obs: 1.27462 LARVAL
2010 7 7 1.06807 0.192591 #_orig_obs: 1.05739 LARVAL
2011 7 7 0.965549 0.194557 #_orig_obs: 1.042 LARVAL
2012 7 7 1.24963 0.190458 #_orig_obs: 1.07611 LARVAL
2013 7 7 0.800884 0.196107 #_orig_obs: 0.96777 LARVAL
2014 7 7 0.960487 0.194256 #_orig_obs: 1.06004 LARVAL
2016 7 7 1.16651 0.195724 #_orig_obs: 0.83197 LARVAL
1993 7 8 0.713437 0.295683 #_orig_obs: 0.66044 VIDEO
1994 7 8 0.642995 0.216693 #_orig_obs: 1.1061 VIDEO
1995 7 8 0.51038 0.507363 #_orig_obs: 0.522724 VIDEO
1996 7 8 0.971174 0.291294 #_orig_obs: 0.294763 VIDEO
1997 7 8 0.967481 0.196541 #_orig_obs: 0.673943 VIDEO
2002 7 8 0.891863 0.223033 #_orig_obs: 1.48573 VIDEO
2004 7 8 1.24931 0.213692 #_orig_obs: 0.359828 VIDEO
2005 7 8 0.750378 0.160119 #_orig_obs: 0.558559 VIDEO
2006 7 8 0.991939 0.32592 #_orig_obs: 1.14229 VIDEO
2007 7 8 0.83215 0.156685 #_orig_obs: 0.113646 VIDEO
2008 7 8 1.1844 0.209761 #_orig_obs: 0.89507 VIDEO
2009 7 8 0.919181 0.173403 #_orig_obs: 0.952484 VIDEO
2010 7 8 0.969535 0.157207 #_orig_obs: 1.18098 VIDEO
2011 7 8 0.811074 0.111457 #_orig_obs: 1.26554 VIDEO
2012 7 8 1.01165 0.133449 #_orig_obs: 0.899353 VIDEO
2013 7 8 0.750934 0.141149 #_orig_obs: 0.96895 VIDEO
2014 7 8 0.858134 0.11175 #_orig_obs: 1.14974 VIDEO
2015 7 8 1.01412 0.132806 #_orig_obs: 1.50006 VIDEO
2016 7 8 1.24681 0.117429 #_orig_obs: 2.45965 VIDEO
2017 7 8 1.09254 0.124566 #_orig_obs: 1.81015 VIDEO
2009 7 9 1.02727 0.243001 #_orig_obs: 0.803201 SEAMAP
2010 7 9 0.584232 0.265449 #_orig_obs: 0.73555 SEAMAP
2011 7 9 0.751107 0.261243 #_orig_obs: 1.64607 SEAMAP
2012 7 9 0.576315 0.207352 #_orig_obs: 1.20746 SEAMAP
2013 7 9 1.53082 0.253906 #_orig_obs: 0.875348 SEAMAP
2014 7 9 0.693472 0.260064 #_orig_obs: 0.732375 SEAMAP
2015 7 9 0.644292 0.226881 #_orig_obs: 0.736247 SEAMAP
2016 7 9 0.939634 0.228247 #_orig_obs: 0.827883 SEAMAP
2017 7 9 1.18842 0.250359 #_orig_obs: 0.693874 SEAMAP
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
1993 7 1  16.9711 0.3 #_orig_obs: 0.586621 #_ CM_E
1994 7 1  13.4799 0.3 #_orig_obs: 0.796557 #_ CM_E
1995 7 1  22.5446 0.3 #_orig_obs: 0.790099 #_ CM_E
1996 7 1  20.4097 0.3 #_orig_obs: 0.661112 #_ CM_E
1997 7 1  16.0673 0.3 #_orig_obs: 0.580075 #_ CM_E
1998 7 1  16.979 0.3 #_orig_obs: 0.517331 #_ CM_E
1999 7 1  19.4702 0.3 #_orig_obs: 0.578534 #_ CM_E
2000 7 1  12.2452 0.3 #_orig_obs: 0.446964 #_ CM_E
2001 7 1  18.0709 0.3 #_orig_obs: 0.465931 #_ CM_E
2002 7 1  34.3602 0.3 #_orig_obs: 0.576385 #_ CM_E
2003 7 1  12.7345 0.3 #_orig_obs: 0.674005 #_ CM_E
2004 7 1  30.3167 0.3 #_orig_obs: 0.492857 #_ CM_E
2005 7 1  343.648 0.3 #_orig_obs: 63.5689 #_ CM_E
2006 7 1  134.711 0.3 #_orig_obs: 74.139 #_ CM_E
2007 7 1  150.051 0.3 #_orig_obs: 87.667 #_ CM_E
2008 7 1  67.4696 0.3 #_orig_obs: 28.1288 #_ CM_E
2009 7 1  79.9656 0.3 #_orig_obs: 43.9287 #_ CM_E
2010 7 1  66.4566 0.3 #_orig_obs: 20.3256 #_ CM_E
2011 7 1  69.5298 0.3 #_orig_obs: 35.9141 #_ CM_E
2012 7 1  45.6385 0.3 #_orig_obs: 24.3331 #_ CM_E
2013 7 1  83.3821 0.3 #_orig_obs: 14.1581 #_ CM_E
2014 7 1  90.7287 0.3 #_orig_obs: 14.9545 #_ CM_E
2015 7 1  108.107 0.3 #_orig_obs: 11.1334 #_ CM_E
2016 7 1  85.5127 0.3 #_orig_obs: 12.353 #_ CM_E
2017 7 1  98.8071 0.3 #_orig_obs: 13.4989 #_ CM_E
1993 7 2  7.47201 0.3 #_orig_obs: 0.113331 #_ CM_W
1994 7 2  11.5951 0.3 #_orig_obs: 0.124854 #_ CM_W
1995 7 2  9.40526 0.3 #_orig_obs: 0.0952094 #_ CM_W
1996 7 2  7.1532 0.3 #_orig_obs: 0.0983132 #_ CM_W
1997 7 2  7.29559 0.3 #_orig_obs: 0.189942 #_ CM_W
1998 7 2  11.188 0.3 #_orig_obs: 0.157947 #_ CM_W
1999 7 2  12.2471 0.3 #_orig_obs: 0.17874 #_ CM_W
2000 7 2  12.2946 0.3 #_orig_obs: 0.113289 #_ CM_W
2001 7 2  7.52011 0.3 #_orig_obs: 0.142638 #_ CM_W
2002 7 2  8.43076 0.3 #_orig_obs: 0.164756 #_ CM_W
2003 7 2  7.91285 0.3 #_orig_obs: 0.212666 #_ CM_W
2004 7 2  9.60173 0.3 #_orig_obs: 0.213955 #_ CM_W
2005 7 2  155.697 0.3 #_orig_obs: 13.3927 #_ CM_W
2006 7 2  120.558 0.3 #_orig_obs: 10.1688 #_ CM_W
2007 7 2  139.199 0.3 #_orig_obs: 18.8394 #_ CM_W
2008 7 2  37.6838 0.3 #_orig_obs: 2.5055 #_ CM_W
2009 7 2  38.9746 0.3 #_orig_obs: 2.31048 #_ CM_W
2010 7 2  43.2255 0.3 #_orig_obs: 1.57023 #_ CM_W
2011 7 2  51.4223 0.3 #_orig_obs: 1.53915 #_ CM_W
2012 7 2  35.6282 0.3 #_orig_obs: 1.79913 #_ CM_W
2013 7 2  41.0153 0.3 #_orig_obs: 1.48549 #_ CM_W
2014 7 2  33.7157 0.3 #_orig_obs: 1.4152 #_ CM_W
2015 7 2  50.3437 0.3 #_orig_obs: 1.66721 #_ CM_W
2016 7 2  33.2282 0.3 #_orig_obs: 1.86036 #_ CM_W
2017 7 2  94.7031 0.3 #_orig_obs: 1.64118 #_ CM_W
1982 7 3  13.6188 0.3 #_orig_obs: 1 #_ REC
1983 7 3  8.90021 0.3 #_orig_obs: 53 #_ REC
1984 7 3  7.81503 0.3 #_orig_obs: 25 #_ REC
1985 7 3  11.6038 0.3 #_orig_obs: 24 #_ REC
1986 7 3  9.84616 0.3 #_orig_obs: 85 #_ REC
1987 7 3  9.73642 0.3 #_orig_obs: 90 #_ REC
1988 7 3  7.21949 0.3 #_orig_obs: 356 #_ REC
1989 7 3  9.06687 0.3 #_orig_obs: 174 #_ REC
1990 7 3  187.182 0.3 #_orig_obs: 145 #_ REC
1991 7 3  177.39 0.3 #_orig_obs: 319 #_ REC
1992 7 3  261.566 0.3 #_orig_obs: 281 #_ REC
1993 7 3  266.937 0.3 #_orig_obs: 561 #_ REC
1994 7 3  305.801 0.3 #_orig_obs: 172 #_ REC
1995 7 3  271.221 0.3 #_orig_obs: 567 #_ REC
1996 7 3  136.97 0.3 #_orig_obs: 205 #_ REC
1997 7 3  483.347 0.3 #_orig_obs: 57 #_ REC
1998 7 3  287.64 0.3 #_orig_obs: 46 #_ REC
1999 7 3  473.93 0.3 #_orig_obs: 145 #_ REC
2000 7 3  490.431 0.3 #_orig_obs: 61 #_ REC
2001 7 3  492.455 0.3 #_orig_obs: 127 #_ REC
2002 7 3  611.098 0.3 #_orig_obs: 290 #_ REC
2003 7 3  386.498 0.3 #_orig_obs: 309 #_ REC
2004 7 3  637.784 0.3 #_orig_obs: 202 #_ REC
2005 7 3  951.263 0.3 #_orig_obs: 363 #_ REC
2006 7 3  1178.32 0.3 #_orig_obs: 229 #_ REC
2007 7 3  665.31 0.3 #_orig_obs: 194 #_ REC
2008 7 3  850.763 0.3 #_orig_obs: 161 #_ REC
2009 7 3  450.703 0.3 #_orig_obs: 211 #_ REC
2010 7 3  308.979 0.3 #_orig_obs: 84 #_ REC
2011 7 3  460.881 0.3 #_orig_obs: 168 #_ REC
2012 7 3  434.597 0.3 #_orig_obs: 210 #_ REC
2013 7 3  327.741 0.3 #_orig_obs: 477 #_ REC
2014 7 3  486.3 0.3 #_orig_obs: 394 #_ REC
2015 7 3  531.433 0.3 #_orig_obs: 291 #_ REC
2016 7 3  960.814 0.3 #_orig_obs: 329 #_ REC
2017 7 3  778.878 0.3 #_orig_obs: 594 #_ REC
1972 -7 4  1078.34 0.1 #_orig_obs: 3779.25 #_ SMP_BYC
1973 7 -4  997.873 0.5 #_orig_obs: 28340 #_ SMP_BYC
1974 7 -4  997.873 0.5 #_orig_obs: 6814 #_ SMP_BYC
1975 7 -4  997.873 0.5 #_orig_obs: 4828 #_ SMP_BYC
1976 7 -4  997.873 0.5 #_orig_obs: 3505 #_ SMP_BYC
1977 7 -4  997.873 0.5 #_orig_obs: 2110 #_ SMP_BYC
1978 7 -4  997.873 0.5 #_orig_obs: 10090 #_ SMP_BYC
1979 7 -4  997.873 0.5 #_orig_obs: 9445 #_ SMP_BYC
1980 7 -4  997.873 0.5 #_orig_obs: 1442 #_ SMP_BYC
1981 7 -4  997.873 0.5 #_orig_obs: 12630 #_ SMP_BYC
1982 7 -4  997.873 0.5 #_orig_obs: 4254 #_ SMP_BYC
1983 7 -4  997.873 0.5 #_orig_obs: 5555 #_ SMP_BYC
1984 7 -4  997.873 0.5 #_orig_obs: 12770 #_ SMP_BYC
1985 7 -4  997.873 0.5 #_orig_obs: 11430 #_ SMP_BYC
1986 7 -4  997.873 0.5 #_orig_obs: 21760 #_ SMP_BYC
1987 7 -4  997.873 0.5 #_orig_obs: 23390 #_ SMP_BYC
1988 7 -4  997.873 0.5 #_orig_obs: 8487 #_ SMP_BYC
1989 7 -4  997.873 0.5 #_orig_obs: 12920 #_ SMP_BYC
1990 7 -4  997.873 0.5 #_orig_obs: 17150 #_ SMP_BYC
1991 7 -4  997.873 0.5 #_orig_obs: 61300 #_ SMP_BYC
1992 7 -4  997.873 0.5 #_orig_obs: 4194 #_ SMP_BYC
1993 7 -4  997.873 0.5 #_orig_obs: 2023 #_ SMP_BYC
1994 7 -4  997.873 0.5 #_orig_obs: 2439 #_ SMP_BYC
1995 7 -4  997.873 0.5 #_orig_obs: 9974 #_ SMP_BYC
1996 7 -4  997.873 0.5 #_orig_obs: 11910 #_ SMP_BYC
1997 7 -4  997.873 0.5 #_orig_obs: 11070 #_ SMP_BYC
1998 7 -4  997.873 0.5 #_orig_obs: 36260 #_ SMP_BYC
1999 7 -4  997.873 0.5 #_orig_obs: 7996 #_ SMP_BYC
2000 7 -4  997.873 0.5 #_orig_obs: 8949 #_ SMP_BYC
2001 7 -4  997.873 0.5 #_orig_obs: 5545 #_ SMP_BYC
2002 7 -4  997.873 0.5 #_orig_obs: 5394 #_ SMP_BYC
2003 7 -4  997.873 0.5 #_orig_obs: 9549 #_ SMP_BYC
2004 7 -4  997.873 0.5 #_orig_obs: 2561 #_ SMP_BYC
2005 7 -4  997.873 0.5 #_orig_obs: 4778 #_ SMP_BYC
2006 7 -4  997.873 0.5 #_orig_obs: 4189 #_ SMP_BYC
2007 7 -4  997.873 0.5 #_orig_obs: 6844 #_ SMP_BYC
2008 7 -4  997.873 0.5 #_orig_obs: 1038 #_ SMP_BYC
2009 7 -4  997.873 0.5 #_orig_obs: 2106 #_ SMP_BYC
2010 7 -4  997.873 0.5 #_orig_obs: 1111 #_ SMP_BYC
2011 7 -4  997.873 0.5 #_orig_obs: 852.3 #_ SMP_BYC
2012 7 -4  997.873 0.5 #_orig_obs: 443.3 #_ SMP_BYC
2013 7 -4  997.873 0.5 #_orig_obs: 573.5 #_ SMP_BYC
2014 7 -4  997.873 0.5 #_orig_obs: 290.7 #_ SMP_BYC
2015 7 -4  997.873 0.5 #_orig_obs: 178.6 #_ SMP_BYC
2016 7 -4  997.873 0.5 #_orig_obs: 154.9 #_ SMP_BYC
2017 -7 -4  997.873 0.5 #_orig_obs: 212.3 #_ SMP_BYC
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
 2002 7 8 0 0 17  0 0 1 0 6 5 2 2 1 0 0 0
 2004 7 8 0 0 6  0 0 0 0 2 3 0 0 0 0 1 0
 2005 7 8 0 0 38  0 0 4 3 15 7 6 2 0 1 0 0
 2006 7 8 0 0 18  0 0 1 2 5 5 3 2 0 0 0 0
 2007 7 8 0 0 11  0 0 3 1 4 0 0 1 2 0 0 0
 2008 7 8 0 0 8  0 0 0 3 1 4 0 0 0 0 0 0
 2009 7 8 0 0 25  0 0 0 8 10 4 2 0 1 0 0 0
 2010 7 8 0 0 32  0 0 1 7 8 9 3 2 2 0 0 0
 2011 7 8 0 0 47  0 0 3 7 20 7 7 1 1 1 0 0
 2012 7 8 0 0 39  0 1 3 11 7 12 4 0 1 0 0 0
 2013 7 8 0 0 100  0 0 18 11 30 24 7 7 3 0 0 0
 2014 7 8 0 0 100  0 0 12 13 37 21 7 8 2 0 0 0
 2015 7 8 0 0 74  0 2 5 9 36 11 9 1 1 0 0 0
 2016 7 8 0 0 32  0 0 2 4 10 9 3 2 1 1 0 0
 2017 7 8 0 0 100  0 0 14 21 21 27 12 3 2 0 0 0
 2009 7 9 0 0 35  0 0 7 18 8 2 0 0 0 0 0 0
 2010 7 9 0 0 100  0 4 26 39 28 3 0 0 0 0 0 0
 2011 7 9 0 0 17  0 0 7 6 4 0 0 0 0 0 0 0
 2012 7 9 0 0 11  0 0 1 5 4 1 0 0 0 0 0 0
 2013 7 9 0 0 37  0 1 7 13 14 2 0 0 0 0 0 0
 2014 7 9 0 0 69  1 2 17 33 14 2 0 0 0 0 0 0
 2015 7 9 0 0 37  0 0 11 13 12 1 0 0 0 0 0 0
 2016 7 9 0 0 38  0 3 10 10 13 2 0 0 0 0 0 0
 2017 7 9 0 0 100  0 5 23 46 24 2 0 0 0 0 0 0
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
1995  7 1  0 2 1 -1 -1 3  0 0 0 0 1 0 0 1 0 1 0 0 0 0
1998  7 1  0 2 1 -1 -1 6  0 0 2 0 0 0 1 0 0 3 0 0 0 0
2000  7 1  0 2 1 -1 -1 8  0 1 2 0 2 1 1 0 0 0 0 1 0 0
2001  7 1  0 2 1 -1 -1 23  0 0 8 2 0 6 3 1 1 1 1 0 0 0
2002  7 1  0 2 1 -1 -1 100  0 11 16 27 9 6 9 5 3 4 5 0 1 4
2003  7 1  0 2 1 -1 -1 23  0 2 7 4 2 4 0 1 0 1 0 1 0 1
2004  7 1  0 2 1 -1 -1 33  0 3 8 4 5 4 3 1 2 0 1 1 0 1
2005  7 1  0 2 1 -1 -1 100  0 2 19 20 13 12 9 5 1 4 1 4 1 9
2006  7 1  0 2 1 -1 -1 59  0 1 9 6 11 5 9 7 4 1 1 3 0 2
2007  7 1  0 2 1 -1 -1 54  0 4 3 7 12 8 7 2 5 0 1 1 2 2
2008  7 1  0 2 1 -1 -1 100  0 5 16 8 11 13 19 9 4 8 3 1 2 1
2009  7 1  0 2 1 -1 -1 100  0 2 22 12 9 13 16 9 8 1 3 0 0 5
2010  7 1  0 2 1 -1 -1 32  0 3 2 5 4 3 4 4 3 1 2 1 0 0
2011  7 1  0 2 1 -1 -1 87  1 3 16 20 8 11 3 6 7 4 2 2 1 3
2012  7 1  0 2 1 -1 -1 99  0 7 16 22 9 14 9 1 6 4 1 1 2 7
2013  7 1  0 2 1 -1 -1 55  0 4 7 13 7 7 3 5 0 2 2 2 0 3
2014  7 1  0 2 1 -1 -1 79  0 4 20 10 16 5 2 5 4 2 5 2 1 3
2015  7 1  0 2 1 -1 -1 100  1 18 17 18 5 11 8 3 5 4 1 2 0 7
2016  7 1  0 2 1 -1 -1 100  0 12 29 12 14 7 7 3 6 4 1 1 1 3
2017  7 1  0 2 1 -1 -1 100  1 7 32 21 5 5 7 6 4 3 4 2 1 2
1994  7 2  0 2 1 -1 -1 8  0 0 2 0 2 1 1 1 0 0 1 0 0 0
1995  7 2  0 2 1 -1 -1 7  0 0 1 0 0 3 1 0 2 0 0 0 0 0
2000  7 2  0 2 1 -1 -1 64  0 0 12 5 15 9 4 7 2 3 0 4 1 2
2001  7 2  0 2 1 -1 -1 48  0 0 14 7 4 7 4 3 6 1 0 1 0 1
2002  7 2  0 2 1 -1 -1 34  0 1 4 11 5 4 3 1 1 1 0 0 1 2
2003  7 2  0 2 1 -1 -1 30  0 2 3 2 10 5 0 2 0 2 1 1 0 2
2004  7 2  0 2 1 -1 -1 100  1 4 13 17 15 21 8 5 5 4 2 3 0 2
2005  7 2  0 2 1 -1 -1 21  0 0 1 5 3 3 3 3 1 1 0 0 1 0
2006  7 2  0 2 1 -1 -1 16  0 0 1 2 5 3 0 3 0 0 0 0 0 2
2007  7 2  0 2 1 -1 -1 100  0 0 4 12 22 21 12 6 7 1 2 3 1 9
2008  7 2  0 2 1 -1 -1 100  0 1 4 8 24 23 8 10 5 7 4 1 2 3
2009  7 2  0 2 1 -1 -1 100  0 1 4 16 10 17 14 14 3 5 5 3 1 7
2010  7 2  0 2 1 -1 -1 59  0 1 10 7 4 7 8 5 5 1 6 2 1 2
2011  7 2  0 2 1 -1 -1 100  0 3 6 15 10 10 8 9 9 2 5 5 6 12
2012  7 2  0 2 1 -1 -1 89  0 2 5 12 15 15 11 8 7 3 3 3 1 4
2013  7 2  0 2 1 -1 -1 48  0 1 2 5 14 4 6 3 4 2 3 0 1 3
2014  7 2  0 2 1 -1 -1 47  0 1 6 11 5 7 4 3 5 0 1 0 0 4
2015  7 2  0 2 1 -1 -1 23  0 2 2 6 3 2 0 2 3 1 1 0 0 1
2016  7 2  0 2 1 -1 -1 82  1 4 7 6 21 10 5 8 6 4 2 1 2 5
2017  7 2  0 2 1 -1 -1 89  0 4 7 20 10 15 7 4 7 2 3 3 2 5
1994  7 3  0 2 1 -1 -1 13  0 0 7 2 1 1 0 0 2 0 0 0 0 0
1995  7 3  0 2 1 -1 -1 6  0 0 4 0 1 0 1 0 0 0 0 0 0 0
1996  7 3  0 2 1 -1 -1 77  0 7 21 20 14 8 5 1 1 0 0 0 0 0
1997  7 3  0 2 1 -1 -1 15  0 1 5 3 2 1 1 1 1 0 0 0 0 0
1998  7 3  0 2 1 -1 -1 13  0 0 1 4 4 0 1 3 0 0 0 0 0 0
1999  7 3  0 2 1 -1 -1 25  0 3 4 8 0 1 4 1 2 0 1 0 1 0
2000  7 3  0 2 1 -1 -1 61  0 15 8 8 8 11 5 4 0 1 1 0 0 0
2001  7 3  0 2 1 -1 -1 7  0 0 1 1 3 1 1 0 0 0 0 0 0 0
2002  7 3  0 2 1 -1 -1 15  0 1 2 8 2 2 0 0 0 0 0 0 0 0
2003  7 3  0 2 1 -1 -1 19  0 2 4 7 2 1 0 0 1 2 0 0 0 0
2004  7 3  0 2 1 -1 -1 4  0 0 2 0 1 1 0 0 0 0 0 0 0 0
2005  7 3  0 2 1 -1 -1 54  0 2 10 13 14 4 7 1 1 1 1 0 0 0
2006  7 3  0 2 1 -1 -1 93  0 4 21 26 19 12 4 5 0 2 0 0 0 0
2007  7 3  0 2 1 -1 -1 100  0 1 13 29 22 18 7 3 4 1 0 1 0 1
2008  7 3  0 2 1 -1 -1 42  0 2 10 6 11 5 3 1 0 2 0 0 0 2
2009  7 3  0 2 1 -1 -1 100  1 8 26 19 7 15 7 9 3 1 3 1 0 0
2010  7 3  0 2 1 -1 -1 20  0 4 4 4 3 0 1 3 1 0 0 0 0 0
2011  7 3  0 2 1 -1 -1 78  0 8 14 15 14 8 5 7 3 3 0 1 0 0
2012  7 3  0 2 1 -1 -1 100  0 9 21 30 21 7 3 3 4 2 0 0 0 0
2013  7 3  0 2 1 -1 -1 100  1 8 16 22 23 15 5 2 2 1 2 0 3 0
2014  7 3  0 2 1 -1 -1 100  0 5 30 25 18 9 6 1 2 1 1 0 0 2
2015  7 3  0 2 1 -1 -1 46  0 9 7 12 8 4 2 0 1 2 0 1 0 0
2016  7 3  0 2 1 -1 -1 100  0 12 34 13 21 8 6 1 2 2 0 0 0 1
2017  7 3  0 2 1 -1 -1 100  1 7 25 27 5 14 4 6 6 1 1 2 0 1
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

