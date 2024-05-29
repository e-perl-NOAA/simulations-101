#V3.30
#C file created using the SS_writectl function in the R package r4ss
#C file write time: 2024-04-29 15:56:39.821135
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
3 #_Nblock_Patterns
3 4 1 #_blocks_per_pattern
#_begin and end years of blocks
1990 2004 2005 2007 2008 2017
1990 1996 1997 2004 2005 2007 2008 2017
2008 2016
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
3 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_ #_Age_natmort_by sex x growthpattern
#_Age_0	Age_1	Age_2	Age_3	Age_4	Age_5	Age_6	Age_7	Age_8	Age_9	Age_10	Age_11	Age_12	Age_13	Age_14
0.234	0.342	0.287	0.257	0.239	0.228	0.22	0.215	0.212	0.209	0.207	0.206	0.205	0.204	0.204	#_natM1
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0.5 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
1 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
2 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
1e-04	   1e+06	   11.83	   11.83	  0	0	-1	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1 
1e-04	   1e+06	    34.4	    34.4	  0	0	-1	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1 
    0	   1e+06	  0.3254	  0.3254	  0	0	-1	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1 
    0	   1e+06	  0.2535	   1e-04	  0	0	-1	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1  
    0	   1e+06	  0.2535	   1e-04	  0	0	-1	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1    
    0	   1e+06	2.19e-05	2.19e-05	  0	0	-1	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1   
    0	   1e+06	   2.916	   2.916	  0	0	-1	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1   
    0	   1e+06	  14.087	  14.087	  0	0	-1	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1    
   -1	   1e+06	  -0.574	  -0.574	  0	0	-1	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1 
    0	   1e+06	 278.715	 278.715	  0	0	-1	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1
    0	   1e+06	   3.042	   3.042	  0	0	-1	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1 
  0.1	      10	       1	       1	  1	0	-1	0	0	0	0	0	0	0	#_CohortGrowDev      
1e-06	0.999999	     0.5	     0.5	0.5	0	-1	0	0	0	0	0	0	0	#_FracFemale_GP_1    
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
1 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
   0	13.82	 10.2109	6.91	   0	0	 1	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.22	 0.96	0.729779	 0.6	0.74	0	 2	0	0	0	0	0	0	0	#_SR_BH_steep
   0	    2	     0.3	 0.2	   0	0	-3	0	0	0	0	0	0	0	#_SR_sigmaR  
  -5	    5	       0	   0	   0	0	-3	0	0	0	0	0	0	0	#_SR_regime  
   0	  0.5	       0	   0	   0	0	-2	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
3 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1994 # first year of main recr_devs; early devs can preceed this era
2017 # last year of main recr_devs; forecast devs start in following year
3 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-4 #_recdev_early_phase
5 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1977.1648 #_last_early_yr_nobias_adj_in_MPD
1996.0067 #_first_yr_fullbias_adj_in_MPD
2013.8746 #_last_yr_fullbias_adj_in_MPD
2018.7549 #_first_recent_yr_nobias_adj_in_MPD
   0.9298 #_max_bias_adj_in_MPD (1.0 to mimic pre-2009 models)
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
0.5 # F ballpark
-2001 # F ballpark year (neg value to disable)
2 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
3 # max F or harvest rate, depends on F_Method
#_overall start F value; overall phase; N detailed inputs to read
0.05 1 0 #_F_setup
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    1	1	0	0	0	1	#_CM_E      
    2	1	0	0	0	1	#_CM_W      
    3	1	0	0	0	1	#_REC       
    4	1	0	0	0	0	#_SMP_BYC   
    5	1	0	0	0	1	#_HB_E      
    6	1	0	0	0	1	#_HB_W      
    7	1	0	0	0	1	#_LARVAL    
    8	1	0	0	0	1	#_VIDEO     
    9	1	0	0	0	1	#_SEAMAP    
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-25	25	-9.55123	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_CM_E(1)   
-25	25	-9.26689	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_CM_W(2)   
-25	25	-9.96465	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_REC(3)    
-10	20	 1.38481	0	0	0	 2	0	0	0	0	0	0	0	#_LnQ_base_SMP_BYC(4)
-25	25	-10.2916	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_HB_E(5)   
-25	25	 -10.258	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_HB_W(6)   
-27	25	-26.6547	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_LARVAL(7) 
-25	25	-10.7248	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_VIDEO(8)  
-25	25	-10.6065	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_SEAMAP(9) 
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
 0	2	0	0	#_1 CM_E   
 0	2	0	0	#_2 CM_W   
 0	2	0	0	#_3 REC    
 0	3	0	0	#_4 SMP_BYC
 0	0	0	0	#_5 HB_E   
 0	0	0	0	#_6 HB_W   
 0	0	0	0	#_7 LARVAL 
24	0	0	0	#_8 VIDEO  
24	0	0	0	#_9 SEAMAP 
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
12	0	0	0	#_1 CM_E   
12	0	0	0	#_2 CM_W   
20	0	0	0	#_3 REC    
19	0	0	0	#_4 SMP_BYC
15	0	0	3	#_5 HB_E   
15	0	0	3	#_6 HB_W   
 0	0	0	0	#_7 LARVAL 
 0	0	0	0	#_8 VIDEO  
 0	0	0	0	#_9 SEAMAP 
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
 10	 100	   10.16	10.16	  -1	0	-3	0	0	0	0	  0	1	2	#_SizeSel_PRet_1_CM_E(1)
 -1	  20	   1e-06	    1	  -1	0	-3	0	0	0	0	  0	0	0	#_SizeSel_PRet_2_CM_E(1)
-10	  10	      10	   10	  -1	0	-2	0	0	0	0	  0	1	2	#_SizeSel_PRet_3_CM_E(1)
 -1	   2	       0	    0	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PRet_4_CM_E(1)
-10	  10	      -5	   -5	  -1	0	-2	0	0	0	0	  0	0	0	#_SizeSel_PDis_1_CM_E(1)
 -1	   2	   1e-06	    1	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PDis_2_CM_E(1)
 -1	   2	    0.15	 0.15	  -1	0	-2	0	0	0	0	  0	3	2	#_SizeSel_PDis_3_CM_E(1)
 -1	   2	       0	    0	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PDis_4_CM_E(1)
 10	 100	   10.16	10.16	  -1	0	-3	0	0	0	0	  0	1	2	#_SizeSel_PRet_1_CM_W(2)
 -1	  20	   1e-06	    1	  -1	0	-3	0	0	0	0	  0	0	0	#_SizeSel_PRet_2_CM_W(2)
-10	  10	      10	   10	  -1	0	-2	0	0	0	0	  0	1	2	#_SizeSel_PRet_3_CM_W(2)
 -1	   2	       0	    0	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PRet_4_CM_W(2)
-10	  10	      -5	   -5	  -1	0	-2	0	0	0	0	  0	0	0	#_SizeSel_PDis_1_CM_W(2)
 -1	   2	   1e-06	    1	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PDis_2_CM_W(2)
 -1	   2	    0.15	 0.15	  -1	0	-2	0	0	0	0	  0	3	2	#_SizeSel_PDis_3_CM_W(2)
 -1	   2	       0	    0	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PDis_4_CM_W(2)
 10	 100	   10.16	10.16	  -1	0	-3	0	0	0	0	  0	2	2	#_SizeSel_PRet_1_REC(3) 
 -1	  20	   1e-06	    1	  -1	0	-3	0	0	0	0	  0	0	0	#_SizeSel_PRet_2_REC(3) 
-10	  10	      10	   10	  -1	0	-2	0	0	0	0	  0	2	2	#_SizeSel_PRet_3_REC(3) 
 -1	   2	       0	    0	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PRet_4_REC(3) 
-10	  10	      -5	   -5	  -1	0	-2	0	0	0	0	  0	0	0	#_SizeSel_PDis_1_REC(3) 
 -1	   2	   1e-06	    1	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PDis_2_REC(3) 
 -1	   2	    0.15	 0.15	  -1	0	-2	0	0	0	0	  0	3	2	#_SizeSel_PDis_3_REC(3) 
 -1	   2	       0	    0	  -1	0	-4	0	0	0	0	  0	0	0	#_SizeSel_PDis_4_REC(3) 
7.5	52.5	 19.2273	 42.7	0.05	0	-2	0	0	0	0	0.5	0	0	#_SizeSel_P_1_VIDEO(8)  
-10	   3	-1.57475	 -0.4	0.05	0	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_VIDEO(8)  
 -6	  12	 1.10006	  5.5	0.05	0	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_VIDEO(8)  
 -4	   6	 1.30636	  5.1	0.05	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_VIDEO(8)  
-15	   5	-1.47843	 -4.2	0.05	0	-2	0	0	0	0	0.5	0	0	#_SizeSel_P_5_VIDEO(8)  
 -8	   5	0.597499	  0.4	0.05	0	 2	0	0	0	0	0.5	0	0	#_SizeSel_P_6_VIDEO(8)  
7.5	52.5	 14.7632	   13	0.05	0	-2	0	0	0	0	0.5	0	0	#_SizeSel_P_1_SEAMAP(9) 
-10	   3	-4.08901	 -1.1	0.05	0	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_SEAMAP(9) 
 -6	  12	 1.26273	  3.1	0.05	0	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_SEAMAP(9) 
 -4	   6	 3.14557	    5	0.05	0	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_SEAMAP(9) 
-15	   5	-1.21335	 -4.5	0.05	0	-2	0	0	0	0	0.5	0	0	#_SizeSel_P_5_SEAMAP(9) 
 -8	   5	-5.30605	  0.1	0.05	0	 2	0	0	0	0	0.5	0	0	#_SizeSel_P_6_SEAMAP(9) 
#_AgeSelex
  0.5	   14	 2.11995	  2.66	   0	0	 3	0	0	0	0	  0	0	0	#_AgeSel_P_1_CM_E(1)   
  0.5	   14	0.916154	7.2774	   0	0	 1	0	0	0	0	  0	0	0	#_AgeSel_P_2_CM_E(1)   
  0.5	   14	 3.68075	  2.66	   0	0	 3	0	0	0	0	  0	0	0	#_AgeSel_P_1_CM_W(2)   
  0.5	   14	 2.09661	7.2774	   0	0	 1	0	0	0	0	  0	0	0	#_AgeSel_P_2_CM_W(2)   
    1	   10	 3.33276	   4.3	0.05	0	 2	0	0	0	0	0.5	0	0	#_AgeSel_P_1_REC(3)    
  -10	    3	-9.16508	  -4.6	0.05	0	 3	0	0	0	0	0.5	0	0	#_AgeSel_P_2_REC(3)    
   -6	   12	0.549862	   0.7	0.05	0	 3	0	0	0	0	0.5	0	0	#_AgeSel_P_3_REC(3)    
   -4	    6	 2.95273	   2.7	0.05	0	 3	0	0	0	0	0.5	0	0	#_AgeSel_P_4_REC(3)    
  -15	    5	-12.1035	 -11.2	0.05	0	 2	0	0	0	0	0.5	0	0	#_AgeSel_P_5_REC(3)    
   -8	    5	-1.82948	  -3.3	0.05	0	 2	0	0	0	0	0.5	0	0	#_AgeSel_P_6_REC(3)    
1e-07	    2	     0.5	   0.5	   0	0	-4	0	0	0	0	  0	0	0	#_AgeSel_P_1_SMP_BYC(4)
  0.5	1e+07	     100	   100	   0	0	-4	0	0	0	0	  0	0	0	#_AgeSel_P_2_SMP_BYC(4)
  0.3	    3	     1.5	   1.5	   0	0	-4	0	0	0	0	  0	0	0	#_AgeSel_P_3_SMP_BYC(4)
  0.5	1e+07	  2.4096	2.4096	   0	0	-4	0	0	0	0	  0	0	0	#_AgeSel_P_4_SMP_BYC(4)
   -1	    1	       0	     0	   0	0	-4	0	0	0	0	  0	0	0	#_AgeSel_P_5_SMP_BYC(4)
   -1	    1	       0	     0	   0	0	-4	0	0	0	0	  0	0	0	#_AgeSel_P_6_SMP_BYC(4)
# timevary selex parameters 
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
 10	100	20.32	20.32	-1	0	-4	#_SizeSel_PRet_1_CM_E(1)_BLK1repl_1990
 10	100	27.94	27.94	-1	0	-4	#_SizeSel_PRet_1_CM_E(1)_BLK1repl_2005
 10	100	 25.4	 25.4	-1	0	-4	#_SizeSel_PRet_1_CM_E(1)_BLK1repl_2008
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_CM_E(1)_BLK1repl_1990
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_CM_E(1)_BLK1repl_2005
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_CM_E(1)_BLK1repl_2008
 -1	  2	 0.15	 0.15	-1	0	-4	#_SizeSel_PDis_3_CM_E(1)_BLK3repl_2008
 10	100	20.32	20.32	-1	0	-4	#_SizeSel_PRet_1_CM_W(2)_BLK1repl_1990
 10	100	27.94	27.94	-1	0	-4	#_SizeSel_PRet_1_CM_W(2)_BLK1repl_2005
 10	100	 25.4	 25.4	-1	0	-4	#_SizeSel_PRet_1_CM_W(2)_BLK1repl_2008
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_CM_W(2)_BLK1repl_1990
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_CM_W(2)_BLK1repl_2005
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_CM_W(2)_BLK1repl_2008
 -1	  2	 0.15	 0.15	-1	0	-4	#_SizeSel_PDis_3_CM_W(2)_BLK3repl_2008
 10	100	20.32	20.32	-1	0	-4	#_SizeSel_PRet_1_REC(3)_BLK2repl_1990 
 10	100	 25.4	 25.4	-1	0	-4	#_SizeSel_PRet_1_REC(3)_BLK2repl_1997 
 10	100	27.94	27.94	-1	0	-4	#_SizeSel_PRet_1_REC(3)_BLK2repl_2005 
 10	100	 25.4	 25.4	-1	0	-4	#_SizeSel_PRet_1_REC(3)_BLK2repl_2008 
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_REC(3)_BLK2repl_1990 
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_REC(3)_BLK2repl_1997 
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_REC(3)_BLK2repl_2005 
-10	 10	   10	   10	-1	0	-4	#_SizeSel_PRet_3_REC(3)_BLK2repl_2008 
 -1	  2	 0.15	 0.15	-1	0	-4	#_SizeSel_PDis_3_REC(3)_BLK3repl_2008 
# info on dev vectors created for selex parms are reported with other devs after tag parameter section
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Data_type Fleet Value
-9999 1 0 # terminator
#
10 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 3 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
    2	1	1	0	1	#_discard_CM_E_Phz1
    2	2	1	0	1	#_discard_CM_W_Phz1
    2	3	1	0	1	#_discard_REC_Phz1 
-9999	0	0	0	0	#_terminator       
#
0 # 0/1 read specs for more stddev reporting
#
999
