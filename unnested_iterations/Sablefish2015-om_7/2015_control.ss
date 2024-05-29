#V3.30
#C file created using the SS_writectl function in the R package r4ss
#C file write time: 2024-02-22 17:06:28.177473
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
4 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
1 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	1	1	0	#_recr_dist_pattern1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
5 #_Nblock_Patterns
1 1 1 1 1 #_blocks_per_pattern
#_begin and end years of blocks
1970 1996
1982 2010
1970 1981
1970 2002
1979 1979
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0.5 #_Age(post-settlement)_for_L1;linear growth below this
30 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
3 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.01	    0.11	   0.101934	-2.1791	0.3384	3	  3	0	0	0	0	0	0	0	#_NatM_p_1_Fem_GP_1  
   22	      30	         22	     22	    99	0	  2	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1 
   60	      70	    64.4809	     66	    99	0	  2	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1 
 0.15	    0.35	       0.35	   0.25	    99	0	  2	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1 
 0.03	    0.15	   0.141546	   0.05	    99	0	  2	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1  
 0.03	    0.15	   0.110843	   0.11	    99	0	  2	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1    
    0	       1	3.26728e-06	      0	    99	6	-50	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1   
    0	       4	    3.27596	    3.3	    99	6	-50	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1   
   57	      59	         58	     55	    99	6	-50	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1    
   -3	       3	      -0.13	  -0.25	    99	6	-50	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1 
   -3	       3	          1	      1	    99	6	-50	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1
   -3	       3	          0	      0	    99	6	-50	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1 
 0.01	    0.11	  0.0785639	-2.0565	0.3375	3	  3	0	0	0	0	0	0	0	#_NatM_p_1_Mal_GP_1  
   -3	       3	          0	      0	    99	0	-50	0	0	0	0	0	0	0	#_L_at_Amin_Mal_GP_1 
   50	      60	     55.933	      0	    99	0	  2	0	0	0	0	0	0	0	#_L_at_Amax_Mal_GP_1 
  0.2	     0.5	   0.483494	      0	    99	0	  2	0	0	0	0	0	0	0	#_VonBert_K_Mal_GP_1 
   -3	       3	          0	      0	    99	0	-50	0	0	0	0	0	0	0	#_CV_young_Mal_GP_1  
 0.03	    0.15	  0.0750106	      0	    99	0	  2	0	0	0	0	0	0	0	#_CV_old_Mal_GP_1    
    0	       1	3.32942e-06	      0	    99	6	-50	0	0	0	0	0	0	0	#_Wtlen_1_Mal_GP_1   
    0	       4	    3.27292	    3.3	    99	6	-50	0	0	0	0	0	0	0	#_Wtlen_2_Mal_GP_1   
  0.1	      10	          1	      1	     1	0	 -1	0	0	0	0	0	0	0	#_CohortGrowDev      
1e-06	0.999999	        0.5	    0.5	   0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1    
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
  8	 12	11.6409	9.8	   99	0	  7	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.2	  1	    0.6	0.6	0.223	2	 -9	0	0	0	0	0	0	0	#_SR_BH_steep
0.2	1.5	   0.95	0.6	   99	0	-50	0	0	0	0	0	0	0	#_SR_sigmaR  
 -1	  1	      0	  0	   99	0	-50	0	0	0	0	0	0	0	#_SR_regime  
 -1	  1	      0	  0	   99	0	-50	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1970 # first year of main recr_devs; early devs can preceed this era
2014 # last year of main recr_devs; forecast devs start in following year
-6 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-6 #_recdev_early_phase
6 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1971.37 #_last_yr_nobias_adj_in_MPD; begin of ramp
1980.72 #_first_yr_fullbias_adj_in_MPD; begin of plateau
2014 #_last_yr_fullbias_adj_in_MPD
2014.96 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
-1 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
0 #_period of cycles in recruitment (N parms read below)
-4 #min rec_dev
4 #max rec_dev
45 #_read_recdevs
#_end of advanced SR options
#
# read specified recr devs
#_Yr Input_value
1970 -0.396476532092423 #_stochastic_recdev_with_sigmaR=0.95
1971 -0.796282779759702 #_stochastic_recdev_with_sigmaR=0.95
1972  1.28990835533026 #_stochastic_recdev_with_sigmaR=0.95
1973 -1.02551587488751 #_stochastic_recdev_with_sigmaR=0.95
1974 -0.512080816285958 #_stochastic_recdev_with_sigmaR=0.95
1975 -1.08605929767727 #_stochastic_recdev_with_sigmaR=0.95
1976 -0.205678012148319 #_stochastic_recdev_with_sigmaR=0.95
1977 -1.51856242696553 #_stochastic_recdev_with_sigmaR=0.95
1978 -0.0229066319681526 #_stochastic_recdev_with_sigmaR=0.95
1979  0.839559086204234 #_stochastic_recdev_with_sigmaR=0.95
1980  0.105310257238985 #_stochastic_recdev_with_sigmaR=0.95
1981  0.203775376286768 #_stochastic_recdev_with_sigmaR=0.95
1982 -0.477574583942399 #_stochastic_recdev_with_sigmaR=0.95
1983 -0.000926335789393542 #_stochastic_recdev_with_sigmaR=0.95
1984 -0.827385989282404 #_stochastic_recdev_with_sigmaR=0.95
1985 -0.381333237210868 #_stochastic_recdev_with_sigmaR=0.95
1986  1.97168780388228 #_stochastic_recdev_with_sigmaR=0.95
1987  0.110896017678135 #_stochastic_recdev_with_sigmaR=0.95
1988 -0.9842263814565 #_stochastic_recdev_with_sigmaR=0.95
1989 -1.32429827580959 #_stochastic_recdev_with_sigmaR=0.95
1990  0.869721899462888 #_stochastic_recdev_with_sigmaR=0.95
1991  1.9424622122015 #_stochastic_recdev_with_sigmaR=0.95
1992 -0.251783937180268 #_stochastic_recdev_with_sigmaR=0.95
1993  0.00604621684306198 #_stochastic_recdev_with_sigmaR=0.95
1994  0.566057677857365 #_stochastic_recdev_with_sigmaR=0.95
1995  1.56082795156568 #_stochastic_recdev_with_sigmaR=0.95
1996 -0.767127552217328 #_stochastic_recdev_with_sigmaR=0.95
1997  0.500306338527139 #_stochastic_recdev_with_sigmaR=0.95
1998  0.35124489842943 #_stochastic_recdev_with_sigmaR=0.95
1999 -1.21550475713732 #_stochastic_recdev_with_sigmaR=0.95
2000 -0.245874627589551 #_stochastic_recdev_with_sigmaR=0.95
2001  0.816840956176913 #_stochastic_recdev_with_sigmaR=0.95
2002 -1.59328723120476 #_stochastic_recdev_with_sigmaR=0.95
2003  1.36910169847133 #_stochastic_recdev_with_sigmaR=0.95
2004  0.107346764980517 #_stochastic_recdev_with_sigmaR=0.95
2005  0.92789709095413 #_stochastic_recdev_with_sigmaR=0.95
2006 -0.38645727995533 #_stochastic_recdev_with_sigmaR=0.95
2007  0.0456432457862125 #_stochastic_recdev_with_sigmaR=0.95
2008  0.304275005248875 #_stochastic_recdev_with_sigmaR=0.95
2009  0.41426150263974 #_stochastic_recdev_with_sigmaR=0.95
2010  1.43274162095867 #_stochastic_recdev_with_sigmaR=0.95
2011 -2.02511414329876 #_stochastic_recdev_with_sigmaR=0.95
2012  0.491263127235258 #_stochastic_recdev_with_sigmaR=0.95
2013  0.728640872845751 #_stochastic_recdev_with_sigmaR=0.95
2014 -0.911359272945777 #_stochastic_recdev_with_sigmaR=0.95
#Fishing Mortality info
0.02 # F ballpark
-2000 # F ballpark year (neg value to disable)
1 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
0.9 # max F or harvest rate, depends on F_Method
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    4	1	0	0	0	1	#_ENV       
    5	1	0	1	1	0	#_AKSHLF    
    6	1	0	1	0	1	#_AKSLP     
    7	1	0	1	0	1	#_NWSLP     
    8	1	0	1	0	1	#_NWCBO     
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
  -15	 15	 0.116952	0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_ENV(4)    
   -3	0.5	 -2.25921	0	99	0	 1	0	1	1980	2004	-5	0	0	#_LnQ_base_AKSHLF(5) 
  0.1	1.3	  0.45161	0	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_AKSHLF(5)
  -15	 15	 -1.87897	0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_AKSLP(6)  
0.001	0.7	0.0573207	0	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_AKSLP(6) 
  -15	 15	 -2.60882	0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_NWSLP(7)  
0.001	0.8	0.0990337	0	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_NWSLP(7) 
  -15	 15	 -1.75196	0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_NWCBO(8)  
    0	0.4	        0	0	99	0	-3	0	0	   0	   0	 0	0	0	#_Q_extraSD_NWCBO(8) 
# timevary Q parameters
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
1e-04	   2	2	99	0.5	0	-5	#_LnQ_base_AKSHLF(5)_dev_se      
-0.99	0.99	0	 0	0.5	0	-6	#_LnQ_base_AKSHLF(5)_dev_autocorr
# info on dev vectors created for Q parms are reported with other devs after tag parameter section
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
0	2	0	0	#_1 HKL   
0	2	0	0	#_2 POT   
0	2	0	0	#_3 TWL   
0	0	0	0	#_4 ENV   
0	0	0	0	#_5 AKSHLF
0	0	0	0	#_6 AKSLP 
0	0	0	0	#_7 NWSLP 
0	0	0	0	#_8 NWCBO 
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
27	0	1	4	#_1 HKL   
27	0	1	4	#_2 POT   
27	0	1	5	#_3 TWL   
11	0	0	0	#_4 ENV   
20	0	0	0	#_5 AKSHLF
20	0	0	0	#_6 AKSLP 
20	0	0	0	#_7 NWSLP 
20	0	0	0	#_8 NWCBO 
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
   25	 45	     25	 30	99	0	  6	0	0	0	0	0	3	2	#_SizeSel_PRet_1_HKL(1)
0.001	  4	      1	  1	99	0	 -6	0	0	0	0	0	0	0	#_SizeSel_PRet_2_HKL(1)
  -10	 10	8.29555	 10	99	0	  6	0	0	0	0	0	1	2	#_SizeSel_PRet_3_HKL(1)
  -10	 10	      0	  0	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PRet_4_HKL(1)
    8	 70	     28	 18	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_1_HKL(1)
0.001	  2	   0.01	  1	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_2_HKL(1)
 0.01	0.8	    0.2	0.1	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_3_HKL(1)
  -10	 10	      0	  0	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_4_HKL(1)
   25	 60	46.5662	 30	99	0	  6	0	0	0	0	0	3	2	#_SizeSel_PRet_1_POT(2)
    1	 20	3.66821	  1	99	0	  6	0	0	0	0	0	0	0	#_SizeSel_PRet_2_POT(2)
  -10	 10	     10	 10	99	0	 -6	0	0	0	0	0	1	2	#_SizeSel_PRet_3_POT(2)
  -10	 10	      0	  0	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PRet_4_POT(2)
    8	 70	     28	 18	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_1_POT(2)
0.001	  2	   0.01	  1	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_2_POT(2)
 0.01	0.8	    0.2	0.1	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_3_POT(2)
  -10	 10	      0	  0	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_4_POT(2)
   25	 60	 45.091	 32	99	0	  6	0	0	0	0	0	3	2	#_SizeSel_PRet_1_TWL(3)
    1	  5	2.08034	  1	99	0	  6	0	0	0	0	0	0	0	#_SizeSel_PRet_2_TWL(3)
  -10	 10	     10	 10	99	0	-99	0	0	0	0	0	2	2	#_SizeSel_PRet_3_TWL(3)
  -10	 10	      0	  0	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PRet_4_TWL(3)
    8	 70	     28	 18	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_1_TWL(3)
0.001	  2	   0.01	  1	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_2_TWL(3)
  0.1	0.8	    0.5	0.5	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_3_TWL(3)
  -10	 10	      0	  0	99	0	-50	0	0	0	0	0	0	0	#_SizeSel_PDis_4_TWL(3)
#_AgeSelex
   -2	 2	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Code_HKL(1)  
   -5	 5	  0.536002	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_GradLo_HKL(1)
   -5	 2	 -0.750493	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_GradHi_HKL(1)
    0	35	         2	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_1_HKL(1)
    0	35	         6	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_2_HKL(1)
    0	35	         9	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_3_HKL(1)
    0	35	        13	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_4_HKL(1)
   -5	 3	   -1.1164	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_1_HKL(1) 
   -5	 3	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_2_HKL(1) 
   -5	 3	 -0.272431	  0	99	0	  5	0	0	0	0	0	4	2	#_AgeSel_Spline_Val_3_HKL(1) 
   -5	 3	 -0.753648	  0	99	0	  5	0	0	0	0	0	4	2	#_AgeSel_Spline_Val_4_HKL(1) 
    1	25	        10	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_PMale_1_HKL(1)      
   -1	 1	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_PMale_2_HKL(1)      
   -3	 1	  -1.26664	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_PMale_3_HKL(1)      
   -4	 1	  -1.10104	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_PMale_4_HKL(1)      
   -2	 2	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Code_POT(2)  
   -2	 5	0.00398468	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_GradLo_POT(2)
   -5	 2	 -0.399622	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_GradHi_POT(2)
    0	35	         2	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_1_POT(2)
    0	35	         4	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_2_POT(2)
    0	35	         8	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_3_POT(2)
    0	35	        12	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_4_POT(2)
   -5	 3	  -2.22168	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_1_POT(2) 
   -5	 3	 -0.633053	  0	99	0	  5	0	0	0	0	0	4	2	#_AgeSel_Spline_Val_2_POT(2) 
   -5	 3	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_3_POT(2) 
   -5	 3	 0.0786458	  0	99	0	  5	0	0	0	0	0	4	2	#_AgeSel_Spline_Val_4_POT(2) 
    1	25	        10	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_PMale_1_POT(2)      
   -1	 1	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_PMale_2_POT(2)      
   -3	 1	  -1.24135	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_PMale_3_POT(2)      
   -4	 1	  -1.42893	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_PMale_4_POT(2)      
   -2	 2	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Code_TWL(3)  
   -1	 5	        -1	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_GradLo_TWL(3)
   -5	 2	 -0.233753	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_GradHi_TWL(3)
    0	35	         1	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_1_TWL(3)
    0	35	         2	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_2_TWL(3)
    0	35	         4	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_3_TWL(3)
    0	35	         8	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_4_TWL(3)
    0	35	        12	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Knot_5_TWL(3)
   -5	 3	  0.970947	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_1_TWL(3) 
   -5	 3	  0.761775	  0	99	0	  5	0	0	0	0	0	4	2	#_AgeSel_Spline_Val_2_TWL(3) 
   -5	 3	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_3_TWL(3) 
   -5	 3	  0.356366	  0	99	0	  5	0	0	0	0	0	4	2	#_AgeSel_Spline_Val_4_TWL(3) 
   -5	 3	 -0.848561	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_Spline_Val_5_TWL(3) 
    1	25	         4	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_PMale_1_TWL(3)      
   -1	 1	         0	  0	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_PMale_2_TWL(3)      
   -3	 1	0.00753695	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_PMale_3_TWL(3)      
   -1	 1	 -0.107561	  0	99	0	  5	0	0	0	0	0	0	0	#_AgeSel_PMale_4_TWL(3)      
    0	 5	         0	  3	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_1_ENV(4)          
    1	60	        50	  3	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_2_ENV(4)          
    1	12	       1.5	  1	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_1_AKSHLF(5)       
   -5	 5	        -4	0.3	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_2_AKSHLF(5)       
0.001	10	       0.5	  5	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_3_AKSHLF(5)       
0.001	10	   1.83072	  4	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_4_AKSHLF(5)       
   -5	 5	   -2.8991	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_5_AKSHLF(5)       
   -5	 5	     -4.99	 -5	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_6_AKSHLF(5)       
    1	12	   2.47666	  1	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_1_AKSLP(6)        
   -5	 5	        -4	0.3	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_2_AKSLP(6)        
0.001	10	       0.1	  5	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_3_AKSLP(6)        
0.001	10	  0.959263	  4	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_4_AKSLP(6)        
   -5	 5	  -1.69023	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_5_AKSLP(6)        
   -5	 5	  -0.90196	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_6_AKSLP(6)        
    1	12	         3	  1	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_1_NWSLP(7)        
   -5	 5	        -4	0.3	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_2_NWSLP(7)        
0.001	10	   1.15962	  5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_3_NWSLP(7)        
0.001	10	  0.933136	  4	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_4_NWSLP(7)        
   -5	 5	  -3.83639	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_5_NWSLP(7)        
   -5	 5	-0.0680659	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_6_NWSLP(7)        
  0.1	 5	       1.5	  1	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_1_NWCBO(8)        
   -5	 5	        -4	0.3	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_2_NWCBO(8)        
0.001	 5	       0.5	  5	99	0	 -4	0	0	0	0	0	0	0	#_AgeSel_P_3_NWCBO(8)        
0.001	10	   3.05793	  4	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_4_NWCBO(8)        
   -5	 5	 -0.841442	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_5_NWCBO(8)        
   -5	 5	 -0.733299	 -5	99	0	  4	0	0	0	0	0	0	0	#_AgeSel_P_6_NWCBO(8)        
# timevary selex parameters 
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
 25	45	25	30	99	0	-99	#_SizeSel_PRet_1_HKL(1)_BLK3repl_1970
0.7	 1	 1	 1	99	0	-99	#_SizeSel_PRet_3_HKL(1)_BLK1repl_1970
 25	45	25	30	99	0	-99	#_SizeSel_PRet_1_POT(2)_BLK3repl_1970
0.7	 1	 1	 1	99	0	-99	#_SizeSel_PRet_3_POT(2)_BLK1repl_1970
 25	45	25	30	99	0	-99	#_SizeSel_PRet_1_TWL(3)_BLK3repl_1970
0.7	 1	 1	 1	99	0	  6	#_SizeSel_PRet_3_TWL(3)_BLK2repl_1982
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
-5	3	-0.738825	0	99	0	5	#_AgeSel_Spline_Val_3_HKL(1)_BLK4repl_1970
-5	3	 -0.90923	0	99	0	5	#_AgeSel_Spline_Val_4_HKL(1)_BLK4repl_1970
-5	3	-0.508931	0	99	0	5	#_AgeSel_Spline_Val_2_POT(2)_BLK4repl_1970
-5	3	-0.274509	0	99	0	5	#_AgeSel_Spline_Val_4_POT(2)_BLK4repl_1970
-5	3	  0.66127	0	99	0	5	#_AgeSel_Spline_Val_2_TWL(3)_BLK4repl_1970
-5	3	 -0.27989	0	99	0	5	#_AgeSel_Spline_Val_4_TWL(3)_BLK4repl_1970
# info on dev vectors created for selex parms are reported with other devs after tag parameter section
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Data_type	Fleet	Value
    2	1	 0.015	#_Variance_adjustment_list1 
    3	1	 0.206	#_Variance_adjustment_list2 
    4	1	0.1459	#_Variance_adjustment_list3 
    5	1	0.8444	#_Variance_adjustment_list4 
    2	2	 0.024	#_Variance_adjustment_list5 
    3	2	 0.087	#_Variance_adjustment_list6 
    4	2	1.0423	#_Variance_adjustment_list7 
    5	2	 2.116	#_Variance_adjustment_list8 
    2	3	 0.097	#_Variance_adjustment_list9 
    4	3	0.2461	#_Variance_adjustment_list10
    5	3	 1.675	#_Variance_adjustment_list11
    4	5	0.1843	#_Variance_adjustment_list12
    5	5	0.2735	#_Variance_adjustment_list13
    4	6	1.2635	#_Variance_adjustment_list14
    5	6	0.0041	#_Variance_adjustment_list15
    4	7	 0.557	#_Variance_adjustment_list16
    5	7	0.2011	#_Variance_adjustment_list17
    4	8	 0.742	#_Variance_adjustment_list18
    5	8	0.2366	#_Variance_adjustment_list19
-9999	0	     0	#_terminator                
#
1 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 1 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
    1	4	1	0	1	#_Surv_ENV_Phz1
-9999	0	0	0	0	#_terminator   
#
0 # 0/1 read specs for more stddev reporting
#
999
