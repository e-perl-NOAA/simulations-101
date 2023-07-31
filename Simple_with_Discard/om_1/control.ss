#V3.30
#C growth parameters are estimated
#C spawner-recruitment bias adjustment Not tuned For optimality
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
2 # recr_dist_method for parameters
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
1970 1970
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
 0.05	    0.15	     0.1	     0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_NatM_p_1_Fem_GP_1  
  -10	      45	 21.8439	      36	 10	6	  2	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1 
   40	      90	 71.4693	      70	 10	6	  4	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1 
 0.05	    0.25	0.148674	    0.15	0.8	6	  4	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1 
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1  
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1    
   -3	       3	2.44e-06	2.44e-06	0.8	0	 -3	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1   
   -3	       4	 3.34694	 3.34694	0.8	0	 -3	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1   
   50	      60	      55	      55	0.8	0	 -3	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1    
   -3	       3	   -0.25	   -0.25	0.8	0	 -3	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1 
   -3	       3	       1	       1	0.8	0	 -3	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1
   -3	       3	       0	       0	0.8	0	 -3	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1 
 0.05	    0.15	     0.1	     0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_NatM_p_1_Mal_GP_1  
    0	      45	       0	      36	 10	0	 -3	0	0	0	0	0	0	0	#_L_at_Amin_Mal_GP_1 
   40	      90	 69.6811	      70	 10	6	  4	0	0	0	0	0	0	0	#_L_at_Amax_Mal_GP_1 
 0.05	    0.25	0.160802	    0.15	0.8	6	  4	0	0	0	0	0	0	0	#_VonBert_K_Mal_GP_1 
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_CV_young_Mal_GP_1  
 0.05	    0.25	     0.1	     0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_CV_old_Mal_GP_1    
   -3	       3	2.44e-06	2.44e-06	0.8	0	 -3	0	0	0	0	0	0	0	#_Wtlen_1_Mal_GP_1   
   -3	       4	 3.34694	 3.34694	0.8	0	 -3	0	0	0	0	0	0	0	#_Wtlen_2_Mal_GP_1   
    0	       0	       0	       0	  0	0	 -4	0	0	0	0	0	0	0	#_RecrDist_GP_1      
    0	       0	       0	       0	  0	0	 -4	0	0	0	0	0	0	0	#_RecrDist_Area_1    
    0	       0	       0	       0	  0	0	 -4	0	0	0	0	0	0	0	#_RecrDist_month_1   
  0.1	      10	       1	       1	  1	0	 -1	0	0	0	0	0	0	0	#_CohortGrowDev      
1e-06	0.999999	     0.5	     0.5	0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1    
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
  3	31	 8.87156	10.3	  10	0	  1	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.2	 1	0.621654	 0.7	0.05	1	  4	0	0	0	0	0	0	0	#_SR_BH_steep
  0	 2	     0.6	 0.8	 0.8	0	 -4	0	0	0	0	0	0	0	#_SR_sigmaR  
 -5	 5	       0	   0	   1	0	 -4	0	0	0	0	0	0	0	#_SR_regime  
  0	 0	       0	   0	   0	0	-99	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1971 # first year of main recr_devs; early devs can preceed this era
2001 # last year of main recr_devs; forecast devs start in following year
-2 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-4 #_recdev_early_phase
0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1900 #_last_yr_nobias_adj_in_MPD; begin of ramp
1900 #_first_yr_fullbias_adj_in_MPD; begin of plateau
2001 #_last_yr_fullbias_adj_in_MPD
2002 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
-1 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
0 #_period of cycles in recruitment (N parms read below)
-5 #min rec_dev
5 #max rec_dev
31 #_read_recdevs
#_end of advanced SR options
#
# read specified recr devs
#_Yr Input_value
1971  1.22254372339045 #_stochastic_recdev_with_sigmaR=0.6
1972 -1.04158137861927 #_stochastic_recdev_with_sigmaR=0.6
1973 -0.0462098708805776 #_stochastic_recdev_with_sigmaR=0.6
1974  0.994749317848524 #_stochastic_recdev_with_sigmaR=0.6
1975  0.431449390118437 #_stochastic_recdev_with_sigmaR=0.6
1976  0.173927320896202 #_stochastic_recdev_with_sigmaR=0.6
1977 -0.842234459104465 #_stochastic_recdev_with_sigmaR=0.6
1978  0.109180142663777 #_stochastic_recdev_with_sigmaR=0.6
1979 -0.350198574515466 #_stochastic_recdev_with_sigmaR=0.6
1980  0.0542642749390635 #_stochastic_recdev_with_sigmaR=0.6
1981 -0.543619246010376 #_stochastic_recdev_with_sigmaR=0.6
1982 -0.106029742072364 #_stochastic_recdev_with_sigmaR=0.6
1983 -0.507402587190275 #_stochastic_recdev_with_sigmaR=0.6
1984 -0.443650560548731 #_stochastic_recdev_with_sigmaR=0.6
1985  0.163804703085312 #_stochastic_recdev_with_sigmaR=0.6
1986  1.09223066279876 #_stochastic_recdev_with_sigmaR=0.6
1987  0.00397863490413916 #_stochastic_recdev_with_sigmaR=0.6
1988  0.369023860578718 #_stochastic_recdev_with_sigmaR=0.6
1989 -0.529425647786899 #_stochastic_recdev_with_sigmaR=0.6
1990 -0.179483380023128 #_stochastic_recdev_with_sigmaR=0.6
1991  0.133955298281288 #_stochastic_recdev_with_sigmaR=0.6
1992  0.611552243714783 #_stochastic_recdev_with_sigmaR=0.6
1993  0.482651263617459 #_stochastic_recdev_with_sigmaR=0.6
1994 -0.35723150196014 #_stochastic_recdev_with_sigmaR=0.6
1995 -1.23836441272462 #_stochastic_recdev_with_sigmaR=0.6
1996 -0.282840020050725 #_stochastic_recdev_with_sigmaR=0.6
1997  0.61095439661336 #_stochastic_recdev_with_sigmaR=0.6
1998 -0.222584506216667 #_stochastic_recdev_with_sigmaR=0.6
1999 -0.465211075199377 #_stochastic_recdev_with_sigmaR=0.6
2000  0.843079177660747 #_stochastic_recdev_with_sigmaR=0.6
2001 -0.14127744820793 #_stochastic_recdev_with_sigmaR=0.6
#Fishing Mortality info
0.3 # F ballpark
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
2.9 # max F or harvest rate, depends on F_Method
4 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    1	1	0	0	0	0	#_FISHERY   
    2	1	0	1	0	1	#_SURVEY1   
    3	1	0	0	0	1	#_SURVEY2   
    4	1	0	0	0	0	#_Depletion 
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-7	  5	       0	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_FISHERY(1)  
-7	  5	0.438664	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_SURVEY1(2)  
 0	0.5	       0	0.05	1	0	-4	0	0	0	0	0	0	0	#_Q_extraSD_SURVEY1(2) 
-7	  5	-6.71531	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_SURVEY2(3)  
-7	  5	       0	   0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_Depletion(4)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
1	2	0	0	#_1 FISHERY  
1	0	0	0	#_2 SURVEY1  
0	0	0	0	#_3 SURVEY2  
0	0	0	0	#_4 Depletion
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
11	0	0	0	#_1 FISHERY  
11	0	0	0	#_2 SURVEY1  
11	0	0	0	#_3 SURVEY2  
10	0	0	0	#_4 Depletion
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
  19	80	53.6664	 50	0.01	1	 2	0	0	0	0	0	0	0	#_SizeSel_P_1_FISHERY(1)   
0.01	60	18.8307	 15	0.01	1	 3	0	0	0	0	0	0	0	#_SizeSel_P_2_FISHERY(1)   
  20	70	38.7358	 40	  99	6	 3	0	0	0	0	0	0	0	#_SizeSel_PRet_1_FISHERY(1)
 0.1	10	6.22218	  1	  99	6	 3	0	0	0	0	0	0	0	#_SizeSel_PRet_2_FISHERY(1)
 -10	10	3.73864	 10	  99	6	 3	0	0	0	0	0	0	0	#_SizeSel_PRet_3_FISHERY(1)
 -10	10	      1	  0	  99	6	-3	0	0	0	0	0	0	0	#_SizeSel_PRet_4_FISHERY(1)
 0.1	46	     46	0.8	  99	0	-3	0	0	0	0	0	0	0	#_SizeSel_PDis_1_FISHERY(1)
  -2	 2	    0.8	  0	  99	6	-3	0	0	0	0	0	0	0	#_SizeSel_PDis_2_FISHERY(1)
 0.5	70	   0.92	 40	  99	6	-3	0	0	0	0	0	0	0	#_SizeSel_PDis_3_FISHERY(1)
   0	10	      0	  1	  99	6	-3	0	0	0	0	0	0	0	#_SizeSel_PDis_4_FISHERY(1)
  19	70	36.6668	 30	0.01	1	 2	0	0	0	0	0	0	0	#_SizeSel_P_1_SURVEY1(2)   
0.01	60	6.66793	 10	0.01	1	 3	0	0	0	0	0	0	0	#_SizeSel_P_2_SURVEY1(2)   
#_AgeSelex
0	40	 0	5	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_1_FISHERY(1)
0	40	40	6	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_2_FISHERY(1)
0	40	 0	5	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_1_SURVEY1(2)
0	40	40	6	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_2_SURVEY1(2)
0	40	 0	5	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_1_SURVEY2(3)
0	40	 0	6	99	0	-99	0	0	0	0	0	0	0	#_AgeSel_P_2_SURVEY2(3)
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
# read 3 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
    1	2	2	    1	1	#_Surv_SURVEY1_Phz2                    
    4	2	2	    1	1	#_length_SURVEY1_sizefreq_method_1_Phz2
    1	4	3	1e-04	1	#_Surv_Depletion_Phz3                  
-9999	0	0	    0	0	#_terminator                           
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