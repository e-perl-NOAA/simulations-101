#V3.30
#C This control file created in R by modifying y:/h_itaylor/SS/morphs/trial50/ctl_master.ss
#C to have 5 morphs and asymptotic selectivity
#C Parameters are estimated
#C File creation date: 2010-04-29 16:36:06
#C estimation model CaseC
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
5 #_N_platoons_Within_GrowthPattern
-0.356863 #_Morph_between/within_stdev_ratio
0.031 0.237 0.464 0.237 0.031 # vector_Morphdist_(-1_in_first_val_gives_normal_approx)
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
2 #_Nblock_Patterns
1 1 #_blocks_per_pattern
#_begin and end years of blocks
1971 2001
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
1 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
2 #_N_breakpoints
4 15 # age(real) at M breakpoints
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
1 #_Age(post-settlement)_for_L1;linear growth below this
25 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0.1 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
3 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.05	    0.15	     0.1	  0.1	0.8	6	 -3	0	0	0	0	0.5	0	0	#_NatM_p_1_Fem_GP_1  
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_NatM_p_2_Fem_GP_1  
   10	      45	 34.6744	   36	 10	6	  2	0	0	0	0	0.5	0	0	#_L_at_Amin_Fem_GP_1 
   40	      90	 71.3023	   70	 10	6	  2	0	0	0	0	0.5	0	0	#_L_at_Amax_Fem_GP_1 
 0.05	    0.25	0.152714	 0.15	0.8	6	  3	0	0	0	0	0.5	0	0	#_VonBert_K_Fem_GP_1 
 0.05	    0.25	     0.1	  0.1	0.8	6	 -3	0	0	0	0	0.5	0	0	#_CV_young_Fem_GP_1  
   -3	       3	    0.25	 0.25	0.8	6	 -3	0	0	0	0	0.5	0	0	#_CV_old_Fem_GP_1    
   -3	       3	   2e-06	2e-06	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Wtlen_1_Fem_GP_1   
   -3	       4	       3	    3	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Wtlen_2_Fem_GP_1   
   50	      60	      55	   55	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Mat50%_Fem_GP_1    
   -3	       3	   -0.25	-0.25	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Mat_slope_Fem_GP_1 
   -3	       3	       1	    1	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Eggs_alpha_Fem_GP_1
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Eggs_beta_Fem_GP_1 
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_NatM_p_1_Mal_GP_1  
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_NatM_p_2_Mal_GP_1  
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_L_at_Amin_Mal_GP_1 
   -3	       3	       0	    0	0.8	6	 -2	0	0	0	0	0.5	0	0	#_L_at_Amax_Mal_GP_1 
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_VonBert_K_Mal_GP_1 
   -3	       3	       0	    0	0.8	6	 -3	0	0	0	0	0.5	0	0	#_CV_young_Mal_GP_1  
   -3	       3	    0.25	 0.25	0.8	6	 -3	0	0	0	0	0.5	0	0	#_CV_old_Mal_GP_1    
   -3	       3	   2e-06	2e-06	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Wtlen_1_Mal_GP_1   
   -3	       4	       3	    3	0.8	6	 -3	0	0	0	0	0.5	0	0	#_Wtlen_2_Mal_GP_1   
  0.1	      10	       1	    1	  1	0	 -1	0	0	0	0	  0	0	0	#_CohortGrowDev      
  0.1	       3	0.356863	    0	 99	0	  1	0	0	0	0	  0	0	0	#_Platoon_SD_Ratio   
1e-06	0.999999	     0.5	  0.5	0.5	0	-99	0	0	0	0	  0	0	0	#_FracFemale_GP_1    
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
  3	31	 10.5907	10.55	  10	6	  1	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.2	 1	0.785575	  0.6	0.01	1	  5	0	0	0	0	0	0	0	#_SR_BH_steep
  0	 2	     0.5	  0.5	 0.8	6	 -3	0	0	0	0	0	0	0	#_SR_sigmaR  
 -5	 5	       0	    0	   1	6	 -5	0	0	0	0	0	0	0	#_SR_regime  
  0	 2	       0	    1	  50	6	-50	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1951 # first year of main recr_devs; early devs can preceed this era
2001 # last year of main recr_devs; forecast devs start in following year
-2 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-4 #_recdev_early_phase
0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1974 #_last_yr_nobias_adj_in_MPD; begin of ramp
1978.78 #_first_yr_fullbias_adj_in_MPD; begin of plateau
1993.23 #_last_yr_fullbias_adj_in_MPD
2001 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
-1 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
0 #_period of cycles in recruitment (N parms read below)
-5 #min rec_dev
5 #max rec_dev
51 #_read_recdevs
#_end of advanced SR options
#
# read specified recr devs
#_Yr Input_value
1951 -0.0832554061226125 #_stochastic_recdev_with_sigmaR=0.5
1952  0.415320628418586 #_stochastic_recdev_with_sigmaR=0.5
1953 -0.367625380329205 #_stochastic_recdev_with_sigmaR=0.5
1954  0.525992730901909 #_stochastic_recdev_with_sigmaR=0.5
1955 -0.0111117072499641 #_stochastic_recdev_with_sigmaR=0.5
1956 -0.550809020463564 #_stochastic_recdev_with_sigmaR=0.5
1957 -0.470754499214444 #_stochastic_recdev_with_sigmaR=0.5
1958  0.28722431140805 #_stochastic_recdev_with_sigmaR=0.5
1959 -0.321432289247296 #_stochastic_recdev_with_sigmaR=0.5
1960 -0.724934396215263 #_stochastic_recdev_with_sigmaR=0.5
1961 -0.408058672259209 #_stochastic_recdev_with_sigmaR=0.5
1962  0.435867519665313 #_stochastic_recdev_with_sigmaR=0.5
1963 -0.0721499278496509 #_stochastic_recdev_with_sigmaR=0.5
1964  0.142555897716654 #_stochastic_recdev_with_sigmaR=0.5
1965  0.479764898318702 #_stochastic_recdev_with_sigmaR=0.5
1966 -0.034310689493418 #_stochastic_recdev_with_sigmaR=0.5
1967 -0.511748382702093 #_stochastic_recdev_with_sigmaR=0.5
1968  0.517977881568913 #_stochastic_recdev_with_sigmaR=0.5
1969  0.117785351069428 #_stochastic_recdev_with_sigmaR=0.5
1970  0.684978385176051 #_stochastic_recdev_with_sigmaR=0.5
1971 -0.120101710930836 #_stochastic_recdev_with_sigmaR=0.5
1972 -1.67251742719033 #_stochastic_recdev_with_sigmaR=0.5
1973  0.239962712758216 #_stochastic_recdev_with_sigmaR=0.5
1974  0.628407160608931 #_stochastic_recdev_with_sigmaR=0.5
1975 -0.192569225177404 #_stochastic_recdev_with_sigmaR=0.5
1976 -0.111659522620305 #_stochastic_recdev_with_sigmaR=0.5
1977  0.551045187115809 #_stochastic_recdev_with_sigmaR=0.5
1978 -0.716681829573476 #_stochastic_recdev_with_sigmaR=0.5
1979 -0.0312910703098093 #_stochastic_recdev_with_sigmaR=0.5
1980 -0.200011414106244 #_stochastic_recdev_with_sigmaR=0.5
1981  1.10054479397567 #_stochastic_recdev_with_sigmaR=0.5
1982  0.0972874888389628 #_stochastic_recdev_with_sigmaR=0.5
1983 -0.501012169951116 #_stochastic_recdev_with_sigmaR=0.5
1984  0.218112996730248 #_stochastic_recdev_with_sigmaR=0.5
1985  0.594222715983129 #_stochastic_recdev_with_sigmaR=0.5
1986 -0.65392378355984 #_stochastic_recdev_with_sigmaR=0.5
1987 -0.122181200743091 #_stochastic_recdev_with_sigmaR=0.5
1988  0.491962222893304 #_stochastic_recdev_with_sigmaR=0.5
1989 -0.654482874322795 #_stochastic_recdev_with_sigmaR=0.5
1990  0.816736176876878 #_stochastic_recdev_with_sigmaR=0.5
1991 -0.286985106415672 #_stochastic_recdev_with_sigmaR=0.5
1992  0.0931318568746015 #_stochastic_recdev_with_sigmaR=0.5
1993  0.182907501707434 #_stochastic_recdev_with_sigmaR=0.5
1994  0.206884680162608 #_stochastic_recdev_with_sigmaR=0.5
1995 -0.621441481865123 #_stochastic_recdev_with_sigmaR=0.5
1996 -0.320330185950894 #_stochastic_recdev_with_sigmaR=0.5
1997  0.532625226812689 #_stochastic_recdev_with_sigmaR=0.5
1998  0.303928251489128 #_stochastic_recdev_with_sigmaR=0.5
1999 -0.0918798495104334 #_stochastic_recdev_with_sigmaR=0.5
2000 -0.191488591705091 #_stochastic_recdev_with_sigmaR=0.5
2001  0.379521238007965 #_stochastic_recdev_with_sigmaR=0.5
#Fishing Mortality info
0.3 # F ballpark
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
1.5 # max F or harvest rate, depends on F_Method
7 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	0	0	1	#_survey1   
-9999	0	0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-15	15	-4.38349	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_survey1(2)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
24	0	0	0	#_1 fishery1
24	0	0	0	#_2 survey1 
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
10	0	0	0	#_1 fishery1
10	0	0	0	#_2 survey1 
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
  22	89	 60.5231	   60	99	6	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_fishery1(1)
  -3	 3	   -0.75	-0.75	99	6	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_fishery1(1)
  -4	12	 5.03604	    5	99	6	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_fishery1(1)
  -2	15	      15	   15	99	6	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_fishery1(1)
 -15	 0	-12.8882	  -15	99	6	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_fishery1(1)
-999	15	    -999	    0	99	6	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_fishery1(1)
  22	89	 56.0886	   55	99	6	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_survey1(2) 
  -3	 3	   -0.31	-0.31	99	6	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_survey1(2) 
  -4	12	 5.13331	    5	99	6	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_3_survey1(2) 
  -2	15	      15	   15	99	6	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_4_survey1(2) 
 -15	 0	 -12.213	  -15	99	6	 3	0	0	0	0	0.5	0	0	#_SizeSel_P_5_survey1(2) 
-999	15	    -999	    0	99	6	-3	0	0	0	0	0.5	0	0	#_SizeSel_P_6_survey1(2) 
#_AgeSelex
#_No age_selex_parm
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
1 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 0 changes to default Lambdas (default value is 1.0)
-9999 0 0 0 0 # terminator
#
0 # 0/1 read specs for more stddev reporting
#
999
