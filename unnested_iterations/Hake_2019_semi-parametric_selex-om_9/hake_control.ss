#V3.30
#C 2019 Hake control file
#
1 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
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
0 #_Nblock_Patterns
#_Cond 0 #_blocks_per_pattern
# begin and end years of blocks
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
1 #_Age(post-settlement)_for_L1;linear growth below this
20 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
5 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
2 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
 0.05	    0.4	0.21797	-1.60944	0.1	3	  4	0	0	0	0	0	0	0	#_NatM_p_1_Fem_GP_1  
    2	     15	      5	      32	 99	0	 -5	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1 
   45	     60	   53.2	      50	 99	0	 -3	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1 
  0.2	    0.4	    0.3	     0.3	 99	0	 -3	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1 
 0.03	   0.16	  0.066	     0.1	 99	0	 -5	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1  
 0.03	   0.16	  0.062	     0.1	 99	0	 -5	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1    
   -3	      3	  7e-06	   7e-06	 99	0	-50	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1   
   -3	      3	 2.9624	  2.9624	 99	0	-50	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1   
   -3	     43	  36.89	   36.89	 99	0	-50	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1    
   -3	      3	  -0.48	   -0.48	 99	0	-50	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1 
   -3	      3	      1	       1	 99	0	-50	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1
   -3	      3	      0	       0	 99	0	-50	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1 
  0.1	     10	      1	       1	  1	0	 -1	0	0	0	0	0	0	0	#_CohortGrowDev      
1e-05	0.99999	    0.5	     0.5	0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1    
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
 13	 17	 14.6661	   15	   99	0	  1	0	0	0	0	0	0	0	#_SR_LN(R0)  
0.2	  1	0.869251	0.777	0.113	2	  4	0	0	0	0	0	0	0	#_SR_BH_steep
  1	1.6	     1.4	  1.1	   99	0	 -6	0	0	0	0	0	0	0	#_SR_sigmaR  
 -5	  5	       0	    0	   99	0	-50	0	0	0	0	0	0	0	#_SR_regime  
  0	  2	       0	    1	   99	0	-50	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1970 # first year of main recr_devs; early devs can preceed this era
2017 # last year of main recr_devs; forecast devs start in following year
-1 #_recdev phase
1 # (0/1) to read 13 advanced options
1946 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
3 #_recdev_early_phase
5 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1965 #_last_yr_nobias_adj_in_MPD; begin of ramp
1971 #_first_yr_fullbias_adj_in_MPD; begin of plateau
2017 #_last_yr_fullbias_adj_in_MPD
2018 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
-1 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
0 #_period of cycles in recruitment (N parms read below)
-6 #min rec_dev
6 #max rec_dev
48 #_read_recdevs
#_end of advanced SR options
#
# read specified recr devs
#_Yr Input_value
1970  0.887578402109916 #_stochastic_recdev_with_sigmaR=1.4
1971  0.0261058384757492 #_stochastic_recdev_with_sigmaR=1.4
1972 -0.596283687380368 #_stochastic_recdev_with_sigmaR=1.4
1973 -1.00103785123686 #_stochastic_recdev_with_sigmaR=1.4
1974  0.776169725955382 #_stochastic_recdev_with_sigmaR=1.4
1975  2.00543464786995 #_stochastic_recdev_with_sigmaR=1.4
1976 -1.13728025164663 #_stochastic_recdev_with_sigmaR=1.4
1977 -0.927564044249153 #_stochastic_recdev_with_sigmaR=1.4
1978  0.556979785197006 #_stochastic_recdev_with_sigmaR=1.4
1979  0.204087557553842 #_stochastic_recdev_with_sigmaR=1.4
1980 -1.95307052733973 #_stochastic_recdev_with_sigmaR=1.4
1981 -0.275977454075342 #_stochastic_recdev_with_sigmaR=1.4
1982 -0.810069926755866 #_stochastic_recdev_with_sigmaR=1.4
1983  2.96847850416402 #_stochastic_recdev_with_sigmaR=1.4
1984 -1.22896282507177 #_stochastic_recdev_with_sigmaR=1.4
1985  2.15837038950121 #_stochastic_recdev_with_sigmaR=1.4
1986  0.565622394406417 #_stochastic_recdev_with_sigmaR=1.4
1987 -0.231145172106578 #_stochastic_recdev_with_sigmaR=1.4
1988  0.0185671673166535 #_stochastic_recdev_with_sigmaR=1.4
1989  1.50957562993958 #_stochastic_recdev_with_sigmaR=1.4
1990  0.0272832260963923 #_stochastic_recdev_with_sigmaR=1.4
1991  1.5163023018536 #_stochastic_recdev_with_sigmaR=1.4
1992 -4.66357041351587 #_stochastic_recdev_with_sigmaR=1.4
1993  0.627712563380021 #_stochastic_recdev_with_sigmaR=1.4
1994 -0.661886554375176 #_stochastic_recdev_with_sigmaR=1.4
1995 -1.70222023949757 #_stochastic_recdev_with_sigmaR=1.4
1996  0.377217951882943 #_stochastic_recdev_with_sigmaR=1.4
1997  0.551919498111216 #_stochastic_recdev_with_sigmaR=1.4
1998 -1.23263587594672 #_stochastic_recdev_with_sigmaR=1.4
1999 -0.201292992607165 #_stochastic_recdev_with_sigmaR=1.4
2000  0.987969537499688 #_stochastic_recdev_with_sigmaR=1.4
2001 -2.28194622564547 #_stochastic_recdev_with_sigmaR=1.4
2002  2.03923905009518 #_stochastic_recdev_with_sigmaR=1.4
2003  0.27704587314906 #_stochastic_recdev_with_sigmaR=1.4
2004 -1.41526120439109 #_stochastic_recdev_with_sigmaR=1.4
2005  0.83874799455457 #_stochastic_recdev_with_sigmaR=1.4
2006  0.704702588099215 #_stochastic_recdev_with_sigmaR=1.4
2007  0.779573426910155 #_stochastic_recdev_with_sigmaR=1.4
2008 -0.0718517462472679 #_stochastic_recdev_with_sigmaR=1.4
2009  2.36168992457424 #_stochastic_recdev_with_sigmaR=1.4
2010  1.08708837664839 #_stochastic_recdev_with_sigmaR=1.4
2011 -1.24555533391738 #_stochastic_recdev_with_sigmaR=1.4
2012 -0.994984243103815 #_stochastic_recdev_with_sigmaR=1.4
2013  0.107647819071079 #_stochastic_recdev_with_sigmaR=1.4
2014 -0.0800224753172275 #_stochastic_recdev_with_sigmaR=1.4
2015 -1.63873288748259 #_stochastic_recdev_with_sigmaR=1.4
2016 -1.31545338852564 #_stochastic_recdev_with_sigmaR=1.4
2017  1.7056951460198 #_stochastic_recdev_with_sigmaR=1.4
#Fishing Mortality info
0.1 # F ballpark
-1999 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
1.5 # max F or harvest rate, depends on F_Method
5 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	1	0	1	#_Acoustic_Survey
-9999	0	0	0	0	0	#_terminator     
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
 -15	 15	0.0906705	     0	  1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_Acoustic_Survey(2) 
0.05	1.2	 0.254247	0.0755	0.1	0	 4	0	0	0	0	0	0	0	#_Q_extraSD_Acoustic_Survey(2)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
0	0	0	0	#_1 Fishery        
0	0	0	0	#_2 Acoustic_Survey
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
17	0	0	20	#_1 Fishery        
17	0	0	20	#_2 Acoustic_Survey
#
#_SizeSelex
#_No size_selex_parm
#_AgeSelex
-1002	3	    -1000	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_1_Fishery(1)         
   -1	1	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_2_Fishery(1)         
   -5	9	  2.58823	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_3_Fishery(1)         
   -5	9	 0.938065	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_4_Fishery(1)         
   -5	9	 0.391785	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_5_Fishery(1)         
   -5	9	 0.218713	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_6_Fishery(1)         
   -5	9	 0.447989	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_7_Fishery(1)         
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_8_Fishery(1)         
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_9_Fishery(1)         
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_10_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_11_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_12_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_13_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_14_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_15_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_16_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_17_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_18_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_19_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_20_Fishery(1)        
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_21_Fishery(1)        
-1002	3	    -1000	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_1_Acoustic_Survey(2) 
-1002	3	    -1000	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_2_Acoustic_Survey(2) 
   -1	1	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_3_Acoustic_Survey(2) 
   -5	9	 0.639003	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_4_Acoustic_Survey(2) 
   -5	9	-0.274895	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_5_Acoustic_Survey(2) 
   -5	9	 0.288126	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_6_Acoustic_Survey(2) 
   -5	9	 0.370801	-1	0.01	0	 2	0	0	0	0	0	0	0	#_AgeSel_P_7_Acoustic_Survey(2) 
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_8_Acoustic_Survey(2) 
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_9_Acoustic_Survey(2) 
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_10_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_11_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_12_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_13_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_14_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_15_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_16_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_17_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_18_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_19_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_20_Acoustic_Survey(2)
   -5	9	        0	-1	0.01	0	-2	0	0	0	0	0	0	0	#_AgeSel_P_21_Acoustic_Survey(2)
#_Dirichlet parameters
-5	20	-0.205575	0	99	0	2	0	0	0	0	0	0	0	#_ln(DM_theta)_1
-5	20	  2.39745	0	99	0	2	0	0	0	0	0	0	0	#_ln(DM_theta)_2
#_no timevary selex parameters
#
1 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_specifications for 2D_AR1 and associated parameters
#_fleet	ymin	ymax	amin	amax	sig_amax	use_rho	l1/a2	devphase	before_range	after_range
1	1991	2017	1	5	1	1	2	5	0	0	#_2d_AR specs:1
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
0.01	  5	1	1	99	0	-5	#_sigma_sel:1
-0.8	0.8	0	0	99	0	-3	#_rho_year:1 
-0.8	0.8	0	0	99	0	-3	#_rho_age:1  
-9999 1 1 1 1 1 1 1 1 1 1 # Terminator 
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
