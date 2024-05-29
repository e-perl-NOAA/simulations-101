#V3.30
#C file created using the SS_writectl function in the R package r4ss
#C file write time: 2024-02-21 21:57:00.747382
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
1980 1980
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
0 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
4 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
2 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.01	    0.12	     0.064	     0.064	 99	0	 -2	0	0	0	0	0	0	0	#_NatM_p_1_Fem_GP_1  
   10	      50	   25.2456	   25.2456	 99	0	 -2	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1 
   80	     200	     109.1	     109.1	 99	0	 -3	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1 
0.005	     0.1	 0.0262574	 0.0262574	 99	0	 -2	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1 
 0.05	     0.3	  0.123153	  0.123153	 99	0	 -3	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1  
 0.05	     0.3	  0.240138	  0.240138	 99	0	 -3	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1    
    0	       1	2.3065e-06	2.3065e-06	 99	0	 -5	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1   
    2	       4	    3.1526	    3.1526	 99	0	 -5	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1   
   50	     100	      88.2	      88.2	 99	0	 -5	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1    
   -2	       0	     -0.27	     -0.27	 99	0	 -5	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1 
  -20	      20	     -14.7	         1	 99	0	 -5	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1
    0	       1	     0.214	         0	 99	0	 -5	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1 
   -3	       3	         0	         0	 99	0	 -3	0	0	0	0	0	0	0	#_NatM_p_1_Mal_GP_1  
   -3	       3	         0	         0	 99	0	 -3	0	0	0	0	0	0	0	#_L_at_Amin_Mal_GP_1 
   -3	       3	 -0.236493	 -0.236493	 99	0	 -2	0	0	0	0	0	0	0	#_L_at_Amax_Mal_GP_1 
   -3	       3	  0.685115	  0.685115	 99	0	 -2	0	0	0	0	0	0	0	#_VonBert_K_Mal_GP_1 
   -3	       3	  0.444534	  0.444534	 99	0	 -3	0	0	0	0	0	0	0	#_CV_young_Mal_GP_1  
   -3	       3	  -1.43528	  -1.43528	 99	0	 -3	0	0	0	0	0	0	0	#_CV_old_Mal_GP_1    
    0	       1	3.4911e-06	3.4911e-06	 99	0	 -5	0	0	0	0	0	0	0	#_Wtlen_1_Mal_GP_1   
    2	       4	    3.0349	    3.0349	 99	0	 -5	0	0	0	0	0	0	0	#_Wtlen_2_Mal_GP_1   
  0.1	      10	         1	         1	  1	0	 -1	0	0	0	0	0	0	0	#_CohortGrowDev      
1e-06	0.999999	       0.5	       0.5	0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1    
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
7 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
   8	18	9.05275	10.5	99	0	 1	0	0	0	0	0	0	0	#_SR_LN(R0)    
   0	 1	    0.4	 0.4	99	0	-5	0	0	0	0	0	0	0	#_SR_surv_Sfrac
 0.2	 5	      1	   1	99	0	-5	0	0	0	0	0	0	0	#_SR_surv_Beta 
0.01	 1	    0.2	 1.1	99	0	-6	0	0	0	0	0	0	0	#_SR_sigmaR    
  -5	 5	      0	   0	99	0	-5	0	0	0	0	0	0	0	#_SR_regime    
   0	 2	      0	   1	99	0	-5	0	0	0	0	0	0	0	#_SR_autocorr  
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1980 # first year of main recr_devs; early devs can preceed this era
2010 # last year of main recr_devs; forecast devs start in following year
-1 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-3 #_recdev_early_phase
-5 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1980 #_last_yr_nobias_adj_in_MPD; begin of ramp
1990 #_first_yr_fullbias_adj_in_MPD; begin of plateau
2008 #_last_yr_fullbias_adj_in_MPD
2009 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
-1 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
0 #_period of cycles in recruitment (N parms read below)
-3 #min rec_dev
3 #max rec_dev
31 #_read_recdevs
#_end of advanced SR options
#
# read specified recr devs
#_Yr Input_value
1980 -0.0215127909713784 #_stochastic_recdev_with_sigmaR=0.2
1981  0.0527117380191835 #_stochastic_recdev_with_sigmaR=0.2
1982  0.357940547310515 #_stochastic_recdev_with_sigmaR=0.2
1983 -0.0159827703989806 #_stochastic_recdev_with_sigmaR=0.2
1984  0.00875424760857169 #_stochastic_recdev_with_sigmaR=0.2
1985 -0.328113564747962 #_stochastic_recdev_with_sigmaR=0.2
1986  0.00317991184913474 #_stochastic_recdev_with_sigmaR=0.2
1987  0.23458782143785 #_stochastic_recdev_with_sigmaR=0.2
1988 -0.362887903414538 #_stochastic_recdev_with_sigmaR=0.2
1989  0.101446826190757 #_stochastic_recdev_with_sigmaR=0.2
1990  0.106950107576948 #_stochastic_recdev_with_sigmaR=0.2
1991 -0.0910304932471116 #_stochastic_recdev_with_sigmaR=0.2
1992 -0.169967311489609 #_stochastic_recdev_with_sigmaR=0.2
1993  0.149731174149708 #_stochastic_recdev_with_sigmaR=0.2
1994 -0.00446027234068645 #_stochastic_recdev_with_sigmaR=0.2
1995 -0.140676256014147 #_stochastic_recdev_with_sigmaR=0.2
1996  0.0251407317733883 #_stochastic_recdev_with_sigmaR=0.2
1997 -0.127700682977563 #_stochastic_recdev_with_sigmaR=0.2
1998 -0.338029069980391 #_stochastic_recdev_with_sigmaR=0.2
1999  2.31154733438952e-05 #_stochastic_recdev_with_sigmaR=0.2
2000 -0.0466420311043427 #_stochastic_recdev_with_sigmaR=0.2
2001 -0.0664137111265043 #_stochastic_recdev_with_sigmaR=0.2
2002  0.443441946620321 #_stochastic_recdev_with_sigmaR=0.2
2003 -0.158357179836949 #_stochastic_recdev_with_sigmaR=0.2
2004 -0.15980254501067 #_stochastic_recdev_with_sigmaR=0.2
2005  0.444819979172049 #_stochastic_recdev_with_sigmaR=0.2
2006 -0.149993393270285 #_stochastic_recdev_with_sigmaR=0.2
2007  0.207922643557109 #_stochastic_recdev_with_sigmaR=0.2
2008  0.0882005507435698 #_stochastic_recdev_with_sigmaR=0.2
2009 -0.10947127514448 #_stochastic_recdev_with_sigmaR=0.2
2010  0.066189909593148 #_stochastic_recdev_with_sigmaR=0.2
#Fishing Mortality info
0.3 # F ballpark
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
4 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    9	1	0	1	1	0	#_AFSC_triennial   
   10	1	0	1	0	1	#_AFSC_slope       
   11	1	0	1	0	1	#_NWFSC_shelf_slope
   12	1	0	1	0	1	#_NWFSC_slope      
   13	1	0	1	0	1	#_IPHC             
-9999	0	0	0	0	0	#_terminator       
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-10	 2	-0.825117	  0	99	0	 1	0	1	1980	2004	-5	0	0	#_LnQ_base_AFSC_triennial(9)     
  0	 1	 0.312772	0.1	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_AFSC_triennial(9)    
-15	15	 0.243714	  0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_AFSC_slope(10)        
  0	 1	 0.470453	0.1	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_AFSC_slope(10)       
-15	15	 -0.40537	  0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_NWFSC_shelf_slope(11) 
  0	 1	 0.807998	0.1	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_NWFSC_shelf_slope(11)
-15	15	  -2.4676	  0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_NWFSC_slope(12)       
  0	 1	 0.812199	0.1	99	0	 3	0	0	   0	   0	 0	0	0	#_Q_extraSD_NWFSC_slope(12)      
-15	15	 -14.0174	  0	 1	0	-1	0	0	   0	   0	 0	0	0	#_LnQ_base_IPHC(13)              
  0	 1	      0.1	0.1	99	0	-3	0	0	   0	   0	 0	0	0	#_Q_extraSD_IPHC(13)             
# timevary Q parameters
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
1e-04	   2	2	99	0.5	0	-5	#_LnQ_base_AFSC_triennial(9)_dev_se      
-0.99	0.99	0	 0	0.5	0	-6	#_LnQ_base_AFSC_triennial(9)_dev_autocorr
# info on dev vectors created for Q parms are reported with other devs after tag parameter section
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
24	0	0	 0	#_1 TRAWL             
24	0	0	 0	#_2 Trawl_Discard     
24	0	0	 0	#_3 MIDWATER          
 5	0	0	 3	#_4 A-SHOP            
24	0	0	 0	#_5 HKL               
24	0	0	 0	#_6 Hkl_Discard       
 5	0	0	 6	#_7 OTHERS            
24	0	0	 0	#_8 RECREATIONAL      
24	0	0	 0	#_9 AFSC_triennial    
24	0	0	 0	#_10 AFSC_slope       
24	0	0	 0	#_11 NWFSC_shelf_slope
 5	0	0	10	#_12 NWFSC_slope      
 5	0	0	 6	#_13 IPHC             
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
11	0	0	0	#_1 TRAWL             
11	0	0	0	#_2 Trawl_Discard     
11	0	0	0	#_3 MIDWATER          
11	0	0	0	#_4 A-SHOP            
11	0	0	0	#_5 HKL               
11	0	0	0	#_6 Hkl_Discard       
11	0	0	0	#_7 OTHERS            
11	0	0	0	#_8 RECREATIONAL      
11	0	0	0	#_9 AFSC_triennial    
11	0	0	0	#_10 AFSC_slope       
11	0	0	0	#_11 NWFSC_shelf_slope
11	0	0	0	#_12 NWFSC_slope      
11	0	0	0	#_13 IPHC             
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
  20	 120	 99.8723	100	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_TRAWL(1)             
  -6	   4	      -1	 -1	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_TRAWL(1)             
  -1	   9	 5.88258	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_TRAWL(1)             
  -1	   9	       5	  5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_TRAWL(1)             
  -5	   9	      -5	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_TRAWL(1)             
  -5	   9	       9	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_TRAWL(1)             
  20	 120	 73.3797	 75	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_Trawl_Discard(2)     
  -6	   4	      -1	 -1	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_Trawl_Discard(2)     
  -1	   9	 6.09326	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_Trawl_Discard(2)     
  -1	   9	       5	  5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_Trawl_Discard(2)     
  -5	   9	-3.16735	 -5	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_Trawl_Discard(2)     
  -5	   9	       9	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_Trawl_Discard(2)     
  20	 120	 57.2886	 55	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_MIDWATER(3)          
  -6	   4	  0.5561	  0	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_MIDWATER(3)          
  -1	   9	  4.9519	  5	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_MIDWATER(3)          
  -1	   9	 4.49235	  5	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_MIDWATER(3)          
  -9	   9	 -5.4983	 -7	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_MIDWATER(3)          
-999	-999	    -999	  0	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_MIDWATER(3)          
   0	   2	       1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_1_A-SHOP(4)            
  -2	   0	      -1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_2_A-SHOP(4)            
  20	 120	 105.009	110	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_HKL(5)               
  -6	   4	      -1	 -1	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_HKL(5)               
  -1	   9	 5.95832	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_HKL(5)               
  -1	   9	       5	  5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_HKL(5)               
  -5	   9	      -5	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_HKL(5)               
  -5	   9	       9	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_HKL(5)               
  20	 120	 67.0829	 70	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_Hkl_Discard(6)       
  -6	   4	      -1	 -1	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_Hkl_Discard(6)       
  -1	   9	 5.11047	  5	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_Hkl_Discard(6)       
  -1	   9	       5	  5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_Hkl_Discard(6)       
  -5	   9	   -4.99	 -3	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_Hkl_Discard(6)       
  -5	   9	       9	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_Hkl_Discard(6)       
   0	   2	       1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_1_OTHERS(7)            
  -2	   0	      -1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_2_OTHERS(7)            
  20	 120	 109.785	110	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_RECREATIONAL(8)      
  -6	   4	      -1	 -1	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_RECREATIONAL(8)      
  -1	   9	  6.0869	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_RECREATIONAL(8)      
  -1	   9	       5	  5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_RECREATIONAL(8)      
  -5	   9	      -5	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_RECREATIONAL(8)      
  -5	   9	       9	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_RECREATIONAL(8)      
  25	 100	 57.7788	 60	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_AFSC_triennial(9)    
  -9	   3	-8.72472	 -8	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_AFSC_triennial(9)    
  -4	  12	 6.59314	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_AFSC_triennial(9)    
  -2	  15	 6.46195	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_AFSC_triennial(9)    
  -5	   9	      -5	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_AFSC_triennial(9)    
-999	-999	    -999	  0	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_AFSC_triennial(9)    
  25	 100	 59.0786	 60	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_AFSC_slope(10)       
  -9	   3	-1.02632	 -1	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_AFSC_slope(10)       
  -4	  12	 5.63834	  5	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_AFSC_slope(10)       
  -2	  15	 4.98178	  5	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_AFSC_slope(10)       
  -5	   9	      -5	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_AFSC_slope(10)       
-999	-999	    -999	  0	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_AFSC_slope(10)       
  20	 120	 57.1981	 60	99	6	  1	0	0	0	0	0.5	0	0	#_SizeSel_P_1_NWFSC_shelf_slope(11)
  -6	   4	      -1	 -1	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_NWFSC_shelf_slope(11)
  -1	   9	 6.71619	  6	99	6	  3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_NWFSC_shelf_slope(11)
  -1	   9	       5	  5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_NWFSC_shelf_slope(11)
  -5	   9	      -5	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_NWFSC_shelf_slope(11)
  -5	   9	       9	 -5	99	6	 -3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_NWFSC_shelf_slope(11)
   0	   2	       1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_1_NWFSC_slope(12)      
  -2	   0	      -1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_2_NWFSC_slope(12)      
   0	   2	       1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_1_IPHC(13)             
  -2	   0	      -1	  0	99	0	-99	0	0	0	0	0.5	0	0	#_SizeSel_P_2_IPHC(13)             
#_AgeSelex
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_TRAWL(1)             
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_TRAWL(1)             
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_Trawl_Discard(2)     
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_Trawl_Discard(2)     
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_MIDWATER(3)          
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_MIDWATER(3)          
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_A-SHOP(4)            
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_A-SHOP(4)            
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_HKL(5)               
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_HKL(5)               
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_Hkl_Discard(6)       
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_Hkl_Discard(6)       
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_OTHERS(7)            
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_OTHERS(7)            
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_RECREATIONAL(8)      
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_RECREATIONAL(8)      
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_AFSC_triennial(9)    
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_AFSC_triennial(9)    
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_AFSC_slope(10)       
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_AFSC_slope(10)       
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_NWFSC_shelf_slope(11)
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_NWFSC_shelf_slope(11)
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_NWFSC_slope(12)      
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_NWFSC_slope(12)      
0	  1	 0	0.1	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_1_IPHC(13)             
0	100	95	100	99	0	-99	0	0	0	0	0.5	0	0	#_AgeSel_P_2_IPHC(13)             
#_no timevary selex parameters
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Data_type	Fleet	Value
    4	 1	0.673	#_Variance_adjustment_list1 
    5	 1	0.768	#_Variance_adjustment_list2 
    4	 2	0.441	#_Variance_adjustment_list3 
    5	 3	0.776	#_Variance_adjustment_list4 
    4	 4	0.028	#_Variance_adjustment_list5 
    5	 4	0.899	#_Variance_adjustment_list6 
    4	 5	  0.7	#_Variance_adjustment_list7 
    5	 5	0.712	#_Variance_adjustment_list8 
    4	 6	0.655	#_Variance_adjustment_list9 
    4	 8	 0.79	#_Variance_adjustment_list10
    4	 9	0.571	#_Variance_adjustment_list11
    4	10	0.511	#_Variance_adjustment_list12
    4	11	0.299	#_Variance_adjustment_list13
    5	11	0.897	#_Variance_adjustment_list14
-9999	 0	    0	#_terminator                
#
4 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 0 changes to default Lambdas (default value is 1.0)
-9999 0 0 0 0 # terminator
#
0 # 0/1 read specs for more stddev reporting
#
999
