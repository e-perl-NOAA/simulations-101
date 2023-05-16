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
1	-1	1	1	0	FISHERY	#_1
3	 1	1	2	0	SURVEY1	#_2
3	 1	1	2	0	SURVEY2	#_3
#_Catch data
#_year	season	fleet	catch	catch_se
 -999	1	1	      0	0.01	#_1         
 1971	1	1	      0	0.01	#_2         
 1972	1	1	197.858	0.01	#_3         
 1973	1	1	982.989	0.01	#_4         
 1974	1	1	1005.69	0.01	#_5         
 1975	1	1	1977.68	0.01	#_6         
 1976	1	1	2937.74	0.01	#_7         
 1977	1	1	3991.74	0.01	#_8         
 1978	1	1	5001.29	0.01	#_9         
 1979	1	1	5966.05	0.01	#_10        
 1980	1	1	8000.27	0.01	#_11        
 1981	1	1	9909.46	0.01	#_12        
 1982	1	1	 9905.6	0.01	#_13        
 1983	1	1	9949.23	0.01	#_14        
 1984	1	1	10136.2	0.01	#_15        
 1985	1	1	9859.73	0.01	#_16        
 1986	1	1	9857.76	0.01	#_17        
 1987	1	1	9932.43	0.01	#_18        
 1988	1	1	 8992.1	0.01	#_19        
 1989	1	1	7953.58	0.01	#_20        
 1990	1	1	 7026.9	0.01	#_21        
 1991	1	1	6035.93	0.01	#_22        
 1992	1	1	3957.58	0.01	#_23        
 1993	1	1	4010.54	0.01	#_24        
 1994	1	1	3974.27	0.01	#_25        
 1995	1	1	4056.98	0.01	#_26        
 1996	1	1	 4002.6	0.01	#_27        
 1997	1	1	2990.95	0.01	#_28        
 1998	1	1	2993.48	0.01	#_29        
 1999	1	1	2948.16	0.01	#_30        
 2000	1	1	3045.38	0.01	#_31        
 2001	1	1	2965.72	0.01	#_32        
-9999	0	0	      0	   0	#_terminator
#_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; >=30 for special types
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet	Units	Errtype	SD_Report
1	1	0	0	#_FISHERY
2	1	0	1	#_SURVEY1
3	0	0	0	#_SURVEY2
#
#_CPUE_data
#_year	seas	index	obs	se_log
 1977	7	2	 180099	0.3	#_1         
 1980	7	2	 155121	0.3	#_2         
 1983	7	2	89228.3	0.3	#_3         
 1986	7	2	  78474	0.3	#_4         
 1989	7	2	34131.8	0.3	#_5         
 1992	7	2	45126.1	0.3	#_6         
 1995	7	2	91601.6	0.3	#_7         
 1998	7	2	59889.4	0.3	#_8         
 2001	7	2	46572.9	0.3	#_9         
 1990	7	3	5.37733	0.7	#_10        
 1991	7	3	2.97797	0.7	#_11        
 1992	7	3	16.2215	0.7	#_12        
 1993	7	3	 1.3138	0.7	#_13        
 1994	7	3	8.29572	0.7	#_14        
 1995	7	3	4.56598	0.7	#_15        
 1996	7	3	5.42255	0.7	#_16        
 1997	7	3	10.8367	0.7	#_17        
 1998	7	3	3.69202	0.7	#_18        
 1999	7	3	1.39895	0.7	#_19        
 2000	7	3	3.27961	0.7	#_20        
 2001	7	3	2.02079	0.7	#_21        
-9999	0	0	      0	  0	#_terminator
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
1 #_use_lencomp
#
#_len_info
#_mintailcomp	addtocomp	combine_M_F	CompressBins	CompError	ParmSelect	minsamplesize
0	1e-07	0	0	0	0	1	#_FISHERY
0	1e-07	0	0	0	0	1	#_SURVEY1
0	1e-07	0	0	0	0	1	#_SURVEY2
25 #_N_lbins
#_lbin_vector
26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 68 72 76 80 90 #_lbin_vector
#
#_lencomp
#_Yr	Seas	FltSvy	Gender	Part	Nsamp	f26	f28	f30	f32	f34	f36	f38	f40	f42	f44	f46	f48	f50	f52	f54	f56	f58	f60	f62	f64	f68	f72	f76	f80	f90	m26	m28	m30	m32	m34	m36	m38	m40	m42	m44	m46	m48	m50	m52	m54	m56	m58	m60	m62	m64	m68	m72	m76	m80	m90
 1971	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 4	2	 2	4	2	 0	 4	3	5	4	11	12	 5	 2	0	0	0	0	0	0	0	0	0	0	 2	 0	0	0	1	 0	 2	 7	3	9	14	 7	 9	 7	4	0	0	#_1         
 1972	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 2	1	 3	1	3	 3	 7	5	7	1	10	 9	 7	 2	2	0	0	0	0	0	0	0	0	0	 2	 1	1	4	1	 0	 3	 2	5	4	 9	12	 7	 4	7	0	0	#_2         
 1973	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 0	0	 0	8	2	 2	 5	4	6	2	 7	12	 7	 8	0	0	0	0	0	0	0	0	0	0	 0	 0	0	5	2	 1	 6	 3	3	5	 4	13	 9	 3	3	5	0	#_3         
 1974	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 3	0	 1	2	3	 3	 2	4	3	6	11	12	 6	11	0	0	0	0	0	0	0	0	0	2	 0	 2	1	3	2	 5	 2	 5	3	0	 5	12	10	 2	2	2	0	#_4         
 1975	7	1	3	0	125	0	0	0	0	0	0	0	0	1	 0	0	 2	1	2	 3	 1	5	2	6	15	14	13	 6	0	0	0	0	0	0	0	0	0	0	 0	 1	1	1	2	 3	 3	 3	3	6	 5	12	 8	 2	4	0	0	#_5         
 1976	7	1	3	0	125	0	0	0	0	0	0	0	1	0	 0	0	 0	0	5	 5	 0	2	6	4	12	 9	 4	 2	2	0	0	0	0	0	0	0	2	0	 1	 0	0	0	1	 5	 2	 4	2	7	 6	15	12	10	6	0	0	#_6         
 1977	7	1	3	0	125	0	0	0	0	0	0	0	5	0	 1	0	 1	2	2	 2	 2	2	3	3	11	 8	 8	 4	3	0	0	0	0	0	0	0	0	1	 0	 0	0	2	2	 2	 3	 3	3	6	 5	18	 9	 8	6	0	0	#_7         
 1978	7	1	3	0	125	0	0	0	0	0	0	1	0	0	 0	1	 0	0	1	 0	 4	2	3	5	10	15	 9	 6	5	0	0	0	0	0	0	0	0	1	 0	 0	0	2	5	 4	 3	 5	1	7	 7	 7	 9	 5	7	0	0	#_8         
 1979	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 0	2	 0	1	1	 6	 0	5	3	4	16	 8	 5	 5	7	0	0	0	0	0	0	0	0	0	 7	 0	1	0	0	 2	 3	 2	3	6	 3	10	14	 6	3	2	0	#_9         
 1980	7	1	3	0	125	0	0	0	0	0	0	0	0	1	 4	1	 3	2	0	 4	 2	0	3	5	13	11	11	 5	3	0	0	0	0	0	0	0	0	0	 2	 2	1	0	2	 5	 7	 3	2	4	 4	 5	 8	 8	4	0	0	#_10        
 1981	7	1	3	0	125	0	0	0	0	0	0	2	1	3	 3	0	 2	1	3	 4	 7	4	2	3	 7	12	 6	 9	0	0	0	0	0	0	0	1	0	0	 1	 0	1	2	6	 3	 2	 3	3	3	 3	12	 6	 7	3	0	0	#_11        
 1982	7	1	3	0	125	0	0	0	0	0	0	0	0	3	 1	4	 4	2	4	 2	 8	1	1	4	 5	16	12	 0	0	0	0	0	0	0	0	0	0	2	 0	 0	2	1	1	 1	 3	 4	7	2	 4	11	11	 6	3	0	0	#_12        
 1983	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 0	5	 2	2	2	 6	 3	4	6	0	 7	 8	 5	 5	0	0	0	0	0	0	0	0	0	0	 0	 3	1	8	2	 4	 5	 3	3	7	 3	 7	10	 9	5	0	0	#_13        
 1984	7	1	3	0	125	0	0	0	0	0	0	2	2	0	 1	1	 2	4	3	 6	 7	2	3	4	 7	 8	 5	 8	0	0	0	0	0	0	0	0	0	2	 1	 1	2	2	4	 5	 1	 4	9	9	 5	 4	 7	 3	1	0	0	#_14        
 1985	7	1	3	0	125	0	0	0	0	0	0	0	0	4	 1	3	 3	5	6	 1	 4	4	5	4	 8	 4	 5	 1	1	0	0	0	0	0	0	0	0	5	 0	 1	1	2	2	 2	 2	 5	7	8	 8	 9	 7	 4	3	0	0	#_15        
 1986	7	1	3	0	125	0	0	0	0	0	0	1	1	0	 1	3	 2	3	2	 7	 8	4	6	4	 5	 8	 7	 5	0	0	0	0	0	0	0	2	1	4	 2	 2	5	2	2	 4	 3	 2	6	4	 3	 6	 6	 3	1	0	0	#_16        
 1987	7	1	3	0	125	0	0	0	0	2	1	0	1	2	 1	5	 6	3	3	 5	 5	5	3	6	 6	 6	 2	 2	0	0	0	0	0	0	0	0	0	3	 2	 1	0	2	5	 3	 6	 2	5	4	 6	10	 6	 3	3	0	0	#_17        
 1988	7	1	3	0	125	0	0	0	0	0	0	1	0	5	 4	4	 5	2	2	 5	 4	7	6	3	 5	 4	 7	 5	0	0	0	0	0	0	0	2	1	3	 1	 2	0	3	5	 7	 7	 4	2	3	 2	 4	 5	 5	0	0	0	#_18        
 1989	7	1	3	0	125	0	0	0	0	0	2	1	1	3	 2	0	 4	3	5	 2	 7	2	4	6	 3	 3	 1	 4	0	0	0	0	0	0	0	0	4	4	 1	 3	0	4	7	 4	 8	 5	3	6	 7	 7	 2	 7	0	0	0	#_19        
 1990	7	1	3	0	125	0	0	0	0	0	0	0	3	0	 1	2	 3	4	5	 6	 8	4	7	5	 3	 5	 1	 1	0	0	0	0	0	0	0	0	0	1	 1	 2	3	1	7	 8	 7	 4	9	3	 7	 8	 4	 0	2	0	0	#_20        
 1991	7	1	3	0	125	0	0	0	0	0	0	0	7	0	 2	3	 7	5	4	 6	 7	7	5	3	10	 1	 1	 0	0	0	0	0	0	0	1	2	0	0	 3	 0	2	5	1	 6	10	 5	6	4	 4	 1	 2	 5	0	0	0	#_21        
 1992	7	1	3	0	125	0	0	0	0	1	0	2	0	1	 2	1	 3	8	5	 9	 6	1	6	2	 9	 5	 4	 0	0	0	0	0	0	0	0	0	0	4	 0	 1	4	5	6	 5	 2	 9	5	4	 4	 3	 4	 4	0	0	0	#_22        
 1993	7	1	3	0	125	0	0	0	0	0	0	2	2	0	 2	4	 3	3	3	 8	 4	5	4	3	10	 0	 5	 0	0	0	0	0	0	0	0	0	0	6	 3	 1	6	3	4	 5	 4	 9	2	6	 3	 6	 4	 4	1	0	0	#_23        
 1994	7	1	3	0	125	0	0	0	0	0	0	0	0	0	21	1	 0	7	4	 6	 6	1	3	1	 8	 3	 1	 4	0	0	0	0	0	0	0	0	0	8	 2	 2	3	3	3	 7	 6	 4	7	1	 1	 7	 3	 2	0	0	0	#_24        
 1995	7	1	3	0	125	0	0	0	0	1	2	2	5	3	 5	4	 5	1	6	 7	 5	1	1	2	 9	 7	 0	 0	0	0	0	0	0	0	3	1	3	2	 2	 2	8	1	4	 3	 6	 5	1	1	 1	 7	 6	 3	0	0	0	#_25        
 1996	7	1	3	0	125	0	0	0	0	0	0	0	3	0	 3	5	 2	4	4	10	 2	3	2	6	 2	 7	 6	 0	0	0	0	0	0	0	0	0	2	3	 0	 4	6	3	6	 7	 6	 7	2	1	 5	 6	 4	 4	0	0	0	#_26        
 1997	7	1	3	0	125	0	0	0	0	1	2	1	0	1	 0	2	11	3	8	 2	 9	4	4	2	 2	 2	 0	 0	0	0	0	0	0	0	0	1	1	1	 1	 3	3	5	3	 3	 8	10	4	7	 6	 8	 4	 3	0	0	0	#_27        
 1998	7	1	3	0	125	0	0	0	0	0	1	1	0	2	 1	3	 4	3	3	 7	 5	3	6	5	 6	 2	 5	 1	0	0	0	0	0	0	2	0	0	1	 0	 1	2	6	5	 9	 8	 8	5	4	 9	 4	 2	 1	0	0	0	#_28        
 1999	7	1	3	0	125	0	0	0	0	0	1	0	0	1	 2	2	 2	6	5	 4	12	8	5	8	 7	 4	 1	 0	0	0	0	0	0	0	0	0	1	2	 0	 1	5	5	3	 6	 2	 3	5	9	 6	 5	 3	 1	0	0	0	#_29        
 2000	7	1	3	0	125	0	0	0	0	0	2	0	0	2	 3	1	 4	2	3	 8	 5	6	3	9	 9	 4	 0	 0	0	0	0	0	0	0	0	1	2	0	 0	 0	1	1	2	 4	11	 9	3	9	 6	 9	 3	 2	1	0	0	#_30        
 2001	7	1	3	0	125	0	0	0	0	0	0	0	0	0	 2	2	 3	2	2	 9	 2	2	8	4	10	 6	 4	 0	0	0	0	0	0	0	0	0	0	1	 3	 2	0	6	1	 4	 6	 2	7	7	 7	13	 6	 4	0	0	0	#_31        
 1977	7	2	3	0	125	0	0	0	0	2	0	2	1	4	 1	2	 1	1	0	 8	 4	4	3	2	 4	13	11	 0	0	0	0	0	0	0	0	0	8	1	 0	 1	5	2	3	 4	 3	 3	1	5	 7	 3	10	 3	3	0	0	#_32        
 1980	7	2	3	0	125	0	0	0	0	3	1	1	2	2	 4	4	 0	4	2	 2	 3	0	1	3	 3	 8	 2	 3	2	0	0	0	0	0	2	0	2	3	 6	 5	7	2	7	 1	 3	 7	1	4	 6	 4	 7	 5	3	0	0	#_33        
 1983	7	2	3	0	125	0	0	0	0	0	1	0	6	3	 2	2	 0	2	4	10	 3	4	2	2	 7	 3	 4	 0	0	0	0	0	0	0	2	2	3	5	 7	 3	4	4	4	 4	 0	 4	4	3	 4	 5	12	 0	0	0	0	#_34        
 1986	7	2	3	0	125	0	0	0	0	6	0	5	2	2	 3	6	 3	2	5	 3	 5	3	3	1	 3	 2	 5	 3	0	0	0	0	0	2	2	3	3	4	 6	 6	3	6	3	 5	 3	 1	2	2	 6	 4	 1	 1	0	0	0	#_35        
 1989	7	2	3	0	125	0	0	0	0	0	4	3	4	7	 3	2	 4	7	2	 6	 6	2	2	2	 5	 3	 4	 0	0	0	0	0	0	0	1	1	3	2	 6	 3	3	4	8	 3	 4	 1	2	4	 3	11	 0	 0	0	0	0	#_36        
 1992	7	2	3	0	125	0	0	0	0	0	4	2	6	4	 3	3	 2	4	5	 2	 3	3	4	4	 5	 3	 0	 0	0	0	0	0	0	0	0	9	3	3	 8	 7	3	4	2	 6	 4	 2	3	3	 0	 8	 2	 1	0	0	0	#_37        
 1995	7	2	3	0	125	0	0	0	0	1	2	8	4	3	 7	5	 8	3	3	 2	 2	3	3	2	 0	 0	 1	 0	0	0	0	0	0	0	2	4	4	5	15	10	3	7	4	 5	 2	 1	1	1	 3	 0	 0	 1	0	0	0	#_38        
 1998	7	2	3	0	125	0	0	0	0	0	1	0	1	5	 6	6	 3	7	6	 5	 7	5	4	1	 4	 2	 2	 0	0	0	0	0	0	0	2	0	3	1	 2	 2	3	6	5	 8	 9	 8	2	4	 1	 4	 0	 0	0	0	0	#_39        
 2001	7	2	3	0	125	0	0	0	0	0	2	1	1	2	 2	7	 1	4	5	 4	 0	4	6	4	 9	 6	 0	 0	0	0	0	0	0	0	2	2	1	4	 0	 7	3	3	4	10	 7	 2	9	3	 2	 6	 2	 0	0	0	0	#_40        
-9999	0	0	0	0	  0	0	0	0	0	0	0	0	0	0	 0	0	 0	0	0	 0	 0	0	0	0	 0	 0	 0	 0	0	0	0	0	0	0	0	0	0	0	 0	 0	0	0	0	 0	 0	 0	0	0	 0	 0	 0	 0	0	0	0	#_terminator
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
0	1e-07	1	0	0	0	1	#_FISHERY
0	1e-07	1	0	0	0	1	#_SURVEY1
0	1e-07	1	0	0	0	1	#_SURVEY2
1 #_Lbin_method: 1=poplenbins; 2=datalenbins; 3=lengths
 #_combine males into females at or below this bin number
#_Yr	Seas	FltSvy	Gender	Part	Ageerr	Lbin_lo	Lbin_hi	Nsamp	f1	f2	f3	f4	f5	f6	f7	f8	f9	f10	f11	f12	f13	f14	f15	f20	f25	m1	m2	m3	m4	m5	m6	m7	m8	m9	m10	m11	m12	m13	m14	m15	m20	m25
 1971	7	1	3	0	2	1	-1	75	0	0	 0	0	 6	 2	0	2	2	3	3	3	2	2	4	 1	 4	0	0	 0	 4	 1	 3	 0	1	 1	0	3	2	1	2	6	5	12	#_1         
 1972	7	1	3	0	2	1	-1	75	0	1	 1	0	 3	 2	4	2	3	2	1	3	0	2	1	 1	 4	0	0	 2	 1	 1	 0	 2	0	 2	5	4	1	2	2	9	5	 9	#_2         
 1973	7	1	3	0	2	1	-1	75	0	0	 5	1	 0	 1	1	0	5	2	0	2	2	2	5	 2	 7	0	0	 0	 3	 2	 5	 4	1	 2	3	1	1	1	1	7	4	 5	#_3         
 1974	7	1	3	0	2	1	-1	75	0	0	 0	1	 4	 2	4	2	3	4	3	1	0	1	6	 4	 3	0	0	 1	 3	 2	 3	 3	1	 0	1	1	1	5	1	4	3	 8	#_4         
 1975	7	1	3	0	2	1	-1	75	0	0	 3	0	 2	 1	4	2	2	4	1	2	5	1	4	 4	 5	0	0	 0	 0	 5	 0	 2	3	 2	1	5	3	2	1	1	3	 7	#_5         
 1976	7	1	3	0	2	1	-1	75	0	0	 1	0	 3	 0	2	2	4	3	3	1	1	0	5	 7	10	0	0	 0	 0	 5	 3	 1	0	 2	2	1	1	3	1	6	8	 0	#_6         
 1977	7	1	3	0	2	1	-1	75	0	0	 0	0	 3	 1	3	2	5	4	0	4	1	3	7	 5	 6	0	0	 1	 2	 2	 0	 4	2	 1	1	1	1	1	2	4	2	 7	#_7         
 1978	7	1	3	0	2	1	-1	75	0	0	 1	2	 1	 2	0	1	0	2	1	2	0	1	9	 4	 7	0	0	 1	 1	 2	 1	 0	4	 3	5	2	2	4	1	7	3	 6	#_8         
 1979	7	1	3	0	2	1	-1	75	1	2	 0	2	 0	 1	1	2	7	2	4	1	1	3	8	 7	 0	0	0	 3	 1	 1	 0	 0	0	 3	1	1	2	3	1	5	6	 6	#_9         
 1980	7	1	3	0	2	1	-1	75	0	2	 2	1	 4	 1	3	1	0	2	2	4	2	2	5	10	 0	0	0	 0	 2	 0	 1	 1	2	 1	2	3	1	5	3	6	1	 6	#_10        
 1981	7	1	3	0	2	1	-1	75	0	2	 1	2	 2	 0	2	1	3	3	3	1	0	2	8	 3	 5	0	0	 4	 3	 4	 1	 1	1	 2	2	4	2	1	2	4	3	 3	#_11        
 1982	7	1	3	0	2	1	-1	75	0	0	 0	2	 5	 3	4	0	1	0	3	3	3	1	3	 1	 7	0	0	 0	 0	 8	 3	 2	3	 1	0	1	3	4	0	5	9	 0	#_12        
 1983	7	1	3	0	2	1	-1	75	0	0	 0	9	 2	 4	2	0	1	2	0	1	0	1	5	 2	 6	0	0	 2	 4	 5	 5	 1	3	 0	2	1	3	1	3	6	3	 1	#_13        
 1984	7	1	3	0	2	1	-1	75	0	0	 0	4	 2	 1	0	5	3	2	2	1	1	0	3	 7	 6	0	0	 2	 2	 3	 6	 5	0	 3	3	0	0	1	3	3	3	 4	#_14        
 1985	7	1	3	0	2	1	-1	75	0	0	 0	6	 5	 1	4	4	1	0	3	0	0	1	6	 0	 2	0	0	 0	10	 1	 3	 3	8	 5	0	2	0	3	0	5	0	 2	#_15        
 1986	7	1	3	0	2	1	-1	75	0	6	 1	1	 6	 1	3	3	5	3	1	1	1	0	2	 6	 2	0	0	 0	 0	11	 5	 1	1	 4	0	3	1	1	0	3	3	 0	#_16        
 1987	7	1	3	0	2	1	-1	75	0	4	 1	3	 3	 4	1	5	2	2	4	3	2	2	1	 4	 0	0	0	 4	 7	 1	 3	 1	3	 2	1	1	3	1	0	2	2	 3	#_17        
 1988	7	1	3	0	2	1	-1	75	1	1	 1	6	 4	 2	5	3	2	3	2	1	0	0	4	 2	 0	0	1	 2	 2	 4	 5	 6	4	 2	2	2	1	2	0	3	2	 0	#_18        
 1989	7	1	3	0	2	1	-1	75	0	4	 5	2	 3	 4	5	5	0	1	1	1	0	0	1	 7	 0	0	0	 7	 2	 3	 4	 2	6	 2	2	0	1	2	0	2	3	 0	#_19        
 1990	7	1	3	0	2	1	-1	75	0	0	 6	1	 4	 4	5	5	2	2	2	3	2	1	0	 1	 0	0	3	 2	 4	 4	 1	 3	5	 4	2	2	0	2	1	1	3	 0	#_20        
 1991	7	1	3	0	2	1	-1	75	0	0	 4	4	 3	 3	3	4	0	1	3	1	0	2	1	 2	 0	0	1	 2	 5	 2	 9	 5	5	 3	6	1	2	1	0	1	1	 0	#_21        
 1992	7	1	3	0	2	1	-1	75	0	0	 4	1	 0	 4	2	4	6	3	2	2	1	3	1	 0	 0	0	0	 5	 1	 8	 2	 2	4	 8	3	2	1	0	0	2	4	 0	#_22        
 1993	7	1	3	0	2	1	-1	75	0	0	12	3	 5	 4	3	4	7	1	3	1	1	3	0	 0	 0	0	0	 4	 3	 5	 1	 6	1	 2	1	1	1	1	1	1	0	 0	#_23        
 1994	7	1	3	0	2	1	-1	75	0	0	13	2	 1	 2	2	2	1	3	2	2	1	0	6	 0	 1	0	0	 0	11	 1	 4	 2	5	 4	3	5	1	1	0	0	0	 0	#_24        
 1995	7	1	3	0	2	1	-1	75	1	6	 4	4	 7	 1	1	5	4	2	0	0	1	2	0	 0	 0	0	0	 0	13	 4	 4	 6	1	 2	0	1	3	2	0	1	0	 0	#_25        
 1996	7	1	3	0	2	1	-1	75	0	0	 9	9	 3	 2	5	2	1	2	1	0	0	1	1	 0	 0	0	2	 4	 8	 8	 3	 3	2	 2	3	2	1	0	1	0	0	 0	#_26        
 1997	7	1	3	0	2	1	-1	75	0	1	 2	2	10	 8	3	4	1	1	1	1	0	0	4	 0	 0	0	0	 0	 9	10	 7	 4	1	 3	1	0	1	0	1	0	0	 0	#_27        
 1998	7	1	3	0	2	1	-1	75	0	0	 1	5	 3	10	5	7	2	0	0	0	0	0	1	 0	 0	0	0	 3	 3	 5	10	10	4	 2	0	2	0	0	1	0	1	 0	#_28        
 1999	7	1	3	0	2	1	-1	75	0	0	 2	2	 6	 7	9	4	3	2	1	1	1	0	2	 0	 0	0	1	 0	 2	 4	 7	 8	6	 0	3	2	1	0	0	1	0	 0	#_29        
 2000	7	1	3	0	2	1	-1	75	0	1	 1	4	 0	 3	4	9	3	2	1	1	0	0	4	 0	 0	0	0	 8	 1	 3	 2	 2	5	10	1	5	0	1	2	2	0	 0	#_30        
 2001	7	1	3	0	2	1	-1	75	0	1	 1	0	 2	 3	4	2	2	4	2	4	0	0	6	 0	 0	0	0	 4	 1	 4	 3	 8	8	 6	2	1	4	1	0	2	0	 0	#_31        
 1977	7	2	3	0	2	1	-1	75	1	3	 2	0	 4	 0	3	0	1	4	3	3	3	1	3	 6	 0	0	3	 1	 3	 0	 1	 2	3	 1	1	1	4	3	2	4	9	 0	#_32        
 1980	7	2	3	0	2	1	-1	75	2	2	 5	4	 5	 3	0	1	1	2	1	2	1	0	2	 2	 4	0	2	 5	 2	 4	 1	 3	1	 3	1	0	2	3	2	2	2	 5	#_33        
 1983	7	2	3	0	2	1	-1	75	3	2	 2	8	 7	 2	4	2	0	0	1	2	0	1	3	 2	 0	0	3	 3	 3	 5	 4	 2	2	 2	3	0	1	0	2	1	2	 3	#_34        
 1986	7	2	3	0	2	1	-1	75	2	3	 7	2	 3	 3	1	3	1	0	0	0	0	0	2	 1	 3	0	0	13	 8	 5	 4	 3	2	 3	0	1	0	1	0	1	3	 0	#_35        
 1989	7	2	3	0	2	1	-1	75	1	4	 3	5	 6	 4	2	1	3	0	0	2	1	3	0	 0	 0	0	7	 5	 4	 6	 4	 0	0	 1	2	3	4	4	0	0	0	 0	#_36        
 1992	7	2	3	0	2	1	-1	75	5	3	 8	5	 2	 7	4	0	2	2	1	0	0	0	2	 0	 0	0	1	 6	 1	 5	 5	 3	3	 4	2	1	0	0	2	1	0	 0	#_37        
 1995	7	2	3	0	2	1	-1	75	0	7	 8	6	 4	 2	2	1	2	0	2	3	0	0	3	 0	 0	0	4	 9	 8	 4	 2	 2	3	 1	1	0	1	0	0	0	0	 0	#_38        
 1998	7	2	3	0	2	1	-1	75	1	3	 2	4	 8	 7	5	1	0	2	0	1	0	0	0	 0	 0	0	3	 5	 3	 6	 9	 7	3	 1	4	0	0	0	0	0	0	 0	#_39        
 2001	7	2	3	0	2	1	-1	75	4	0	 6	4	 6	 2	2	5	7	3	3	0	0	0	0	 0	 0	0	4	 1	 5	 2	 2	 5	2	 4	5	0	3	0	0	0	0	 0	#_40        
-9999	0	0	0	0	0	0	 0	 0	0	0	 0	0	 0	 0	0	0	0	0	0	0	0	0	0	 0	 0	0	0	 0	 0	 0	 0	 0	0	 0	0	0	0	0	0	0	0	 0	#_terminator
#
#_MeanSize_at_Age_obs
1 #_use_MeanSize_at_Age_obs
#_Yr	Seas	FltSvy	Gender	Part	AgeErr	Ignore	f1	f2	f3	f4	f5	f6	f7	f8	f9	f10	f11	f12	f13	f14	f15	f20	f25	m1	m2	m3	m4	m5	m6	m7	m8	m9	m10	m11	m12	m13	m14	m15	m20	m25	N_f1	N_f2	N_f3	N_f4	N_f5	N_f6	N_f7	N_f8	N_f9	N_f10	N_f11	N_f12	N_f13	N_f14	N_f15	N_f20	N_f25	N_m1	N_m2	N_m3	N_m4	N_m5	N_m6	N_m7	N_m8	N_m9	N_m10	N_m11	N_m12	N_m13	N_m14	N_m15	N_m20	N_m25
1971 	7	1	3	0	1	2	31.9039	39.4382	45.0858	48.7702	53.2375	56.2457	60.1383	58.4361	61.5209	62.8559	65.6758	64.8852	67.2229	68.6019	69.0964	71.0591	72.0724	33.0831	40.1137	44.5948	47.716 	51.236 	54.604 	58.5022	61.3294	60.159 	65.6837	65.451 	66.9884	65.8494	68.1431	70.1591	70.3785	67.7941	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_1         
1995 	7	1	3	0	1	2	31.3486	39.9965	44.2719	51.6818	50.9666	56.258 	55.9557	59.216 	60.9405	65.4793	63.5548	64.9283	68.4167	67.4752	69.1719	72.5611	71.2887	31.3039	40.1064	45.0389	49.2129	53.6996	53.9628	57.6517	59.442 	60.1625	64.5896	63.2386	62.3926	68.0589	67.508 	66.4669	71.0534	71.3799	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_2         
1971 	7	2	3	0	1	2	35.3682	39.2792	42.704 	46.5672	49.7756	54.7155	56.4227	56.2333	59.1226	61.0537	61.2039	64.2389	67.3094	67.7134	67.8818	70.9669	72.3631	36.4511	38.3563	44.3589	45.7481	50.6404	52.8377	56.0314	57.0005	60.0922	63.5861	61.7602	62.4945	64.4272	66.7293	70.5418	70.3161	73.345 	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_3         
1995 	7	2	3	0	1	2	35.7218	40.232 	42.6851	48.1023	50.8674	52.9789	59.1572	57.5642	59.7784	61.0001	62.9541	64.3357	63.8145	67.1654	69.3654	72.2791	71.5172	34.6338	38.9806	42.4882	46.2659	50.1763	54.6744	55.9742	59.6323	60.087 	61.2714	63.4478	62.1925	64.1135	68.1546	69.6632	67.733 	70.048 	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_4         
-9999	0	0	0	0	0	0	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	#_terminator
0 #_N_environ_variables
0 #_N_sizefreq_methods
0 #_do_tags
0 #_morphcomp_data
0 #_use_selectivity_priors
#
999