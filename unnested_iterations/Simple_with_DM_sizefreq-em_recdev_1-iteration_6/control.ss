#V3.30
#C growth parameters are estimated
#C spawner-recruitment bias adjustment Not tuned For optimality
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
2 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
3 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
2 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	1	1	0	#_recr_dist_pattern1
2	1	2	0	#_recr_dist_pattern2
#
4 #_N_movement_definitions goes here if N_areas > 1
1 #_first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_move definition for seas, morph, source, dest, age1, age2
1	1	1	2	4	10	#_moveDef1
1	1	2	1	4	10	#_moveDef2
1	2	1	2	4	10	#_moveDef3
1	2	2	1	4	10	#_moveDef4
1 #_Nblock_Patterns
1 #_blocks_per_pattern
#_begin and end years of blocks
1970 1970
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
25 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.05	    0.15	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_NatM_p_1_Fem_GP_1                 
  -10	      45	 19.1169	      36	 10	6	  2	0	0	   0	   0	0	0	0	#_L_at_Amin_Fem_GP_1                
   40	      90	 70.3703	      70	 10	6	  4	0	0	   0	   0	0	0	0	#_L_at_Amax_Fem_GP_1                
 0.05	    0.25	0.168059	    0.15	0.8	6	  4	0	0	   0	   0	0	0	0	#_VonBert_K_Fem_GP_1                
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_young_Fem_GP_1                 
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_old_Fem_GP_1                   
   -3	       3	2.44e-06	2.44e-06	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_1_Fem_GP_1                  
   -3	       4	 3.34694	 3.34694	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_2_Fem_GP_1                  
   50	      60	      55	      55	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Mat50%_Fem_GP_1                   
   -3	       3	   -0.25	   -0.25	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Mat_slope_Fem_GP_1                
   -3	       3	       1	       1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Eggs_alpha_Fem_GP_1               
   -3	       3	       0	       0	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Eggs_beta_Fem_GP_1                
 0.05	    0.15	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_NatM_p_1_Fem_GP_2                 
  -10	      45	 19.2476	      36	 10	6	  2	0	0	   0	   0	0	0	0	#_L_at_Amin_Fem_GP_2                
   40	      90	 70.3464	      70	 10	6	  4	0	0	   0	   0	0	0	0	#_L_at_Amax_Fem_GP_2                
 0.05	    0.25	0.166712	    0.15	0.8	6	  4	0	0	   0	   0	0	0	0	#_VonBert_K_Fem_GP_2                
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_young_Fem_GP_2                 
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_old_Fem_GP_2                   
   -3	       3	2.44e-06	2.44e-06	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_1_Fem_GP_2                  
   -3	       4	 3.34694	 3.34694	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_2_Fem_GP_2                  
   50	      60	      55	      55	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Mat50%_Fem_GP_2                   
   -3	       3	   -0.25	   -0.25	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Mat_slope_Fem_GP_2                
   -3	       3	       1	       1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Eggs_alpha_Fem_GP_2               
   -3	       3	       0	       0	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Eggs_beta_Fem_GP_2                
 0.05	    0.15	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_NatM_p_1_Mal_GP_1                 
  -10	      45	 21.9255	      36	 10	6	  2	0	0	   0	   0	0	0	0	#_L_at_Amin_Mal_GP_1                
   40	      90	 69.0505	      70	 10	6	  4	0	0	   0	   0	0	0	0	#_L_at_Amax_Mal_GP_1                
 0.05	    0.25	0.166221	    0.15	0.8	6	  4	0	0	   0	   0	0	0	0	#_VonBert_K_Mal_GP_1                
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_young_Mal_GP_1                 
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_old_Mal_GP_1                   
   -3	       3	2.44e-06	2.44e-06	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_1_Mal_GP_1                  
   -3	       4	 3.34694	 3.34694	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_2_Mal_GP_1                  
 0.05	    0.15	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_NatM_p_1_Mal_GP_2                 
  -10	      45	 21.9686	      36	 10	6	  2	0	0	   0	   0	0	0	0	#_L_at_Amin_Mal_GP_2                
   40	      90	 69.0394	      70	 10	6	  4	0	0	   0	   0	0	0	0	#_L_at_Amax_Mal_GP_2                
 0.05	    0.25	0.165712	    0.15	0.8	6	  4	0	0	   0	   0	0	0	0	#_VonBert_K_Mal_GP_2                
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_young_Mal_GP_2                 
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	   0	   0	0	0	0	#_CV_old_Mal_GP_2                   
   -3	       3	2.44e-06	2.44e-06	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_1_Mal_GP_2                  
   -3	       4	 3.34694	 3.34694	0.8	0	 -3	0	0	   0	   0	0	0	0	#_Wtlen_2_Mal_GP_2                  
   -5	       5	       0	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_RecrDist_GP_1_area_1_month_1      
   -5	       5	       0	       0	  0	0	 -4	0	2	1971	2001	5	0	0	#_RecrDist_GP_2_area_2_month_1      
  0.1	      10	       1	       1	  1	0	 -1	0	0	   0	   0	0	0	0	#_CohortGrowDev                     
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_A_seas_1_GP_1_from_1_to_2
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_B_seas_1_GP_1_from_1_to_2
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_A_seas_1_GP_1_from_2_to_1
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_B_seas_1_GP_1_from_2_to_1
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_A_seas_1_GP_2_from_1_to_2
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_B_seas_1_GP_2_from_1_to_2
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_A_seas_1_GP_2_from_2_to_1
   -8	       5	      -6	       0	  0	0	 -4	0	0	   0	   0	0	0	0	#_MoveParm_B_seas_1_GP_2_from_2_to_1
1e-06	0.999999	     0.5	     0.5	0.5	0	-99	0	0	   0	   0	0	0	0	#_FracFemale_GP_1                   
1e-06	0.999999	     0.5	     0.5	0.5	0	-99	0	0	   0	   0	0	0	0	#_FracFemale_GP_2                   
#_timevary MG parameters
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
1e-04	   2	0.05	0.5	0.5	6	-5	#_RecrDist_GP_2_area_2_month_1_dev_se      
-0.99	0.99	   0	  0	0.5	6	-6	#_RecrDist_GP_2_area_2_month_1_dev_autocorr
# info on dev vectors created for MGparms are reported with other devs after tag parameter section
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
  3	31	 9.54739	10.3	  10	0	  1	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.2	 1	0.997192	 0.7	0.05	1	  4	0	0	0	0	0	0	0	#_SR_BH_steep
  0	 2	     0.6	 0.8	 0.8	0	 -4	0	0	0	0	0	0	0	#_SR_sigmaR  
 -5	 5	       0	   0	   1	0	 -4	0	0	0	0	0	0	0	#_SR_regime  
  0	 0	       0	   0	   0	0	-99	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1971 # first year of main recr_devs; early devs can preceed this era
2001 # last year of main recr_devs; forecast devs start in following year
2 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-4 #_recdev_early_phase
0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1954.4785 #_last_early_yr_nobias_adj_in_MPD
1971.0000 #_first_yr_fullbias_adj_in_MPD
1999.6493 #_last_yr_fullbias_adj_in_MPD
2001.1066 #_first_recent_yr_nobias_adj_in_MPD
   0.8147 #_max_bias_adj_in_MPD (1.0 to mimic pre-2009 models)
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
0.3 # F ballpark
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
2.95 # max F or harvest rate, depends on F_Method
4 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	1	0	1	#_SURV_A1   
    3	1	0	0	0	1	#_RECRSVY_A1
    5	1	0	1	0	1	#_SURV_A2   
    6	1	0	0	0	1	#_RECRSVY_A2
    7	1	0	0	0	0	#_Depletion 
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
 -7	  5	0.348775	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_SURV_A1(2)   
  0	0.5	0.243043	0.05	1	0	 4	0	0	0	0	0	0	0	#_Q_extraSD_SURV_A1(2)  
-11	  5	-9.08913	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_RECRSVY_A1(3)
 -7	  5	0.354153	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_SURV_A2(5)   
  0	0.5	0.239072	0.05	1	0	 4	0	0	0	0	0	0	0	#_Q_extraSD_SURV_A2(5)  
-11	  5	-9.08848	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_RECRSVY_A2(6)
 -7	  5	       0	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_Depletion(7) 
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
1	0	0	0	#_1 FISH_A1   
1	0	0	0	#_2 SURV_A1   
0	0	0	0	#_3 RECRSVY_A1
1	0	0	0	#_4 FISH_A2   
1	0	0	0	#_5 SURV_A2   
0	0	0	0	#_6 RECRSVY_A2
0	0	0	0	#_7 Depletion 
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
10	0	0	0	#_1 FISH_A1   
10	0	0	0	#_2 SURV_A1   
10	0	0	0	#_3 RECRSVY_A1
10	0	0	0	#_4 FISH_A2   
10	0	0	0	#_5 SURV_A2   
10	0	0	0	#_6 RECRSVY_A2
10	0	0	0	#_7 Depletion 
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
  19	80	53.3675	50	0.01	1	2	0	0	0	0	0	0	0	#_SizeSel_P_1_FISH_A1(1)
0.01	60	 17.758	15	0.01	1	3	0	0	0	0	0	0	0	#_SizeSel_P_2_FISH_A1(1)
  19	70	36.5701	30	0.01	1	2	0	0	0	0	0	0	0	#_SizeSel_P_1_SURV_A1(2)
0.01	60	4.89021	10	0.01	1	3	0	0	0	0	0	0	0	#_SizeSel_P_2_SURV_A1(2)
  19	80	53.5237	50	0.01	1	2	0	0	0	0	0	0	0	#_SizeSel_P_1_FISH_A2(4)
0.01	60	17.8214	15	0.01	1	3	0	0	0	0	0	0	0	#_SizeSel_P_2_FISH_A2(4)
  19	70	36.6344	30	0.01	1	2	0	0	0	0	0	0	0	#_SizeSel_P_1_SURV_A2(5)
0.01	60	 4.9607	10	0.01	1	3	0	0	0	0	0	0	0	#_SizeSel_P_2_SURV_A2(5)
#_AgeSelex
#_No age_selex_parm
#_Dirichlet parameters
0.1	20	1.31734	10	0.01	1	6	0	0	0	0	0	0	0	#_ln(DM_theta)_1
#_no timevary selex parameters
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
4 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 2 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
   10	1	1	1	1	#_recrdev_Phz1       
    1	7	3	1	1	#_Surv_Depletion_Phz3
-9999	0	0	0	0	#_terminator         
#
1 # 0/1 read specs for more stddev reporting
1 1 -1 5 # selex_fleet, 1=len/2=age/3=both, year, N selex bins
1 5       # 0 or Growth pattern, N growth ages
1 -1 5    # 0 or NatAge_area(-1 for sum), NatAge_yr, N Natages
5 15 25 35 43 # vector with selex std bins (-1 in first bin to self-generate)
1 2 14 26 40 # vector with growth std ages picks (-1 in first bin to self-generate)
1 2 14 26 40 # vector with NatAge std ages (-1 in first bin to self-generate)
#
999
