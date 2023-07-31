#V3.30
#C data file for simple example
#
1971 #_styr
2001 #_endyr
1 #_nseas
12 #_months_per_seas
2 #_Nsubseasons
1 #_spawn_month
2 #_Nsexes
40 #_Nages
1 #_N_areas
3 #_Nfleets
#_fleetinfo
#_type	surveytiming	area	units	need_catch_mult	fleetname
1	1	1	1	0	FISHERY1	#_1
3	1	1	2	0	SURVEY1 	#_2
3	1	1	2	0	SURVEY2 	#_3
#_Catch data
#_year	season	fleet	catch	catch_se
 -999	1	1	    0	0.01	#_1         
 1971	1	1	    0	0.01	#_2         
 1972	1	1	  200	0.01	#_3         
 1973	1	1	 1000	0.01	#_4         
 1974	1	1	 1000	0.01	#_5         
 1975	1	1	 2000	0.01	#_6         
 1976	1	1	 3000	0.01	#_7         
 1977	1	1	 4000	0.01	#_8         
 1978	1	1	 5000	0.01	#_9         
 1979	1	1	 6000	0.01	#_10        
 1980	1	1	 8000	0.01	#_11        
 1981	1	1	10000	0.01	#_12        
 1982	1	1	10000	0.01	#_13        
 1983	1	1	10000	0.01	#_14        
 1984	1	1	10000	0.01	#_15        
 1985	1	1	10000	0.01	#_16        
 1986	1	1	10000	0.01	#_17        
 1987	1	1	10000	0.01	#_18        
 1988	1	1	 9000	0.01	#_19        
 1989	1	1	 8000	0.01	#_20        
 1990	1	1	 7000	0.01	#_21        
 1991	1	1	 6000	0.01	#_22        
 1992	1	1	 4000	0.01	#_23        
 1993	1	1	 4000	0.01	#_24        
 1994	1	1	 4000	0.01	#_25        
 1995	1	1	 4000	0.01	#_26        
 1996	1	1	 4000	0.01	#_27        
 1997	1	1	 3000	0.01	#_28        
 1998	1	1	 3000	0.01	#_29        
 1999	1	1	 3000	0.01	#_30        
 2000	1	1	 3000	0.01	#_31        
 2001	1	1	 3000	0.01	#_32        
-9999	0	0	    0	   0	#_terminator
#_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; >=30 for special types
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet	Units	Errtype	SD_Report
1	1	0	0	#_FISHERY1
2	1	0	0	#_SURVEY1 
3	0	0	0	#_SURVEY2 
#
#_CPUE_data
#_year	seas	index	obs	se_log
 1977	7	2	  339689	0.3	#_1         
 1980	7	2	  193353	0.3	#_2         
 1983	7	2	  151984	0.3	#_3         
 1986	7	2	 55221.8	0.3	#_4         
 1989	7	2	 59232.3	0.3	#_5         
 1992	7	2	 31137.5	0.3	#_6         
 1995	7	2	 35845.4	0.3	#_7         
 1998	7	2	 27492.6	0.3	#_8         
 2001	7	2	 37338.3	0.3	#_9         
 1990	7	3	 5.19333	0.7	#_10        
 1991	7	3	  1.1784	0.7	#_11        
 1992	7	3	 5.94383	0.7	#_12        
 1993	7	3	0.770106	0.7	#_13        
 1994	7	3	  16.318	0.7	#_14        
 1995	7	3	 1.36339	0.7	#_15        
 1996	7	3	 4.76482	0.7	#_16        
 1997	7	3	 51.0707	0.7	#_17        
 1998	7	3	 1.36095	0.7	#_18        
 1999	7	3	0.862531	0.7	#_19        
 2000	7	3	 5.97125	0.7	#_20        
 2001	7	3	 1.69379	0.7	#_21        
-9999	0	0	       0	  0	#_terminator
0 #_N_discard_fleets
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal
#
#_discard_fleet_info
#
#_discard_data
#
#_meanbodywt
0 #_use_meanbodywt
 #_DF_for_meanbodywt_T-distribution_like
#
#_population_length_bins
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp
10 # minimum size in the population (lower edge of first bin and size at age 0.00)
94 # maximum size in the population (lower edge of last bin)
0 #_use_lencomp
17 #_N_agebins
#
#_agebin_vector
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 20 25 #_agebin_vector
#
#_ageing_error
2 #_N_ageerror_definitions
#_age0	age1	age2	age3	age4	age5	age6	age7	age8	age9	age10	age11	age12	age13	age14	age15	age16	age17	age18	age19	age20	age21	age22	age23	age24	age25	age26	age27	age28	age29	age30	age31	age32	age33	age34	age35	age36	age37	age38	age39	age40
  0.5	  1.5	  2.5	  3.5	  4.5	  5.5	  6.5	  7.5	  8.5	  9.5	 10.5	 11.5	 12.5	 13.5	 14.5	 15.5	 16.5	 17.5	 18.5	 19.5	 20.5	 21.5	 22.5	 23.5	 24.5	 25.5	 26.5	 27.5	 28.5	 29.5	 30.5	 31.5	 32.5	 33.5	 34.5	 35.5	 36.5	 37.5	 38.5	 39.5	 40.5	#_1
0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	#_2
  0.5	  1.5	  2.5	  3.5	  4.5	  5.5	  6.5	  7.5	  8.5	  9.5	 10.5	 11.5	 12.5	 13.5	 14.5	 15.5	 16.5	 17.5	 18.5	 19.5	 20.5	 21.5	 22.5	 23.5	 24.5	 25.5	 26.5	 27.5	 28.5	 29.5	 30.5	 31.5	 32.5	 33.5	 34.5	 35.5	 36.5	 37.5	 38.5	 39.5	 40.5	#_3
  0.5	 0.65	 0.67	  0.7	 0.73	 0.76	  0.8	 0.84	 0.88	 0.92	 0.97	 1.03	 1.09	 1.16	 1.23	 1.32	 1.41	 1.51	 1.62	 1.75	 1.89	 2.05	 2.23	 2.45	 2.71	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	    3	#_4
#
#_age_info
#_mintailcomp	addtocomp	combine_M_F	CompressBins	CompError	ParmSelect	minsamplesize
0	1e-07	1	0	0	0	1	#_FISHERY1
0	1e-07	1	0	0	0	1	#_SURVEY1 
0	1e-07	1	0	0	0	1	#_SURVEY2 
1 #_Lbin_method: 1=poplenbins; 2=datalenbins; 3=lengths
 #_combine males into females at or below this bin number
#_Yr	Seas	FltSvy	Gender	Part	Ageerr	Lbin_lo	Lbin_hi	Nsamp	f1	f2	f3	f4	f5	f6	f7	f8	f9	f10	f11	f12	f13	f14	f15	f20	f25	m1	m2	m3	m4	m5	m6	m7	m8	m9	m10	m11	m12	m13	m14	m15	m20	m25
 1971	7	1	3	0	2	1	-1	75	0	0	0	 0	3	 1	1	4	2	1	0	1	2	2	13	2	3	0	0	4	 2	 1	1	2	1	2	2	1	2	1	2	 6	 5	8	#_1         
 1972	7	1	3	0	2	1	-1	75	2	1	1	 1	0	 3	1	2	2	5	3	1	2	2	 9	8	3	0	0	1	 2	 3	1	3	0	5	1	3	0	2	1	 2	 3	2	#_2         
 1973	7	1	3	0	2	1	-1	75	0	0	1	 0	1	 1	2	3	3	1	1	5	2	2	 7	4	3	0	0	0	 4	 1	3	5	1	2	3	1	3	2	0	 5	 3	6	#_3         
 1974	7	1	3	0	2	1	-1	75	0	0	2	 0	1	 4	2	2	2	4	1	1	1	2	 6	6	6	0	0	4	 1	 2	2	1	2	0	0	1	2	1	1	 6	 5	7	#_4         
 1975	7	1	3	0	2	1	-1	75	0	0	1	 2	3	 1	1	1	2	1	2	2	2	3	10	3	4	0	0	0	 0	10	1	2	3	2	1	0	0	0	0	 9	 3	6	#_5         
 1976	7	1	3	0	2	1	-1	75	0	0	1	 0	2	 2	2	1	3	1	2	3	1	1	 7	1	3	0	0	0	 0	 7	4	3	2	1	2	4	4	0	0	 8	10	0	#_6         
 1977	7	1	3	0	2	1	-1	75	0	0	0	 0	7	 1	0	0	2	4	2	2	3	1	 7	2	3	0	0	2	 1	 4	2	3	3	4	2	2	2	0	1	 8	 3	4	#_7         
 1978	7	1	3	0	2	1	-1	75	0	0	3	 2	1	 1	0	2	0	2	4	3	1	0	 9	4	6	0	0	2	 2	 5	1	0	2	3	2	4	2	0	4	 4	 3	3	#_8         
 1979	7	1	3	0	2	1	-1	75	2	0	1	 5	2	 1	2	3	3	3	2	2	1	0	 3	7	0	0	0	2	 0	 1	0	2	3	2	5	1	3	1	2	 6	 9	1	#_9         
 1980	7	1	3	0	2	1	-1	75	0	1	0	 2	0	 1	1	2	2	3	2	1	1	0	 7	8	0	0	0	0	 3	 2	1	1	1	2	2	4	2	2	2	11	 3	8	#_10        
 1981	7	1	3	0	2	1	-1	75	0	4	0	 3	7	 2	2	2	2	1	1	2	2	1	 4	4	6	0	0	3	 2	 2	1	1	3	2	2	0	1	2	2	 5	 3	3	#_11        
 1982	7	1	3	0	2	1	-1	75	0	2	1	 1	3	 3	2	1	1	2	2	1	0	2	 6	3	9	0	0	0	 0	 3	5	0	1	4	1	1	1	2	1	 8	 9	0	#_12        
 1983	7	1	3	0	2	1	-1	75	0	0	0	 6	1	 2	2	2	1	1	4	5	0	0	 6	2	7	0	0	3	 1	 3	5	1	0	1	1	3	0	3	3	 5	 3	4	#_13        
 1984	7	1	3	0	2	1	-1	75	0	0	0	 3	4	 0	3	6	3	1	4	0	2	0	 7	2	3	0	0	3	 1	 5	4	2	3	5	1	2	1	2	0	 1	 2	5	#_14        
 1985	7	1	3	0	2	1	-1	75	0	0	0	 5	1	 2	4	5	0	2	4	3	2	3	 3	4	5	0	0	0	 1	 2	3	2	4	2	0	2	3	1	1	 7	 2	2	#_15        
 1986	7	1	3	0	2	1	-1	75	0	2	2	 1	3	 7	4	3	2	2	2	2	2	0	 4	2	2	0	0	0	 0	 4	4	4	1	2	3	4	0	0	1	 5	 7	0	#_16        
 1987	7	1	3	0	2	1	-1	75	0	3	1	 3	1	 2	3	4	2	3	3	2	2	1	 3	2	0	0	0	7	 1	 5	1	4	2	4	3	2	3	1	0	 2	 1	4	#_17        
 1988	7	1	3	0	2	1	-1	75	1	0	5	 0	2	 3	3	3	4	3	3	1	0	3	 3	5	0	0	1	3	 3	 2	2	1	4	3	2	1	2	4	0	 5	 3	0	#_18        
 1989	7	1	3	0	2	1	-1	75	0	3	1	 1	4	 3	7	1	5	1	1	4	1	0	 1	7	0	0	0	5	 3	 4	1	1	5	3	1	5	2	1	0	 2	 2	0	#_19        
 1990	7	1	3	0	2	1	-1	75	0	0	7	 3	7	 3	0	1	3	0	1	1	1	1	 3	4	0	0	1	0	 8	 4	3	3	2	4	5	1	5	1	0	 1	 2	0	#_20        
 1991	7	1	3	0	2	1	-1	75	0	0	4	 1	7	 4	2	3	2	1	0	1	1	3	 3	3	0	0	3	4	 2	 5	4	4	1	3	3	0	4	2	0	 4	 1	0	#_21        
 1992	7	1	3	0	2	1	-1	75	0	0	7	 4	5	10	4	3	0	3	1	0	2	0	 2	1	1	0	0	5	 1	 3	8	3	3	1	2	0	1	3	0	 1	 1	0	#_22        
 1993	7	1	3	0	2	1	-1	75	0	0	7	 4	3	 7	5	7	2	1	0	1	0	4	 0	0	0	0	0	3	 3	 4	3	7	0	0	4	2	1	1	1	 5	 0	0	#_23        
 1994	7	1	3	0	2	1	-1	75	0	0	3	 6	4	 4	4	9	4	5	1	0	0	0	 0	0	3	0	0	0	 9	 0	7	2	2	3	4	0	3	2	0	 0	 0	0	#_24        
 1995	7	1	3	0	2	1	-1	75	3	1	2	 0	8	 5	2	6	2	5	0	2	1	4	 0	0	0	0	0	0	 2	 5	3	2	3	5	6	1	0	1	1	 3	 1	1	#_25        
 1996	7	1	3	0	2	1	-1	75	0	0	1	 1	5	 4	3	7	2	3	2	3	3	1	 5	1	0	0	2	5	 0	 5	4	1	2	3	4	2	3	0	1	 2	 0	0	#_26        
 1997	7	1	3	0	2	1	-1	75	0	5	3	 5	0	 2	4	3	4	5	1	1	3	2	 2	0	0	0	0	0	 3	 1	6	5	5	2	3	4	1	2	3	 0	 0	0	#_27        
 1998	7	1	3	0	2	1	-1	75	5	3	1	 4	1	 2	3	4	3	2	0	2	0	1	 5	0	0	0	0	4	 6	 4	2	7	2	1	1	6	3	0	0	 2	 1	0	#_28        
 1999	7	1	3	0	2	1	-1	75	2	2	3	 3	6	 3	3	3	8	3	3	3	0	1	 1	0	0	0	1	3	 3	 3	5	4	0	4	2	4	0	1	0	 1	 0	0	#_29        
 2000	7	1	3	0	2	1	-1	75	0	2	1	 9	4	 4	2	2	4	3	1	0	1	0	 5	0	0	0	0	8	11	 3	1	2	2	1	1	2	1	0	2	 3	 0	0	#_30        
 2001	7	1	3	0	2	1	-1	75	0	1	1	 6	8	 1	1	0	5	2	2	2	0	3	 4	0	0	0	0	5	 3	 4	6	3	3	1	4	3	1	1	2	 3	 0	0	#_31        
 1977	7	2	3	0	2	1	-1	75	2	1	2	 1	0	 4	3	3	2	1	1	0	1	1	 4	7	0	0	2	2	 7	 1	0	1	0	1	2	4	1	2	2	 7	10	0	#_32        
 1980	7	2	3	0	2	1	-1	75	3	3	4	 6	5	 2	0	2	3	0	3	2	2	2	 2	1	4	0	2	3	 5	 3	1	2	1	1	2	1	1	1	0	 3	 1	4	#_33        
 1983	7	2	3	0	2	1	-1	75	3	4	3	 2	3	 0	0	7	0	0	3	1	1	0	 5	6	0	0	2	2	 4	 1	2	3	4	3	2	0	1	1	2	 7	 1	2	#_34        
 1986	7	2	3	0	2	1	-1	75	3	0	2	 5	3	 5	5	3	1	3	2	1	1	1	 3	0	2	0	0	2	 3	 6	6	1	3	3	1	1	1	1	2	 2	 3	0	#_35        
 1989	7	2	3	0	2	1	-1	75	7	3	7	 3	2	 1	0	3	2	1	2	1	1	5	 0	0	0	0	4	8	 6	 1	2	3	5	1	1	2	0	4	0	 0	 0	0	#_36        
 1992	7	2	3	0	2	1	-1	75	2	5	3	 4	0	 5	0	5	2	0	0	0	1	0	 3	0	0	0	4	5	 5	10	8	6	2	1	2	0	0	1	0	 1	 0	0	#_37        
 1995	7	2	3	0	2	1	-1	75	0	5	2	 3	2	 3	5	4	2	1	1	2	0	0	 3	0	0	0	2	3	 5	11	2	6	5	1	2	1	2	0	0	 2	 0	0	#_38        
 1998	7	2	3	0	2	1	-1	75	9	4	4	 3	1	 1	1	1	3	3	1	2	1	7	 0	0	0	0	6	5	 3	 5	1	3	3	2	3	2	0	1	0	 0	 0	0	#_39        
 2001	7	2	3	0	2	1	-1	75	4	0	4	11	5	 3	4	2	2	0	0	0	0	0	 2	0	0	0	2	4	 7	11	5	2	0	2	2	2	0	0	0	 1	 0	0	#_40        
-9999	0	0	0	0	0	0	 0	 0	0	0	0	 0	0	 0	0	0	0	0	0	0	0	0	 0	0	0	0	0	0	 0	 0	0	0	0	0	0	0	0	0	0	 0	 0	0	#_terminator
#
#_MeanSize_at_Age_obs
0 #_use_MeanSize_at_Age_obs
0 #_N_environ_variables
0 #_N_sizefreq_methods
0 #_do_tags
0 #_morphcomp_data
0 #_use_selectivity_priors
#
999