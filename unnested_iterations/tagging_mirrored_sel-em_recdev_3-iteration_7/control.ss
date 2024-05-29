#V3.30
#C file created using the SS_writectl function in the R package r4ss
#C file write time: 2024-04-29 16:24:21.249806
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
1 #_Nblock_Patterns
1 #_blocks_per_pattern
#_begin and end years of blocks
1926 1926
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
0 0 0 0 0 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
1 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
4 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
# Age Maturity or Age fecundity:
#_Age_0	Age_1	Age_2	Age_3	Age_4	Age_5	Age_6	Age_7	Age_8	Age_9	Age_10	Age_11	Age_12	Age_13	Age_14	Age_15	Age_16	Age_17	Age_18	Age_19	Age_20	Age_21	Age_22	Age_23	Age_24	Age_25	Age_26	Age_27	Age_28	Age_29	Age_30
0	0	0	0	0.172382	0.650652	1.81357	3.76773	6.23659	8.91957	11.6852	14.4983	17.3441	20.2029	23.0486	25.8524	28.5862	31.2252	33.7489	36.1418	38.3932	40.4967	42.4499	44.2534	45.9104	47.4263	48.8077	50.0621	51.1978	52.2232	53.1467	#_Age_Maturity1
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.15	     0.3	     0.15	  0.2446	0.8	6	  5	0	0	   0	   0	0.5	0	0	#_NatM_p_1_Fem_GP_1  
    5	     100	     54.4	      42	 10	6	 -3	0	0	1979	2006	0.5	0	0	#_L_at_Amin_Fem_GP_1 
   80	     430	    201.9	     100	 10	6	 -2	0	0	1979	2006	0.5	0	0	#_L_at_Amax_Fem_GP_1 
 0.05	    0.35	    0.123	  0.1596	0.8	6	 -3	0	0	1979	2006	0.5	0	0	#_VonBert_K_Fem_GP_1 
5e-04	    0.25	0.0685947	    0.01	0.8	6	  5	0	0	   0	   0	0.5	0	0	#_CV_young_Fem_GP_1  
5e-04	    0.25	0.0276726	    0.01	0.8	6	  5	0	0	   0	   0	0.5	0	0	#_CV_old_Fem_GP_1    
   -3	       3	 1.22e-06	3.75e-06	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_1_Fem_GP_1   
    2	       5	     3.18	   3.013	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_2_Fem_GP_1   
   -3	    1000	     63.7	      70	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Mat50%_Fem_GP_1    
  -10	    1000	       -9	      -9	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Mat_slope_Fem_GP_1 
   -3	       3	        1	       1	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Eggs_alpha_Fem_GP_1
   -3	       3	        0	       0	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Eggs_beta_Fem_GP_1 
 0.15	     0.3	     0.15	  0.2446	0.8	6	  5	0	0	   0	   0	0.5	0	0	#_NatM_p_1_Mal_GP_1  
    5	     100	     52.9	      42	 10	6	 -3	0	0	1979	2006	0.5	0	0	#_L_at_Amin_Mal_GP_1 
   80	     430	    138.7	     100	 10	6	 -2	0	0	1979	2006	0.5	0	0	#_L_at_Amax_Mal_GP_1 
 0.05	    0.35	    0.253	  0.1596	0.8	6	 -3	0	0	1979	2006	0.5	0	0	#_VonBert_K_Mal_GP_1 
5e-04	    0.25	 0.046062	    0.01	0.8	6	  5	0	0	   0	   0	0.5	0	0	#_CV_young_Mal_GP_1  
5e-04	    0.25	 0.067732	    0.01	0.8	6	  5	0	0	   0	   0	0.5	0	0	#_CV_old_Mal_GP_1    
   -3	       3	 4.38e-06	3.75e-06	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_1_Mal_GP_1   
    2	       5	     2.97	   3.013	0.8	6	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_2_Mal_GP_1   
  0.1	      10	        1	       1	  1	0	 -1	0	0	   0	   0	  0	0	0	#_CohortGrowDev      
1e-06	0.999999	      0.5	     0.5	0.5	0	-99	0	0	   0	   0	  0	0	0	#_FracFemale_GP_1    
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
  1	15	6.56097	9.3	 10	6	  1	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.2	 1	    0.9	0.9	0.2	6	 -5	0	0	0	0	0	0	0	#_SR_BH_steep
 -2	 2	    0.4	0.6	0.8	6	 -3	0	0	0	0	0	0	0	#_SR_sigmaR  
 -5	 5	      0	  0	  1	6	 -4	0	0	0	0	0	0	0	#_SR_regime  
  0	 2	      0	  1	 50	6	-50	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
3 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1964 # first year of main recr_devs; early devs can preceed this era
2002 # last year of main recr_devs; forecast devs start in following year
1 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-3 #_recdev_early_phase
-4 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1950.137 #_last_early_yr_nobias_adj_in_MPD
1971.377 #_first_yr_fullbias_adj_in_MPD
2001.000 #_last_yr_fullbias_adj_in_MPD
2002.524 #_first_recent_yr_nobias_adj_in_MPD
   0.855 #_max_bias_adj_in_MPD (1.0 to mimic pre-2009 models)
0 #_period of cycles in recruitment (N parms read below)
-5 #min rec_dev
5 #max rec_dev
0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
#Fishing Mortality info
0.1 # F ballpark
-1999 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
2.99 # max F or harvest rate, depends on F_Method
4 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	0	0	1	#_cpue2     
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-15	15	-3.13873	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_cpue2(2)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
6	0	0	44	#_1 cpue1
6	0	0	44	#_2 cpue2
6	0	0	44	#_3 cpue3
6	0	0	44	#_4 cpue4
6	0	0	44	#_5 Cpue5
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
20	0	0	0	#_1 cpue1
15	0	0	1	#_2 cpue2
15	0	0	1	#_3 cpue3
15	0	0	1	#_4 cpue4
15	0	0	1	#_5 Cpue5
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
  1	500	        32.5	 32.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_cpue1(1) 
  1	500	       247.5	247.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_7_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_8_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_9_cpue1(1) 
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_10_cpue1(1)
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_11_cpue1(1)
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_12_cpue1(1)
 -1	 50	           0	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_13_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_14_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_15_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_16_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_17_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_18_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_19_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_20_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_21_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_22_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_23_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_24_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_25_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_26_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_27_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_28_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_29_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_30_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_31_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_32_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_33_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_34_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_35_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_36_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_37_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_38_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_39_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_40_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_41_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_42_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_43_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_44_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_45_cpue1(1)
 -1	 50	          20	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_46_cpue1(1)
  1	500	        32.5	 32.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_cpue2(2) 
  1	500	       247.5	247.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_cpue2(2) 
-27	 50	    -26.9451	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_cpue2(2) 
-27	 50	    -21.8171	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_cpue2(2) 
-27	 50	    -17.6973	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_cpue2(2) 
-27	 50	    -14.3325	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_cpue2(2) 
-27	 50	    -11.5543	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_7_cpue2(2) 
-27	 50	    -9.24508	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_8_cpue2(2) 
-27	 50	    -7.31939	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_9_cpue2(2) 
-27	 50	    -5.71317	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_10_cpue2(2)
-27	 50	    -4.37719	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_11_cpue2(2)
-27	 50	    -3.27279	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_12_cpue2(2)
-27	 50	    -2.36906	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_13_cpue2(2)
-27	 50	    -1.64089	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_14_cpue2(2)
-27	 50	    -1.06761	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_15_cpue2(2)
-27	 50	   -0.631981	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_16_cpue2(2)
-27	 50	   -0.319517	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_17_cpue2(2)
-27	 50	   -0.117889	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_18_cpue2(2)
-27	 50	   -0.016535	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_19_cpue2(2)
-27	 50	 -0.00633502	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_20_cpue2(2)
-27	 50	  -0.0793582	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_21_cpue2(2)
-27	 50	   -0.228666	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_22_cpue2(2)
-27	 50	   -0.448153	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_23_cpue2(2)
-27	 50	   -0.732418	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_24_cpue2(2)
-27	 50	    -1.07666	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_25_cpue2(2)
-27	 50	     -1.4766	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_26_cpue2(2)
-27	 50	    -1.92839	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_27_cpue2(2)
-27	 50	    -2.42857	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_28_cpue2(2)
-27	 50	    -2.97402	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_29_cpue2(2)
-27	 50	    -3.56192	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_30_cpue2(2)
-27	 50	    -4.18968	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_31_cpue2(2)
-27	 50	    -4.85496	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_32_cpue2(2)
-27	 50	    -5.55561	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_33_cpue2(2)
-27	 50	    -6.28968	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_34_cpue2(2)
-27	 50	    -7.05536	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_35_cpue2(2)
-27	 50	    -7.85098	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_36_cpue2(2)
-27	 50	    -8.67499	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_37_cpue2(2)
-27	 50	      -9.526	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_38_cpue2(2)
-27	 50	    -10.4027	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_39_cpue2(2)
-27	 50	    -11.3038	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_40_cpue2(2)
-27	 50	    -12.2282	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_41_cpue2(2)
-27	 50	    -13.1749	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_42_cpue2(2)
-27	 50	    -14.1429	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_43_cpue2(2)
-27	 50	    -15.1311	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_44_cpue2(2)
-27	 50	    -16.1389	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_45_cpue2(2)
-27	 50	    -17.1653	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_46_cpue2(2)
  1	500	        32.5	 32.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_cpue3(3) 
  1	500	       247.5	247.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_cpue3(3) 
-35	 50	    -34.5153	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_cpue3(3) 
-35	 50	     -28.346	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_cpue3(3) 
-35	 50	     -23.356	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_cpue3(3) 
-35	 50	    -19.2491	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_cpue3(3) 
-35	 50	    -15.8283	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_7_cpue3(3) 
-35	 50	    -12.9561	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_8_cpue3(3) 
-35	 50	    -10.5324	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_9_cpue3(3) 
-35	 50	    -8.48245	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_10_cpue3(3)
-35	 50	    -6.74856	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_11_cpue3(3)
-35	 50	    -5.28554	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_12_cpue3(3)
-35	 50	    -4.05723	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_13_cpue3(3)
-35	 50	    -3.03427	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_14_cpue3(3)
-35	 50	    -2.19248	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_15_cpue3(3)
-35	 50	    -1.51169	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_16_cpue3(3)
-35	 50	   -0.974966	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_17_cpue3(3)
-35	 50	   -0.567883	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_18_cpue3(3)
-35	 50	   -0.278086	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_19_cpue3(3)
-35	 50	  -0.0949065	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_20_cpue3(3)
-35	 50	 -0.00907001	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_21_cpue3(3)
-35	 50	  -0.0124613	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_22_cpue3(3)
-35	 50	  -0.0979381	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_23_cpue3(3)
-35	 50	   -0.259184	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_24_cpue3(3)
-35	 50	   -0.490584	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_25_cpue3(3)
-35	 50	   -0.787126	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_26_cpue3(3)
-35	 50	    -1.14432	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_27_cpue3(3)
-35	 50	    -1.55811	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_28_cpue3(3)
-35	 50	    -2.02485	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_29_cpue3(3)
-35	 50	    -2.54124	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_30_cpue3(3)
-35	 50	    -3.10426	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_31_cpue3(3)
-35	 50	    -3.71117	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_32_cpue3(3)
-35	 50	    -4.35945	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_33_cpue3(3)
-35	 50	    -5.04681	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_34_cpue3(3)
-35	 50	    -5.77114	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_35_cpue3(3)
-35	 50	     -6.5305	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_36_cpue3(3)
-35	 50	    -7.32307	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_37_cpue3(3)
-35	 50	    -8.14721	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_38_cpue3(3)
-35	 50	    -9.00138	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_39_cpue3(3)
-35	 50	    -9.88414	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_40_cpue3(3)
-35	 50	    -10.7942	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_41_cpue3(3)
-35	 50	    -11.7302	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_42_cpue3(3)
-35	 50	    -12.6911	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_43_cpue3(3)
-35	 50	    -13.6758	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_44_cpue3(3)
-35	 50	    -14.6833	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_45_cpue3(3)
-35	 50	    -15.7126	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_46_cpue3(3)
  1	500	        32.5	 32.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_cpue4(4) 
  1	500	       247.5	247.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_cpue4(4) 
-44	 50	    -43.2078	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_cpue4(4) 
-44	 50	    -35.9024	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_cpue4(4) 
-44	 50	     -29.961	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_cpue4(4) 
-44	 50	     -25.041	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_cpue4(4) 
-44	 50	    -20.9146	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_7_cpue4(4) 
-44	 50	    -17.4227	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_8_cpue4(4) 
-44	 50	    -14.4497	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_9_cpue4(4) 
-44	 50	    -11.9088	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_10_cpue4(4)
-44	 50	    -9.73354	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_11_cpue4(4)
-44	 50	    -7.87158	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_12_cpue4(4)
-44	 50	     -6.2811	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_13_cpue4(4)
-44	 50	    -4.92813	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_14_cpue4(4)
-44	 50	     -3.7847	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_15_cpue4(4)
-44	 50	    -2.82751	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_16_cpue4(4)
-44	 50	    -2.03693	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_17_cpue4(4)
-44	 50	    -1.39631	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_18_cpue4(4)
-44	 50	   -0.891344	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_19_cpue4(4)
-44	 50	   -0.509696	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_20_cpue4(4)
-44	 50	   -0.240639	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_21_cpue4(4)
-44	 50	   -0.074785	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_22_cpue4(4)
-44	 50	 -0.00387349	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_23_cpue4(4)
-44	 50	  -0.0206007	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_24_cpue4(4)
-44	 50	   -0.118471	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_25_cpue4(4)
-44	 50	   -0.291686	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_26_cpue4(4)
-44	 50	    -0.53505	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_27_cpue4(4)
-44	 50	   -0.843884	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_28_cpue4(4)
-44	 50	    -1.21396	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_29_cpue4(4)
-44	 50	    -1.64146	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_30_cpue4(4)
-44	 50	    -2.12288	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_31_cpue4(4)
-44	 50	    -2.65508	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_32_cpue4(4)
-44	 50	    -3.23513	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_33_cpue4(4)
-44	 50	    -3.86038	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_34_cpue4(4)
-44	 50	    -4.52839	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_35_cpue4(4)
-44	 50	    -5.23692	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_36_cpue4(4)
-44	 50	    -5.98387	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_37_cpue4(4)
-44	 50	    -6.76732	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_38_cpue4(4)
-44	 50	     -7.5855	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_39_cpue4(4)
-44	 50	    -8.43676	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_40_cpue4(4)
-44	 50	    -9.31954	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_41_cpue4(4)
-44	 50	    -10.2324	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_42_cpue4(4)
-44	 50	    -11.1741	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_43_cpue4(4)
-44	 50	    -12.1432	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_44_cpue4(4)
-44	 50	    -13.1387	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_45_cpue4(4)
-44	 50	    -14.1595	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_46_cpue4(4)
  1	500	        32.5	 32.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_Cpue5(5) 
  1	500	       247.5	247.5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_Cpue5(5) 
-65	 50	     -64.199	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_Cpue5(5) 
-65	 50	    -54.2645	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_Cpue5(5) 
-65	 50	    -46.1763	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_Cpue5(5) 
-65	 50	     -39.417	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_Cpue5(5) 
-65	 50	      -33.69	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_7_Cpue5(5) 
-65	 50	    -28.7885	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_8_Cpue5(5) 
-65	 50	    -24.5619	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_9_Cpue5(5) 
-65	 50	    -20.8976	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_10_Cpue5(5)
-65	 50	    -17.7088	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_11_Cpue5(5)
-65	 50	    -14.9277	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_12_Cpue5(5)
-65	 50	    -12.4997	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_13_Cpue5(5)
-65	 50	    -10.3807	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_14_Cpue5(5)
-65	 50	    -8.53434	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_15_Cpue5(5)
-65	 50	    -6.93022	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_16_Cpue5(5)
-65	 50	    -5.54285	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_17_Cpue5(5)
-65	 50	    -4.35055	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_18_Cpue5(5)
-65	 50	    -3.33474	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_19_Cpue5(5)
-65	 50	    -2.47934	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_20_Cpue5(5)
-65	 50	    -1.77042	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_21_Cpue5(5)
-65	 50	    -1.19576	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_22_Cpue5(5)
-65	 50	   -0.744609	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_23_Cpue5(5)
-65	 50	   -0.407466	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_24_Cpue5(5)
-65	 50	   -0.175883	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_25_Cpue5(5)
-65	 50	  -0.0423179	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_26_Cpue5(5)
-65	 50	-9.00004e-06	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_27_Cpue5(5)
-65	 50	  -0.0428699	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_28_Cpue5(5)
-65	 50	   -0.165405	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_29_Cpue5(5)
-65	 50	   -0.362634	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_30_Cpue5(5)
-65	 50	   -0.630028	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_31_Cpue5(5)
-65	 50	   -0.963458	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_32_Cpue5(5)
-65	 50	    -1.35915	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_33_Cpue5(5)
-65	 50	    -1.81365	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_34_Cpue5(5)
-65	 50	    -2.32377	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_35_Cpue5(5)
-65	 50	    -2.88658	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_36_Cpue5(5)
-65	 50	    -3.49939	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_37_Cpue5(5)
-65	 50	    -4.15969	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_38_Cpue5(5)
-65	 50	    -4.86517	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_39_Cpue5(5)
-65	 50	    -5.61367	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_40_Cpue5(5)
-65	 50	    -6.40319	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_41_Cpue5(5)
-65	 50	    -7.23187	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_42_Cpue5(5)
-65	 50	    -8.09797	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_43_Cpue5(5)
-65	 50	    -8.99986	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_44_Cpue5(5)
-65	 50	    -9.93602	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_45_Cpue5(5)
-65	 50	     -10.905	    5	99	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_46_Cpue5(5)
#_AgeSelex
  0	50	       1	100	99	0	-4	0	0	0	0	0.5	0	0	#_AgeSel_P_1_cpue1(1)
-10	10	-4.44528	100	99	6	 1	0	0	0	0	0.5	0	0	#_AgeSel_P_2_cpue1(1)
 -1	10	       8	100	99	0	-4	0	0	0	0	0.5	0	0	#_AgeSel_P_3_cpue1(1)
 -1	10	 2.37455	100	99	6	 1	0	0	0	0	0.5	0	0	#_AgeSel_P_4_cpue1(1)
 -5	10	       9	100	99	0	-4	0	0	0	0	0.5	0	0	#_AgeSel_P_5_cpue1(1)
 -5	10	-1.78702	100	99	6	 1	0	0	0	0	0.5	0	0	#_AgeSel_P_6_cpue1(1)
#_no timevary selex parameters
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
1 # TG_custom:  0=no read; 1=read if tags exist
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
-10	10	-2.571	-9	99	6	   -4	0	0	0	0	0	0	0	#__TG_Loss_init_1 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_2 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_3 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_4 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_5 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_6 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_7 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_8 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_9 
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_10
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_11
-10	10	-2.571	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_12
-10	10	 -1.05	-9	99	6	   -4	0	0	0	0	0	0	0	#__TG_Loss_init_13
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_14
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_15
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_16
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_17
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_18
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_19
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_20
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_21
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_22
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_23
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_24
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_25
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_26
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_27
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_28
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_29
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_30
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_31
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_32
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_33
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_34
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_35
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_36
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_37
-10	10	 -1.05	-9	99	6	-1000	0	0	0	0	0	0	0	#__TG_Loss_init_38
-10	10	    -9	-9	99	6	   -4	0	0	0	0	0	0	0	#_TG_Loss_chronic_1 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_2 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_3 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_4 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_5 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_6 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_7 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_8 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_9 
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_10
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_11
-10	10	    -9	-9	99	6	-1000	0	0	0	0	0	0	0	#_TG_Loss_chronic_12
-10	10	-2.132	-9	99	6	   -4	0	0	0	0	0	0	0	#_TG_Loss_chronic_13
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_14
-10	10	 0.905	-9	99	6	   -4	0	0	0	0	0	0	0	#_TG_Loss_chronic_15
-10	10	 0.905	-9	99	6	-1015	0	0	0	0	0	0	0	#_TG_Loss_chronic_16
-10	10	-2.512	-9	99	6	   -4	0	0	0	0	0	0	0	#_TG_Loss_chronic_17
-10	10	-2.512	-9	99	6	-1017	0	0	0	0	0	0	0	#_TG_Loss_chronic_18
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_19
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_20
-10	10	 0.905	-9	99	6	-1015	0	0	0	0	0	0	0	#_TG_Loss_chronic_21
-10	10	 0.905	-9	99	6	-1015	0	0	0	0	0	0	0	#_TG_Loss_chronic_22
-10	10	-2.512	-9	99	6	-1017	0	0	0	0	0	0	0	#_TG_Loss_chronic_23
-10	10	-2.512	-9	99	6	-1017	0	0	0	0	0	0	0	#_TG_Loss_chronic_24
-10	10	    -9	-9	99	6	   -4	0	0	0	0	0	0	0	#_TG_Loss_chronic_25
-10	10	    -9	-9	99	6	-1025	0	0	0	0	0	0	0	#_TG_Loss_chronic_26
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_27
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_28
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_29
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_30
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_31
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_32
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_33
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_34
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_35
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_36
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_37
-10	10	-2.132	-9	99	6	-1013	0	0	0	0	0	0	0	#_TG_Loss_chronic_38
1	100	1.001	2	99	6	   -4	0	0	0	0	0	0	0	#_TG_overdispersion_1 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_2 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_3 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_4 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_5 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_6 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_7 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_8 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_9 
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_10
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_11
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_12
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_13
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_14
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_15
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_16
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_17
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_18
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_19
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_20
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_21
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_22
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_23
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_24
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_25
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_26
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_27
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_28
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_29
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_30
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_31
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_32
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_33
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_34
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_35
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_36
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_37
1	100	1.001	2	99	6	-1000	0	0	0	0	0	0	0	#_TG_overdispersion_38
-10	50	0.405	3	99	6	   -4	0	0	0	0	0	0	0	#_TG_report_fleet_par_1
-10	50	0.405	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_fleet_par_2
-10	50	0.405	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_fleet_par_3
-10	50	0.405	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_fleet_par_4
-10	50	0.405	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_fleet_par_5
-10	10	0	3	99	6	   -4	0	0	0	0	0	0	0	#_TG_report_decay_par_1
-10	10	0	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_decay_par_2
-10	10	0	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_decay_par_3
-10	10	0	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_decay_par_4
-10	10	0	3	99	6	-1000	0	0	0	0	0	0	0	#_TG_report_decay_par_5
# Input variance adjustments factors: 
#_Data_type Fleet Value
-9999 1 0 # terminator
#
6 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 38 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
   15	 1	1	0.001	1	#_Tag-comp-likelihood_cpue1_Phz1         
   15	 2	1	0.001	1	#_Tag-comp-likelihood_cpue2_Phz1         
   15	 3	1	0.001	1	#_Tag-comp-likelihood_cpue3_Phz1         
   15	 4	1	0.001	1	#_Tag-comp-likelihood_cpue4_Phz1         
   15	 5	1	0.001	1	#_Tag-comp-likelihood_Cpue5_Phz1         
   15	 6	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate1 
   15	 7	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate2 
   15	 8	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate3 
   15	 9	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate4 
   15	10	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate5 
   15	11	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate6 
   15	12	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate7 
   15	13	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate8 
   15	14	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate9 
   15	15	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate10
   15	16	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate11
   15	17	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate12
   15	18	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate13
   15	19	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate14
   15	20	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate15
   15	21	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate16
   15	22	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate17
   15	23	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate18
   15	24	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate19
   15	25	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate20
   15	26	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate21
   15	27	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate22
   15	28	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate23
   15	29	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate24
   15	30	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate25
   15	31	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate26
   15	32	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate27
   15	33	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate28
   15	34	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate29
   15	35	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate30
   15	36	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate31
   15	37	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1_duplicate32
   15	38	1	0.001	1	#_Tag-comp-likelihood_NA_Phz1            
-9999	 0	0	    0	0	#_terminator                             
#
0 # 0/1 read specs for more stddev reporting
#
999
