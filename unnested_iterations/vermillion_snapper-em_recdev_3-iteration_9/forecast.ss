#C forecast file written by R function SS_writeforecast
#C rerun model to get more complete formatting in forecast.ss_new
#C should work with SS version: 3.3
#C file write time: 2024-04-30 17:00:11.087091
#
1 #_benchmarks
2 #_MSY
0.373 #_SPRtarget
0.3 #_Btarget
#_Bmark_years: beg_bio, end_bio, beg_selex, end_selex, beg_relF, end_relF,  beg_recr_dist, end_recr_dist, beg_SRparm, end_SRparm (enter actual year, or values of 0 or -integer to be rel. endyr)
0 0 0 0 -3 0 2005 2014 0 0
1 #_Bmark_relF_Basis
1 #_Forecast
10 #_Nforecastyrs
1 #_F_scalar
#_Fcast_years:  beg_selex, end_selex, beg_relF, end_relF, beg_recruits, end_recruits (enter actual year, or values of 0 or -integer to be rel. endyr)
0 0 -3 0 2005 2014
0 #_Fcast_selex
2 #_ControlRuleMethod
0.01 #_BforconstantF
0.001 #_BfornoF
1 #_Flimitfraction
3 #_N_forecast_loops
3 #_First_forecast_loop_with_stochastic_recruitment
4 #_fcast_rec_option
1 #_fcast_rec_val
0 #_Fcast_loop_control_5
2120 #_FirstYear_for_caps_and_allocations
0 #_stddev_of_log_catch_ratio
0 #_Do_West_Coast_gfish_rebuilder_output
2019 #_Ydecl
2014 #_Yinit
1 #_fleet_relative_F
# Note that fleet allocation is used directly as average F if Do_Forecast=4 
2 #_basis_for_fcast_catch_tuning
# enter list of fleet number and max for fleets with max annual catch; terminate with fleet=-9999
-9999 -1
# enter list of area ID and max annual catch; terminate with area=-9999
-9999 -1
# enter list of fleet number and allocation group assignment, if any; terminate with fleet=-9999
-9999 -1
-1 #_InputBasis
 #_Year Seas Fleet Catch or F Basis
   2018    1     1     344.39     3
   2018    1     2     297.58     3
   2018    1     3    2725.40     3
   2019    1     1     376.23     3
   2019    1     2     321.69     3
   2019    1     3    2233.73     3
   2020    1     1     376.23     3
   2020    1     2     321.69     3
   2020    1     3    2233.73     3
-9999 0 0 0 0
#
999 # verify end of input 
