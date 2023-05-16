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
 1972	1	1	201.072	0.01	#_3         
 1973	1	1	1005.71	0.01	#_4         
 1974	1	1	 982.63	0.01	#_5         
 1975	1	1	1979.28	0.01	#_6         
 1976	1	1	2981.95	0.01	#_7         
 1977	1	1	3996.24	0.01	#_8         
 1978	1	1	4932.52	0.01	#_9         
 1979	1	1	5978.93	0.01	#_10        
 1980	1	1	8040.61	0.01	#_11        
 1981	1	1	9944.23	0.01	#_12        
 1982	1	1	9931.99	0.01	#_13        
 1983	1	1	10032.9	0.01	#_14        
 1984	1	1	10132.2	0.01	#_15        
 1985	1	1	10159.9	0.01	#_16        
 1986	1	1	9973.22	0.01	#_17        
 1987	1	1	10167.4	0.01	#_18        
 1988	1	1	9001.84	0.01	#_19        
 1989	1	1	7858.88	0.01	#_20        
 1990	1	1	6977.39	0.01	#_21        
 1991	1	1	6007.22	0.01	#_22        
 1992	1	1	4031.08	0.01	#_23        
 1993	1	1	3980.52	0.01	#_24        
 1994	1	1	4043.82	0.01	#_25        
 1995	1	1	3963.15	0.01	#_26        
 1996	1	1	3978.28	0.01	#_27        
 1997	1	1	3003.09	0.01	#_28        
 1998	1	1	 2960.4	0.01	#_29        
 1999	1	1	2985.86	0.01	#_30        
 2000	1	1	2937.86	0.01	#_31        
 2001	1	1	2985.69	0.01	#_32        
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
 1977	7	2	 141789	0.3	#_1         
 1980	7	2	 199606	0.3	#_2         
 1983	7	2	60453.6	0.3	#_3         
 1986	7	2	70199.5	0.3	#_4         
 1989	7	2	73805.1	0.3	#_5         
 1992	7	2	32355.7	0.3	#_6         
 1995	7	2	61009.2	0.3	#_7         
 1998	7	2	37741.9	0.3	#_8         
 2001	7	2	54907.9	0.3	#_9         
 1990	7	3	5.45003	0.7	#_10        
 1991	7	3	2.86001	0.7	#_11        
 1992	7	3	6.15186	0.7	#_12        
 1993	7	3	10.1056	0.7	#_13        
 1994	7	3	1.29982	0.7	#_14        
 1995	7	3	13.6582	0.7	#_15        
 1996	7	3	7.40479	0.7	#_16        
 1997	7	3	5.26818	0.7	#_17        
 1998	7	3	3.60135	0.7	#_18        
 1999	7	3	 1.3337	0.7	#_19        
 2000	7	3	23.3125	0.7	#_20        
 2001	7	3	6.92894	0.7	#_21        
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
 1971	7	1	3	0	125	0	0	0	0	0	0	0	0	0	4	1	3	 2	1	 3	1	 7	 3	 3	10	12	 9	 8	0	0	0	0	0	0	0	0	0	0	3	1	1	 0	4	1	 2	5	 3	 4	6	 6	15	 4	 3	0	0	#_1         
 1972	7	1	3	0	125	0	0	0	0	0	0	0	0	0	4	3	2	 4	7	 1	1	 4	 5	 5	 8	 7	 7	 4	4	0	0	0	0	0	0	0	0	0	1	0	1	 1	2	2	 0	7	 3	 4	3	16	 6	 6	 7	0	0	#_2         
 1973	7	1	3	0	125	0	0	0	0	0	0	0	0	0	0	0	0	 7	2	 3	4	 2	 1	 5	13	11	 8	10	0	0	0	0	0	0	0	0	0	0	0	0	0	11	1	1	 3	5	 4	 5	3	 6	11	 5	 3	1	0	#_3         
 1974	7	1	3	0	125	0	0	0	0	0	0	0	0	0	2	2	2	 1	4	 1	2	 6	 4	 4	 8	17	 8	 8	0	0	0	0	0	0	0	0	0	1	0	0	1	 2	0	2	 4	1	 4	 1	5	12	12	 6	 5	0	0	#_4         
 1975	7	1	3	0	125	0	0	0	0	0	0	0	1	0	1	0	1	 2	0	 3	2	 3	 4	 7	10	 8	 9	 9	0	0	0	0	0	0	0	0	0	0	0	4	1	 1	1	4	 6	3	 2	 3	7	11	13	 8	 1	0	0	#_5         
 1976	7	1	3	0	125	0	0	0	0	0	0	0	2	1	0	0	3	 0	1	 3	4	 4	 4	 4	 7	14	 4	 5	3	0	0	0	0	0	0	0	3	0	0	0	1	 0	3	2	 4	3	 3	 2	7	11	10	 7	10	0	0	#_6         
 1977	7	1	3	0	125	0	0	0	0	0	0	0	5	0	0	1	1	 3	2	 5	5	 4	 3	10	 9	12	 7	 3	1	0	0	0	0	0	0	2	0	0	0	0	1	 4	1	0	 1	3	 7	 8	2	 7	 9	 6	 3	0	0	#_7         
 1978	7	1	3	0	125	0	0	0	0	0	0	1	0	2	0	2	1	 1	0	 3	2	 2	 2	 4	10	14	12	 4	6	0	0	0	0	0	0	0	0	2	0	3	0	 2	3	0	 5	3	 1	 4	8	13	11	 2	 2	0	0	#_8         
 1979	7	1	3	0	125	0	0	0	0	0	0	0	0	0	0	6	2	 6	2	 1	4	 1	 4	 5	11	 8	 7	 0	1	0	0	0	0	0	0	0	0	0	3	3	3	 1	1	2	 3	2	10	 5	7	11	 4	10	 1	1	0	#_9         
 1980	7	1	3	0	125	0	0	0	0	0	0	0	3	1	2	3	1	 3	3	 2	1	 3	 4	 4	 9	 8	 5	 3	7	0	0	0	0	0	0	0	0	0	2	0	3	 5	2	2	 3	4	 1	11	2	 9	 7	 7	 5	0	0	#_10        
 1981	7	1	3	0	125	0	0	0	0	0	0	0	1	0	2	0	0	 5	3	 1	3	 3	 4	 6	12	15	 5	 5	0	0	0	0	0	0	0	2	1	3	1	0	0	 0	4	5	 4	4	 3	 8	4	 5	 7	 6	 3	0	0	#_11        
 1982	7	1	3	0	125	0	0	0	0	0	0	0	0	5	1	0	0	 3	5	 6	7	 6	 7	 4	10	 8	 9	 0	0	0	0	0	0	0	0	0	0	3	1	0	2	 3	3	2	 3	8	 2	 2	3	 9	 5	 6	 2	0	0	#_12        
 1983	7	1	3	0	125	0	0	0	0	0	0	0	0	0	0	4	1	 3	3	 5	9	 6	 0	 8	 9	11	 7	 2	0	0	0	0	0	0	0	0	0	0	0	1	1	 1	4	3	 2	2	 4	 6	7	 5	11	 4	 6	0	0	#_13        
 1984	7	1	3	0	125	0	0	0	0	0	0	1	0	0	1	3	0	 2	3	 5	3	 6	 3	 4	 7	 6	 4	 7	0	0	0	0	0	0	0	0	0	3	1	2	0	 0	6	2	 3	6	11	 4	3	10	11	 8	 0	0	0	#_14        
 1985	7	1	3	0	125	0	0	0	0	0	0	0	0	2	0	2	3	 3	1	 5	2	 5	 9	 5	11	 9	 4	 6	4	0	0	0	0	0	0	0	0	3	2	1	0	 2	1	2	 5	3	 7	 6	2	 5	 9	 5	 1	0	0	#_15        
 1986	7	1	3	0	125	0	0	0	0	0	2	1	0	1	0	1	1	 2	8	 3	3	 4	 2	 4	13	 8	 5	 3	0	0	0	0	0	0	0	1	0	0	0	1	0	 3	1	3	 6	9	 2	 8	4	 6	 9	 5	 6	0	0	#_16        
 1987	7	1	3	0	125	0	0	0	0	1	0	0	0	0	2	1	1	 6	3	 5	4	 3	 3	 4	14	 8	 5	 4	0	0	0	0	0	0	0	0	0	3	0	1	1	 4	1	4	 3	8	 5	 3	6	 7	 7	 5	 3	0	0	#_17        
 1988	7	1	3	0	125	0	0	0	0	0	2	2	2	1	0	2	1	 3	3	 3	2	11	 4	 6	 4	 5	 7	 4	0	0	0	0	0	0	0	1	2	3	2	1	1	 4	4	3	 5	3	 2	 6	5	12	 4	 5	 0	0	0	#_18        
 1989	7	1	3	0	125	0	0	0	0	0	1	0	0	2	2	2	1	 2	1	 2	3	 3	 6	 6	10	 9	 3	 5	0	0	0	0	0	0	0	0	8	1	3	5	4	 3	1	4	 5	4	 4	 3	0	 7	 7	 5	 3	0	0	#_19        
 1990	7	1	3	0	125	0	0	0	0	0	0	0	3	2	3	3	2	10	9	 2	7	 5	 3	 2	 6	 8	 4	 2	0	0	0	0	0	0	0	1	1	1	2	4	2	 3	2	4	 5	2	 3	 7	5	 5	 4	 2	 1	0	0	#_20        
 1991	7	1	3	0	125	0	0	0	0	0	0	0	1	0	1	2	0	 4	5	 6	4	 6	 5	 5	 9	 2	 5	 0	0	0	0	0	0	0	1	0	2	0	3	1	4	 5	1	7	 9	3	 8	 5	1	 7	 5	 8	 0	0	0	#_21        
 1992	7	1	3	0	125	0	0	0	0	2	0	1	1	1	1	6	3	 5	1	 2	5	 7	 2	 3	 7	 2	 4	 0	0	0	0	0	0	0	0	0	0	3	0	2	4	 7	5	4	 6	7	 6	 5	8	10	 3	 2	 0	0	0	#_22        
 1993	7	1	3	0	125	0	0	0	0	0	0	3	0	1	2	1	6	 4	1	 8	5	 3	10	 3	 6	 8	 4	 0	0	0	0	0	0	0	0	0	0	3	2	2	1	 2	1	5	11	4	 7	 9	4	 5	 0	 2	 2	0	0	#_23        
 1994	7	1	3	0	125	0	0	0	0	0	0	0	0	0	7	0	2	 2	4	 4	4	 9	 3	 3	 8	 6	 2	 0	0	0	0	0	0	0	0	0	0	5	1	0	1	 6	5	5	 3	5	 8	 7	7	 9	 5	 4	 0	0	0	#_24        
 1995	7	1	3	0	125	0	0	0	0	0	0	1	1	0	2	3	1	 3	7	 6	0	 4	 7	 8	11	 7	 0	 0	0	0	0	0	0	0	4	0	2	2	2	6	3	 1	2	0	 2	3	 6	 6	7	 7	 9	 2	 0	0	0	#_25        
 1996	7	1	3	0	125	0	0	0	1	0	0	1	1	1	4	2	2	 5	4	 5	8	 2	 6	 8	 5	 8	 6	 0	0	0	0	0	0	0	0	0	2	2	1	3	2	 3	4	2	 3	5	 5	 6	5	 7	 4	 1	 1	0	0	#_26        
 1997	7	1	3	0	125	0	0	0	1	1	0	1	1	2	1	1	2	 4	2	 8	8	 3	 4	 2	12	15	 0	 0	0	0	0	0	0	0	0	2	1	1	0	5	4	 1	2	2	 7	4	 2	 5	1	11	 3	 6	 0	0	0	#_27        
 1998	7	1	3	0	125	0	0	0	0	0	1	1	1	1	2	4	0	 0	4	 3	2	 8	 7	 8	 9	 8	 1	 3	0	0	0	0	0	0	1	0	1	1	0	1	2	 2	3	3	 8	3	 3	 5	8	 9	 7	 5	 0	0	0	#_28        
 1999	7	1	3	0	125	0	0	0	0	3	0	0	0	2	2	2	3	 2	2	 5	6	 4	 5	 6	 6	 8	 2	 0	0	0	0	0	0	0	0	0	6	0	3	3	2	 4	2	1	 6	7	 6	 6	8	 7	 3	 3	 0	0	0	#_29        
 2000	7	1	3	0	125	0	0	0	0	0	1	0	2	2	3	3	3	 2	5	 6	4	 5	 1	 1	 7	12	 0	 0	0	0	0	0	0	0	0	0	0	3	1	4	0	 4	5	2	10	3	 9	 6	3	 9	 1	 5	 3	0	0	#_30        
 2001	7	1	3	0	125	0	0	0	0	2	1	0	0	2	5	1	1	 2	5	 9	0	 5	 6	 5	 7	 2	 3	 0	0	0	0	0	0	0	0	0	2	0	1	3	0	 6	2	5	 2	3	 8	 4	7	13	 8	 5	 0	0	0	#_31        
 1977	7	2	3	0	125	0	0	0	0	3	2	1	4	2	4	2	2	 5	3	 2	3	 2	 2	 2	 8	 6	11	 0	0	0	0	0	0	0	0	0	9	1	2	1	2	 1	2	2	 3	2	 3	 4	4	 7	13	 2	 3	0	0	#_32        
 1980	7	2	3	0	125	0	0	0	0	2	1	0	0	5	3	5	6	 6	4	 3	2	 3	 2	 5	 5	 5	 6	 2	3	0	0	0	0	0	0	2	2	2	3	5	0	 2	9	6	 4	2	 1	 1	2	 4	 7	 3	 2	0	0	#_33        
 1983	7	2	3	0	125	0	0	0	0	2	4	1	4	2	2	2	3	 3	3	10	6	 6	 3	 1	 8	 8	 9	 0	0	0	0	0	0	0	0	0	2	4	3	2	1	 1	3	7	 3	3	 3	 0	6	 4	 6	 0	 0	0	0	#_34        
 1986	7	2	3	0	125	0	0	0	0	3	5	4	7	1	1	4	3	 1	3	 4	5	 3	 4	 0	 7	 5	 3	 1	0	0	0	0	0	1	2	2	0	4	4	1	1	 2	3	4	 3	6	 4	 3	2	 9	 6	 4	 0	0	0	#_35        
 1989	7	2	3	0	125	0	0	0	0	0	4	0	3	3	4	7	3	 4	1	 5	1	 1	 4	 0	 7	 3	 8	 0	0	0	0	0	0	3	1	1	2	5	3	4	5	 4	7	6	 5	4	 4	 1	4	 8	 0	 0	 0	0	0	#_36        
 1992	7	2	3	0	125	0	0	0	0	0	5	3	6	2	5	3	6	 1	3	 1	2	 6	 3	 3	 5	 6	 0	 0	0	0	0	0	0	0	0	3	4	2	9	2	5	 4	5	4	 3	5	 3	 1	1	 3	 8	 3	 0	0	0	#_37        
 1995	7	2	3	0	125	0	0	0	0	3	3	3	2	9	5	3	3	 3	3	 3	3	 4	 3	 4	 2	 1	 2	 0	0	0	0	0	0	0	5	5	1	5	7	6	3	 3	2	3	 3	5	 1	 4	3	 3	 3	 4	 0	0	0	#_38        
 1998	7	2	3	0	125	0	0	0	2	0	1	3	7	4	4	4	8	 8	2	 0	2	 3	 2	 3	 6	 4	 4	 0	0	0	0	0	0	0	1	3	2	6	2	1	2	 8	2	4	 4	3	 4	 5	2	 5	 3	 1	 0	0	0	#_39        
 2001	7	2	3	0	125	0	0	0	0	0	0	2	0	2	3	4	3	 5	5	 3	0	 7	 8	 3	 5	 5	 0	 0	0	0	0	0	0	0	3	1	1	3	4	4	5	 7	4	4	 6	1	 9	 5	3	 6	 4	 0	 0	0	0	#_40        
-9999	0	0	0	0	  0	0	0	0	0	0	0	0	0	0	0	0	0	 0	0	 0	0	 0	 0	 0	 0	 0	 0	 0	0	0	0	0	0	0	0	0	0	0	0	0	0	 0	0	0	 0	0	 0	 0	0	 0	 0	 0	 0	0	0	#_terminator
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
 1971	7	1	3	0	2	1	-1	75	0	 0	0	0	5	1	3	2	 1	3	2	0	2	2	 5	 5	 2	0	0	2	2	2	1	1	0	3	3	4	2	0	1	5	 7	 9	#_1         
 1972	7	1	3	0	2	1	-1	75	0	 0	0	2	2	1	2	2	 1	1	5	5	3	0	 8	 6	 4	0	0	4	0	1	0	1	1	2	2	2	2	3	2	5	 3	 5	#_2         
 1973	7	1	3	0	2	1	-1	75	0	 0	0	1	1	1	3	2	 1	1	5	3	0	1	 2	 6	 6	0	0	0	2	1	4	1	3	4	1	3	3	2	3	5	 7	 3	#_3         
 1974	7	1	3	0	2	1	-1	75	0	 0	1	0	2	6	1	4	 2	3	2	1	1	1	 5	 5	10	0	0	3	0	2	1	1	3	1	2	2	2	0	3	3	 4	 4	#_4         
 1975	7	1	3	0	2	1	-1	75	0	 0	0	0	3	3	1	2	 2	2	0	1	1	1	 4	 5	 5	0	0	0	0	4	4	3	2	1	2	1	1	2	2	5	 7	11	#_5         
 1976	7	1	3	0	2	1	-1	75	0	 0	0	1	1	2	1	1	 3	0	1	2	2	1	10	 1	 9	0	0	0	0	5	5	0	4	5	2	1	2	1	2	4	 9	 0	#_6         
 1977	7	1	3	0	2	1	-1	75	0	 0	0	0	8	2	1	3	 0	4	1	0	3	2	 7	 2	 8	0	0	2	1	2	2	1	1	3	1	2	3	0	3	5	 5	 3	#_7         
 1978	7	1	3	0	2	1	-1	75	0	 0	4	2	0	0	0	4	 0	1	1	2	0	1	 5	 5	 5	0	0	4	2	2	2	1	2	2	2	4	1	5	2	7	 6	 3	#_8         
 1979	7	1	3	0	2	1	-1	75	0	 1	1	1	3	4	1	0	 0	2	0	3	4	1	 3	11	 0	0	0	2	2	3	1	2	1	4	2	2	0	2	4	7	 4	 4	#_9         
 1980	7	1	3	0	2	1	-1	75	0	 1	1	3	1	2	0	0	 2	0	2	1	3	4	 5	11	 0	0	0	0	3	1	2	1	1	2	2	2	2	2	5	6	 3	 7	#_10        
 1981	7	1	3	0	2	1	-1	75	0	 2	1	2	7	3	3	1	 5	0	1	2	2	2	 4	 3	 3	0	0	3	3	2	6	2	1	1	1	1	1	1	1	4	 2	 5	#_11        
 1982	7	1	3	0	2	1	-1	75	0	 3	0	5	3	2	0	0	 3	0	3	0	3	1	 8	 1	 6	0	0	0	0	4	5	4	1	1	0	2	3	0	1	5	11	 0	#_12        
 1983	7	1	3	0	2	1	-1	75	0	 0	0	2	4	0	4	6	 5	1	0	1	0	3	 5	 3	 9	0	0	1	2	3	4	3	1	3	2	1	0	0	1	4	 6	 1	#_13        
 1984	7	1	3	0	2	1	-1	75	0	 0	0	9	1	4	2	3	 5	3	1	1	0	2	 5	 5	 7	0	0	1	4	3	2	3	4	2	1	0	0	0	1	2	 1	 3	#_14        
 1985	7	1	3	0	2	1	-1	75	0	 0	0	6	2	6	2	0	11	0	0	1	1	1	 3	 2	 0	0	0	0	3	4	2	3	5	5	2	2	1	1	0	7	 2	 3	#_15        
 1986	7	1	3	0	2	1	-1	75	0	 3	2	3	2	6	1	3	 2	3	3	2	0	0	 7	 3	 3	0	0	0	0	8	4	2	3	0	2	2	1	1	2	3	 4	 0	#_16        
 1987	7	1	3	0	2	1	-1	75	0	 2	0	1	2	4	3	2	 5	2	2	0	2	1	 3	 8	 0	0	0	2	2	7	4	2	3	1	2	3	4	0	0	2	 2	 4	#_17        
 1988	7	1	3	0	2	1	-1	75	2	 2	2	3	4	2	3	1	 1	3	1	2	2	3	 3	 5	 0	0	1	1	2	2	2	3	5	4	1	2	4	2	2	4	 1	 0	#_18        
 1989	7	1	3	0	2	1	-1	75	0	 3	2	4	3	3	2	2	 0	1	5	1	1	0	 1	 2	 0	0	0	8	7	3	4	4	1	1	4	3	2	2	2	1	 3	 0	#_19        
 1990	7	1	3	0	2	1	-1	75	0	 0	4	7	5	4	1	2	 0	2	2	3	0	2	 6	 0	 0	0	1	3	3	5	2	3	5	2	1	0	1	3	1	4	 3	 0	#_20        
 1991	7	1	3	0	2	1	-1	75	0	 0	7	4	4	6	4	4	 2	3	1	1	1	0	 2	 0	 0	0	0	4	4	5	5	1	1	3	3	2	2	0	1	2	 3	 0	#_21        
 1992	7	1	3	0	2	1	-1	75	0	 0	5	7	4	4	3	3	 2	0	1	2	2	1	 4	 0	 1	0	0	3	3	2	3	3	6	2	1	3	0	0	2	6	 2	 0	#_22        
 1993	7	1	3	0	2	1	-1	75	0	 0	7	1	9	5	5	4	 1	1	1	3	1	2	 0	 0	 0	0	0	2	2	6	7	3	5	3	2	2	0	1	1	1	 0	 0	#_23        
 1994	7	1	3	0	2	1	-1	75	0	 0	4	2	2	3	6	4	 6	2	0	0	0	1	 2	 2	 1	0	0	0	6	3	3	6	3	9	2	2	2	4	0	0	 0	 0	#_24        
 1995	7	1	3	0	2	1	-1	75	3	 1	1	3	2	1	3	5	 6	1	3	0	1	5	 0	 0	 0	0	0	0	6	5	1	4	2	8	6	4	2	0	0	2	 0	 0	#_25        
 1996	7	1	3	0	2	1	-1	75	0	 0	8	0	2	3	5	4	 0	4	3	2	0	0	 4	 3	 0	0	0	2	1	5	4	2	7	4	4	1	2	0	1	4	 0	 0	#_26        
 1997	7	1	3	0	2	1	-1	75	0	 5	6	1	4	6	3	0	 3	1	1	0	0	0	 2	 0	 0	0	0	0	5	5	4	4	4	3	4	4	2	3	5	0	 0	 0	#_27        
 1998	7	1	3	0	2	1	-1	75	1	 0	1	1	6	1	1	1	 1	6	4	4	1	1	 9	 0	 0	0	0	4	4	3	5	3	2	0	4	5	1	3	3	0	 0	 0	#_28        
 1999	7	1	3	0	2	1	-1	75	4	 2	3	2	5	3	1	2	 3	2	1	0	4	0	 7	 0	 0	0	1	0	3	5	4	7	6	0	2	0	1	2	2	3	 0	 0	#_29        
 2000	7	1	3	0	2	1	-1	75	0	 0	4	0	2	3	5	4	 3	3	4	6	5	1	 5	 0	 0	0	0	3	5	4	4	2	0	5	2	0	1	2	1	1	 0	 0	#_30        
 2001	7	1	3	0	2	1	-1	75	0	 3	2	3	1	4	3	4	 3	1	1	4	3	0	 5	 0	 0	0	0	4	2	4	4	2	3	3	3	3	1	2	0	7	 0	 0	#_31        
 1977	7	2	3	0	2	1	-1	75	6	 3	1	3	3	2	0	0	 2	1	1	2	2	1	 4	 9	 0	0	4	3	2	0	1	3	2	4	1	4	0	2	0	5	 4	 0	#_32        
 1980	7	2	3	0	2	1	-1	75	1	 3	2	5	5	2	1	1	 1	2	2	1	0	1	 4	 2	 4	0	4	1	5	4	3	2	0	2	1	3	1	2	0	5	 4	 1	#_33        
 1983	7	2	3	0	2	1	-1	75	5	 5	6	3	0	2	4	3	 2	0	0	1	0	0	 3	 4	 0	0	2	2	5	3	3	6	1	1	2	0	0	1	2	0	 3	 6	#_34        
 1986	7	2	3	0	2	1	-1	75	4	 4	2	1	5	6	2	3	 3	1	4	1	1	0	 3	 1	 4	0	0	6	2	4	1	0	4	3	3	2	1	0	0	1	 3	 0	#_35        
 1989	7	2	3	0	2	1	-1	75	4	 6	7	2	5	5	0	2	 2	1	0	1	2	2	 0	 0	 0	0	2	8	5	3	4	1	2	4	1	1	0	5	0	0	 0	 0	#_36        
 1992	7	2	3	0	2	1	-1	75	1	 2	8	4	5	3	5	3	 2	1	0	2	1	0	 3	 0	 0	0	4	4	7	5	2	5	1	0	1	1	2	1	0	2	 0	 0	#_37        
 1995	7	2	3	0	2	1	-1	75	0	16	3	4	4	4	1	3	 1	1	2	1	0	0	 3	 0	 0	0	2	7	4	2	1	4	1	3	1	1	0	0	1	5	 0	 0	#_38        
 1998	7	2	3	0	2	1	-1	75	6	 3	6	2	6	1	3	3	 1	1	0	2	1	6	 0	 0	 0	0	2	4	4	2	3	6	2	0	4	2	0	5	0	0	 0	 0	#_39        
 2001	7	2	3	0	2	1	-1	75	1	 1	3	8	1	5	3	6	 1	1	2	0	2	0	 1	 0	 0	0	2	4	4	5	4	3	3	5	1	0	3	3	1	2	 0	 0	#_40        
-9999	0	0	0	0	0	0	 0	 0	0	 0	0	0	0	0	0	0	 0	0	0	0	0	0	 0	 0	 0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	 0	 0	#_terminator
#
#_MeanSize_at_Age_obs
1 #_use_MeanSize_at_Age_obs
#_Yr	Seas	FltSvy	Gender	Part	AgeErr	Ignore	f1	f2	f3	f4	f5	f6	f7	f8	f9	f10	f11	f12	f13	f14	f15	f20	f25	m1	m2	m3	m4	m5	m6	m7	m8	m9	m10	m11	m12	m13	m14	m15	m20	m25	N_f1	N_f2	N_f3	N_f4	N_f5	N_f6	N_f7	N_f8	N_f9	N_f10	N_f11	N_f12	N_f13	N_f14	N_f15	N_f20	N_f25	N_m1	N_m2	N_m3	N_m4	N_m5	N_m6	N_m7	N_m8	N_m9	N_m10	N_m11	N_m12	N_m13	N_m14	N_m15	N_m20	N_m25
1971 	7	1	3	0	1	2	32.1037	38.7814	45.231 	48.7116	52.6218	53.4769	57.6791	61.0819	62.4796	62.9894	62.6697	65.684 	68.9097	67.6258	70.3532	70.2438	72.2751	33.3657	40.1748	46.2275	49.1117	51.4135	57.4925	57.6154	62.6012	59.5827	63.4964	64.4537	64.0764	66.1962	65.2526	69.4403	68.3104	70.6586	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_1         
1995 	7	1	3	0	1	2	31.744 	37.6039	43.7434	48.2698	51.6554	54.8838	58.4651	58.7441	61.3604	62.5776	64.7682	66.8698	67.3618	66.3352	69.8952	72.8695	72.7435	31.4975	42.2317	45.7004	50.0916	52.5406	56.2257	58.8705	60.0648	63.5556	64.0855	65.3689	65.4029	65.4744	69.5126	65.5199	68.1484	69.5554	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_2         
1971 	7	2	3	0	1	2	33.7972	39.3177	42.7876	47.7547	50.1806	52.7223	56.2733	58.9778	59.5545	63.2337	63.1536	62.8984	64.7725	67.3171	67.691 	72.092 	72.8464	34.7982	39.0357	43.73  	46.9839	51.1222	55.1038	54.9673	59.6111	59.8883	62.6642	64.1262	63.5538	67.6545	66.5283	66.7234	66.6295	70.0291	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_3         
1995 	7	2	3	0	1	2	34.2244	39.1808	43.9534	48.6516	49.287 	52.0752	57.0073	57.6461	59.5565	60.4897	62.3911	64.0829	65.2327	67.2676	69.1483	69.8509	71.7478	35.0597	40.2895	43.6153	46.0404	49.2676	55.0143	55.4377	58.6444	58.1973	63.6368	63.2379	63.0549	64.0817	65.1082	67.1494	70.418 	71.8542	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	#_4         
-9999	0	0	0	0	0	0	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0      	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	0 	#_terminator
0 #_N_environ_variables
0 #_N_sizefreq_methods
0 #_do_tags
0 #_morphcomp_data
0 #_use_selectivity_priors
#
999