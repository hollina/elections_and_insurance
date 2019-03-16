	gen StateFIPS=.					
			
	replace StateFIPS=	15	if 	state=="HI"
	replace StateFIPS=	1	if 	state=="AL"
	replace StateFIPS=	2	if 	state=="AK"
	replace StateFIPS=	4	if 	state=="AZ"
	replace StateFIPS=	5	if 	state=="AR"
	replace StateFIPS=	6	if 	state=="CA"
	replace StateFIPS=	8	if 	state=="CO"
	replace StateFIPS=	9	if 	state=="CT"
	replace StateFIPS=	10	if 	state=="DE"
	replace StateFIPS=	11	if 	state=="DC"
	replace StateFIPS=	12	if 	state=="FL"
	replace StateFIPS=	13	if 	state=="GA"
	replace StateFIPS=	16	if 	state=="ID"
	replace StateFIPS=	17	if 	state=="IL"
	replace StateFIPS=	18	if 	state=="IN"
	replace StateFIPS=	19	if 	state=="IA"
	replace StateFIPS=	20	if 	state=="KS"
	replace StateFIPS=	21	if 	state=="KY"
	replace StateFIPS=	22	if 	state=="LA"
	replace StateFIPS=	23	if 	state=="ME"
	replace StateFIPS=	24	if 	state=="MD"
	replace StateFIPS=	25	if 	state=="MA"
	replace StateFIPS=	26	if 	state=="MI"
	replace StateFIPS=	27	if 	state=="MN"
	replace StateFIPS=	28	if 	state=="MS"
	replace StateFIPS=	29	if 	state=="MO"
	replace StateFIPS=	30	if 	state=="MT"
	replace StateFIPS=	31	if 	state=="NE"
	replace StateFIPS=	32	if 	state=="NV"
	replace StateFIPS=	33	if 	state=="NH"
	replace StateFIPS=	34	if 	state=="NJ"
	replace StateFIPS=	35	if 	state=="NM"
	replace StateFIPS=	36	if 	state=="NY"
	replace StateFIPS=	37	if 	state=="NC"
	replace StateFIPS=	38	if 	state=="ND"
	replace StateFIPS=	39	if 	state=="OH"
	replace StateFIPS=	40	if 	state=="OK"
	replace StateFIPS=	41	if 	state=="OR"
	replace StateFIPS=	42	if 	state=="PA"
	replace StateFIPS=	44	if 	state=="RI"
	replace StateFIPS=	45	if 	state=="SC"
	replace StateFIPS=	46	if 	state=="SD"
	replace StateFIPS=	47	if 	state=="TN"
	replace StateFIPS=	48	if 	state=="TX"
	replace StateFIPS=	49	if 	state=="UT"
	replace StateFIPS=	50	if 	state=="VT"
	replace StateFIPS=	51	if 	state=="VA"
	replace StateFIPS=	53	if 	state=="WA"
	replace StateFIPS=	54	if 	state=="WV"
	replace StateFIPS=	55	if 	state=="WI"
	replace StateFIPS=	56	if 	state=="WY"
//Add State Name
	gen state_name=""
	
	replace state_name=	"ALASKA"	if StateFIPS==	2
	replace state_name=	"ALABAMA"	if StateFIPS==	1
	replace state_name=	"ARKANSAS"	if StateFIPS==	5
	replace state_name=	"AMERICAN SAMOA"	if StateFIPS==	60
	replace state_name=	"ARIZONA"	if StateFIPS==	4
	replace state_name=	"CALIFORNIA"	if StateFIPS==	6
	replace state_name=	"COLORADO"	if StateFIPS==	8
	replace state_name=	"CONNECTICUT"	if StateFIPS==	9	
	replace state_name=	"DISTRICT OF COLUMBIA"	if StateFIPS==	11
	replace state_name=	"DELAWARE"	if StateFIPS==	10
	replace state_name=	"FLORIDA"	if StateFIPS==	12
	replace state_name=	"GEORGIA"	if StateFIPS==	13
	replace state_name=	"GUAM"	if StateFIPS==	66
	replace state_name=	"HAWAII"	if StateFIPS==	15
	replace state_name=	"IOWA"	if StateFIPS==	19
	replace state_name=	"IDAHO"	if StateFIPS==	16
	replace state_name=	"ILLINOIS"	if StateFIPS==	17
	replace state_name=	"INDIANA"	if StateFIPS==	18
	replace state_name=	"KANSAS"	if StateFIPS==	20
	replace state_name=	"KENTUCKY"	if StateFIPS==	21
	replace state_name=	"LOUISIANA"	if StateFIPS==	22
	replace state_name=	"MASSACHUSETTS"	if StateFIPS==	25
	replace state_name=	"MARYLAND"	if StateFIPS==	24
	replace state_name=	"MAINE"	if StateFIPS==	23
	replace state_name=	"MICHIGAN"	if StateFIPS==	26
	replace state_name=	"MINNESOTA"	if StateFIPS==	27
	replace state_name=	"MISSOURI"	if StateFIPS==	29
	replace state_name=	"MISSISSIPPI"	if StateFIPS==	28
	replace state_name=	"MONTANA"	if StateFIPS==	30
	replace state_name=	"NORTH CAROLINA"	if StateFIPS==	37
	replace state_name=	"NORTH DAKOTA"	if StateFIPS==	38
	replace state_name=	"NEBRASKA"	if StateFIPS==	31
	replace state_name=	"NEW HAMPSHIRE"	if StateFIPS==	33
	replace state_name=	"NEW JERSEY"	if StateFIPS==	34
	replace state_name=	"NEW MEXICO"	if StateFIPS==	35
	replace state_name=	"NEVADA"	if StateFIPS==	32
	replace state_name=	"NEW YORK"	if StateFIPS==	36
	replace state_name=	"OHIO"	if StateFIPS==	39
	replace state_name=	"OKLAHOMA"	if StateFIPS==	40
	replace state_name=	"OREGON"	if StateFIPS==	41
	replace state_name=	"PENNSYLVANIA"	if StateFIPS==	42
	replace state_name=	"PUERTO RICO"	if StateFIPS==	72
	replace state_name=	"RHODE ISLAND"	if StateFIPS==	44
	replace state_name=	"SOUTH CAROLINA"	if StateFIPS==	45
	replace state_name=	"SOUTH DAKOTA"	if StateFIPS==	46
	replace state_name=	"TENNESSEE"	if StateFIPS==	47
	replace state_name=	"TEXAS"	if StateFIPS==	48
	replace state_name=	"UTAH"	if StateFIPS==	49
	replace state_name=	"VIRGINIA"	if StateFIPS==	51
	replace state_name=	"VIRGIN ISLANDS"	if StateFIPS==	78
	replace state_name=	"VERMONT"	if StateFIPS==	50
	replace state_name=	"WASHINGTON"	if StateFIPS==	53
	replace state_name=	"WISCONSIN"	if StateFIPS==	55
	replace state_name=	"WEST VIRGINIA"	if StateFIPS==	54
	replace state_name=	"WYOMING"	if StateFIPS==	56

	replace state_name=proper(state_name)
	
	gen COUNTY = County_Name
	replace COUNTY = subinstr(COUNTY,"County","",.)
	replace COUNTY = subinstr(COUNTY,"Parish","",.)
	replace COUNTY = trim(COUNTY)
//Gen County FIPS Code
	gen CountyFIPS=.
// Replace with FIPS Code when county name is known
	replace CountyFIPS=001 if COUNTY=="Autauga" & StateFIPS==01
	replace CountyFIPS=003 if COUNTY=="Baldwin" & StateFIPS==01
	replace CountyFIPS=005 if COUNTY=="Barbour" & StateFIPS==01
	replace CountyFIPS=007 if COUNTY=="Bibb" & StateFIPS==01
	replace CountyFIPS=009 if COUNTY=="Blount" & StateFIPS==01
	replace CountyFIPS=011 if COUNTY=="Bullock" & StateFIPS==01
	replace CountyFIPS=013 if COUNTY=="Butler" & StateFIPS==01
	replace CountyFIPS=015 if COUNTY=="Calhoun" & StateFIPS==01
	replace CountyFIPS=017 if COUNTY=="Chambers" & StateFIPS==01
	replace CountyFIPS=019 if COUNTY=="Cherokee" & StateFIPS==01
	replace CountyFIPS=021 if COUNTY=="Chilton" & StateFIPS==01
	replace CountyFIPS=023 if COUNTY=="Choctaw" & StateFIPS==01
	replace CountyFIPS=025 if COUNTY=="Clarke" & StateFIPS==01
	replace CountyFIPS=027 if COUNTY=="Clay" & StateFIPS==01
	replace CountyFIPS=029 if COUNTY=="Cleburne" & StateFIPS==01
	replace CountyFIPS=031 if COUNTY=="Coffee" & StateFIPS==01
	replace CountyFIPS=033 if COUNTY=="Colbert" & StateFIPS==01
	replace CountyFIPS=035 if COUNTY=="Conecuh" & StateFIPS==01
	replace CountyFIPS=037 if COUNTY=="Coosa" & StateFIPS==01
	replace CountyFIPS=039 if COUNTY=="Covington" & StateFIPS==01
	replace CountyFIPS=041 if COUNTY=="Crenshaw" & StateFIPS==01
	replace CountyFIPS=043 if COUNTY=="Cullman" & StateFIPS==01
	replace CountyFIPS=045 if COUNTY=="Dale" & StateFIPS==01
	replace CountyFIPS=047 if COUNTY=="Dallas" & StateFIPS==01
	replace CountyFIPS=049 if COUNTY=="De Kalb" & StateFIPS==01
	replace CountyFIPS=049 if COUNTY=="DeKalb" & StateFIPS==01

	replace CountyFIPS=051 if COUNTY=="Elmore" & StateFIPS==01
	replace CountyFIPS=053 if COUNTY=="Escambia" & StateFIPS==01
	replace CountyFIPS=055 if COUNTY=="Etowah" & StateFIPS==01
	replace CountyFIPS=057 if COUNTY=="Fayette" & StateFIPS==01
	replace CountyFIPS=059 if COUNTY=="Franklin" & StateFIPS==01
	replace CountyFIPS=061 if COUNTY=="Geneva" & StateFIPS==01
	replace CountyFIPS=063 if COUNTY=="Greene" & StateFIPS==01
	replace CountyFIPS=065 if COUNTY=="Hale" & StateFIPS==01
	replace CountyFIPS=067 if COUNTY=="Henry" & StateFIPS==01
	replace CountyFIPS=069 if COUNTY=="Houston" & StateFIPS==01
	replace CountyFIPS=071 if COUNTY=="Jackson" & StateFIPS==01
	replace CountyFIPS=073 if COUNTY=="Jefferson" & StateFIPS==01
	replace CountyFIPS=075 if COUNTY=="Lamar" & StateFIPS==01
	replace CountyFIPS=077 if COUNTY=="Lauderdale" & StateFIPS==01
	replace CountyFIPS=079 if COUNTY=="Lawrence" & StateFIPS==01
	replace CountyFIPS=081 if COUNTY=="Lee" & StateFIPS==01
	replace CountyFIPS=083 if COUNTY=="Limestone" & StateFIPS==01
	replace CountyFIPS=085 if COUNTY=="Lowndes" & StateFIPS==01
	replace CountyFIPS=087 if COUNTY=="Macon" & StateFIPS==01
	replace CountyFIPS=089 if COUNTY=="Madison" & StateFIPS==01
	replace CountyFIPS=091 if COUNTY=="Marengo" & StateFIPS==01
	replace CountyFIPS=093 if COUNTY=="Marion" & StateFIPS==01
	replace CountyFIPS=095 if COUNTY=="Marshall" & StateFIPS==01
	replace CountyFIPS=097 if COUNTY=="Mobile" & StateFIPS==01
	replace CountyFIPS=099 if COUNTY=="Monroe" & StateFIPS==01
	replace CountyFIPS=101 if COUNTY=="Montgomery" & StateFIPS==01
	replace CountyFIPS=103 if COUNTY=="Morgan" & StateFIPS==01
	replace CountyFIPS=105 if COUNTY=="Perry" & StateFIPS==01
	replace CountyFIPS=107 if COUNTY=="Pickens" & StateFIPS==01
	replace CountyFIPS=109 if COUNTY=="Pike" & StateFIPS==01
	replace CountyFIPS=111 if COUNTY=="Randolph" & StateFIPS==01
	replace CountyFIPS=113 if COUNTY=="Russell" & StateFIPS==01
	replace CountyFIPS=115 if COUNTY=="St Clair" & StateFIPS==01
	replace CountyFIPS=115 if COUNTY=="St. Clair" & StateFIPS==01
	replace CountyFIPS=115 if COUNTY=="Saint Clair" & StateFIPS==01
	replace CountyFIPS=117 if COUNTY=="Shelby" & StateFIPS==01
	replace CountyFIPS=119 if COUNTY=="Sumter" & StateFIPS==01
	replace CountyFIPS=121 if COUNTY=="Talladega" & StateFIPS==01
	replace CountyFIPS=123 if COUNTY=="Tallapoosa" & StateFIPS==01
	replace CountyFIPS=125 if COUNTY=="Tuscaloosa" & StateFIPS==01
	replace CountyFIPS=127 if COUNTY=="Walker" & StateFIPS==01
	replace CountyFIPS=129 if COUNTY=="Washington" & StateFIPS==01
	replace CountyFIPS=131 if COUNTY=="Wilcox" & StateFIPS==01
	replace CountyFIPS=133 if COUNTY=="Winston" & StateFIPS==01
	replace CountyFIPS=013 if COUNTY=="Aleutians East" & StateFIPS==02
	replace CountyFIPS=013 if COUNTY=="Aleutians East Borough" & StateFIPS==02

	replace CountyFIPS=016 if COUNTY=="Aleutians West" & StateFIPS==02
	replace CountyFIPS=016 if COUNTY=="Aleutians West Census Area" & StateFIPS==02

	replace CountyFIPS=020 if COUNTY=="Anchorage" & StateFIPS==02
	replace CountyFIPS=020 if COUNTY=="Anchorage Municipality" & StateFIPS==02

	replace CountyFIPS=050 if COUNTY=="Bethel" & StateFIPS==02
	replace CountyFIPS=050 if COUNTY=="Bethel Census Area" & StateFIPS==02

	replace CountyFIPS=060 if COUNTY=="Bristol Bay" & StateFIPS==02
	replace CountyFIPS=060 if COUNTY=="Bristol Bay Borough" & StateFIPS==02

	replace CountyFIPS=068 if COUNTY=="Denali" & StateFIPS==02
	
	replace CountyFIPS=068 if COUNTY=="Denali Borough" & StateFIPS==02
	replace CountyFIPS=070 if COUNTY=="Dillingham" & StateFIPS==02
	replace CountyFIPS=090 if COUNTY=="Fairbanks North Star" & StateFIPS==02
	replace CountyFIPS=100 if COUNTY=="Haines" & StateFIPS==02
	replace CountyFIPS=110 if COUNTY=="Juneau" & StateFIPS==02
	replace CountyFIPS=122 if COUNTY=="Kenai Peninsula" & StateFIPS==02
	replace CountyFIPS=130 if COUNTY=="Ketchikan Gateway" & StateFIPS==02
	replace CountyFIPS=150 if COUNTY=="Kodiak Island" & StateFIPS==02
	replace CountyFIPS=164 if COUNTY=="Lake and Peninsula" & StateFIPS==02
	replace CountyFIPS=164 if COUNTY=="Lake And Peninsula" & StateFIPS==02
	replace CountyFIPS=170 if COUNTY=="Matanuska Susitna" & StateFIPS==02
		replace CountyFIPS=170 if COUNTY=="Matanuska-Susitna" & StateFIPS==02

	replace CountyFIPS=180 if COUNTY=="Nome" & StateFIPS==02
	replace CountyFIPS=185 if COUNTY=="North Slope" & StateFIPS==02
	replace CountyFIPS=188 if COUNTY=="Northwest Arctic" & StateFIPS==02
		replace CountyFIPS=188 if COUNTY=="Northwest Artic" & StateFIPS==02

	replace CountyFIPS=198 if COUNTY=="Prince of Wales Hyder" & StateFIPS==02
	replace CountyFIPS=198 if COUNTY=="Prince Of Wales Hyder" & StateFIPS==02
	replace CountyFIPS=198 if COUNTY=="Prince of Whales-Hyder" & StateFIPS==02
	replace CountyFIPS=198 if COUNTY=="Prince Of Wales-Hyder" & StateFIPS==02
	replace CountyFIPS=201 if COUNTY=="Prince Wales Ketchikan" & StateFIPS==02
	replace CountyFIPS=220 if COUNTY=="Sitka" & StateFIPS==02
	replace CountyFIPS=232 if COUNTY=="Skagway Hoonah Angoon" & StateFIPS==02
	replace CountyFIPS=232 if COUNTY=="Skagway" & StateFIPS==02
	replace CountyFIPS=232 if COUNTY=="Shagway" & StateFIPS==02
	replace CountyFIPS=232 if COUNTY=="Hoonah Angoon" & StateFIPS==02
		replace CountyFIPS=232 if COUNTY=="Hoonah-Angoon" & StateFIPS==02

	replace CountyFIPS=240 if COUNTY=="Southeast Fairbanks" & StateFIPS==02
	replace CountyFIPS=261 if COUNTY=="Valdez Cordova" & StateFIPS==02
		replace CountyFIPS=261 if COUNTY=="Valdez-Cordova" & StateFIPS==02

	replace CountyFIPS=270 if COUNTY=="Wade Hampton" & StateFIPS==02
	replace CountyFIPS=280 if COUNTY=="Wrangell Petersburg" & StateFIPS==02
	replace CountyFIPS=280 if COUNTY=="Petersburg" & StateFIPS==02
	replace CountyFIPS=280 if COUNTY=="Wrangell" & StateFIPS==02
		replace CountyFIPS=280 if COUNTY=="Wrangell City And Borough" & StateFIPS==02
		replace CountyFIPS=280 if COUNTY=="Wrangell City and Borough" & StateFIPS==02
	replace CountyFIPS=282 if COUNTY=="Yakutat" & StateFIPS==02
	replace CountyFIPS=282 if COUNTY=="Yakutat Borough" & StateFIPS==02
	replace CountyFIPS=290 if COUNTY=="Yukon Koyukuk" & StateFIPS==02
	
	replace CountyFIPS=290 if COUNTY=="Yukon-Koyukuk" & StateFIPS==02
	replace CountyFIPS=001 if COUNTY=="Apache" & StateFIPS==04
	replace CountyFIPS=003 if COUNTY=="Cochise" & StateFIPS==04
	replace CountyFIPS=005 if COUNTY=="Coconino" & StateFIPS==04
	replace CountyFIPS=007 if COUNTY=="Gila" & StateFIPS==04
	replace CountyFIPS=009 if COUNTY=="Graham" & StateFIPS==04
	replace CountyFIPS=011 if COUNTY=="Greenlee" & StateFIPS==04
	replace CountyFIPS=012 if COUNTY=="La Paz" & StateFIPS==04
		replace CountyFIPS=012 if COUNTY=="Lapaz" & StateFIPS==04

	replace CountyFIPS=013 if COUNTY=="Maricopa" & StateFIPS==04
	replace CountyFIPS=015 if COUNTY=="Mohave" & StateFIPS==04
	replace CountyFIPS=017 if COUNTY=="Navajo" & StateFIPS==04
	replace CountyFIPS=017 if COUNTY=="NAVAJO" & StateFIPS==04
	replace CountyFIPS=019 if COUNTY=="Pima" & StateFIPS==04
	replace CountyFIPS=021 if COUNTY=="Pinal" & StateFIPS==04
	replace CountyFIPS=023 if COUNTY=="Santa Cruz" & StateFIPS==04
	replace CountyFIPS=025 if COUNTY=="Yavapai" & StateFIPS==04
	replace CountyFIPS=027 if COUNTY=="Yuma" & StateFIPS==04
	replace CountyFIPS=001 if COUNTY=="Arkansas" & StateFIPS==05
	replace CountyFIPS=003 if COUNTY=="Ashley" & StateFIPS==05
	replace CountyFIPS=005 if COUNTY=="Baxter" & StateFIPS==05
	replace CountyFIPS=007 if COUNTY=="Benton" & StateFIPS==05
	replace CountyFIPS=009 if COUNTY=="Boone" & StateFIPS==05
	replace CountyFIPS=011 if COUNTY=="Bradley" & StateFIPS==05
	replace CountyFIPS=013 if COUNTY=="Calhoun" & StateFIPS==05
	replace CountyFIPS=015 if COUNTY=="Carroll" & StateFIPS==05
	replace CountyFIPS=017 if COUNTY=="Chicot" & StateFIPS==05
	replace CountyFIPS=019 if COUNTY=="Clark" & StateFIPS==05
	replace CountyFIPS=021 if COUNTY=="Clay" & StateFIPS==05
	replace CountyFIPS=023 if COUNTY=="Cleburne" & StateFIPS==05
	replace CountyFIPS=025 if COUNTY=="Cleveland" & StateFIPS==05
	replace CountyFIPS=027 if COUNTY=="Columbia" & StateFIPS==05
	replace CountyFIPS=029 if COUNTY=="Conway" & StateFIPS==05
	replace CountyFIPS=031 if COUNTY=="Craighead" & StateFIPS==05
	replace CountyFIPS=033 if COUNTY=="Crawford" & StateFIPS==05
	replace CountyFIPS=035 if COUNTY=="Crittenden" & StateFIPS==05
	replace CountyFIPS=037 if COUNTY=="Cross" & StateFIPS==05
	replace CountyFIPS=039 if COUNTY=="Dallas" & StateFIPS==05
	replace CountyFIPS=041 if COUNTY=="Desha" & StateFIPS==05
	replace CountyFIPS=043 if COUNTY=="Drew" & StateFIPS==05
	replace CountyFIPS=045 if COUNTY=="Faulkner" & StateFIPS==05
	replace CountyFIPS=047 if COUNTY=="Franklin" & StateFIPS==05
	replace CountyFIPS=049 if COUNTY=="Fulton" & StateFIPS==05
	replace CountyFIPS=051 if COUNTY=="Garland" & StateFIPS==05
	replace CountyFIPS=053 if COUNTY=="Grant" & StateFIPS==05
	replace CountyFIPS=055 if COUNTY=="Greene" & StateFIPS==05
	replace CountyFIPS=057 if COUNTY=="Hempstead" & StateFIPS==05
	replace CountyFIPS=059 if COUNTY=="Hot Spring" & StateFIPS==05
	replace CountyFIPS=061 if COUNTY=="Howard" & StateFIPS==05
	replace CountyFIPS=063 if COUNTY=="Independence" & StateFIPS==05
	replace CountyFIPS=065 if COUNTY=="Izard" & StateFIPS==05
	replace CountyFIPS=067 if COUNTY=="Jackson" & StateFIPS==05
	replace CountyFIPS=069 if COUNTY=="Jefferson" & StateFIPS==05
	replace CountyFIPS=071 if COUNTY=="Johnson" & StateFIPS==05
	replace CountyFIPS=073 if COUNTY=="Lafayette" & StateFIPS==05
	replace CountyFIPS=075 if COUNTY=="Lawrence" & StateFIPS==05
	replace CountyFIPS=077 if COUNTY=="Lee" & StateFIPS==05
	replace CountyFIPS=079 if COUNTY=="Lincoln" & StateFIPS==05
	replace CountyFIPS=081 if COUNTY=="Little River" & StateFIPS==05
	replace CountyFIPS=083 if COUNTY=="Logan" & StateFIPS==05
	replace CountyFIPS=085 if COUNTY=="Lonoke" & StateFIPS==05
	replace CountyFIPS=087 if COUNTY=="Madison" & StateFIPS==05
	replace CountyFIPS=089 if COUNTY=="Marion" & StateFIPS==05
	replace CountyFIPS=091 if COUNTY=="Miller" & StateFIPS==05
	replace CountyFIPS=093 if COUNTY=="Mississippi" & StateFIPS==05
	replace CountyFIPS=095 if COUNTY=="Monroe" & StateFIPS==05
		replace CountyFIPS=097 if COUNTY=="Montgomery" & StateFIPS==05

	replace CountyFIPS=099 if COUNTY=="Nevada" & StateFIPS==05
	replace CountyFIPS=101 if COUNTY=="Newton" & StateFIPS==05
	replace CountyFIPS=103 if COUNTY=="Ouachita" & StateFIPS==05
	replace CountyFIPS=105 if COUNTY=="Perry" & StateFIPS==05
	replace CountyFIPS=107 if COUNTY=="Phillips" & StateFIPS==05
	replace CountyFIPS=109 if COUNTY=="Pike" & StateFIPS==05
	replace CountyFIPS=111 if COUNTY=="Poinsett" & StateFIPS==05
	replace CountyFIPS=113 if COUNTY=="Polk" & StateFIPS==05
	replace CountyFIPS=115 if COUNTY=="Pope" & StateFIPS==05
	replace CountyFIPS=117 if COUNTY=="Prairie" & StateFIPS==05
	replace CountyFIPS=119 if COUNTY=="Pulaski" & StateFIPS==05
	replace CountyFIPS=121 if COUNTY=="Randolph" & StateFIPS==05
	replace CountyFIPS=123 if COUNTY=="St Francis" & StateFIPS==05
		replace CountyFIPS=123 if COUNTY=="Saint Francis" & StateFIPS==05

		replace CountyFIPS=123 if COUNTY=="St. Francis" & StateFIPS==05
	replace CountyFIPS=125 if COUNTY=="Saline" & StateFIPS==05
	replace CountyFIPS=127 if COUNTY=="Scott" & StateFIPS==05
	replace CountyFIPS=129 if COUNTY=="Searcy" & StateFIPS==05
	replace CountyFIPS=131 if COUNTY=="Sebastian" & StateFIPS==05
	replace CountyFIPS=133 if COUNTY=="Sevier" & StateFIPS==05
	replace CountyFIPS=135 if COUNTY=="Sharp" & StateFIPS==05
	replace CountyFIPS=137 if COUNTY=="Stone" & StateFIPS==05
	replace CountyFIPS=139 if COUNTY=="Union" & StateFIPS==05
	replace CountyFIPS=141 if COUNTY=="Van Buren" & StateFIPS==05
	replace CountyFIPS=143 if COUNTY=="Washington" & StateFIPS==05
	replace CountyFIPS=145 if COUNTY=="White" & StateFIPS==05
	replace CountyFIPS=147 if COUNTY=="Woodruff" & StateFIPS==05
	replace CountyFIPS=149 if COUNTY=="Yell" & StateFIPS==05
	replace CountyFIPS=001 if COUNTY=="Alameda" & StateFIPS==06
	replace CountyFIPS=003 if COUNTY=="Alpine" & StateFIPS==06
	replace CountyFIPS=005 if COUNTY=="Amador" & StateFIPS==06
	replace CountyFIPS=007 if COUNTY=="Butte" & StateFIPS==06
	replace CountyFIPS=009 if COUNTY=="Calaveras" & StateFIPS==06
	replace CountyFIPS=011 if COUNTY=="Colusa" & StateFIPS==06
	replace CountyFIPS=013 if COUNTY=="Contra Costa" & StateFIPS==06
	replace CountyFIPS=015 if COUNTY=="Del Norte" & StateFIPS==06
	replace CountyFIPS=017 if COUNTY=="El Dorado" & StateFIPS==06
	replace CountyFIPS=019 if COUNTY=="Fresno" & StateFIPS==06
	replace CountyFIPS=021 if COUNTY=="Glenn" & StateFIPS==06
	replace CountyFIPS=023 if COUNTY=="Humboldt" & StateFIPS==06
	replace CountyFIPS=025 if COUNTY=="Imperial" & StateFIPS==06
	replace CountyFIPS=027 if COUNTY=="Inyo" & StateFIPS==06
	replace CountyFIPS=029 if COUNTY=="Kern" & StateFIPS==06
	replace CountyFIPS=031 if COUNTY=="Kings" & StateFIPS==06
	replace CountyFIPS=033 if COUNTY=="Lake" & StateFIPS==06
	replace CountyFIPS=035 if COUNTY=="Lassen" & StateFIPS==06
	replace CountyFIPS=037 if COUNTY=="Los Angeles" & StateFIPS==06
	replace CountyFIPS=039 if COUNTY=="Madera" & StateFIPS==06
	replace CountyFIPS=041 if COUNTY=="Marin" & StateFIPS==06
	replace CountyFIPS=043 if COUNTY=="Mariposa" & StateFIPS==06
	replace CountyFIPS=045 if COUNTY=="Mendocino" & StateFIPS==06
	replace CountyFIPS=047 if COUNTY=="Merced" & StateFIPS==06
	replace CountyFIPS=049 if COUNTY=="Modoc" & StateFIPS==06
	replace CountyFIPS=051 if COUNTY=="Mono" & StateFIPS==06
	replace CountyFIPS=053 if COUNTY=="Monterey" & StateFIPS==06
	replace CountyFIPS=055 if COUNTY=="Napa" & StateFIPS==06
	replace CountyFIPS=057 if COUNTY=="Nevada" & StateFIPS==06
	replace CountyFIPS=059 if COUNTY=="Orange" & StateFIPS==06
	replace CountyFIPS=061 if COUNTY=="Placer" & StateFIPS==06
	replace CountyFIPS=063 if COUNTY=="Plumas" & StateFIPS==06
	replace CountyFIPS=065 if COUNTY=="Riverside" & StateFIPS==06
	replace CountyFIPS=067 if COUNTY=="Sacramento" & StateFIPS==06
	replace CountyFIPS=069 if COUNTY=="San Benito" & StateFIPS==06
	replace CountyFIPS=071 if COUNTY=="San Bernardino" & StateFIPS==06
	replace CountyFIPS=073 if COUNTY=="San Diego" & StateFIPS==06
	replace CountyFIPS=075 if COUNTY=="San Francisco" & StateFIPS==06
	replace CountyFIPS=077 if COUNTY=="San Joaquin" & StateFIPS==06
	replace CountyFIPS=079 if COUNTY=="San Luis Obispo" & StateFIPS==06
	replace CountyFIPS=081 if COUNTY=="San Mateo" & StateFIPS==06
	replace CountyFIPS=083 if COUNTY=="Santa Barbara" & StateFIPS==06
	replace CountyFIPS=085 if COUNTY=="Santa Clara" & StateFIPS==06
	replace CountyFIPS=087 if COUNTY=="Santa Cruz" & StateFIPS==06
	replace CountyFIPS=089 if COUNTY=="Shasta" & StateFIPS==06
	replace CountyFIPS=091 if COUNTY=="Sierra" & StateFIPS==06
	replace CountyFIPS=093 if COUNTY=="Siskiyou" & StateFIPS==06
	replace CountyFIPS=095 if COUNTY=="Solano" & StateFIPS==06
	replace CountyFIPS=097 if COUNTY=="Sonoma" & StateFIPS==06
	replace CountyFIPS=099 if COUNTY=="Stanislaus" & StateFIPS==06
	replace CountyFIPS=101 if COUNTY=="Sutter" & StateFIPS==06
	replace CountyFIPS=103 if COUNTY=="Tehama" & StateFIPS==06
	replace CountyFIPS=105 if COUNTY=="Trinity" & StateFIPS==06
	replace CountyFIPS=107 if COUNTY=="Tulare" & StateFIPS==06
	replace CountyFIPS=109 if COUNTY=="Tuolumne" & StateFIPS==06
	replace CountyFIPS=111 if COUNTY=="Ventura" & StateFIPS==06
	replace CountyFIPS=113 if COUNTY=="Yolo" & StateFIPS==06
	replace CountyFIPS=115 if COUNTY=="Yuba" & StateFIPS==06
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==08
	replace CountyFIPS=003 if COUNTY=="Alamosa" & StateFIPS==08
	replace CountyFIPS=005 if COUNTY=="Arapahoe" & StateFIPS==08
	replace CountyFIPS=007 if COUNTY=="Archuleta" & StateFIPS==08
	replace CountyFIPS=009 if COUNTY=="Baca" & StateFIPS==08
	replace CountyFIPS=011 if COUNTY=="Bent" & StateFIPS==08
	replace CountyFIPS=013 if COUNTY=="Boulder" & StateFIPS==08
	replace CountyFIPS=014 if COUNTY=="Broomfield" & StateFIPS==08
	replace CountyFIPS=015 if COUNTY=="Chaffee" & StateFIPS==08
	replace CountyFIPS=017 if COUNTY=="Cheyenne" & StateFIPS==08
	replace CountyFIPS=019 if COUNTY=="Clear Creek" & StateFIPS==08
	replace CountyFIPS=021 if COUNTY=="Conejos" & StateFIPS==08
	replace CountyFIPS=023 if COUNTY=="Costilla" & StateFIPS==08
	replace CountyFIPS=025 if COUNTY=="Crowley" & StateFIPS==08
	replace CountyFIPS=027 if COUNTY=="Custer" & StateFIPS==08
	replace CountyFIPS=029 if COUNTY=="Delta" & StateFIPS==08
	replace CountyFIPS=031 if COUNTY=="Denver" & StateFIPS==08
	replace CountyFIPS=033 if COUNTY=="Dolores" & StateFIPS==08
	replace CountyFIPS=035 if COUNTY=="Douglas" & StateFIPS==08
	replace CountyFIPS=037 if COUNTY=="Eagle" & StateFIPS==08
	replace CountyFIPS=039 if COUNTY=="Elbert" & StateFIPS==08
	replace CountyFIPS=041 if COUNTY=="El Paso" & StateFIPS==08
	replace CountyFIPS=043 if COUNTY=="Fremont" & StateFIPS==08
	replace CountyFIPS=045 if COUNTY=="Garfield" & StateFIPS==08
	replace CountyFIPS=047 if COUNTY=="Gilpin" & StateFIPS==08
	replace CountyFIPS=049 if COUNTY=="Grand" & StateFIPS==08
	replace CountyFIPS=051 if COUNTY=="Gunnison" & StateFIPS==08
	replace CountyFIPS=053 if COUNTY=="Hinsdale" & StateFIPS==08
	replace CountyFIPS=055 if COUNTY=="Huerfano" & StateFIPS==08
	replace CountyFIPS=057 if COUNTY=="Jackson" & StateFIPS==08
	replace CountyFIPS=059 if COUNTY=="Jefferson" & StateFIPS==08
	replace CountyFIPS=061 if COUNTY=="Kiowa" & StateFIPS==08
	replace CountyFIPS=063 if COUNTY=="Kit Carson" & StateFIPS==08
	replace CountyFIPS=065 if COUNTY=="Lake" & StateFIPS==08
	replace CountyFIPS=067 if COUNTY=="La Plata" & StateFIPS==08
	replace CountyFIPS=069 if COUNTY=="Larimer" & StateFIPS==08
	replace CountyFIPS=071 if COUNTY=="Las Animas" & StateFIPS==08
	replace CountyFIPS=073 if COUNTY=="Lincoln" & StateFIPS==08
	replace CountyFIPS=075 if COUNTY=="Logan" & StateFIPS==08
	replace CountyFIPS=077 if COUNTY=="Mesa" & StateFIPS==08
	replace CountyFIPS=079 if COUNTY=="Mineral" & StateFIPS==08
	replace CountyFIPS=081 if COUNTY=="Moffat" & StateFIPS==08
	replace CountyFIPS=083 if COUNTY=="Montezuma" & StateFIPS==08
	replace CountyFIPS=085 if COUNTY=="Montrose" & StateFIPS==08
	replace CountyFIPS=087 if COUNTY=="Morgan" & StateFIPS==08
	replace CountyFIPS=089 if COUNTY=="Otero" & StateFIPS==08
	replace CountyFIPS=091 if COUNTY=="Ouray" & StateFIPS==08
	replace CountyFIPS=093 if COUNTY=="Park" & StateFIPS==08
	replace CountyFIPS=095 if COUNTY=="Phillips" & StateFIPS==08
	replace CountyFIPS=097 if COUNTY=="Pitkin" & StateFIPS==08
	replace CountyFIPS=099 if COUNTY=="Prowers" & StateFIPS==08
	replace CountyFIPS=101 if COUNTY=="Pueblo" & StateFIPS==08
	replace CountyFIPS=103 if COUNTY=="Rio Blanco" & StateFIPS==08
	replace CountyFIPS=105 if COUNTY=="Rio Grande" & StateFIPS==08
	replace CountyFIPS=107 if COUNTY=="Routt" & StateFIPS==08
	replace CountyFIPS=109 if COUNTY=="Saguache" & StateFIPS==08
	replace CountyFIPS=111 if COUNTY=="San Juan" & StateFIPS==08
	replace CountyFIPS=113 if COUNTY=="San Miguel" & StateFIPS==08
	replace CountyFIPS=115 if COUNTY=="Sedgwick" & StateFIPS==08
	replace CountyFIPS=117 if COUNTY=="Summit" & StateFIPS==08
	replace CountyFIPS=119 if COUNTY=="Teller" & StateFIPS==08
	replace CountyFIPS=121 if COUNTY=="Washington" & StateFIPS==08
	replace CountyFIPS=123 if COUNTY=="Weld" & StateFIPS==08
	replace CountyFIPS=125 if COUNTY=="Yuma" & StateFIPS==08
	replace CountyFIPS=001 if COUNTY=="Fairfield" & StateFIPS==09
	replace CountyFIPS=003 if COUNTY=="Hartford" & StateFIPS==09
	replace CountyFIPS=005 if COUNTY=="Litchfield" & StateFIPS==09
	replace CountyFIPS=007 if COUNTY=="Middlesex" & StateFIPS==09
	replace CountyFIPS=009 if COUNTY=="New Haven" & StateFIPS==09
	replace CountyFIPS=011 if COUNTY=="New London" & StateFIPS==09
	replace CountyFIPS=013 if COUNTY=="Tolland" & StateFIPS==09
	replace CountyFIPS=015 if COUNTY=="Windham" & StateFIPS==09
	replace CountyFIPS=001 if COUNTY=="Kent" & StateFIPS==10
	replace CountyFIPS=003 if COUNTY=="New Castle" & StateFIPS==10
	replace CountyFIPS=005 if COUNTY=="Sussex" & StateFIPS==10
	replace CountyFIPS=001 if COUNTY=="District of Columbia" & StateFIPS==11
	replace CountyFIPS=031 if COUNTY=="Montgomery" & StateFIPS==11
	replace CountyFIPS=001 if COUNTY=="Alachua" & StateFIPS==12
	replace CountyFIPS=003 if COUNTY=="Baker" & StateFIPS==12
	replace CountyFIPS=005 if COUNTY=="Bay" & StateFIPS==12
	replace CountyFIPS=007 if COUNTY=="Bradford" & StateFIPS==12
	replace CountyFIPS=009 if COUNTY=="Brevard" & StateFIPS==12
	replace CountyFIPS=011 if COUNTY=="Broward" & StateFIPS==12
	replace CountyFIPS=013 if COUNTY=="Calhoun" & StateFIPS==12
	replace CountyFIPS=015 if COUNTY=="Charlotte" & StateFIPS==12
	replace CountyFIPS=017 if COUNTY=="Citrus" & StateFIPS==12
	replace CountyFIPS=019 if COUNTY=="Clay" & StateFIPS==12
	replace CountyFIPS=021 if COUNTY=="Collier" & StateFIPS==12
	replace CountyFIPS=023 if COUNTY=="Columbia" & StateFIPS==12
	replace CountyFIPS=027 if COUNTY=="De Soto" & StateFIPS==12
		replace CountyFIPS=027 if COUNTY=="DeSoto" & StateFIPS==12
		replace CountyFIPS=027 if COUNTY=="De soto" & StateFIPS==12
	replace CountyFIPS=029 if COUNTY=="Dixie" & StateFIPS==12
	replace CountyFIPS=031 if COUNTY=="Duval" & StateFIPS==12
	replace CountyFIPS=033 if COUNTY=="Escambia" & StateFIPS==12
	replace CountyFIPS=035 if COUNTY=="Flagler" & StateFIPS==12
	replace CountyFIPS=037 if COUNTY=="Franklin" & StateFIPS==12
	replace CountyFIPS=039 if COUNTY=="Gadsden" & StateFIPS==12
	replace CountyFIPS=041 if COUNTY=="Gilchrist" & StateFIPS==12
	replace CountyFIPS=043 if COUNTY=="Glades" & StateFIPS==12
	replace CountyFIPS=045 if COUNTY=="Gulf" & StateFIPS==12
	replace CountyFIPS=047 if COUNTY=="Hamilton" & StateFIPS==12
	replace CountyFIPS=049 if COUNTY=="Hardee" & StateFIPS==12
	replace CountyFIPS=051 if COUNTY=="Hendry" & StateFIPS==12
	replace CountyFIPS=053 if COUNTY=="Hernando" & StateFIPS==12
	replace CountyFIPS=055 if COUNTY=="Highlands" & StateFIPS==12
	replace CountyFIPS=057 if COUNTY=="Hillsborough" & StateFIPS==12
	replace CountyFIPS=059 if COUNTY=="Holmes" & StateFIPS==12
	replace CountyFIPS=061 if COUNTY=="Indian River" & StateFIPS==12
	replace CountyFIPS=063 if COUNTY=="Jackson" & StateFIPS==12
	replace CountyFIPS=065 if COUNTY=="Jefferson" & StateFIPS==12
	replace CountyFIPS=067 if COUNTY=="Lafayette" & StateFIPS==12
	replace CountyFIPS=069 if COUNTY=="Lake" & StateFIPS==12
	replace CountyFIPS=071 if COUNTY=="Lee" & StateFIPS==12
	replace CountyFIPS=073 if COUNTY=="Leon" & StateFIPS==12
	replace CountyFIPS=075 if COUNTY=="Levy" & StateFIPS==12
	replace CountyFIPS=077 if COUNTY=="Liberty" & StateFIPS==12
	replace CountyFIPS=079 if COUNTY=="Madison" & StateFIPS==12
	replace CountyFIPS=081 if COUNTY=="Manatee" & StateFIPS==12
	replace CountyFIPS=083 if COUNTY=="Marion" & StateFIPS==12
	replace CountyFIPS=085 if COUNTY=="Martin" & StateFIPS==12
	replace CountyFIPS=025 if COUNTY=="Miami-Dade" & StateFIPS==12 // This has been edited to match Mueller's

	replace CountyFIPS=087 if COUNTY=="Monroe" & StateFIPS==12
	replace CountyFIPS=089 if COUNTY=="Nassau" & StateFIPS==12
	replace CountyFIPS=091 if COUNTY=="Okaloosa" & StateFIPS==12
	replace CountyFIPS=093 if COUNTY=="Okeechobee" & StateFIPS==12
	replace CountyFIPS=095 if COUNTY=="Orange" & StateFIPS==12
	replace CountyFIPS=097 if COUNTY=="Osceola" & StateFIPS==12
	replace CountyFIPS=099 if COUNTY=="Palm Beach" & StateFIPS==12
	replace CountyFIPS=101 if COUNTY=="Pasco" & StateFIPS==12
	replace CountyFIPS=103 if COUNTY=="Pinellas" & StateFIPS==12
	replace CountyFIPS=105 if COUNTY=="Polk" & StateFIPS==12
	replace CountyFIPS=107 if COUNTY=="Putnam" & StateFIPS==12
	replace CountyFIPS=109 if COUNTY=="St Johns" & StateFIPS==12
		replace CountyFIPS=109 if COUNTY=="St. Johns" & StateFIPS==12
	replace CountyFIPS=109 if COUNTY=="Saint Johns" & StateFIPS==12
	replace CountyFIPS=111 if COUNTY=="St Lucie" & StateFIPS==12
		replace CountyFIPS=111 if COUNTY=="St. Lucie" & StateFIPS==12
replace CountyFIPS=111 if COUNTY=="Saint Lucie" & StateFIPS==12
	replace CountyFIPS=113 if COUNTY=="Santa Rosa" & StateFIPS==12
	replace CountyFIPS=115 if COUNTY=="Sarasota" & StateFIPS==12
	replace CountyFIPS=117 if COUNTY=="Seminole" & StateFIPS==12
	replace CountyFIPS=119 if COUNTY=="Sumter" & StateFIPS==12
	replace CountyFIPS=121 if COUNTY=="Suwannee" & StateFIPS==12
	replace CountyFIPS=123 if COUNTY=="Taylor" & StateFIPS==12
	replace CountyFIPS=125 if COUNTY=="Union" & StateFIPS==12
	replace CountyFIPS=127 if COUNTY=="Volusia" & StateFIPS==12
	replace CountyFIPS=129 if COUNTY=="Wakulla" & StateFIPS==12
	replace CountyFIPS=131 if COUNTY=="Walton" & StateFIPS==12
	replace CountyFIPS=133 if COUNTY=="Washington" & StateFIPS==12
	replace CountyFIPS=001 if COUNTY=="Appling" & StateFIPS==13
	replace CountyFIPS=003 if COUNTY=="Atkinson" & StateFIPS==13
	replace CountyFIPS=005 if COUNTY=="Bacon" & StateFIPS==13
	replace CountyFIPS=007 if COUNTY=="Baker" & StateFIPS==13
	replace CountyFIPS=009 if COUNTY=="Baldwin" & StateFIPS==13
	replace CountyFIPS=011 if COUNTY=="Banks" & StateFIPS==13
	replace CountyFIPS=013 if COUNTY=="Barrow" & StateFIPS==13
	replace CountyFIPS=015 if COUNTY=="Bartow" & StateFIPS==13
	replace CountyFIPS=017 if COUNTY=="Ben Hill" & StateFIPS==13
	replace CountyFIPS=019 if COUNTY=="Berrien" & StateFIPS==13
	replace CountyFIPS=021 if COUNTY=="Bibb" & StateFIPS==13
	replace CountyFIPS=023 if COUNTY=="Bleckley" & StateFIPS==13
	replace CountyFIPS=025 if COUNTY=="Brantley" & StateFIPS==13
	replace CountyFIPS=027 if COUNTY=="Brooks" & StateFIPS==13
	replace CountyFIPS=029 if COUNTY=="Bryan" & StateFIPS==13
	replace CountyFIPS=031 if COUNTY=="Bulloch" & StateFIPS==13
	replace CountyFIPS=033 if COUNTY=="Burke" & StateFIPS==13
	replace CountyFIPS=035 if COUNTY=="Butts" & StateFIPS==13
	replace CountyFIPS=037 if COUNTY=="Calhoun" & StateFIPS==13
	replace CountyFIPS=039 if COUNTY=="Camden" & StateFIPS==13
	replace CountyFIPS=043 if COUNTY=="Candler" & StateFIPS==13
	replace CountyFIPS=045 if COUNTY=="Carroll" & StateFIPS==13
	replace CountyFIPS=047 if COUNTY=="Catoosa" & StateFIPS==13
	replace CountyFIPS=049 if COUNTY=="Charlton" & StateFIPS==13
	replace CountyFIPS=051 if COUNTY=="Chatham" & StateFIPS==13
	replace CountyFIPS=053 if COUNTY=="Chattahoochee" & StateFIPS==13
	replace CountyFIPS=055 if COUNTY=="Chattooga" & StateFIPS==13
	replace CountyFIPS=057 if COUNTY=="Cherokee" & StateFIPS==13
	replace CountyFIPS=059 if COUNTY=="Clarke" & StateFIPS==13
	replace CountyFIPS=061 if COUNTY=="Clay" & StateFIPS==13
	replace CountyFIPS=063 if COUNTY=="Clayton" & StateFIPS==13
	replace CountyFIPS=065 if COUNTY=="Clinch" & StateFIPS==13
	replace CountyFIPS=067 if COUNTY=="Cobb" & StateFIPS==13
	replace CountyFIPS=069 if COUNTY=="Coffee" & StateFIPS==13
	replace CountyFIPS=071 if COUNTY=="Colquitt" & StateFIPS==13
	replace CountyFIPS=073 if COUNTY=="Columbia" & StateFIPS==13
	replace CountyFIPS=075 if COUNTY=="Cook" & StateFIPS==13
	replace CountyFIPS=077 if COUNTY=="Coweta" & StateFIPS==13
	replace CountyFIPS=079 if COUNTY=="Crawford" & StateFIPS==13
	replace CountyFIPS=081 if COUNTY=="Crisp" & StateFIPS==13
	replace CountyFIPS=083 if COUNTY=="Dade" & StateFIPS==13
	replace CountyFIPS=085 if COUNTY=="Dawson" & StateFIPS==13
	replace CountyFIPS=087 if COUNTY=="Decatur" & StateFIPS==13
	replace CountyFIPS=089 if COUNTY=="De Kalb" & StateFIPS==13
		replace CountyFIPS=089 if COUNTY=="Dekalb" & StateFIPS==13

	replace CountyFIPS=091 if COUNTY=="Dodge" & StateFIPS==13
	replace CountyFIPS=093 if COUNTY=="Dooly" & StateFIPS==13
	replace CountyFIPS=095 if COUNTY=="Dougherty" & StateFIPS==13
	replace CountyFIPS=097 if COUNTY=="Douglas" & StateFIPS==13
	replace CountyFIPS=099 if COUNTY=="Early" & StateFIPS==13
	replace CountyFIPS=101 if COUNTY=="Echols" & StateFIPS==13
	replace CountyFIPS=103 if COUNTY=="Effingham" & StateFIPS==13
	replace CountyFIPS=105 if COUNTY=="Elbert" & StateFIPS==13
	replace CountyFIPS=107 if COUNTY=="Emanuel" & StateFIPS==13
	replace CountyFIPS=109 if COUNTY=="Evans" & StateFIPS==13
	replace CountyFIPS=111 if COUNTY=="Fannin" & StateFIPS==13
	replace CountyFIPS=113 if COUNTY=="Fayette" & StateFIPS==13
	replace CountyFIPS=115 if COUNTY=="Floyd" & StateFIPS==13
	replace CountyFIPS=117 if COUNTY=="Forsyth" & StateFIPS==13
	replace CountyFIPS=119 if COUNTY=="Franklin" & StateFIPS==13
	replace CountyFIPS=121 if COUNTY=="Fulton" & StateFIPS==13
	replace CountyFIPS=123 if COUNTY=="Gilmer" & StateFIPS==13
	replace CountyFIPS=125 if COUNTY=="Glascock" & StateFIPS==13
	replace CountyFIPS=127 if COUNTY=="Glynn" & StateFIPS==13
	replace CountyFIPS=127 if COUNTY=="GLYNN" & StateFIPS==13
	replace CountyFIPS=129 if COUNTY=="Gordon" & StateFIPS==13
	replace CountyFIPS=131 if COUNTY=="Grady" & StateFIPS==13
	replace CountyFIPS=133 if COUNTY=="Greene" & StateFIPS==13
	replace CountyFIPS=135 if COUNTY=="Gwinnett" & StateFIPS==13
	replace CountyFIPS=137 if COUNTY=="Habersham" & StateFIPS==13
	replace CountyFIPS=139 if COUNTY=="Hall" & StateFIPS==13
	replace CountyFIPS=141 if COUNTY=="Hancock" & StateFIPS==13
	replace CountyFIPS=143 if COUNTY=="Haralson" & StateFIPS==13
	replace CountyFIPS=145 if COUNTY=="Harris" & StateFIPS==13
	replace CountyFIPS=147 if COUNTY=="Hart" & StateFIPS==13
	replace CountyFIPS=149 if COUNTY=="Heard" & StateFIPS==13
	replace CountyFIPS=151 if COUNTY=="Henry" & StateFIPS==13
	replace CountyFIPS=153 if COUNTY=="Houston" & StateFIPS==13
	replace CountyFIPS=155 if COUNTY=="Irwin" & StateFIPS==13
	replace CountyFIPS=157 if COUNTY=="Jackson" & StateFIPS==13
	replace CountyFIPS=159 if COUNTY=="Jasper" & StateFIPS==13
	replace CountyFIPS=161 if COUNTY=="Jeff Davis" & StateFIPS==13
	replace CountyFIPS=163 if COUNTY=="Jefferson" & StateFIPS==13
	replace CountyFIPS=165 if COUNTY=="Jenkins" & StateFIPS==13
	replace CountyFIPS=167 if COUNTY=="Johnson" & StateFIPS==13
	replace CountyFIPS=169 if COUNTY=="Jones" & StateFIPS==13
	replace CountyFIPS=171 if COUNTY=="Lamar" & StateFIPS==13
	replace CountyFIPS=173 if COUNTY=="Lanier" & StateFIPS==13
	replace CountyFIPS=175 if COUNTY=="Laurens" & StateFIPS==13
	replace CountyFIPS=177 if COUNTY=="Lee" & StateFIPS==13
	replace CountyFIPS=179 if COUNTY=="Liberty" & StateFIPS==13
	replace CountyFIPS=181 if COUNTY=="Lincoln" & StateFIPS==13
	replace CountyFIPS=183 if COUNTY=="Long" & StateFIPS==13
	replace CountyFIPS=185 if COUNTY=="Lowndes" & StateFIPS==13
	replace CountyFIPS=187 if COUNTY=="Lumpkin" & StateFIPS==13
	replace CountyFIPS=189 if COUNTY=="McDuffie" & StateFIPS==13
		replace CountyFIPS=189 if COUNTY=="Mcduffie" & StateFIPS==13
	replace CountyFIPS=189 if COUNTY=="Mc Duffie" & StateFIPS==13

	replace CountyFIPS=191 if COUNTY=="Mcintosh" & StateFIPS==13
	replace CountyFIPS=191 if COUNTY=="McIntosh" & StateFIPS==13
	replace CountyFIPS=191 if COUNTY=="Mc Intosh" & StateFIPS==13
	replace CountyFIPS=193 if COUNTY=="Macon" & StateFIPS==13
	replace CountyFIPS=195 if COUNTY=="Madison" & StateFIPS==13
	replace CountyFIPS=197 if COUNTY=="Marion" & StateFIPS==13
	replace CountyFIPS=199 if COUNTY=="Meriwether" & StateFIPS==13
	replace CountyFIPS=201 if COUNTY=="Miller" & StateFIPS==13
	replace CountyFIPS=205 if COUNTY=="Mitchell" & StateFIPS==13
	replace CountyFIPS=207 if COUNTY=="Monroe" & StateFIPS==13
	replace CountyFIPS=209 if COUNTY=="Montgomery" & StateFIPS==13
	replace CountyFIPS=211 if COUNTY=="Morgan" & StateFIPS==13
	replace CountyFIPS=213 if COUNTY=="Murray" & StateFIPS==13
	replace CountyFIPS=215 if COUNTY=="Muscogee" & StateFIPS==13
	replace CountyFIPS=217 if COUNTY=="Newton" & StateFIPS==13
	replace CountyFIPS=219 if COUNTY=="Oconee" & StateFIPS==13
	replace CountyFIPS=221 if COUNTY=="Oglethorpe" & StateFIPS==13
	replace CountyFIPS=223 if COUNTY=="Paulding" & StateFIPS==13
	replace CountyFIPS=225 if COUNTY=="Peach" & StateFIPS==13
	replace CountyFIPS=227 if COUNTY=="Pickens" & StateFIPS==13
	replace CountyFIPS=229 if COUNTY=="Pierce" & StateFIPS==13
	replace CountyFIPS=231 if COUNTY=="Pike" & StateFIPS==13
	replace CountyFIPS=233 if COUNTY=="Polk" & StateFIPS==13
	replace CountyFIPS=235 if COUNTY=="Pulaski" & StateFIPS==13
	replace CountyFIPS=237 if COUNTY=="Putnam" & StateFIPS==13
	replace CountyFIPS=239 if COUNTY=="Quitman" & StateFIPS==13
	replace CountyFIPS=241 if COUNTY=="Rabun" & StateFIPS==13
	replace CountyFIPS=243 if COUNTY=="Randolph" & StateFIPS==13
	replace CountyFIPS=245 if COUNTY=="Richmond" & StateFIPS==13
	replace CountyFIPS=247 if COUNTY=="Rockdale" & StateFIPS==13
	replace CountyFIPS=249 if COUNTY=="Schley" & StateFIPS==13
	replace CountyFIPS=251 if COUNTY=="Screven" & StateFIPS==13
	replace CountyFIPS=253 if COUNTY=="Seminole" & StateFIPS==13
	replace CountyFIPS=255 if COUNTY=="Spalding" & StateFIPS==13
	replace CountyFIPS=257 if COUNTY=="Stephens" & StateFIPS==13
	replace CountyFIPS=259 if COUNTY=="Stewart" & StateFIPS==13
	replace CountyFIPS=261 if COUNTY=="Sumter" & StateFIPS==13
	replace CountyFIPS=263 if COUNTY=="Talbot" & StateFIPS==13
	replace CountyFIPS=265 if COUNTY=="Taliaferro" & StateFIPS==13
	replace CountyFIPS=267 if COUNTY=="Tattnall" & StateFIPS==13
	replace CountyFIPS=269 if COUNTY=="Taylor" & StateFIPS==13
	replace CountyFIPS=271 if COUNTY=="Telfair" & StateFIPS==13
	replace CountyFIPS=273 if COUNTY=="Terrell" & StateFIPS==13
	replace CountyFIPS=275 if COUNTY=="Thomas" & StateFIPS==13
	replace CountyFIPS=277 if COUNTY=="Tift" & StateFIPS==13
	replace CountyFIPS=279 if COUNTY=="Toombs" & StateFIPS==13
	replace CountyFIPS=281 if COUNTY=="Towns" & StateFIPS==13
	replace CountyFIPS=283 if COUNTY=="Treutlen" & StateFIPS==13
	replace CountyFIPS=285 if COUNTY=="Troup" & StateFIPS==13
	replace CountyFIPS=287 if COUNTY=="Turner" & StateFIPS==13
	replace CountyFIPS=289 if COUNTY=="Twiggs" & StateFIPS==13
	replace CountyFIPS=291 if COUNTY=="Union" & StateFIPS==13
	replace CountyFIPS=293 if COUNTY=="Upson" & StateFIPS==13
	replace CountyFIPS=295 if COUNTY=="Walker" & StateFIPS==13
	replace CountyFIPS=297 if COUNTY=="Walton" & StateFIPS==13
	replace CountyFIPS=299 if COUNTY=="Ware" & StateFIPS==13
	replace CountyFIPS=301 if COUNTY=="Warren" & StateFIPS==13
	replace CountyFIPS=303 if COUNTY=="Washington" & StateFIPS==13
	replace CountyFIPS=305 if COUNTY=="Wayne" & StateFIPS==13
	replace CountyFIPS=307 if COUNTY=="Webster" & StateFIPS==13
	replace CountyFIPS=309 if COUNTY=="Wheeler" & StateFIPS==13
	replace CountyFIPS=311 if COUNTY=="White" & StateFIPS==13
	replace CountyFIPS=313 if COUNTY=="Whitfield" & StateFIPS==13
	replace CountyFIPS=315 if COUNTY=="Wilcox" & StateFIPS==13
	replace CountyFIPS=317 if COUNTY=="Wilkes" & StateFIPS==13
	replace CountyFIPS=319 if COUNTY=="Wilkinson" & StateFIPS==13
	replace CountyFIPS=321 if COUNTY=="Worth" & StateFIPS==13
	replace CountyFIPS=321 if COUNTY=="WORTH" & StateFIPS==13
	replace CountyFIPS=001 if COUNTY=="Hawaii" & StateFIPS==15
	replace CountyFIPS=003 if COUNTY=="Honolulu" & StateFIPS==15
	replace CountyFIPS=007 if COUNTY=="Kauai" & StateFIPS==15
	replace CountyFIPS=009 if COUNTY=="Maui" & StateFIPS==15
	replace CountyFIPS=009 if COUNTY=="Kalawao" & StateFIPS==15
	replace CountyFIPS=001 if COUNTY=="Ada" & StateFIPS==16
	replace CountyFIPS=003 if COUNTY=="Adams" & StateFIPS==16
	replace CountyFIPS=005 if COUNTY=="Bannock" & StateFIPS==16
	replace CountyFIPS=007 if COUNTY=="Bear Lake" & StateFIPS==16
	replace CountyFIPS=009 if COUNTY=="Benewah" & StateFIPS==16
	replace CountyFIPS=011 if COUNTY=="Bingham" & StateFIPS==16
	replace CountyFIPS=013 if COUNTY=="Blaine" & StateFIPS==16
	replace CountyFIPS=015 if COUNTY=="Boise" & StateFIPS==16
	replace CountyFIPS=017 if COUNTY=="Bonner" & StateFIPS==16
	replace CountyFIPS=019 if COUNTY=="Bonneville" & StateFIPS==16
	replace CountyFIPS=021 if COUNTY=="Boundary" & StateFIPS==16
	replace CountyFIPS=023 if COUNTY=="Butte" & StateFIPS==16
	replace CountyFIPS=025 if COUNTY=="Camas" & StateFIPS==16
	replace CountyFIPS=027 if COUNTY=="Canyon" & StateFIPS==16
	replace CountyFIPS=029 if COUNTY=="Caribou" & StateFIPS==16
	replace CountyFIPS=031 if COUNTY=="Cassia" & StateFIPS==16
	replace CountyFIPS=033 if COUNTY=="Clark" & StateFIPS==16
	replace CountyFIPS=035 if COUNTY=="Clearwater" & StateFIPS==16
	replace CountyFIPS=037 if COUNTY=="Custer" & StateFIPS==16
	replace CountyFIPS=039 if COUNTY=="Elmore" & StateFIPS==16
	replace CountyFIPS=041 if COUNTY=="Franklin" & StateFIPS==16
	replace CountyFIPS=043 if COUNTY=="Fremont" & StateFIPS==16
	replace CountyFIPS=045 if COUNTY=="Gem" & StateFIPS==16
	replace CountyFIPS=047 if COUNTY=="Gooding" & StateFIPS==16
	replace CountyFIPS=049 if COUNTY=="Idaho" & StateFIPS==16
	replace CountyFIPS=051 if COUNTY=="Jefferson" & StateFIPS==16
	replace CountyFIPS=053 if COUNTY=="Jerome" & StateFIPS==16
	replace CountyFIPS=055 if COUNTY=="Kootenai" & StateFIPS==16
	replace CountyFIPS=057 if COUNTY=="Latah" & StateFIPS==16
	replace CountyFIPS=059 if COUNTY=="Lemhi" & StateFIPS==16
	replace CountyFIPS=061 if COUNTY=="Lewis" & StateFIPS==16
	replace CountyFIPS=063 if COUNTY=="Lincoln" & StateFIPS==16
	replace CountyFIPS=065 if COUNTY=="Madison" & StateFIPS==16
	replace CountyFIPS=067 if COUNTY=="Minidoka" & StateFIPS==16
	replace CountyFIPS=069 if COUNTY=="Nez Perce" & StateFIPS==16
	replace CountyFIPS=071 if COUNTY=="Oneida" & StateFIPS==16
	replace CountyFIPS=073 if COUNTY=="Owyhee" & StateFIPS==16
	replace CountyFIPS=075 if COUNTY=="Payette" & StateFIPS==16
	replace CountyFIPS=077 if COUNTY=="Power" & StateFIPS==16
	replace CountyFIPS=079 if COUNTY=="Shoshone" & StateFIPS==16
	replace CountyFIPS=081 if COUNTY=="Teton" & StateFIPS==16
	replace CountyFIPS=083 if COUNTY=="Twin Falls" & StateFIPS==16
	replace CountyFIPS=085 if COUNTY=="Valley" & StateFIPS==16
	replace CountyFIPS=087 if COUNTY=="Washington" & StateFIPS==16
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==17
	replace CountyFIPS=003 if COUNTY=="Alexander" & StateFIPS==17
	replace CountyFIPS=005 if COUNTY=="Bond" & StateFIPS==17
	replace CountyFIPS=007 if COUNTY=="Boone" & StateFIPS==17
	replace CountyFIPS=009 if COUNTY=="Brown" & StateFIPS==17
	replace CountyFIPS=011 if COUNTY=="Bureau" & StateFIPS==17
	replace CountyFIPS=013 if COUNTY=="Calhoun" & StateFIPS==17
	replace CountyFIPS=015 if COUNTY=="Carroll" & StateFIPS==17
	replace CountyFIPS=017 if COUNTY=="Cass" & StateFIPS==17
	replace CountyFIPS=019 if COUNTY=="Champaign" & StateFIPS==17
	replace CountyFIPS=021 if COUNTY=="Christian" & StateFIPS==17
	replace CountyFIPS=023 if COUNTY=="Clark" & StateFIPS==17
	replace CountyFIPS=025 if COUNTY=="Clay" & StateFIPS==17
	replace CountyFIPS=027 if COUNTY=="Clinton" & StateFIPS==17
	replace CountyFIPS=029 if COUNTY=="Coles" & StateFIPS==17
	replace CountyFIPS=031 if COUNTY=="Cook" & StateFIPS==17
	replace CountyFIPS=033 if COUNTY=="Crawford" & StateFIPS==17
	replace CountyFIPS=035 if COUNTY=="Cumberland" & StateFIPS==17
	replace CountyFIPS=037 if COUNTY=="De Kalb" & StateFIPS==17
	replace CountyFIPS=037 if COUNTY=="Dekalb" & StateFIPS==17

		replace CountyFIPS=037 if COUNTY=="DeKalb" & StateFIPS==17
	replace CountyFIPS=039 if COUNTY=="De Witt" & StateFIPS==17
	replace CountyFIPS=039 if COUNTY=="DeWitt" & StateFIPS==17

	replace CountyFIPS=039 if COUNTY=="Dewitt" & StateFIPS==17
	replace CountyFIPS=041 if COUNTY=="Douglas" & StateFIPS==17
	replace CountyFIPS=043 if COUNTY=="Du Page" & StateFIPS==17
		replace CountyFIPS=043 if COUNTY=="Dupage" & StateFIPS==17
		replace CountyFIPS=043 if COUNTY=="Du page" & StateFIPS==17
	replace CountyFIPS=045 if COUNTY=="Edgar" & StateFIPS==17
	replace CountyFIPS=047 if COUNTY=="Edwards" & StateFIPS==17
	replace CountyFIPS=049 if COUNTY=="Effingham" & StateFIPS==17
	replace CountyFIPS=051 if COUNTY=="Fayette" & StateFIPS==17
	replace CountyFIPS=053 if COUNTY=="Ford" & StateFIPS==17
	replace CountyFIPS=055 if COUNTY=="Franklin" & StateFIPS==17
	replace CountyFIPS=057 if COUNTY=="Fulton" & StateFIPS==17
	replace CountyFIPS=059 if COUNTY=="Gallatin" & StateFIPS==17
	replace CountyFIPS=061 if COUNTY=="Greene" & StateFIPS==17
	replace CountyFIPS=063 if COUNTY=="Grundy" & StateFIPS==17
	replace CountyFIPS=065 if COUNTY=="Hamilton" & StateFIPS==17
	replace CountyFIPS=067 if COUNTY=="Hancock" & StateFIPS==17
	replace CountyFIPS=069 if COUNTY=="Hardin" & StateFIPS==17
	replace CountyFIPS=071 if COUNTY=="Henderson" & StateFIPS==17
	replace CountyFIPS=073 if COUNTY=="Henry" & StateFIPS==17
	replace CountyFIPS=075 if COUNTY=="Iroquois" & StateFIPS==17
	replace CountyFIPS=077 if COUNTY=="Jackson" & StateFIPS==17
	replace CountyFIPS=079 if COUNTY=="Jasper" & StateFIPS==17
	replace CountyFIPS=081 if COUNTY=="Jefferson" & StateFIPS==17
	replace CountyFIPS=083 if COUNTY=="Jersey" & StateFIPS==17
	replace CountyFIPS=085 if COUNTY=="Jo Daviess" & StateFIPS==17
	replace CountyFIPS=087 if COUNTY=="Johnson" & StateFIPS==17
	replace CountyFIPS=089 if COUNTY=="Kane" & StateFIPS==17
	replace CountyFIPS=091 if COUNTY=="Kankakee" & StateFIPS==17
	replace CountyFIPS=093 if COUNTY=="Kendall" & StateFIPS==17
	replace CountyFIPS=095 if COUNTY=="Knox" & StateFIPS==17
	replace CountyFIPS=097 if COUNTY=="Lake" & StateFIPS==17
	replace CountyFIPS=099 if COUNTY=="La Salle" & StateFIPS==17
	replace CountyFIPS=099 if COUNTY=="LaSalle" & StateFIPS==17

	replace CountyFIPS=101 if COUNTY=="Lawrence" & StateFIPS==17
	replace CountyFIPS=103 if COUNTY=="Lee" & StateFIPS==17
	replace CountyFIPS=105 if COUNTY=="Livingston" & StateFIPS==17
	replace CountyFIPS=107 if COUNTY=="Logan" & StateFIPS==17
	replace CountyFIPS=109 if COUNTY=="McDonough" & StateFIPS==17
	replace CountyFIPS=109 if COUNTY=="Mcdonough" & StateFIPS==17
	replace CountyFIPS=109 if COUNTY=="Mc Donough" & StateFIPS==17
	replace CountyFIPS=111 if COUNTY=="McHenry" & StateFIPS==17
	replace CountyFIPS=111 if COUNTY=="Mc Henry" & StateFIPS==17
		replace CountyFIPS=111 if COUNTY=="Mchenry" & StateFIPS==17
	replace CountyFIPS=113 if COUNTY=="Mclean" & StateFIPS==17
		replace CountyFIPS=113 if COUNTY=="McLean" & StateFIPS==17

		replace CountyFIPS=113 if COUNTY=="Mc Lean" & StateFIPS==17
	replace CountyFIPS=115 if COUNTY=="Macon" & StateFIPS==17
	replace CountyFIPS=117 if COUNTY=="Macoupin" & StateFIPS==17
	replace CountyFIPS=119 if COUNTY=="Madison" & StateFIPS==17
	replace CountyFIPS=121 if COUNTY=="Marion" & StateFIPS==17
	replace CountyFIPS=123 if COUNTY=="Marshall" & StateFIPS==17
	replace CountyFIPS=125 if COUNTY=="Mason" & StateFIPS==17
	replace CountyFIPS=127 if COUNTY=="Massac" & StateFIPS==17
	replace CountyFIPS=129 if COUNTY=="Menard" & StateFIPS==17
	replace CountyFIPS=131 if COUNTY=="Mercer" & StateFIPS==17
	replace CountyFIPS=133 if COUNTY=="Monroe" & StateFIPS==17
	replace CountyFIPS=135 if COUNTY=="Montgomery" & StateFIPS==17
	replace CountyFIPS=137 if COUNTY=="Morgan" & StateFIPS==17
	replace CountyFIPS=139 if COUNTY=="Moultrie" & StateFIPS==17
	replace CountyFIPS=141 if COUNTY=="Ogle" & StateFIPS==17
	replace CountyFIPS=143 if COUNTY=="Peoria" & StateFIPS==17
	replace CountyFIPS=145 if COUNTY=="Perry" & StateFIPS==17
	replace CountyFIPS=147 if COUNTY=="Piatt" & StateFIPS==17
	replace CountyFIPS=149 if COUNTY=="Pike" & StateFIPS==17
	replace CountyFIPS=151 if COUNTY=="Pope" & StateFIPS==17
	replace CountyFIPS=153 if COUNTY=="Pulaski" & StateFIPS==17
	replace CountyFIPS=155 if COUNTY=="Putnam" & StateFIPS==17
	replace CountyFIPS=157 if COUNTY=="Randolph" & StateFIPS==17
	replace CountyFIPS=159 if COUNTY=="Richland" & StateFIPS==17
	replace CountyFIPS=161 if COUNTY=="Rock Island" & StateFIPS==17
	replace CountyFIPS=163 if COUNTY=="St Clair" & StateFIPS==17
			replace CountyFIPS=163 if COUNTY=="Saint Clair" & StateFIPS==17
		replace CountyFIPS=163 if COUNTY=="St. Clair" & StateFIPS==17

	replace CountyFIPS=165 if COUNTY=="Saline" & StateFIPS==17
	replace CountyFIPS=167 if COUNTY=="Sangamon" & StateFIPS==17
	replace CountyFIPS=169 if COUNTY=="Schuyler" & StateFIPS==17
	replace CountyFIPS=171 if COUNTY=="Scott" & StateFIPS==17
	replace CountyFIPS=173 if COUNTY=="Shelby" & StateFIPS==17
	replace CountyFIPS=175 if COUNTY=="Stark" & StateFIPS==17
	replace CountyFIPS=177 if COUNTY=="Stephenson" & StateFIPS==17
	replace CountyFIPS=179 if COUNTY=="Tazewell" & StateFIPS==17
	replace CountyFIPS=181 if COUNTY=="Union" & StateFIPS==17
	replace CountyFIPS=183 if COUNTY=="Vermilion" & StateFIPS==17
	replace CountyFIPS=185 if COUNTY=="Wabash" & StateFIPS==17
	replace CountyFIPS=187 if COUNTY=="Warren" & StateFIPS==17
	replace CountyFIPS=189 if COUNTY=="Washington" & StateFIPS==17
	replace CountyFIPS=191 if COUNTY=="Wayne" & StateFIPS==17
	replace CountyFIPS=193 if COUNTY=="White" & StateFIPS==17
	replace CountyFIPS=195 if COUNTY=="Whiteside" & StateFIPS==17
	replace CountyFIPS=197 if COUNTY=="Will" & StateFIPS==17
	replace CountyFIPS=199 if COUNTY=="Williamson" & StateFIPS==17
	replace CountyFIPS=201 if COUNTY=="Winnebago" & StateFIPS==17
	replace CountyFIPS=203 if COUNTY=="Woodford" & StateFIPS==17
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==18
	replace CountyFIPS=001 if COUNTY=="ADAMS" & StateFIPS==18
	replace CountyFIPS=003 if COUNTY=="Allen" & StateFIPS==18
	replace CountyFIPS=005 if COUNTY=="Bartholomew" & StateFIPS==18
	replace CountyFIPS=007 if COUNTY=="Benton" & StateFIPS==18
	replace CountyFIPS=009 if COUNTY=="Blackford" & StateFIPS==18
	replace CountyFIPS=011 if COUNTY=="Boone" & StateFIPS==18
	replace CountyFIPS=013 if COUNTY=="Brown" & StateFIPS==18
	replace CountyFIPS=015 if COUNTY=="Carroll" & StateFIPS==18
	replace CountyFIPS=017 if COUNTY=="Cass" & StateFIPS==18
	replace CountyFIPS=019 if COUNTY=="Clark" & StateFIPS==18
	replace CountyFIPS=021 if COUNTY=="Clay" & StateFIPS==18
	replace CountyFIPS=023 if COUNTY=="Clinton" & StateFIPS==18
	replace CountyFIPS=025 if COUNTY=="Crawford" & StateFIPS==18
	replace CountyFIPS=027 if COUNTY=="Daviess" & StateFIPS==18
	replace CountyFIPS=029 if COUNTY=="Dearborn" & StateFIPS==18
	replace CountyFIPS=031 if COUNTY=="Decatur" & StateFIPS==18
	replace CountyFIPS=033 if COUNTY=="De Kalb" & StateFIPS==18
		replace CountyFIPS=033 if COUNTY=="DeKalb" & StateFIPS==18

	replace CountyFIPS=035 if COUNTY=="Delaware" & StateFIPS==18
	replace CountyFIPS=037 if COUNTY=="Dubois" & StateFIPS==18
	replace CountyFIPS=039 if COUNTY=="Elkhart" & StateFIPS==18
	replace CountyFIPS=041 if COUNTY=="Fayette" & StateFIPS==18
	replace CountyFIPS=043 if COUNTY=="Floyd" & StateFIPS==18
	replace CountyFIPS=045 if COUNTY=="Fountain" & StateFIPS==18
	replace CountyFIPS=047 if COUNTY=="Franklin" & StateFIPS==18
	replace CountyFIPS=049 if COUNTY=="Fulton" & StateFIPS==18
	replace CountyFIPS=051 if COUNTY=="Gibson" & StateFIPS==18
	replace CountyFIPS=053 if COUNTY=="Grant" & StateFIPS==18
	replace CountyFIPS=055 if COUNTY=="Greene" & StateFIPS==18
	replace CountyFIPS=057 if COUNTY=="Hamilton" & StateFIPS==18
	replace CountyFIPS=059 if COUNTY=="Hancock" & StateFIPS==18
	replace CountyFIPS=061 if COUNTY=="Harrison" & StateFIPS==18
	replace CountyFIPS=063 if COUNTY=="Hendricks" & StateFIPS==18
	replace CountyFIPS=065 if COUNTY=="Henry" & StateFIPS==18
	replace CountyFIPS=067 if COUNTY=="Howard" & StateFIPS==18
	replace CountyFIPS=069 if COUNTY=="Huntington" & StateFIPS==18
	replace CountyFIPS=071 if COUNTY=="Jackson" & StateFIPS==18
	replace CountyFIPS=073 if COUNTY=="Jasper" & StateFIPS==18
	replace CountyFIPS=075 if COUNTY=="Jay" & StateFIPS==18
	replace CountyFIPS=077 if COUNTY=="Jefferson" & StateFIPS==18
	replace CountyFIPS=079 if COUNTY=="Jennings" & StateFIPS==18
	replace CountyFIPS=081 if COUNTY=="Johnson" & StateFIPS==18
	replace CountyFIPS=083 if COUNTY=="Knox" & StateFIPS==18
	replace CountyFIPS=085 if COUNTY=="Kosciusko" & StateFIPS==18
	replace CountyFIPS=087 if COUNTY=="Lagrange" & StateFIPS==18
		replace CountyFIPS=087 if COUNTY=="LaGrange" & StateFIPS==18

	replace CountyFIPS=089 if COUNTY=="Lake" & StateFIPS==18
		replace CountyFIPS=091 if COUNTY=="LaPorte" & StateFIPS==18

	replace CountyFIPS=091 if COUNTY=="La Porte" & StateFIPS==18
	replace CountyFIPS=093 if COUNTY=="Lawrence" & StateFIPS==18
	replace CountyFIPS=095 if COUNTY=="Madison" & StateFIPS==18
	replace CountyFIPS=097 if COUNTY=="Marion" & StateFIPS==18
	replace CountyFIPS=099 if COUNTY=="Marshall" & StateFIPS==18
	replace CountyFIPS=101 if COUNTY=="Martin" & StateFIPS==18
	replace CountyFIPS=103 if COUNTY=="Miami" & StateFIPS==18
	replace CountyFIPS=105 if COUNTY=="Monroe" & StateFIPS==18
	replace CountyFIPS=107 if COUNTY=="Montgomery" & StateFIPS==18
	replace CountyFIPS=109 if COUNTY=="Morgan" & StateFIPS==18
	replace CountyFIPS=111 if COUNTY=="Newton" & StateFIPS==18
	replace CountyFIPS=113 if COUNTY=="Noble" & StateFIPS==18
	replace CountyFIPS=115 if COUNTY=="Ohio" & StateFIPS==18
	replace CountyFIPS=117 if COUNTY=="Orange" & StateFIPS==18
	replace CountyFIPS=119 if COUNTY=="Owen" & StateFIPS==18
	replace CountyFIPS=121 if COUNTY=="Parke" & StateFIPS==18
	replace CountyFIPS=123 if COUNTY=="Perry" & StateFIPS==18
	replace CountyFIPS=125 if COUNTY=="Pike" & StateFIPS==18
	replace CountyFIPS=127 if COUNTY=="Porter" & StateFIPS==18
	replace CountyFIPS=129 if COUNTY=="Posey" & StateFIPS==18
	replace CountyFIPS=131 if COUNTY=="Pulaski" & StateFIPS==18
	replace CountyFIPS=133 if COUNTY=="Putnam" & StateFIPS==18
	replace CountyFIPS=135 if COUNTY=="Randolph" & StateFIPS==18
	replace CountyFIPS=137 if COUNTY=="Ripley" & StateFIPS==18
	replace CountyFIPS=139 if COUNTY=="Rush" & StateFIPS==18
		replace CountyFIPS=141 if COUNTY=="St. Joseph" & StateFIPS==18

	replace CountyFIPS=141 if COUNTY=="St Joseph" & StateFIPS==18
	replace CountyFIPS=141 if COUNTY=="ST JOSEPH" & StateFIPS==18
	replace CountyFIPS=143 if COUNTY=="Scott" & StateFIPS==18
	replace CountyFIPS=145 if COUNTY=="Shelby" & StateFIPS==18
	replace CountyFIPS=147 if COUNTY=="Spencer" & StateFIPS==18
	replace CountyFIPS=149 if COUNTY=="Starke" & StateFIPS==18
	replace CountyFIPS=151 if COUNTY=="Steuben" & StateFIPS==18
	replace CountyFIPS=153 if COUNTY=="Sullivan" & StateFIPS==18
	replace CountyFIPS=155 if COUNTY=="Switzerland" & StateFIPS==18
	replace CountyFIPS=157 if COUNTY=="Tippecanoe" & StateFIPS==18
	replace CountyFIPS=159 if COUNTY=="Tipton" & StateFIPS==18
	replace CountyFIPS=161 if COUNTY=="Union" & StateFIPS==18
	replace CountyFIPS=163 if COUNTY=="Vanderburgh" & StateFIPS==18
	replace CountyFIPS=165 if COUNTY=="Vermillion" & StateFIPS==18
	replace CountyFIPS=167 if COUNTY=="Vigo" & StateFIPS==18
	replace CountyFIPS=169 if COUNTY=="Wabash" & StateFIPS==18
	replace CountyFIPS=171 if COUNTY=="Warren" & StateFIPS==18
	replace CountyFIPS=173 if COUNTY=="Warrick" & StateFIPS==18
	replace CountyFIPS=175 if COUNTY=="Washington" & StateFIPS==18
	replace CountyFIPS=177 if COUNTY=="Wayne" & StateFIPS==18
	replace CountyFIPS=177 if COUNTY=="WAYNE" & StateFIPS==18
	replace CountyFIPS=179 if COUNTY=="Wells" & StateFIPS==18
	replace CountyFIPS=181 if COUNTY=="White" & StateFIPS==18
	replace CountyFIPS=183 if COUNTY=="Whitley" & StateFIPS==18
	replace CountyFIPS=001 if COUNTY=="Adair" & StateFIPS==19
	replace CountyFIPS=003 if COUNTY=="Adams" & StateFIPS==19
	replace CountyFIPS=005 if COUNTY=="Allamakee" & StateFIPS==19
	replace CountyFIPS=007 if COUNTY=="Appanoose" & StateFIPS==19
	replace CountyFIPS=009 if COUNTY=="Audubon" & StateFIPS==19
	replace CountyFIPS=011 if COUNTY=="Benton" & StateFIPS==19
	replace CountyFIPS=013 if COUNTY=="Black Hawk" & StateFIPS==19
	replace CountyFIPS=015 if COUNTY=="Boone" & StateFIPS==19
	replace CountyFIPS=017 if COUNTY=="Bremer" & StateFIPS==19
	replace CountyFIPS=019 if COUNTY=="Buchanan" & StateFIPS==19
	replace CountyFIPS=021 if COUNTY=="Buena Vista" & StateFIPS==19
	replace CountyFIPS=023 if COUNTY=="Butler" & StateFIPS==19
	replace CountyFIPS=025 if COUNTY=="Calhoun" & StateFIPS==19
	replace CountyFIPS=027 if COUNTY=="Carroll" & StateFIPS==19
	replace CountyFIPS=029 if COUNTY=="Cass" & StateFIPS==19
	replace CountyFIPS=031 if COUNTY=="Cedar" & StateFIPS==19
	replace CountyFIPS=033 if COUNTY=="Cerro Gordo" & StateFIPS==19
	replace CountyFIPS=035 if COUNTY=="Cherokee" & StateFIPS==19
	replace CountyFIPS=037 if COUNTY=="Chickasaw" & StateFIPS==19
	replace CountyFIPS=039 if COUNTY=="Clarke" & StateFIPS==19
	replace CountyFIPS=041 if COUNTY=="Clay" & StateFIPS==19
	replace CountyFIPS=043 if COUNTY=="Clayton" & StateFIPS==19
	replace CountyFIPS=045 if COUNTY=="Clinton" & StateFIPS==19
	replace CountyFIPS=047 if COUNTY=="Crawford" & StateFIPS==19
	replace CountyFIPS=049 if COUNTY=="Dallas" & StateFIPS==19
	replace CountyFIPS=051 if COUNTY=="Davis" & StateFIPS==19
	replace CountyFIPS=053 if COUNTY=="Decatur" & StateFIPS==19
	replace CountyFIPS=055 if COUNTY=="Delaware" & StateFIPS==19
	replace CountyFIPS=057 if COUNTY=="Des Moines" & StateFIPS==19
	replace CountyFIPS=059 if COUNTY=="Dickinson" & StateFIPS==19
	replace CountyFIPS=061 if COUNTY=="Dubuque" & StateFIPS==19
	replace CountyFIPS=063 if COUNTY=="Emmet" & StateFIPS==19
	replace CountyFIPS=065 if COUNTY=="Fayette" & StateFIPS==19
	replace CountyFIPS=067 if COUNTY=="Floyd" & StateFIPS==19
	replace CountyFIPS=069 if COUNTY=="Franklin" & StateFIPS==19
	replace CountyFIPS=071 if COUNTY=="Fremont" & StateFIPS==19
	replace CountyFIPS=073 if COUNTY=="Greene" & StateFIPS==19
	replace CountyFIPS=075 if COUNTY=="Grundy" & StateFIPS==19
	replace CountyFIPS=077 if COUNTY=="Guthrie" & StateFIPS==19
	replace CountyFIPS=079 if COUNTY=="Hamilton" & StateFIPS==19
	replace CountyFIPS=081 if COUNTY=="Hancock" & StateFIPS==19
	replace CountyFIPS=083 if COUNTY=="Hardin" & StateFIPS==19
	replace CountyFIPS=085 if COUNTY=="Harrison" & StateFIPS==19
	replace CountyFIPS=087 if COUNTY=="Henry" & StateFIPS==19
	replace CountyFIPS=089 if COUNTY=="Howard" & StateFIPS==19
	replace CountyFIPS=091 if COUNTY=="Humboldt" & StateFIPS==19
	replace CountyFIPS=093 if COUNTY=="Ida" & StateFIPS==19
	replace CountyFIPS=095 if COUNTY=="Iowa" & StateFIPS==19
	replace CountyFIPS=097 if COUNTY=="Jackson" & StateFIPS==19
	replace CountyFIPS=099 if COUNTY=="Jasper" & StateFIPS==19
	replace CountyFIPS=101 if COUNTY=="Jefferson" & StateFIPS==19
	replace CountyFIPS=103 if COUNTY=="Johnson" & StateFIPS==19
	replace CountyFIPS=105 if COUNTY=="Jones" & StateFIPS==19
	replace CountyFIPS=107 if COUNTY=="Keokuk" & StateFIPS==19
	replace CountyFIPS=109 if COUNTY=="Kossuth" & StateFIPS==19
	replace CountyFIPS=111 if COUNTY=="Lee" & StateFIPS==19
	replace CountyFIPS=113 if COUNTY=="Linn" & StateFIPS==19
	replace CountyFIPS=115 if COUNTY=="Louisa" & StateFIPS==19
	replace CountyFIPS=117 if COUNTY=="Lucas" & StateFIPS==19
	replace CountyFIPS=119 if COUNTY=="Lyon" & StateFIPS==19
	replace CountyFIPS=121 if COUNTY=="Madison" & StateFIPS==19
	replace CountyFIPS=123 if COUNTY=="Mahaska" & StateFIPS==19
	replace CountyFIPS=125 if COUNTY=="Marion" & StateFIPS==19
	replace CountyFIPS=127 if COUNTY=="Marshall" & StateFIPS==19
	replace CountyFIPS=129 if COUNTY=="Mills" & StateFIPS==19
	replace CountyFIPS=131 if COUNTY=="Mitchell" & StateFIPS==19
	replace CountyFIPS=133 if COUNTY=="Monona" & StateFIPS==19
	replace CountyFIPS=135 if COUNTY=="Monroe" & StateFIPS==19
	replace CountyFIPS=137 if COUNTY=="Montgomery" & StateFIPS==19
	replace CountyFIPS=139 if COUNTY=="Muscatine" & StateFIPS==19
	replace CountyFIPS=139 if COUNTY=="MUSCATINE" & StateFIPS==19
	replace CountyFIPS=141 if COUNTY=="Obrien" & StateFIPS==19
		replace CountyFIPS=141 if COUNTY=="O'Brien" & StateFIPS==19

	replace CountyFIPS=143 if COUNTY=="Osceola" & StateFIPS==19
	replace CountyFIPS=145 if COUNTY=="Page" & StateFIPS==19
	replace CountyFIPS=147 if COUNTY=="Palo Alto" & StateFIPS==19
	replace CountyFIPS=149 if COUNTY=="Plymouth" & StateFIPS==19
	replace CountyFIPS=151 if COUNTY=="Pocahontas" & StateFIPS==19
	replace CountyFIPS=153 if COUNTY=="Polk" & StateFIPS==19
	replace CountyFIPS=155 if COUNTY=="Pottawattamie" & StateFIPS==19
	replace CountyFIPS=157 if COUNTY=="Poweshiek" & StateFIPS==19
	replace CountyFIPS=159 if COUNTY=="Ringgold" & StateFIPS==19
	replace CountyFIPS=161 if COUNTY=="Sac" & StateFIPS==19
	replace CountyFIPS=163 if COUNTY=="Scott" & StateFIPS==19
	replace CountyFIPS=165 if COUNTY=="Shelby" & StateFIPS==19
	replace CountyFIPS=167 if COUNTY=="Sioux" & StateFIPS==19
	replace CountyFIPS=169 if COUNTY=="Story" & StateFIPS==19
	replace CountyFIPS=171 if COUNTY=="Tama" & StateFIPS==19
	replace CountyFIPS=173 if COUNTY=="Taylor" & StateFIPS==19
	replace CountyFIPS=175 if COUNTY=="Union" & StateFIPS==19
	replace CountyFIPS=177 if COUNTY=="Van Buren" & StateFIPS==19
	replace CountyFIPS=179 if COUNTY=="Wapello" & StateFIPS==19
	replace CountyFIPS=181 if COUNTY=="Warren" & StateFIPS==19
	replace CountyFIPS=183 if COUNTY=="Washington" & StateFIPS==19
	replace CountyFIPS=185 if COUNTY=="Wayne" & StateFIPS==19
	replace CountyFIPS=187 if COUNTY=="Webster" & StateFIPS==19
	replace CountyFIPS=189 if COUNTY=="Winnebago" & StateFIPS==19
	replace CountyFIPS=191 if COUNTY=="Winneshiek" & StateFIPS==19
	replace CountyFIPS=193 if COUNTY=="Woodbury" & StateFIPS==19
	replace CountyFIPS=195 if COUNTY=="Worth" & StateFIPS==19
	replace CountyFIPS=197 if COUNTY=="Wright" & StateFIPS==19
	replace CountyFIPS=001 if COUNTY=="Allen" & StateFIPS==20
	replace CountyFIPS=003 if COUNTY=="Anderson" & StateFIPS==20
	replace CountyFIPS=005 if COUNTY=="Atchison" & StateFIPS==20
	replace CountyFIPS=007 if COUNTY=="Barber" & StateFIPS==20
	replace CountyFIPS=009 if COUNTY=="Barton" & StateFIPS==20
	replace CountyFIPS=011 if COUNTY=="Bourbon" & StateFIPS==20
	replace CountyFIPS=013 if COUNTY=="Brown" & StateFIPS==20
	replace CountyFIPS=015 if COUNTY=="Butler" & StateFIPS==20
	replace CountyFIPS=017 if COUNTY=="Chase" & StateFIPS==20
	replace CountyFIPS=019 if COUNTY=="Chautauqua" & StateFIPS==20
	replace CountyFIPS=021 if COUNTY=="Cherokee" & StateFIPS==20
	replace CountyFIPS=023 if COUNTY=="Cheyenne" & StateFIPS==20
	replace CountyFIPS=025 if COUNTY=="Clark" & StateFIPS==20
	replace CountyFIPS=027 if COUNTY=="Clay" & StateFIPS==20
	replace CountyFIPS=029 if COUNTY=="Cloud" & StateFIPS==20
	replace CountyFIPS=031 if COUNTY=="Coffey" & StateFIPS==20
	replace CountyFIPS=033 if COUNTY=="Comanche" & StateFIPS==20
	replace CountyFIPS=035 if COUNTY=="Cowley" & StateFIPS==20
	replace CountyFIPS=037 if COUNTY=="Crawford" & StateFIPS==20
	replace CountyFIPS=039 if COUNTY=="Decatur" & StateFIPS==20
	replace CountyFIPS=041 if COUNTY=="Dickinson" & StateFIPS==20
	replace CountyFIPS=043 if COUNTY=="Doniphan" & StateFIPS==20
	replace CountyFIPS=045 if COUNTY=="Douglas" & StateFIPS==20
	replace CountyFIPS=047 if COUNTY=="Edwards" & StateFIPS==20
	replace CountyFIPS=049 if COUNTY=="Elk" & StateFIPS==20
	replace CountyFIPS=051 if COUNTY=="Ellis" & StateFIPS==20
	replace CountyFIPS=053 if COUNTY=="Ellsworth" & StateFIPS==20
	replace CountyFIPS=055 if COUNTY=="Finney" & StateFIPS==20
	replace CountyFIPS=057 if COUNTY=="Ford" & StateFIPS==20
	replace CountyFIPS=059 if COUNTY=="Franklin" & StateFIPS==20
	replace CountyFIPS=061 if COUNTY=="Geary" & StateFIPS==20
	replace CountyFIPS=063 if COUNTY=="Gove" & StateFIPS==20
	replace CountyFIPS=065 if COUNTY=="Graham" & StateFIPS==20
	replace CountyFIPS=067 if COUNTY=="Grant" & StateFIPS==20
	replace CountyFIPS=069 if COUNTY=="Gray" & StateFIPS==20
	replace CountyFIPS=071 if COUNTY=="Greeley" & StateFIPS==20
	replace CountyFIPS=073 if COUNTY=="Greenwood" & StateFIPS==20
	replace CountyFIPS=075 if COUNTY=="Hamilton" & StateFIPS==20
	replace CountyFIPS=077 if COUNTY=="Harper" & StateFIPS==20
	replace CountyFIPS=079 if COUNTY=="Harvey" & StateFIPS==20
	replace CountyFIPS=081 if COUNTY=="Haskell" & StateFIPS==20
	replace CountyFIPS=083 if COUNTY=="Hodgeman" & StateFIPS==20
	replace CountyFIPS=085 if COUNTY=="Jackson" & StateFIPS==20
	replace CountyFIPS=087 if COUNTY=="Jefferson" & StateFIPS==20
	replace CountyFIPS=089 if COUNTY=="Jewell" & StateFIPS==20
	replace CountyFIPS=091 if COUNTY=="Johnson" & StateFIPS==20
	replace CountyFIPS=093 if COUNTY=="Kearny" & StateFIPS==20
	replace CountyFIPS=095 if COUNTY=="Kingman" & StateFIPS==20
	replace CountyFIPS=097 if COUNTY=="Kiowa" & StateFIPS==20
	replace CountyFIPS=099 if COUNTY=="Labette" & StateFIPS==20
	replace CountyFIPS=101 if COUNTY=="Lane" & StateFIPS==20
	replace CountyFIPS=103 if COUNTY=="Leavenworth" & StateFIPS==20
	replace CountyFIPS=105 if COUNTY=="Lincoln" & StateFIPS==20
	replace CountyFIPS=107 if COUNTY=="Linn" & StateFIPS==20
	replace CountyFIPS=109 if COUNTY=="Logan" & StateFIPS==20
	replace CountyFIPS=111 if COUNTY=="Lyon" & StateFIPS==20
	replace CountyFIPS=113 if COUNTY=="McPherson" & StateFIPS==20
		replace CountyFIPS=113 if COUNTY=="Mcpherson" & StateFIPS==20

	replace CountyFIPS=115 if COUNTY=="Marion" & StateFIPS==20
	replace CountyFIPS=117 if COUNTY=="Marshall" & StateFIPS==20
	replace CountyFIPS=119 if COUNTY=="Meade" & StateFIPS==20
	replace CountyFIPS=121 if COUNTY=="Miami" & StateFIPS==20
	replace CountyFIPS=123 if COUNTY=="Mitchell" & StateFIPS==20
	replace CountyFIPS=125 if COUNTY=="Montgomery" & StateFIPS==20
	replace CountyFIPS=127 if COUNTY=="Morris" & StateFIPS==20
	replace CountyFIPS=129 if COUNTY=="Morton" & StateFIPS==20
	replace CountyFIPS=131 if COUNTY=="Nemaha" & StateFIPS==20
	replace CountyFIPS=133 if COUNTY=="Neosho" & StateFIPS==20
	replace CountyFIPS=135 if COUNTY=="Ness" & StateFIPS==20
	replace CountyFIPS=137 if COUNTY=="Norton" & StateFIPS==20
	replace CountyFIPS=139 if COUNTY=="Osage" & StateFIPS==20
	replace CountyFIPS=141 if COUNTY=="Osborne" & StateFIPS==20
	replace CountyFIPS=143 if COUNTY=="Ottawa" & StateFIPS==20
	replace CountyFIPS=145 if COUNTY=="Pawnee" & StateFIPS==20
	replace CountyFIPS=147 if COUNTY=="Phillips" & StateFIPS==20
	replace CountyFIPS=149 if COUNTY=="Pottawatomie" & StateFIPS==20
	replace CountyFIPS=151 if COUNTY=="Pratt" & StateFIPS==20
	replace CountyFIPS=153 if COUNTY=="Rawlins" & StateFIPS==20
	replace CountyFIPS=155 if COUNTY=="Reno" & StateFIPS==20
	replace CountyFIPS=157 if COUNTY=="Republic" & StateFIPS==20
	replace CountyFIPS=159 if COUNTY=="Rice" & StateFIPS==20
	replace CountyFIPS=161 if COUNTY=="Riley" & StateFIPS==20
	replace CountyFIPS=163 if COUNTY=="Rooks" & StateFIPS==20
	replace CountyFIPS=165 if COUNTY=="Rush" & StateFIPS==20
	replace CountyFIPS=167 if COUNTY=="Russell" & StateFIPS==20
	replace CountyFIPS=169 if COUNTY=="Saline" & StateFIPS==20
	replace CountyFIPS=171 if COUNTY=="Scott" & StateFIPS==20
	replace CountyFIPS=173 if COUNTY=="Sedgwick" & StateFIPS==20
	replace CountyFIPS=175 if COUNTY=="Seward" & StateFIPS==20
	replace CountyFIPS=177 if COUNTY=="Shawnee" & StateFIPS==20
	replace CountyFIPS=179 if COUNTY=="Sheridan" & StateFIPS==20
	replace CountyFIPS=181 if COUNTY=="Sherman" & StateFIPS==20
	replace CountyFIPS=183 if COUNTY=="Smith" & StateFIPS==20
	replace CountyFIPS=185 if COUNTY=="Stafford" & StateFIPS==20
	replace CountyFIPS=187 if COUNTY=="Stanton" & StateFIPS==20
	replace CountyFIPS=189 if COUNTY=="Stevens" & StateFIPS==20
	replace CountyFIPS=191 if COUNTY=="Sumner" & StateFIPS==20
	replace CountyFIPS=193 if COUNTY=="Thomas" & StateFIPS==20
	replace CountyFIPS=195 if COUNTY=="Trego" & StateFIPS==20
	replace CountyFIPS=197 if COUNTY=="Wabaunsee" & StateFIPS==20
	replace CountyFIPS=199 if COUNTY=="Wallace" & StateFIPS==20
	replace CountyFIPS=201 if COUNTY=="Washington" & StateFIPS==20
	replace CountyFIPS=203 if COUNTY=="Wichita" & StateFIPS==20
	replace CountyFIPS=205 if COUNTY=="Wilson" & StateFIPS==20
	replace CountyFIPS=207 if COUNTY=="Woodson" & StateFIPS==20
	replace CountyFIPS=209 if COUNTY=="Wyandotte" & StateFIPS==20
	replace CountyFIPS=001 if COUNTY=="Adair" & StateFIPS==21
	replace CountyFIPS=003 if COUNTY=="Allen" & StateFIPS==21
	replace CountyFIPS=005 if COUNTY=="Anderson" & StateFIPS==21
	replace CountyFIPS=007 if COUNTY=="Ballard" & StateFIPS==21
	replace CountyFIPS=009 if COUNTY=="Barren" & StateFIPS==21
	replace CountyFIPS=011 if COUNTY=="Bath" & StateFIPS==21
	replace CountyFIPS=013 if COUNTY=="Bell" & StateFIPS==21
	replace CountyFIPS=015 if COUNTY=="Boone" & StateFIPS==21
	replace CountyFIPS=017 if COUNTY=="Bourbon" & StateFIPS==21
	replace CountyFIPS=019 if COUNTY=="Boyd" & StateFIPS==21
	replace CountyFIPS=021 if COUNTY=="Boyle" & StateFIPS==21
	replace CountyFIPS=023 if COUNTY=="Bracken" & StateFIPS==21
	replace CountyFIPS=025 if COUNTY=="Breathitt" & StateFIPS==21
	replace CountyFIPS=027 if COUNTY=="Breckinridge" & StateFIPS==21
	replace CountyFIPS=029 if COUNTY=="Bullitt" & StateFIPS==21
	replace CountyFIPS=031 if COUNTY=="Butler" & StateFIPS==21
	replace CountyFIPS=033 if COUNTY=="Caldwell" & StateFIPS==21
	replace CountyFIPS=035 if COUNTY=="Calloway" & StateFIPS==21
	replace CountyFIPS=037 if COUNTY=="Campbell" & StateFIPS==21
	replace CountyFIPS=039 if COUNTY=="Carlisle" & StateFIPS==21
	replace CountyFIPS=041 if COUNTY=="Carroll" & StateFIPS==21
	replace CountyFIPS=043 if COUNTY=="Carter" & StateFIPS==21
	replace CountyFIPS=045 if COUNTY=="Casey" & StateFIPS==21
	replace CountyFIPS=047 if COUNTY=="Christian" & StateFIPS==21
	replace CountyFIPS=049 if COUNTY=="Clark" & StateFIPS==21
	replace CountyFIPS=051 if COUNTY=="Clay" & StateFIPS==21
	replace CountyFIPS=053 if COUNTY=="Clinton" & StateFIPS==21
	replace CountyFIPS=055 if COUNTY=="Crittenden" & StateFIPS==21
	replace CountyFIPS=057 if COUNTY=="Cumberland" & StateFIPS==21
	replace CountyFIPS=059 if COUNTY=="Daviess" & StateFIPS==21
	replace CountyFIPS=061 if COUNTY=="Edmonson" & StateFIPS==21
	replace CountyFIPS=063 if COUNTY=="Elliott" & StateFIPS==21
	replace CountyFIPS=065 if COUNTY=="Estill" & StateFIPS==21
	replace CountyFIPS=067 if COUNTY=="Fayette" & StateFIPS==21
	replace CountyFIPS=069 if COUNTY=="Fleming" & StateFIPS==21
	replace CountyFIPS=071 if COUNTY=="Floyd" & StateFIPS==21
	replace CountyFIPS=073 if COUNTY=="Franklin" & StateFIPS==21
	replace CountyFIPS=075 if COUNTY=="Fulton" & StateFIPS==21
	replace CountyFIPS=077 if COUNTY=="Gallatin" & StateFIPS==21
	replace CountyFIPS=079 if COUNTY=="Garrard" & StateFIPS==21
	replace CountyFIPS=081 if COUNTY=="Grant" & StateFIPS==21
	replace CountyFIPS=083 if COUNTY=="Graves" & StateFIPS==21
	replace CountyFIPS=085 if COUNTY=="Grayson" & StateFIPS==21
	replace CountyFIPS=087 if COUNTY=="Green" & StateFIPS==21
	replace CountyFIPS=089 if COUNTY=="Greenup" & StateFIPS==21
	replace CountyFIPS=091 if COUNTY=="Hancock" & StateFIPS==21
	replace CountyFIPS=093 if COUNTY=="Hardin" & StateFIPS==21
	replace CountyFIPS=095 if COUNTY=="Harlan" & StateFIPS==21
	replace CountyFIPS=097 if COUNTY=="Harrison" & StateFIPS==21
	replace CountyFIPS=099 if COUNTY=="Hart" & StateFIPS==21
	replace CountyFIPS=101 if COUNTY=="Henderson" & StateFIPS==21
	replace CountyFIPS=103 if COUNTY=="Henry" & StateFIPS==21
	replace CountyFIPS=105 if COUNTY=="Hickman" & StateFIPS==21
	replace CountyFIPS=107 if COUNTY=="Hopkins" & StateFIPS==21
	replace CountyFIPS=109 if COUNTY=="Jackson" & StateFIPS==21
	replace CountyFIPS=111 if COUNTY=="Jefferson" & StateFIPS==21
	replace CountyFIPS=113 if COUNTY=="Jessamine" & StateFIPS==21
	replace CountyFIPS=115 if COUNTY=="Johnson" & StateFIPS==21
	replace CountyFIPS=117 if COUNTY=="Kenton" & StateFIPS==21
	replace CountyFIPS=119 if COUNTY=="Knott" & StateFIPS==21
	replace CountyFIPS=121 if COUNTY=="Knox" & StateFIPS==21
	replace CountyFIPS=123 if COUNTY=="Larue" & StateFIPS==21
		replace CountyFIPS=123 if COUNTY=="LaRue" & StateFIPS==21

	replace CountyFIPS=125 if COUNTY=="Laurel" & StateFIPS==21
	replace CountyFIPS=127 if COUNTY=="Lawrence" & StateFIPS==21
	replace CountyFIPS=129 if COUNTY=="Lee" & StateFIPS==21
	replace CountyFIPS=131 if COUNTY=="Leslie" & StateFIPS==21
	replace CountyFIPS=133 if COUNTY=="Letcher" & StateFIPS==21
	replace CountyFIPS=135 if COUNTY=="Lewis" & StateFIPS==21
	replace CountyFIPS=137 if COUNTY=="Lincoln" & StateFIPS==21
	replace CountyFIPS=139 if COUNTY=="Livingston" & StateFIPS==21
	replace CountyFIPS=141 if COUNTY=="Logan" & StateFIPS==21
	replace CountyFIPS=143 if COUNTY=="Lyon" & StateFIPS==21
	replace CountyFIPS=145 if COUNTY=="McCracken" & StateFIPS==21
	replace CountyFIPS=145 if COUNTY=="Mccracken" & StateFIPS==21
	replace CountyFIPS=145 if COUNTY=="Mc Cracken" & StateFIPS==21
	replace CountyFIPS=147 if COUNTY=="McCreary" & StateFIPS==21
	replace CountyFIPS=147 if COUNTY=="Mccreary" & StateFIPS==21
	replace CountyFIPS=147 if COUNTY=="Mc Creary" & StateFIPS==21
	replace CountyFIPS=149 if COUNTY=="Mclean" & StateFIPS==21
		replace CountyFIPS=149 if COUNTY=="McLean" & StateFIPS==21
		replace CountyFIPS=149 if COUNTY=="Mc Lean" & StateFIPS==21
	replace CountyFIPS=151 if COUNTY=="Madison" & StateFIPS==21
	replace CountyFIPS=153 if COUNTY=="Magoffin" & StateFIPS==21
	replace CountyFIPS=155 if COUNTY=="Marion" & StateFIPS==21
	replace CountyFIPS=157 if COUNTY=="Marshall" & StateFIPS==21
	replace CountyFIPS=159 if COUNTY=="Martin" & StateFIPS==21
	replace CountyFIPS=161 if COUNTY=="Mason" & StateFIPS==21
	replace CountyFIPS=163 if COUNTY=="Meade" & StateFIPS==21
	replace CountyFIPS=165 if COUNTY=="Menifee" & StateFIPS==21
	replace CountyFIPS=167 if COUNTY=="Mercer" & StateFIPS==21
	replace CountyFIPS=169 if COUNTY=="Metcalfe" & StateFIPS==21
	replace CountyFIPS=171 if COUNTY=="Monroe" & StateFIPS==21
	replace CountyFIPS=173 if COUNTY=="Montgomery" & StateFIPS==21
	replace CountyFIPS=175 if COUNTY=="Morgan" & StateFIPS==21
	replace CountyFIPS=177 if COUNTY=="Muhlenberg" & StateFIPS==21
	replace CountyFIPS=179 if COUNTY=="Nelson" & StateFIPS==21
	replace CountyFIPS=181 if COUNTY=="Nicholas" & StateFIPS==21
	replace CountyFIPS=183 if COUNTY=="Ohio" & StateFIPS==21
	replace CountyFIPS=185 if COUNTY=="Oldham" & StateFIPS==21
	replace CountyFIPS=187 if COUNTY=="Owen" & StateFIPS==21
	replace CountyFIPS=189 if COUNTY=="Owsley" & StateFIPS==21
	replace CountyFIPS=191 if COUNTY=="Pendleton" & StateFIPS==21
	replace CountyFIPS=193 if COUNTY=="Perry" & StateFIPS==21
	replace CountyFIPS=195 if COUNTY=="Pike" & StateFIPS==21
	replace CountyFIPS=197 if COUNTY=="Powell" & StateFIPS==21
	replace CountyFIPS=199 if COUNTY=="Pulaski" & StateFIPS==21
	replace CountyFIPS=201 if COUNTY=="Robertson" & StateFIPS==21
	replace CountyFIPS=203 if COUNTY=="Rockcastle" & StateFIPS==21
	replace CountyFIPS=205 if COUNTY=="Rowan" & StateFIPS==21
	replace CountyFIPS=207 if COUNTY=="Russell" & StateFIPS==21
	replace CountyFIPS=209 if COUNTY=="Scott" & StateFIPS==21
	replace CountyFIPS=211 if COUNTY=="Shelby" & StateFIPS==21
	replace CountyFIPS=213 if COUNTY=="Simpson" & StateFIPS==21
	replace CountyFIPS=215 if COUNTY=="Spencer" & StateFIPS==21
	replace CountyFIPS=217 if COUNTY=="Taylor" & StateFIPS==21
	replace CountyFIPS=219 if COUNTY=="Todd" & StateFIPS==21
	replace CountyFIPS=221 if COUNTY=="Trigg" & StateFIPS==21
	replace CountyFIPS=223 if COUNTY=="Trimble" & StateFIPS==21
	replace CountyFIPS=225 if COUNTY=="Union" & StateFIPS==21
	replace CountyFIPS=227 if COUNTY=="Warren" & StateFIPS==21
	replace CountyFIPS=229 if COUNTY=="Washington" & StateFIPS==21
	replace CountyFIPS=231 if COUNTY=="Wayne" & StateFIPS==21
	replace CountyFIPS=233 if COUNTY=="Webster" & StateFIPS==21
	replace CountyFIPS=235 if COUNTY=="Whitley" & StateFIPS==21
	replace CountyFIPS=237 if COUNTY=="Wolfe" & StateFIPS==21
	replace CountyFIPS=239 if COUNTY=="Woodford" & StateFIPS==21
	replace CountyFIPS=001 if COUNTY=="Acadia" & StateFIPS==22
	replace CountyFIPS=003 if COUNTY=="Allen" & StateFIPS==22
	replace CountyFIPS=005 if COUNTY=="Ascension" & StateFIPS==22
	replace CountyFIPS=007 if COUNTY=="Assumption" & StateFIPS==22
	replace CountyFIPS=009 if COUNTY=="Avoyelles" & StateFIPS==22
	replace CountyFIPS=011 if COUNTY=="Beauregard" & StateFIPS==22
	replace CountyFIPS=013 if COUNTY=="Bienville" & StateFIPS==22
	replace CountyFIPS=015 if COUNTY=="Bossier" & StateFIPS==22
	replace CountyFIPS=017 if COUNTY=="Caddo" & StateFIPS==22
	replace CountyFIPS=019 if COUNTY=="Calcasieu" & StateFIPS==22
	replace CountyFIPS=021 if COUNTY=="Caldwell" & StateFIPS==22
	replace CountyFIPS=023 if COUNTY=="Cameron" & StateFIPS==22
	replace CountyFIPS=025 if COUNTY=="Catahoula" & StateFIPS==22
	replace CountyFIPS=027 if COUNTY=="Claiborne" & StateFIPS==22
	replace CountyFIPS=029 if COUNTY=="Concordia" & StateFIPS==22
	replace CountyFIPS=031 if COUNTY=="De Soto" & StateFIPS==22
	replace CountyFIPS=033 if COUNTY=="East Baton Rouge" & StateFIPS==22
		replace CountyFIPS=033 if COUNTY=="E. Baton Rouge" & StateFIPS==22

	replace CountyFIPS=035 if COUNTY=="East Carroll" & StateFIPS==22
	replace CountyFIPS=037 if COUNTY=="East Feliciana" & StateFIPS==22
	replace CountyFIPS=039 if COUNTY=="Evangeline" & StateFIPS==22
	replace CountyFIPS=041 if COUNTY=="Franklin" & StateFIPS==22
	replace CountyFIPS=043 if COUNTY=="Grant" & StateFIPS==22
	replace CountyFIPS=045 if COUNTY=="Iberia" & StateFIPS==22
	replace CountyFIPS=047 if COUNTY=="Iberville" & StateFIPS==22
	replace CountyFIPS=049 if COUNTY=="Jackson" & StateFIPS==22
	replace CountyFIPS=051 if COUNTY=="Jefferson" & StateFIPS==22
	replace CountyFIPS=053 if COUNTY=="Jefferson Davis" & StateFIPS==22
	replace CountyFIPS=055 if COUNTY=="Lafayette" & StateFIPS==22
	replace CountyFIPS=057 if COUNTY=="Lafourche" & StateFIPS==22
	replace CountyFIPS=059 if COUNTY=="La Salle" & StateFIPS==22
	replace CountyFIPS=061 if COUNTY=="Lincoln" & StateFIPS==22
	replace CountyFIPS=063 if COUNTY=="Livingston" & StateFIPS==22
	replace CountyFIPS=065 if COUNTY=="Madison" & StateFIPS==22
	replace CountyFIPS=067 if COUNTY=="Morehouse" & StateFIPS==22
	replace CountyFIPS=069 if COUNTY=="Natchitoches" & StateFIPS==22
	replace CountyFIPS=071 if COUNTY=="Orleans" & StateFIPS==22
	replace CountyFIPS=073 if COUNTY=="Ouachita" & StateFIPS==22
	replace CountyFIPS=075 if COUNTY=="Plaquemines" & StateFIPS==22
	replace CountyFIPS=077 if COUNTY=="Pointe Coupee" & StateFIPS==22
	replace CountyFIPS=079 if COUNTY=="Rapides" & StateFIPS==22
	replace CountyFIPS=081 if COUNTY=="Red River" & StateFIPS==22
	replace CountyFIPS=083 if COUNTY=="Richland" & StateFIPS==22
	replace CountyFIPS=085 if COUNTY=="Sabine" & StateFIPS==22
	replace CountyFIPS=087 if COUNTY=="St Bernard" & StateFIPS==22
		replace CountyFIPS=087 if COUNTY=="Saint Bernard" & StateFIPS==22

	replace CountyFIPS=089 if COUNTY=="St Charles" & StateFIPS==22
		replace CountyFIPS=089 if COUNTY=="Saint Charles" & StateFIPS==22

	replace CountyFIPS=091 if COUNTY=="St Helena" & StateFIPS==22
		replace CountyFIPS=091 if COUNTY=="Saint Helena" & StateFIPS==22

	replace CountyFIPS=093 if COUNTY=="St James" & StateFIPS==22
		replace CountyFIPS=093 if COUNTY=="Saint James" & StateFIPS==22

	replace CountyFIPS=095 if COUNTY=="St John The Baptist" & StateFIPS==22
	replace CountyFIPS=095 if COUNTY=="St. John Baptist" & StateFIPS==22
		replace CountyFIPS=095 if COUNTY=="Saint John The Baptist" & StateFIPS==22
	replace CountyFIPS=095 if COUNTY=="Saint John the Baptist" & StateFIPS==22

	replace CountyFIPS=097 if COUNTY=="St Landry" & StateFIPS==22
		replace CountyFIPS=097 if COUNTY=="Saint Landry" & StateFIPS==22

	replace CountyFIPS=099 if COUNTY=="St Martin" & StateFIPS==22
		replace CountyFIPS=099 if COUNTY=="Saint Martin" & StateFIPS==22
	replace CountyFIPS=101 if COUNTY=="St. Marys" & StateFIPS==22
	replace CountyFIPS=101 if COUNTY=="St Mary" & StateFIPS==22
	replace CountyFIPS=101 if COUNTY=="Saint Mary" & StateFIPS==22
	replace CountyFIPS=103 if COUNTY=="St Tammany" & StateFIPS==22
		replace CountyFIPS=103 if COUNTY=="Saint Tammany" & StateFIPS==22

	replace CountyFIPS=087 if COUNTY=="St. Bernard" & StateFIPS==22
	replace CountyFIPS=089 if COUNTY=="St. Charles" & StateFIPS==22
	replace CountyFIPS=091 if COUNTY=="St. Helena" & StateFIPS==22
	replace CountyFIPS=093 if COUNTY=="St. James" & StateFIPS==22
	replace CountyFIPS=095 if COUNTY=="St. John The Baptist" & StateFIPS==22
	replace CountyFIPS=097 if COUNTY=="St. Landry" & StateFIPS==22
	replace CountyFIPS=099 if COUNTY=="St. Martin" & StateFIPS==22
	replace CountyFIPS=101 if COUNTY=="St. Mary" & StateFIPS==22
	replace CountyFIPS=103 if COUNTY=="St. Tammany" & StateFIPS==22
	replace CountyFIPS=105 if COUNTY=="Tangipahoa" & StateFIPS==22
	replace CountyFIPS=107 if COUNTY=="Tensas" & StateFIPS==22
	replace CountyFIPS=109 if COUNTY=="Terrebonne" & StateFIPS==22
	replace CountyFIPS=111 if COUNTY=="Union" & StateFIPS==22
	replace CountyFIPS=113 if COUNTY=="Vermilion" & StateFIPS==22
	replace CountyFIPS=115 if COUNTY=="Vernon" & StateFIPS==22
	replace CountyFIPS=117 if COUNTY=="Washington" & StateFIPS==22
	replace CountyFIPS=119 if COUNTY=="Webster" & StateFIPS==22
		replace CountyFIPS=121 if COUNTY=="W. Baton Rouge" & StateFIPS==22

	replace CountyFIPS=121 if COUNTY=="West Baton Rouge" & StateFIPS==22
	replace CountyFIPS=123 if COUNTY=="West Carroll" & StateFIPS==22
	replace CountyFIPS=125 if COUNTY=="West Feliciana" & StateFIPS==22
	replace CountyFIPS=127 if COUNTY=="Winn" & StateFIPS==22
	replace CountyFIPS=001 if COUNTY=="Androscoggin" & StateFIPS==23
	replace CountyFIPS=003 if COUNTY=="Aroostook" & StateFIPS==23
	replace CountyFIPS=005 if COUNTY=="Cumberland" & StateFIPS==23
	replace CountyFIPS=007 if COUNTY=="Franklin" & StateFIPS==23
	replace CountyFIPS=009 if COUNTY=="Hancock" & StateFIPS==23
	replace CountyFIPS=011 if COUNTY=="Kennebec" & StateFIPS==23
	replace CountyFIPS=013 if COUNTY=="Knox" & StateFIPS==23
	replace CountyFIPS=015 if COUNTY=="Lincoln" & StateFIPS==23
	replace CountyFIPS=017 if COUNTY=="Oxford" & StateFIPS==23
	replace CountyFIPS=019 if COUNTY=="Penobscot" & StateFIPS==23
	replace CountyFIPS=021 if COUNTY=="Piscataquis" & StateFIPS==23
	replace CountyFIPS=023 if COUNTY=="Sagadahoc" & StateFIPS==23
	replace CountyFIPS=025 if COUNTY=="Somerset" & StateFIPS==23
	replace CountyFIPS=027 if COUNTY=="Waldo" & StateFIPS==23
	replace CountyFIPS=029 if COUNTY=="Washington" & StateFIPS==23
	replace CountyFIPS=031 if COUNTY=="York" & StateFIPS==23
	replace CountyFIPS=001 if COUNTY=="Allegany" & StateFIPS==24
	replace CountyFIPS=003 if COUNTY=="Anne Arundel" & StateFIPS==24
	replace CountyFIPS=005 if COUNTY=="Baltimore" & StateFIPS==24
	replace CountyFIPS=009 if COUNTY=="Calvert" & StateFIPS==24
	replace CountyFIPS=011 if COUNTY=="Caroline" & StateFIPS==24
	replace CountyFIPS=013 if COUNTY=="Carroll" & StateFIPS==24
	replace CountyFIPS=015 if COUNTY=="Cecil" & StateFIPS==24
	replace CountyFIPS=017 if COUNTY=="Charles" & StateFIPS==24
	replace CountyFIPS=019 if COUNTY=="Dorchester" & StateFIPS==24
	replace CountyFIPS=021 if COUNTY=="Frederick" & StateFIPS==24
	replace CountyFIPS=023 if COUNTY=="Garrett" & StateFIPS==24
	replace CountyFIPS=025 if COUNTY=="Harford" & StateFIPS==24
	replace CountyFIPS=027 if COUNTY=="Howard" & StateFIPS==24
	replace CountyFIPS=029 if COUNTY=="Kent" & StateFIPS==24
	replace CountyFIPS=031 if COUNTY=="Montgomery" & StateFIPS==24
	replace CountyFIPS=033 if COUNTY=="Prince Georges" & StateFIPS==24
		replace CountyFIPS=033 if COUNTY=="Prince George's" & StateFIPS==24
	replace CountyFIPS=035 if COUNTY=="Queen Anne's" & StateFIPS==24

	replace CountyFIPS=035 if COUNTY=="Queen Annes" & StateFIPS==24
	replace CountyFIPS=037 if COUNTY=="St Marys" & StateFIPS==24
		replace CountyFIPS=037 if COUNTY=="St. Mary's" & StateFIPS==24
		replace CountyFIPS=037 if COUNTY=="St. Marys" & StateFIPS==24
	replace CountyFIPS=039 if COUNTY=="Somerset" & StateFIPS==24
	replace CountyFIPS=041 if COUNTY=="Talbot" & StateFIPS==24
	replace CountyFIPS=043 if COUNTY=="Washington" & StateFIPS==24
	replace CountyFIPS=043 if COUNTY=="WASHINGTON" & StateFIPS==24
	replace CountyFIPS=045 if COUNTY=="Wicomico" & StateFIPS==24
	replace CountyFIPS=047 if COUNTY=="Worcester" & StateFIPS==24
	replace CountyFIPS=510 if COUNTY=="Baltimore City" & StateFIPS==24
	replace CountyFIPS=001 if COUNTY=="Barnstable" & StateFIPS==25
	replace CountyFIPS=003 if COUNTY=="Berkshire" & StateFIPS==25
	replace CountyFIPS=005 if COUNTY=="Bristol" & StateFIPS==25
	replace CountyFIPS=007 if COUNTY=="Dukes" & StateFIPS==25
	replace CountyFIPS=009 if COUNTY=="Essex" & StateFIPS==25
	replace CountyFIPS=011 if COUNTY=="Franklin" & StateFIPS==25
	replace CountyFIPS=013 if COUNTY=="Hampden" & StateFIPS==25
	replace CountyFIPS=013 if COUNTY=="HAMPDEN" & StateFIPS==25
	replace CountyFIPS=015 if COUNTY=="Hampshire" & StateFIPS==25
	replace CountyFIPS=017 if COUNTY=="Middlesex" & StateFIPS==25
	replace CountyFIPS=019 if COUNTY=="Nantucket" & StateFIPS==25
	replace CountyFIPS=021 if COUNTY=="Norfolk" & StateFIPS==25
	replace CountyFIPS=023 if COUNTY=="Plymouth" & StateFIPS==25
	replace CountyFIPS=025 if COUNTY=="Suffolk" & StateFIPS==25
	replace CountyFIPS=027 if COUNTY=="Worcester" & StateFIPS==25
	replace CountyFIPS=001 if COUNTY=="Alcona" & StateFIPS==26
	replace CountyFIPS=003 if COUNTY=="Alger" & StateFIPS==26
	replace CountyFIPS=005 if COUNTY=="Allegan" & StateFIPS==26
	replace CountyFIPS=007 if COUNTY=="Alpena" & StateFIPS==26
	replace CountyFIPS=009 if COUNTY=="Antrim" & StateFIPS==26
	replace CountyFIPS=011 if COUNTY=="Arenac" & StateFIPS==26
	replace CountyFIPS=013 if COUNTY=="Baraga" & StateFIPS==26
	replace CountyFIPS=015 if COUNTY=="Barry" & StateFIPS==26
	replace CountyFIPS=017 if COUNTY=="Bay" & StateFIPS==26
	replace CountyFIPS=019 if COUNTY=="Benzie" & StateFIPS==26
	replace CountyFIPS=021 if COUNTY=="Berrien" & StateFIPS==26
	replace CountyFIPS=023 if COUNTY=="Branch" & StateFIPS==26
	replace CountyFIPS=025 if COUNTY=="Calhoun" & StateFIPS==26
	replace CountyFIPS=027 if COUNTY=="Cass" & StateFIPS==26
	replace CountyFIPS=029 if COUNTY=="Charlevoix" & StateFIPS==26
	replace CountyFIPS=031 if COUNTY=="Cheboygan" & StateFIPS==26
	replace CountyFIPS=033 if COUNTY=="Chippewa" & StateFIPS==26
	replace CountyFIPS=035 if COUNTY=="Clare" & StateFIPS==26
	replace CountyFIPS=037 if COUNTY=="Clinton" & StateFIPS==26
	replace CountyFIPS=039 if COUNTY=="Crawford" & StateFIPS==26
	replace CountyFIPS=041 if COUNTY=="Delta" & StateFIPS==26
	replace CountyFIPS=043 if COUNTY=="Dickinson" & StateFIPS==26
	replace CountyFIPS=045 if COUNTY=="Eaton" & StateFIPS==26
	replace CountyFIPS=047 if COUNTY=="Emmet" & StateFIPS==26
	replace CountyFIPS=049 if COUNTY=="Genesee" & StateFIPS==26
	replace CountyFIPS=051 if COUNTY=="Gladwin" & StateFIPS==26
	replace CountyFIPS=053 if COUNTY=="Gogebic" & StateFIPS==26
	replace CountyFIPS=055 if COUNTY=="Grand Traverse" & StateFIPS==26
	replace CountyFIPS=057 if COUNTY=="Gratiot" & StateFIPS==26
	replace CountyFIPS=059 if COUNTY=="Hillsdale" & StateFIPS==26
	replace CountyFIPS=059 if COUNTY=="HILLSDALE" & StateFIPS==26
	replace CountyFIPS=061 if COUNTY=="Houghton" & StateFIPS==26
	replace CountyFIPS=063 if COUNTY=="Huron" & StateFIPS==26
	replace CountyFIPS=065 if COUNTY=="Ingham" & StateFIPS==26
	replace CountyFIPS=067 if COUNTY=="Ionia" & StateFIPS==26
	replace CountyFIPS=069 if COUNTY=="Iosco" & StateFIPS==26
	replace CountyFIPS=071 if COUNTY=="Iron" & StateFIPS==26
	replace CountyFIPS=073 if COUNTY=="Isabella" & StateFIPS==26
	replace CountyFIPS=075 if COUNTY=="Jackson" & StateFIPS==26
	replace CountyFIPS=077 if COUNTY=="Kalamazoo" & StateFIPS==26
	replace CountyFIPS=079 if COUNTY=="Kalkaska" & StateFIPS==26
	replace CountyFIPS=081 if COUNTY=="Kent" & StateFIPS==26
	replace CountyFIPS=083 if COUNTY=="Keweenaw" & StateFIPS==26
	replace CountyFIPS=085 if COUNTY=="Lake" & StateFIPS==26
	replace CountyFIPS=087 if COUNTY=="Lapeer" & StateFIPS==26
	replace CountyFIPS=089 if COUNTY=="Leelanau" & StateFIPS==26
	replace CountyFIPS=091 if COUNTY=="Lenawee" & StateFIPS==26
	replace CountyFIPS=093 if COUNTY=="Livingston" & StateFIPS==26
	replace CountyFIPS=095 if COUNTY=="Luce" & StateFIPS==26
	replace CountyFIPS=097 if COUNTY=="Mackinac" & StateFIPS==26
	replace CountyFIPS=099 if COUNTY=="Macomb" & StateFIPS==26
	replace CountyFIPS=101 if COUNTY=="Manistee" & StateFIPS==26
	replace CountyFIPS=103 if COUNTY=="Marquette" & StateFIPS==26
	replace CountyFIPS=105 if COUNTY=="Mason" & StateFIPS==26
	replace CountyFIPS=107 if COUNTY=="Mecosta" & StateFIPS==26
	replace CountyFIPS=109 if COUNTY=="Menominee" & StateFIPS==26
	replace CountyFIPS=111 if COUNTY=="Midland" & StateFIPS==26
	replace CountyFIPS=113 if COUNTY=="Missaukee" & StateFIPS==26
	replace CountyFIPS=115 if COUNTY=="Monroe" & StateFIPS==26
	replace CountyFIPS=117 if COUNTY=="Montcalm" & StateFIPS==26
	replace CountyFIPS=119 if COUNTY=="Montmorency" & StateFIPS==26
	replace CountyFIPS=121 if COUNTY=="Muskegon" & StateFIPS==26
	replace CountyFIPS=123 if COUNTY=="Newaygo" & StateFIPS==26
	replace CountyFIPS=125 if COUNTY=="Oakland" & StateFIPS==26
	replace CountyFIPS=127 if COUNTY=="Oceana" & StateFIPS==26
	replace CountyFIPS=129 if COUNTY=="Ogemaw" & StateFIPS==26
	replace CountyFIPS=131 if COUNTY=="Ontonagon" & StateFIPS==26
	replace CountyFIPS=133 if COUNTY=="Osceola" & StateFIPS==26
	replace CountyFIPS=135 if COUNTY=="Oscoda" & StateFIPS==26
	replace CountyFIPS=137 if COUNTY=="Otsego" & StateFIPS==26
	replace CountyFIPS=139 if COUNTY=="Ottawa" & StateFIPS==26
	replace CountyFIPS=141 if COUNTY=="Presque Isle" & StateFIPS==26
	replace CountyFIPS=143 if COUNTY=="Roscommon" & StateFIPS==26
	replace CountyFIPS=145 if COUNTY=="Saginaw" & StateFIPS==26
	replace CountyFIPS=147 if COUNTY=="St Clair" & StateFIPS==26
	replace CountyFIPS=147 if COUNTY=="St. Clair" & StateFIPS==26
		replace CountyFIPS=147 if COUNTY=="Saint Clair" & StateFIPS==26

	replace CountyFIPS=149 if COUNTY=="St. Joseph" & StateFIPS==26
	replace CountyFIPS=149 if COUNTY=="Saint Joseph" & StateFIPS==26

	replace CountyFIPS=149 if COUNTY=="St Joseph" & StateFIPS==26
	replace CountyFIPS=151 if COUNTY=="Sanilac" & StateFIPS==26
	replace CountyFIPS=153 if COUNTY=="Schoolcraft" & StateFIPS==26
	replace CountyFIPS=155 if COUNTY=="Shiawassee" & StateFIPS==26
	replace CountyFIPS=157 if COUNTY=="Tuscola" & StateFIPS==26
	replace CountyFIPS=159 if COUNTY=="Van Buren" & StateFIPS==26
	replace CountyFIPS=161 if COUNTY=="Washtenaw" & StateFIPS==26
	replace CountyFIPS=163 if COUNTY=="Wayne" & StateFIPS==26
	replace CountyFIPS=165 if COUNTY=="Wexford" & StateFIPS==26
	replace CountyFIPS=001 if COUNTY=="Aitkin" & StateFIPS==27
	replace CountyFIPS=003 if COUNTY=="Anoka" & StateFIPS==27
	replace CountyFIPS=005 if COUNTY=="Becker" & StateFIPS==27
	replace CountyFIPS=007 if COUNTY=="Beltrami" & StateFIPS==27
	replace CountyFIPS=009 if COUNTY=="Benton" & StateFIPS==27
	replace CountyFIPS=011 if COUNTY=="Big Stone" & StateFIPS==27
	replace CountyFIPS=013 if COUNTY=="Blue Earth" & StateFIPS==27
	replace CountyFIPS=015 if COUNTY=="Brown" & StateFIPS==27
	replace CountyFIPS=017 if COUNTY=="Carlton" & StateFIPS==27
	replace CountyFIPS=019 if COUNTY=="Carver" & StateFIPS==27
	replace CountyFIPS=021 if COUNTY=="Cass" & StateFIPS==27
	replace CountyFIPS=023 if COUNTY=="Chippewa" & StateFIPS==27
	replace CountyFIPS=025 if COUNTY=="Chisago" & StateFIPS==27
	replace CountyFIPS=027 if COUNTY=="Clay" & StateFIPS==27
	replace CountyFIPS=029 if COUNTY=="Clearwater" & StateFIPS==27
	replace CountyFIPS=031 if COUNTY=="Cook" & StateFIPS==27
	replace CountyFIPS=033 if COUNTY=="Cottonwood" & StateFIPS==27
	replace CountyFIPS=035 if COUNTY=="Crow Wing" & StateFIPS==27
	replace CountyFIPS=037 if COUNTY=="Dakota" & StateFIPS==27
	replace CountyFIPS=039 if COUNTY=="Dodge" & StateFIPS==27
	replace CountyFIPS=041 if COUNTY=="Douglas" & StateFIPS==27
	replace CountyFIPS=043 if COUNTY=="Faribault" & StateFIPS==27
	replace CountyFIPS=045 if COUNTY=="Fillmore" & StateFIPS==27
	replace CountyFIPS=047 if COUNTY=="Freeborn" & StateFIPS==27
	replace CountyFIPS=049 if COUNTY=="Goodhue" & StateFIPS==27
	replace CountyFIPS=051 if COUNTY=="Grant" & StateFIPS==27
	replace CountyFIPS=053 if COUNTY=="Hennepin" & StateFIPS==27
	replace CountyFIPS=055 if COUNTY=="Houston" & StateFIPS==27
	replace CountyFIPS=057 if COUNTY=="Hubbard" & StateFIPS==27
	replace CountyFIPS=059 if COUNTY=="Isanti" & StateFIPS==27
	replace CountyFIPS=061 if COUNTY=="Itasca" & StateFIPS==27
	replace CountyFIPS=063 if COUNTY=="Jackson" & StateFIPS==27
	replace CountyFIPS=065 if COUNTY=="Kanabec" & StateFIPS==27
	replace CountyFIPS=067 if COUNTY=="Kandiyohi" & StateFIPS==27
	replace CountyFIPS=069 if COUNTY=="Kittson" & StateFIPS==27
	replace CountyFIPS=071 if COUNTY=="Koochiching" & StateFIPS==27
	replace CountyFIPS=073 if COUNTY=="Lac Qui Parle" & StateFIPS==27
	replace CountyFIPS=075 if COUNTY=="Lake" & StateFIPS==27
	replace CountyFIPS=077 if COUNTY=="Lake of The Woods" & StateFIPS==27
		replace CountyFIPS=077 if COUNTY=="Lake Of The Woods" & StateFIPS==27
	replace CountyFIPS=077 if COUNTY=="Lake of the Woods" & StateFIPS==27
	replace CountyFIPS=079 if COUNTY=="Le Sueur" & StateFIPS==27
	replace CountyFIPS=081 if COUNTY=="Lincoln" & StateFIPS==27
	replace CountyFIPS=083 if COUNTY=="Lyon" & StateFIPS==27
	replace CountyFIPS=085 if COUNTY=="McLeod" & StateFIPS==27
		replace CountyFIPS=085 if COUNTY=="Mcleod" & StateFIPS==27
		replace CountyFIPS=085 if COUNTY=="Mc Leod" & StateFIPS==27
	replace CountyFIPS=087 if COUNTY=="Mahnomen" & StateFIPS==27
	replace CountyFIPS=089 if COUNTY=="Marshall" & StateFIPS==27
	replace CountyFIPS=091 if COUNTY=="Martin" & StateFIPS==27
	replace CountyFIPS=093 if COUNTY=="Meeker" & StateFIPS==27
	replace CountyFIPS=095 if COUNTY=="Mille Lacs" & StateFIPS==27
	replace CountyFIPS=097 if COUNTY=="Morrison" & StateFIPS==27
	replace CountyFIPS=099 if COUNTY=="Mower" & StateFIPS==27
	replace CountyFIPS=099 if COUNTY=="MOWER" & StateFIPS==27
	replace CountyFIPS=101 if COUNTY=="Murray" & StateFIPS==27
	replace CountyFIPS=103 if COUNTY=="Nicollet" & StateFIPS==27
	replace CountyFIPS=105 if COUNTY=="Nobles" & StateFIPS==27
	replace CountyFIPS=107 if COUNTY=="Norman" & StateFIPS==27
	replace CountyFIPS=109 if COUNTY=="Olmsted" & StateFIPS==27
	replace CountyFIPS=111 if COUNTY=="Otter Tail" & StateFIPS==27
	replace CountyFIPS=113 if COUNTY=="Pennington" & StateFIPS==27
	replace CountyFIPS=115 if COUNTY=="Pine" & StateFIPS==27
	replace CountyFIPS=117 if COUNTY=="Pipestone" & StateFIPS==27
	replace CountyFIPS=119 if COUNTY=="Polk" & StateFIPS==27
	replace CountyFIPS=121 if COUNTY=="Pope" & StateFIPS==27
	replace CountyFIPS=123 if COUNTY=="Ramsey" & StateFIPS==27
	replace CountyFIPS=125 if COUNTY=="Red Lake" & StateFIPS==27
	replace CountyFIPS=127 if COUNTY=="Redwood" & StateFIPS==27
	replace CountyFIPS=129 if COUNTY=="Renville" & StateFIPS==27
	replace CountyFIPS=131 if COUNTY=="Rice" & StateFIPS==27
	replace CountyFIPS=133 if COUNTY=="Rock" & StateFIPS==27
	replace CountyFIPS=135 if COUNTY=="Roseau" & StateFIPS==27
	replace CountyFIPS=137 if COUNTY=="St Louis" & StateFIPS==27
	replace CountyFIPS=137 if COUNTY=="St. Louis" & StateFIPS==27

	replace CountyFIPS=139 if COUNTY=="Scott" & StateFIPS==27
	replace CountyFIPS=141 if COUNTY=="Sherburne" & StateFIPS==27
	replace CountyFIPS=143 if COUNTY=="Sibley" & StateFIPS==27
	replace CountyFIPS=145 if COUNTY=="Stearns" & StateFIPS==27
	replace CountyFIPS=147 if COUNTY=="Steele" & StateFIPS==27
	replace CountyFIPS=149 if COUNTY=="Stevens" & StateFIPS==27
	replace CountyFIPS=151 if COUNTY=="Swift" & StateFIPS==27
	replace CountyFIPS=153 if COUNTY=="Todd" & StateFIPS==27
	replace CountyFIPS=155 if COUNTY=="Traverse" & StateFIPS==27
	replace CountyFIPS=157 if COUNTY=="Wabasha" & StateFIPS==27
	replace CountyFIPS=159 if COUNTY=="Wadena" & StateFIPS==27
	replace CountyFIPS=161 if COUNTY=="Waseca" & StateFIPS==27
	replace CountyFIPS=163 if COUNTY=="Washington" & StateFIPS==27
	replace CountyFIPS=165 if COUNTY=="Watonwan" & StateFIPS==27
	replace CountyFIPS=167 if COUNTY=="Wilkin" & StateFIPS==27
	replace CountyFIPS=169 if COUNTY=="Winona" & StateFIPS==27
	replace CountyFIPS=171 if COUNTY=="Wright" & StateFIPS==27
	replace CountyFIPS=173 if COUNTY=="Yellow Medicine" & StateFIPS==27
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==28
	replace CountyFIPS=003 if COUNTY=="Alcorn" & StateFIPS==28
	replace CountyFIPS=005 if COUNTY=="Amite" & StateFIPS==28
	replace CountyFIPS=007 if COUNTY=="Attala" & StateFIPS==28
	replace CountyFIPS=009 if COUNTY=="Benton" & StateFIPS==28
	replace CountyFIPS=011 if COUNTY=="Bolivar" & StateFIPS==28
	replace CountyFIPS=013 if COUNTY=="Calhoun" & StateFIPS==28
	replace CountyFIPS=015 if COUNTY=="Carroll" & StateFIPS==28
	replace CountyFIPS=017 if COUNTY=="Chickasaw" & StateFIPS==28
	replace CountyFIPS=019 if COUNTY=="Choctaw" & StateFIPS==28
	replace CountyFIPS=021 if COUNTY=="Claiborne" & StateFIPS==28
	replace CountyFIPS=023 if COUNTY=="Clarke" & StateFIPS==28
	replace CountyFIPS=025 if COUNTY=="Clay" & StateFIPS==28
	replace CountyFIPS=027 if COUNTY=="Coahoma" & StateFIPS==28
	replace CountyFIPS=029 if COUNTY=="Copiah" & StateFIPS==28
	replace CountyFIPS=031 if COUNTY=="Covington" & StateFIPS==28
	replace CountyFIPS=033 if COUNTY=="De Soto" & StateFIPS==28
		replace CountyFIPS=033 if COUNTY=="DeSoto" & StateFIPS==28
		replace CountyFIPS=033 if COUNTY=="Desoto" & StateFIPS==28

	replace CountyFIPS=035 if COUNTY=="Forrest" & StateFIPS==28
	replace CountyFIPS=037 if COUNTY=="Franklin" & StateFIPS==28
	replace CountyFIPS=039 if COUNTY=="George" & StateFIPS==28
	replace CountyFIPS=041 if COUNTY=="Greene" & StateFIPS==28
	replace CountyFIPS=043 if COUNTY=="Grenada" & StateFIPS==28
	replace CountyFIPS=045 if COUNTY=="Hancock" & StateFIPS==28
	replace CountyFIPS=047 if COUNTY=="Harrison" & StateFIPS==28
	replace CountyFIPS=049 if COUNTY=="Hinds" & StateFIPS==28
	replace CountyFIPS=051 if COUNTY=="Holmes" & StateFIPS==28
	replace CountyFIPS=053 if COUNTY=="Humphreys" & StateFIPS==28
	replace CountyFIPS=055 if COUNTY=="Issaquena" & StateFIPS==28
	replace CountyFIPS=057 if COUNTY=="Itawamba" & StateFIPS==28
	replace CountyFIPS=059 if COUNTY=="Jackson" & StateFIPS==28
	replace CountyFIPS=061 if COUNTY=="Jasper" & StateFIPS==28
	replace CountyFIPS=063 if COUNTY=="Jefferson" & StateFIPS==28
	replace CountyFIPS=065 if COUNTY=="Jefferson Davis" & StateFIPS==28
	replace CountyFIPS=067 if COUNTY=="Jones" & StateFIPS==28
	replace CountyFIPS=069 if COUNTY=="Kemper" & StateFIPS==28
	replace CountyFIPS=071 if COUNTY=="Lafayette" & StateFIPS==28
	replace CountyFIPS=073 if COUNTY=="Lamar" & StateFIPS==28
	replace CountyFIPS=075 if COUNTY=="Lauderdale" & StateFIPS==28
	replace CountyFIPS=077 if COUNTY=="Lawrence" & StateFIPS==28
	replace CountyFIPS=079 if COUNTY=="Leake" & StateFIPS==28
	replace CountyFIPS=081 if COUNTY=="Lee" & StateFIPS==28
	replace CountyFIPS=083 if COUNTY=="Leflore" & StateFIPS==28
	replace CountyFIPS=085 if COUNTY=="Lincoln" & StateFIPS==28
	replace CountyFIPS=087 if COUNTY=="Lowndes" & StateFIPS==28
	replace CountyFIPS=089 if COUNTY=="Madison" & StateFIPS==28
	replace CountyFIPS=091 if COUNTY=="Marion" & StateFIPS==28
	replace CountyFIPS=093 if COUNTY=="Marshall" & StateFIPS==28
	replace CountyFIPS=095 if COUNTY=="Monroe" & StateFIPS==28
	replace CountyFIPS=097 if COUNTY=="Montgomery" & StateFIPS==28
	replace CountyFIPS=099 if COUNTY=="Neshoba" & StateFIPS==28
	replace CountyFIPS=101 if COUNTY=="Newton" & StateFIPS==28
	replace CountyFIPS=103 if COUNTY=="Noxubee" & StateFIPS==28
	replace CountyFIPS=105 if COUNTY=="Oktibbeha" & StateFIPS==28
	replace CountyFIPS=107 if COUNTY=="Panola" & StateFIPS==28
	replace CountyFIPS=109 if COUNTY=="Pearl River" & StateFIPS==28
	replace CountyFIPS=111 if COUNTY=="Perry" & StateFIPS==28
	replace CountyFIPS=113 if COUNTY=="Pike" & StateFIPS==28
	replace CountyFIPS=115 if COUNTY=="Pontotoc" & StateFIPS==28
	replace CountyFIPS=117 if COUNTY=="Prentiss" & StateFIPS==28
	replace CountyFIPS=119 if COUNTY=="Quitman" & StateFIPS==28
	replace CountyFIPS=121 if COUNTY=="Rankin" & StateFIPS==28
	replace CountyFIPS=123 if COUNTY=="Scott" & StateFIPS==28
	replace CountyFIPS=125 if COUNTY=="Sharkey" & StateFIPS==28
	replace CountyFIPS=127 if COUNTY=="Simpson" & StateFIPS==28
	replace CountyFIPS=129 if COUNTY=="Smith" & StateFIPS==28
	replace CountyFIPS=131 if COUNTY=="Stone" & StateFIPS==28
	replace CountyFIPS=133 if COUNTY=="Sunflower" & StateFIPS==28
	replace CountyFIPS=135 if COUNTY=="Tallahatchie" & StateFIPS==28
	replace CountyFIPS=137 if COUNTY=="Tate" & StateFIPS==28
	replace CountyFIPS=139 if COUNTY=="Tippah" & StateFIPS==28
	replace CountyFIPS=141 if COUNTY=="Tishomingo" & StateFIPS==28
	replace CountyFIPS=143 if COUNTY=="Tunica" & StateFIPS==28
	replace CountyFIPS=145 if COUNTY=="Union" & StateFIPS==28
	replace CountyFIPS=147 if COUNTY=="Walthall" & StateFIPS==28
	replace CountyFIPS=149 if COUNTY=="Warren" & StateFIPS==28
	replace CountyFIPS=151 if COUNTY=="Washington" & StateFIPS==28
	replace CountyFIPS=153 if COUNTY=="Wayne" & StateFIPS==28
	replace CountyFIPS=155 if COUNTY=="Webster" & StateFIPS==28
	replace CountyFIPS=157 if COUNTY=="Wilkinson" & StateFIPS==28
	replace CountyFIPS=159 if COUNTY=="Winston" & StateFIPS==28
	replace CountyFIPS=161 if COUNTY=="Yalobusha" & StateFIPS==28
	replace CountyFIPS=163 if COUNTY=="Yazoo" & StateFIPS==28
	replace CountyFIPS=001 if COUNTY=="Adair" & StateFIPS==29
	replace CountyFIPS=003 if COUNTY=="Andrew" & StateFIPS==29
	replace CountyFIPS=005 if COUNTY=="Atchison" & StateFIPS==29
	replace CountyFIPS=007 if COUNTY=="Audrain" & StateFIPS==29
	replace CountyFIPS=009 if COUNTY=="Barry" & StateFIPS==29
	replace CountyFIPS=011 if COUNTY=="Barton" & StateFIPS==29
	replace CountyFIPS=013 if COUNTY=="Bates" & StateFIPS==29
	replace CountyFIPS=015 if COUNTY=="Benton" & StateFIPS==29
	replace CountyFIPS=017 if COUNTY=="Bollinger" & StateFIPS==29
	replace CountyFIPS=019 if COUNTY=="Boone" & StateFIPS==29
	replace CountyFIPS=021 if COUNTY=="Buchanan" & StateFIPS==29
	replace CountyFIPS=023 if COUNTY=="Butler" & StateFIPS==29
	replace CountyFIPS=025 if COUNTY=="Caldwell" & StateFIPS==29
	replace CountyFIPS=027 if COUNTY=="Callaway" & StateFIPS==29
	replace CountyFIPS=029 if COUNTY=="Camden" & StateFIPS==29
	replace CountyFIPS=031 if COUNTY=="Cape Girardeau" & StateFIPS==29
	replace CountyFIPS=033 if COUNTY=="Carroll" & StateFIPS==29
	replace CountyFIPS=035 if COUNTY=="Carter" & StateFIPS==29
	replace CountyFIPS=037 if COUNTY=="Cass" & StateFIPS==29
	replace CountyFIPS=039 if COUNTY=="Cedar" & StateFIPS==29
	replace CountyFIPS=041 if COUNTY=="Chariton" & StateFIPS==29
	replace CountyFIPS=043 if COUNTY=="Christian" & StateFIPS==29
	replace CountyFIPS=045 if COUNTY=="Clark" & StateFIPS==29
	replace CountyFIPS=047 if COUNTY=="Clay" & StateFIPS==29
	replace CountyFIPS=049 if COUNTY=="Clinton" & StateFIPS==29
	replace CountyFIPS=051 if COUNTY=="Cole" & StateFIPS==29
	replace CountyFIPS=053 if COUNTY=="Cooper" & StateFIPS==29
	replace CountyFIPS=055 if COUNTY=="Crawford" & StateFIPS==29
	replace CountyFIPS=057 if COUNTY=="Dade" & StateFIPS==29
	replace CountyFIPS=059 if COUNTY=="Dallas" & StateFIPS==29
	replace CountyFIPS=061 if COUNTY=="Daviess" & StateFIPS==29
	replace CountyFIPS=063 if COUNTY=="Dekalb" & StateFIPS==29
		replace CountyFIPS=063 if COUNTY=="DeKalb" & StateFIPS==29

		replace CountyFIPS=063 if COUNTY=="De Kalb" & StateFIPS==29
	replace CountyFIPS=065 if COUNTY=="Dent" & StateFIPS==29
	replace CountyFIPS=067 if COUNTY=="Douglas" & StateFIPS==29
	replace CountyFIPS=069 if COUNTY=="Dunklin" & StateFIPS==29
	replace CountyFIPS=071 if COUNTY=="Franklin" & StateFIPS==29
	replace CountyFIPS=073 if COUNTY=="Gasconade" & StateFIPS==29
	replace CountyFIPS=075 if COUNTY=="Gentry" & StateFIPS==29
	replace CountyFIPS=077 if COUNTY=="Greene" & StateFIPS==29
	replace CountyFIPS=079 if COUNTY=="Grundy" & StateFIPS==29
	replace CountyFIPS=081 if COUNTY=="Harrison" & StateFIPS==29
	replace CountyFIPS=083 if COUNTY=="Henry" & StateFIPS==29
	replace CountyFIPS=085 if COUNTY=="Hickory" & StateFIPS==29
	replace CountyFIPS=087 if COUNTY=="Holt" & StateFIPS==29
	replace CountyFIPS=089 if COUNTY=="Howard" & StateFIPS==29
	replace CountyFIPS=091 if COUNTY=="Howell" & StateFIPS==29
	replace CountyFIPS=093 if COUNTY=="Iron" & StateFIPS==29
	replace CountyFIPS=095 if COUNTY=="Jackson" & StateFIPS==29
	replace CountyFIPS=097 if COUNTY=="Jasper" & StateFIPS==29
	replace CountyFIPS=099 if COUNTY=="Jefferson" & StateFIPS==29
	replace CountyFIPS=101 if COUNTY=="Johnson" & StateFIPS==29
	replace CountyFIPS=103 if COUNTY=="Knox" & StateFIPS==29
	replace CountyFIPS=105 if COUNTY=="Laclede" & StateFIPS==29
	replace CountyFIPS=107 if COUNTY=="Lafayette" & StateFIPS==29
	replace CountyFIPS=109 if COUNTY=="Lawrence" & StateFIPS==29
	replace CountyFIPS=111 if COUNTY=="Lewis" & StateFIPS==29
	replace CountyFIPS=113 if COUNTY=="Lincoln" & StateFIPS==29
	replace CountyFIPS=115 if COUNTY=="Linn" & StateFIPS==29
	replace CountyFIPS=117 if COUNTY=="Livingston" & StateFIPS==29
	replace CountyFIPS=119 if COUNTY=="Mcdonald" & StateFIPS==29
		replace CountyFIPS=119 if COUNTY=="McDonald" & StateFIPS==29

		replace CountyFIPS=119 if COUNTY=="Mc Donald" & StateFIPS==29
	replace CountyFIPS=121 if COUNTY=="Macon" & StateFIPS==29
	replace CountyFIPS=123 if COUNTY=="Madison" & StateFIPS==29
	replace CountyFIPS=125 if COUNTY=="Maries" & StateFIPS==29
	replace CountyFIPS=127 if COUNTY=="Marion" & StateFIPS==29
	replace CountyFIPS=129 if COUNTY=="Mercer" & StateFIPS==29
	replace CountyFIPS=131 if COUNTY=="Miller" & StateFIPS==29
	replace CountyFIPS=133 if COUNTY=="Mississippi" & StateFIPS==29
	replace CountyFIPS=135 if COUNTY=="Moniteau" & StateFIPS==29
	replace CountyFIPS=137 if COUNTY=="Monroe" & StateFIPS==29
	replace CountyFIPS=139 if COUNTY=="Montgomery" & StateFIPS==29
	replace CountyFIPS=141 if COUNTY=="Morgan" & StateFIPS==29
	replace CountyFIPS=143 if COUNTY=="New Madrid" & StateFIPS==29
	replace CountyFIPS=145 if COUNTY=="Newton" & StateFIPS==29
	replace CountyFIPS=147 if COUNTY=="Nodaway" & StateFIPS==29
	replace CountyFIPS=149 if COUNTY=="Oregon" & StateFIPS==29
	replace CountyFIPS=151 if COUNTY=="Osage" & StateFIPS==29
	replace CountyFIPS=153 if COUNTY=="Ozark" & StateFIPS==29
	replace CountyFIPS=155 if COUNTY=="Pemiscot" & StateFIPS==29
	replace CountyFIPS=157 if COUNTY=="Perry" & StateFIPS==29
	replace CountyFIPS=159 if COUNTY=="Pettis" & StateFIPS==29
	replace CountyFIPS=161 if COUNTY=="Phelps" & StateFIPS==29
	replace CountyFIPS=163 if COUNTY=="Pike" & StateFIPS==29
	replace CountyFIPS=165 if COUNTY=="Platte" & StateFIPS==29
	replace CountyFIPS=167 if COUNTY=="Polk" & StateFIPS==29
	replace CountyFIPS=169 if COUNTY=="Pulaski" & StateFIPS==29
	replace CountyFIPS=171 if COUNTY=="Putnam" & StateFIPS==29
	replace CountyFIPS=173 if COUNTY=="Ralls" & StateFIPS==29
	replace CountyFIPS=175 if COUNTY=="Randolph" & StateFIPS==29
	replace CountyFIPS=177 if COUNTY=="Ray" & StateFIPS==29
	replace CountyFIPS=179 if COUNTY=="Reynolds" & StateFIPS==29
	replace CountyFIPS=181 if COUNTY=="Ripley" & StateFIPS==29
	replace CountyFIPS=183 if COUNTY=="St Charles" & StateFIPS==29
	replace CountyFIPS=183 if COUNTY=="St. Charles" & StateFIPS==29
	replace CountyFIPS=183 if COUNTY=="Saint Charles" & StateFIPS==29

	replace CountyFIPS=185 if COUNTY=="St. Clair" & StateFIPS==29
	replace CountyFIPS=185 if COUNTY=="Saint Clair" & StateFIPS==29

	replace CountyFIPS=185 if COUNTY=="St Clair" & StateFIPS==29
	replace CountyFIPS=186 if COUNTY=="Ste Genevieve" & StateFIPS==29
		replace CountyFIPS=186 if COUNTY=="Ste. Genevieve" & StateFIPS==29
	replace CountyFIPS=186 if COUNTY=="Sainte Genevieve" & StateFIPS==29

	replace CountyFIPS=187 if COUNTY=="St Francois" & StateFIPS==29
		replace CountyFIPS=187 if COUNTY=="St. Francois" & StateFIPS==29
	replace CountyFIPS=187 if COUNTY=="Saint Francois" & StateFIPS==29

	replace CountyFIPS=189 if COUNTY=="St Louis" & StateFIPS==29
	replace CountyFIPS=189 if COUNTY=="St. Louis" & StateFIPS==29
		replace CountyFIPS=189 if COUNTY=="Saint Louis" & StateFIPS==29

	replace CountyFIPS=510 if COUNTY=="St. Louis City" & StateFIPS==29
	replace CountyFIPS=510 if COUNTY=="Saint Louis City" & StateFIPS==29

	replace CountyFIPS=195 if COUNTY=="Saline" & StateFIPS==29
	replace CountyFIPS=197 if COUNTY=="Schuyler" & StateFIPS==29
	replace CountyFIPS=199 if COUNTY=="Scotland" & StateFIPS==29
	replace CountyFIPS=201 if COUNTY=="Scott" & StateFIPS==29
	replace CountyFIPS=203 if COUNTY=="Shannon" & StateFIPS==29
	replace CountyFIPS=205 if COUNTY=="Shelby" & StateFIPS==29
	replace CountyFIPS=207 if COUNTY=="Stoddard" & StateFIPS==29
	replace CountyFIPS=209 if COUNTY=="Stone" & StateFIPS==29
	replace CountyFIPS=211 if COUNTY=="Sullivan" & StateFIPS==29
	replace CountyFIPS=213 if COUNTY=="Taney" & StateFIPS==29
	replace CountyFIPS=215 if COUNTY=="Texas" & StateFIPS==29
	replace CountyFIPS=217 if COUNTY=="Vernon" & StateFIPS==29
	replace CountyFIPS=219 if COUNTY=="Warren" & StateFIPS==29
	replace CountyFIPS=221 if COUNTY=="Washington" & StateFIPS==29
	replace CountyFIPS=223 if COUNTY=="Wayne" & StateFIPS==29
	replace CountyFIPS=225 if COUNTY=="Webster" & StateFIPS==29
	replace CountyFIPS=227 if COUNTY=="Worth" & StateFIPS==29
	replace CountyFIPS=229 if COUNTY=="Wright" & StateFIPS==29
	replace CountyFIPS=510 if COUNTY=="St Louis City" & StateFIPS==29
	replace CountyFIPS=510 if COUNTY=="ST LOUIS CITY" & StateFIPS==29
	replace CountyFIPS=510 if COUNTY=="SAINT LOUIS CITY" & StateFIPS==29

	replace CountyFIPS=001 if COUNTY=="Beaverhead" & StateFIPS==30
	replace CountyFIPS=003 if COUNTY=="Big Horn" & StateFIPS==30
	replace CountyFIPS=005 if COUNTY=="Blaine" & StateFIPS==30
	replace CountyFIPS=007 if COUNTY=="Broadwater" & StateFIPS==30
	replace CountyFIPS=009 if COUNTY=="Carbon" & StateFIPS==30
	replace CountyFIPS=011 if COUNTY=="Carter" & StateFIPS==30
	replace CountyFIPS=013 if COUNTY=="Cascade" & StateFIPS==30
	replace CountyFIPS=015 if COUNTY=="Chouteau" & StateFIPS==30
	replace CountyFIPS=017 if COUNTY=="Custer" & StateFIPS==30
	replace CountyFIPS=019 if COUNTY=="Daniels" & StateFIPS==30
	replace CountyFIPS=021 if COUNTY=="Dawson" & StateFIPS==30
	replace CountyFIPS=023 if COUNTY=="Deer Lodge" & StateFIPS==30
	replace CountyFIPS=025 if COUNTY=="Fallon" & StateFIPS==30
	replace CountyFIPS=027 if COUNTY=="Fergus" & StateFIPS==30
	replace CountyFIPS=029 if COUNTY=="Flathead" & StateFIPS==30
	replace CountyFIPS=031 if COUNTY=="Gallatin" & StateFIPS==30
	replace CountyFIPS=033 if COUNTY=="Garfield" & StateFIPS==30
	replace CountyFIPS=035 if COUNTY=="Glacier" & StateFIPS==30
	replace CountyFIPS=037 if COUNTY=="Golden Valley" & StateFIPS==30
	replace CountyFIPS=039 if COUNTY=="Granite" & StateFIPS==30
	replace CountyFIPS=041 if COUNTY=="Hill" & StateFIPS==30
	replace CountyFIPS=043 if COUNTY=="Jefferson" & StateFIPS==30
	replace CountyFIPS=045 if COUNTY=="Judith Basin" & StateFIPS==30
	replace CountyFIPS=047 if COUNTY=="Lake" & StateFIPS==30
		replace CountyFIPS=049 if COUNTY=="Lewis And Clark" & StateFIPS==30

	replace CountyFIPS=049 if COUNTY=="Lewis and Clark" & StateFIPS==30
	replace CountyFIPS=051 if COUNTY=="Liberty" & StateFIPS==30
	replace CountyFIPS=053 if COUNTY=="Lincoln" & StateFIPS==30
	replace CountyFIPS=055 if COUNTY=="McCone" & StateFIPS==30
		replace CountyFIPS=055 if COUNTY=="Mccone" & StateFIPS==30

	replace CountyFIPS=057 if COUNTY=="Madison" & StateFIPS==30
	replace CountyFIPS=059 if COUNTY=="Meagher" & StateFIPS==30
	replace CountyFIPS=061 if COUNTY=="Mineral" & StateFIPS==30
	replace CountyFIPS=063 if COUNTY=="Missoula" & StateFIPS==30
	replace CountyFIPS=065 if COUNTY=="Musselshell" & StateFIPS==30
	replace CountyFIPS=067 if COUNTY=="Park" & StateFIPS==30
	replace CountyFIPS=069 if COUNTY=="Petroleum" & StateFIPS==30
	replace CountyFIPS=071 if COUNTY=="Phillips" & StateFIPS==30
	replace CountyFIPS=073 if COUNTY=="Pondera" & StateFIPS==30
	replace CountyFIPS=075 if COUNTY=="Powder River" & StateFIPS==30
	replace CountyFIPS=077 if COUNTY=="Powell" & StateFIPS==30
	replace CountyFIPS=079 if COUNTY=="Prairie" & StateFIPS==30
	replace CountyFIPS=081 if COUNTY=="Ravalli" & StateFIPS==30
	replace CountyFIPS=083 if COUNTY=="Richland" & StateFIPS==30
	replace CountyFIPS=085 if COUNTY=="Roosevelt" & StateFIPS==30
	replace CountyFIPS=087 if COUNTY=="Rosebud" & StateFIPS==30
	replace CountyFIPS=089 if COUNTY=="Sanders" & StateFIPS==30
	replace CountyFIPS=091 if COUNTY=="Sheridan" & StateFIPS==30
	replace CountyFIPS=093 if COUNTY=="Silver Bow" & StateFIPS==30
	replace CountyFIPS=095 if COUNTY=="Stillwater" & StateFIPS==30
	replace CountyFIPS=097 if COUNTY=="Sweet Grass" & StateFIPS==30
	replace CountyFIPS=099 if COUNTY=="Teton" & StateFIPS==30
	replace CountyFIPS=101 if COUNTY=="Toole" & StateFIPS==30
	replace CountyFIPS=103 if COUNTY=="Treasure" & StateFIPS==30
	replace CountyFIPS=105 if COUNTY=="Valley" & StateFIPS==30
	replace CountyFIPS=107 if COUNTY=="Wheatland" & StateFIPS==30
	replace CountyFIPS=109 if COUNTY=="Wibaux" & StateFIPS==30
	replace CountyFIPS=111 if COUNTY=="Yellowstone" & StateFIPS==30
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==31
	replace CountyFIPS=003 if COUNTY=="Antelope" & StateFIPS==31
	replace CountyFIPS=005 if COUNTY=="Arthur" & StateFIPS==31
	replace CountyFIPS=007 if COUNTY=="Banner" & StateFIPS==31
	replace CountyFIPS=009 if COUNTY=="Blaine" & StateFIPS==31
	replace CountyFIPS=011 if COUNTY=="Boone" & StateFIPS==31
	replace CountyFIPS=013 if COUNTY=="Box Butte" & StateFIPS==31
	replace CountyFIPS=015 if COUNTY=="Boyd" & StateFIPS==31
	replace CountyFIPS=017 if COUNTY=="Brown" & StateFIPS==31
	replace CountyFIPS=019 if COUNTY=="Buffalo" & StateFIPS==31
	replace CountyFIPS=021 if COUNTY=="Burt" & StateFIPS==31
	replace CountyFIPS=023 if COUNTY=="Butler" & StateFIPS==31
	replace CountyFIPS=025 if COUNTY=="Cass" & StateFIPS==31
	replace CountyFIPS=027 if COUNTY=="Cedar" & StateFIPS==31
	replace CountyFIPS=029 if COUNTY=="Chase" & StateFIPS==31
	replace CountyFIPS=031 if COUNTY=="Cherry" & StateFIPS==31
	replace CountyFIPS=033 if COUNTY=="Cheyenne" & StateFIPS==31
	replace CountyFIPS=035 if COUNTY=="Clay" & StateFIPS==31
	replace CountyFIPS=037 if COUNTY=="Colfax" & StateFIPS==31
	replace CountyFIPS=039 if COUNTY=="Cuming" & StateFIPS==31
	replace CountyFIPS=041 if COUNTY=="Custer" & StateFIPS==31
	replace CountyFIPS=043 if COUNTY=="Dakota" & StateFIPS==31
	replace CountyFIPS=045 if COUNTY=="Dawes" & StateFIPS==31
	replace CountyFIPS=047 if COUNTY=="Dawson" & StateFIPS==31
	replace CountyFIPS=049 if COUNTY=="Deuel" & StateFIPS==31
	replace CountyFIPS=051 if COUNTY=="Dixon" & StateFIPS==31
	replace CountyFIPS=053 if COUNTY=="Dodge" & StateFIPS==31
	replace CountyFIPS=055 if COUNTY=="Douglas" & StateFIPS==31
	replace CountyFIPS=057 if COUNTY=="Dundy" & StateFIPS==31
	replace CountyFIPS=059 if COUNTY=="Fillmore" & StateFIPS==31
	replace CountyFIPS=061 if COUNTY=="Franklin" & StateFIPS==31
	replace CountyFIPS=063 if COUNTY=="Frontier" & StateFIPS==31
	replace CountyFIPS=065 if COUNTY=="Furnas" & StateFIPS==31
	replace CountyFIPS=067 if COUNTY=="Gage" & StateFIPS==31
	replace CountyFIPS=069 if COUNTY=="Garden" & StateFIPS==31
	replace CountyFIPS=071 if COUNTY=="Garfield" & StateFIPS==31
	replace CountyFIPS=073 if COUNTY=="Gosper" & StateFIPS==31
	replace CountyFIPS=075 if COUNTY=="Grant" & StateFIPS==31
	replace CountyFIPS=077 if COUNTY=="Greeley" & StateFIPS==31
	replace CountyFIPS=079 if COUNTY=="Hall" & StateFIPS==31
	replace CountyFIPS=079 if COUNTY=="HALL" & StateFIPS==31
	replace CountyFIPS=081 if COUNTY=="Hamilton" & StateFIPS==31
	replace CountyFIPS=083 if COUNTY=="Harlan" & StateFIPS==31
	replace CountyFIPS=085 if COUNTY=="Hayes" & StateFIPS==31
	replace CountyFIPS=087 if COUNTY=="Hitchcock" & StateFIPS==31
	replace CountyFIPS=089 if COUNTY=="Holt" & StateFIPS==31
	replace CountyFIPS=091 if COUNTY=="Hooker" & StateFIPS==31
	replace CountyFIPS=093 if COUNTY=="Howard" & StateFIPS==31
	replace CountyFIPS=095 if COUNTY=="Jefferson" & StateFIPS==31
	replace CountyFIPS=097 if COUNTY=="Johnson" & StateFIPS==31
	replace CountyFIPS=099 if COUNTY=="Kearney" & StateFIPS==31
	replace CountyFIPS=101 if COUNTY=="Keith" & StateFIPS==31
	replace CountyFIPS=103 if COUNTY=="Keya Paha" & StateFIPS==31
	replace CountyFIPS=105 if COUNTY=="Kimball" & StateFIPS==31
	replace CountyFIPS=107 if COUNTY=="Knox" & StateFIPS==31
	replace CountyFIPS=109 if COUNTY=="Lancaster" & StateFIPS==31
	replace CountyFIPS=111 if COUNTY=="Lincoln" & StateFIPS==31
	replace CountyFIPS=113 if COUNTY=="Logan" & StateFIPS==31
	replace CountyFIPS=115 if COUNTY=="Loup" & StateFIPS==31
	replace CountyFIPS=117 if COUNTY=="McPherson" & StateFIPS==31
	replace CountyFIPS=117 if COUNTY=="Mc Pherson" & StateFIPS==31
	replace CountyFIPS=117 if COUNTY=="Mcpherson" & StateFIPS==31
	replace CountyFIPS=119 if COUNTY=="Madison" & StateFIPS==31
	replace CountyFIPS=121 if COUNTY=="Merrick" & StateFIPS==31
	replace CountyFIPS=123 if COUNTY=="Morrill" & StateFIPS==31
	replace CountyFIPS=125 if COUNTY=="Nance" & StateFIPS==31
	replace CountyFIPS=127 if COUNTY=="Nemaha" & StateFIPS==31
	replace CountyFIPS=129 if COUNTY=="Nuckolls" & StateFIPS==31
	replace CountyFIPS=131 if COUNTY=="Otoe" & StateFIPS==31
	replace CountyFIPS=133 if COUNTY=="Pawnee" & StateFIPS==31
	replace CountyFIPS=135 if COUNTY=="Perkins" & StateFIPS==31
	replace CountyFIPS=137 if COUNTY=="Phelps" & StateFIPS==31
	replace CountyFIPS=139 if COUNTY=="Pierce" & StateFIPS==31
	replace CountyFIPS=141 if COUNTY=="Platte" & StateFIPS==31
	replace CountyFIPS=141 if COUNTY=="PLATTE" & StateFIPS==31
	replace CountyFIPS=143 if COUNTY=="Polk" & StateFIPS==31
	replace CountyFIPS=145 if COUNTY=="Red Willow" & StateFIPS==31
	replace CountyFIPS=147 if COUNTY=="Richardson" & StateFIPS==31
	replace CountyFIPS=149 if COUNTY=="Rock" & StateFIPS==31
	replace CountyFIPS=151 if COUNTY=="Saline" & StateFIPS==31
	replace CountyFIPS=153 if COUNTY=="Sarpy" & StateFIPS==31
	replace CountyFIPS=155 if COUNTY=="Saunders" & StateFIPS==31
	replace CountyFIPS=157 if COUNTY=="Scotts Bluff" & StateFIPS==31
		replace CountyFIPS=157 if COUNTY=="Scott Bluff" & StateFIPS==31

	replace CountyFIPS=159 if COUNTY=="Seward" & StateFIPS==31
	replace CountyFIPS=161 if COUNTY=="Sheridan" & StateFIPS==31
	replace CountyFIPS=163 if COUNTY=="Sherman" & StateFIPS==31
	replace CountyFIPS=165 if COUNTY=="Sioux" & StateFIPS==31
	replace CountyFIPS=167 if COUNTY=="Stanton" & StateFIPS==31
	replace CountyFIPS=169 if COUNTY=="Thayer" & StateFIPS==31
	replace CountyFIPS=171 if COUNTY=="Thomas" & StateFIPS==31
	replace CountyFIPS=173 if COUNTY=="Thurston" & StateFIPS==31
	replace CountyFIPS=175 if COUNTY=="Valley" & StateFIPS==31
	replace CountyFIPS=177 if COUNTY=="Washington" & StateFIPS==31
	replace CountyFIPS=179 if COUNTY=="Wayne" & StateFIPS==31
	replace CountyFIPS=181 if COUNTY=="Webster" & StateFIPS==31
	replace CountyFIPS=183 if COUNTY=="Wheeler" & StateFIPS==31
	replace CountyFIPS=185 if COUNTY=="York" & StateFIPS==31
	replace CountyFIPS=001 if COUNTY=="Churchill" & StateFIPS==32
	replace CountyFIPS=003 if COUNTY=="Clark" & StateFIPS==32
	replace CountyFIPS=005 if COUNTY=="Douglas" & StateFIPS==32
	replace CountyFIPS=007 if COUNTY=="Elko" & StateFIPS==32
	replace CountyFIPS=009 if COUNTY=="Esmeralda" & StateFIPS==32
	replace CountyFIPS=011 if COUNTY=="Eureka" & StateFIPS==32
	replace CountyFIPS=013 if COUNTY=="Humboldt" & StateFIPS==32
	replace CountyFIPS=015 if COUNTY=="Lander" & StateFIPS==32
	replace CountyFIPS=017 if COUNTY=="Lincoln" & StateFIPS==32
	replace CountyFIPS=019 if COUNTY=="Lyon" & StateFIPS==32
	replace CountyFIPS=021 if COUNTY=="Mineral" & StateFIPS==32
	replace CountyFIPS=023 if COUNTY=="Nye" & StateFIPS==32
	replace CountyFIPS=027 if COUNTY=="Pershing" & StateFIPS==32
	replace CountyFIPS=029 if COUNTY=="Storey" & StateFIPS==32
	replace CountyFIPS=031 if COUNTY=="Washoe" & StateFIPS==32
	replace CountyFIPS=033 if COUNTY=="White Pine" & StateFIPS==32
	replace CountyFIPS=510 if COUNTY=="Carson City" & StateFIPS==32
	replace CountyFIPS=001 if COUNTY=="Belknap" & StateFIPS==33
	replace CountyFIPS=003 if COUNTY=="Carroll" & StateFIPS==33
	replace CountyFIPS=005 if COUNTY=="Cheshire" & StateFIPS==33
	replace CountyFIPS=007 if COUNTY=="Coos" & StateFIPS==33
	replace CountyFIPS=009 if COUNTY=="Grafton" & StateFIPS==33
	replace CountyFIPS=011 if COUNTY=="Hillsborough" & StateFIPS==33
	replace CountyFIPS=013 if COUNTY=="Merrimack" & StateFIPS==33
	replace CountyFIPS=015 if COUNTY=="Rockingham" & StateFIPS==33
	replace CountyFIPS=017 if COUNTY=="Strafford" & StateFIPS==33
	replace CountyFIPS=019 if COUNTY=="Sullivan" & StateFIPS==33
	replace CountyFIPS=001 if COUNTY=="Atlantic" & StateFIPS==34
	replace CountyFIPS=003 if COUNTY=="Bergen" & StateFIPS==34
	replace CountyFIPS=005 if COUNTY=="Burlington" & StateFIPS==34
	replace CountyFIPS=007 if COUNTY=="Camden" & StateFIPS==34
	replace CountyFIPS=009 if COUNTY=="Cape May" & StateFIPS==34
	replace CountyFIPS=011 if COUNTY=="Cumberland" & StateFIPS==34
	replace CountyFIPS=013 if COUNTY=="Essex" & StateFIPS==34
	replace CountyFIPS=015 if COUNTY=="Gloucester" & StateFIPS==34
	replace CountyFIPS=017 if COUNTY=="Hudson" & StateFIPS==34
	replace CountyFIPS=019 if COUNTY=="Hunterdon" & StateFIPS==34
	replace CountyFIPS=021 if COUNTY=="Mercer" & StateFIPS==34
	replace CountyFIPS=023 if COUNTY=="Middlesex" & StateFIPS==34
	replace CountyFIPS=025 if COUNTY=="Monmouth" & StateFIPS==34
	replace CountyFIPS=027 if COUNTY=="Morris" & StateFIPS==34
	replace CountyFIPS=029 if COUNTY=="Ocean" & StateFIPS==34
	replace CountyFIPS=031 if COUNTY=="Passaic" & StateFIPS==34
	replace CountyFIPS=033 if COUNTY=="Salem" & StateFIPS==34
	replace CountyFIPS=035 if COUNTY=="Somerset" & StateFIPS==34
	replace CountyFIPS=037 if COUNTY=="Sussex" & StateFIPS==34
	replace CountyFIPS=039 if COUNTY=="Union" & StateFIPS==34
	replace CountyFIPS=041 if COUNTY=="Warren" & StateFIPS==34
	replace CountyFIPS=001 if COUNTY=="Bernalillo" & StateFIPS==35
	replace CountyFIPS=003 if COUNTY=="Catron" & StateFIPS==35
	replace CountyFIPS=005 if COUNTY=="Chaves" & StateFIPS==35
	replace CountyFIPS=006 if COUNTY=="Cibola" & StateFIPS==35
	replace CountyFIPS=007 if COUNTY=="Colfax" & StateFIPS==35
	replace CountyFIPS=009 if COUNTY=="Curry" & StateFIPS==35
	replace CountyFIPS=011 if COUNTY=="De Baca" & StateFIPS==35
	replace CountyFIPS=013 if COUNTY=="Dona Ana" & StateFIPS==35
	replace CountyFIPS=015 if COUNTY=="Eddy" & StateFIPS==35
	replace CountyFIPS=017 if COUNTY=="Grant" & StateFIPS==35
	replace CountyFIPS=019 if COUNTY=="Guadalupe" & StateFIPS==35
	replace CountyFIPS=021 if COUNTY=="Harding" & StateFIPS==35
	replace CountyFIPS=023 if COUNTY=="Hidalgo" & StateFIPS==35
	replace CountyFIPS=025 if COUNTY=="Lea" & StateFIPS==35
	replace CountyFIPS=027 if COUNTY=="Lincoln" & StateFIPS==35
	replace CountyFIPS=028 if COUNTY=="Los Alamos" & StateFIPS==35
	replace CountyFIPS=029 if COUNTY=="Luna" & StateFIPS==35
	replace CountyFIPS=031 if COUNTY=="Mckinley" & StateFIPS==35
	replace CountyFIPS=031 if COUNTY=="McKinley" & StateFIPS==35
	replace CountyFIPS=033 if COUNTY=="Mora" & StateFIPS==35
	replace CountyFIPS=035 if COUNTY=="Otero" & StateFIPS==35
	replace CountyFIPS=037 if COUNTY=="Quay" & StateFIPS==35
	replace CountyFIPS=039 if COUNTY=="Rio Arriba" & StateFIPS==35
	replace CountyFIPS=041 if COUNTY=="Roosevelt" & StateFIPS==35
	replace CountyFIPS=043 if COUNTY=="Sandoval" & StateFIPS==35
	replace CountyFIPS=045 if COUNTY=="San Juan" & StateFIPS==35
	replace CountyFIPS=047 if COUNTY=="San Miguel" & StateFIPS==35
	replace CountyFIPS=049 if COUNTY=="Santa Fe" & StateFIPS==35
	replace CountyFIPS=051 if COUNTY=="Sierra" & StateFIPS==35
	replace CountyFIPS=053 if COUNTY=="Socorro" & StateFIPS==35
	replace CountyFIPS=055 if COUNTY=="Taos" & StateFIPS==35
	replace CountyFIPS=057 if COUNTY=="Torrance" & StateFIPS==35
	replace CountyFIPS=059 if COUNTY=="Union" & StateFIPS==35
	replace CountyFIPS=061 if COUNTY=="Valencia" & StateFIPS==35
	replace CountyFIPS=001 if COUNTY=="Albany" & StateFIPS==36
	replace CountyFIPS=003 if COUNTY=="Allegany" & StateFIPS==36
	replace CountyFIPS=005 if COUNTY=="Bronx" & StateFIPS==36
	replace CountyFIPS=007 if COUNTY=="Broome" & StateFIPS==36
	replace CountyFIPS=009 if COUNTY=="Cattaraugus" & StateFIPS==36
	replace CountyFIPS=011 if COUNTY=="Cayuga" & StateFIPS==36
	replace CountyFIPS=013 if COUNTY=="Chautauqua" & StateFIPS==36
	replace CountyFIPS=015 if COUNTY=="Chemung" & StateFIPS==36
	replace CountyFIPS=017 if COUNTY=="Chenango" & StateFIPS==36
	replace CountyFIPS=019 if COUNTY=="Clinton" & StateFIPS==36
	replace CountyFIPS=021 if COUNTY=="Columbia" & StateFIPS==36
	replace CountyFIPS=023 if COUNTY=="Cortland" & StateFIPS==36
	replace CountyFIPS=025 if COUNTY=="Delaware" & StateFIPS==36
	replace CountyFIPS=027 if COUNTY=="Dutchess" & StateFIPS==36
	replace CountyFIPS=029 if COUNTY=="Erie" & StateFIPS==36
	replace CountyFIPS=031 if COUNTY=="Essex" & StateFIPS==36
	replace CountyFIPS=033 if COUNTY=="Franklin" & StateFIPS==36
	replace CountyFIPS=035 if COUNTY=="Fulton" & StateFIPS==36
	replace CountyFIPS=037 if COUNTY=="Genesee" & StateFIPS==36
	replace CountyFIPS=039 if COUNTY=="Greene" & StateFIPS==36
	replace CountyFIPS=041 if COUNTY=="Hamilton" & StateFIPS==36
	replace CountyFIPS=043 if COUNTY=="Herkimer" & StateFIPS==36
	replace CountyFIPS=045 if COUNTY=="Jefferson" & StateFIPS==36
	replace CountyFIPS=047 if COUNTY=="Kings" & StateFIPS==36
	replace CountyFIPS=049 if COUNTY=="Lewis" & StateFIPS==36
	replace CountyFIPS=051 if COUNTY=="Livingston" & StateFIPS==36
	replace CountyFIPS=053 if COUNTY=="Madison" & StateFIPS==36
	replace CountyFIPS=055 if COUNTY=="Monroe" & StateFIPS==36
	replace CountyFIPS=057 if COUNTY=="Montgomery" & StateFIPS==36
	replace CountyFIPS=059 if COUNTY=="Nassau" & StateFIPS==36
	replace CountyFIPS=061 if COUNTY=="New York" & StateFIPS==36
	replace CountyFIPS=063 if COUNTY=="Niagara" & StateFIPS==36
	replace CountyFIPS=065 if COUNTY=="Oneida" & StateFIPS==36
	replace CountyFIPS=067 if COUNTY=="Onondaga" & StateFIPS==36
	replace CountyFIPS=069 if COUNTY=="Ontario" & StateFIPS==36
	replace CountyFIPS=071 if COUNTY=="Orange" & StateFIPS==36
	replace CountyFIPS=073 if COUNTY=="Orleans" & StateFIPS==36
	replace CountyFIPS=075 if COUNTY=="Oswego" & StateFIPS==36
	replace CountyFIPS=077 if COUNTY=="Otsego" & StateFIPS==36
	replace CountyFIPS=079 if COUNTY=="Putnam" & StateFIPS==36
	replace CountyFIPS=081 if COUNTY=="Queens" & StateFIPS==36
	replace CountyFIPS=083 if COUNTY=="Rensselaer" & StateFIPS==36
	replace CountyFIPS=085 if COUNTY=="Richmond" & StateFIPS==36
	replace CountyFIPS=087 if COUNTY=="Rockland" & StateFIPS==36
	replace CountyFIPS=089 if COUNTY=="St Lawrence" & StateFIPS==36
		replace CountyFIPS=089 if COUNTY=="St. Lawrence" & StateFIPS==36

	replace CountyFIPS=091 if COUNTY=="Saratoga" & StateFIPS==36
	replace CountyFIPS=093 if COUNTY=="Schenectady" & StateFIPS==36
	replace CountyFIPS=095 if COUNTY=="Schoharie" & StateFIPS==36
	replace CountyFIPS=097 if COUNTY=="Schuyler" & StateFIPS==36
	replace CountyFIPS=099 if COUNTY=="Seneca" & StateFIPS==36
	replace CountyFIPS=101 if COUNTY=="Steuben" & StateFIPS==36
	replace CountyFIPS=103 if COUNTY=="Suffolk" & StateFIPS==36
	replace CountyFIPS=105 if COUNTY=="Sullivan" & StateFIPS==36
	replace CountyFIPS=107 if COUNTY=="Tioga" & StateFIPS==36
	replace CountyFIPS=109 if COUNTY=="Tompkins" & StateFIPS==36
	replace CountyFIPS=111 if COUNTY=="Ulster" & StateFIPS==36
	replace CountyFIPS=113 if COUNTY=="Warren" & StateFIPS==36
	replace CountyFIPS=115 if COUNTY=="Washington" & StateFIPS==36
	replace CountyFIPS=117 if COUNTY=="Wayne" & StateFIPS==36
	replace CountyFIPS=119 if COUNTY=="Westchester" & StateFIPS==36
	replace CountyFIPS=121 if COUNTY=="Wyoming" & StateFIPS==36
	replace CountyFIPS=123 if COUNTY=="Yates" & StateFIPS==36
	replace CountyFIPS=001 if COUNTY=="Alamance" & StateFIPS==37
	replace CountyFIPS=003 if COUNTY=="Alexander" & StateFIPS==37
	replace CountyFIPS=005 if COUNTY=="Alleghany" & StateFIPS==37
	replace CountyFIPS=007 if COUNTY=="Anson" & StateFIPS==37
	replace CountyFIPS=009 if COUNTY=="Ashe" & StateFIPS==37
	replace CountyFIPS=011 if COUNTY=="Avery" & StateFIPS==37
	replace CountyFIPS=013 if COUNTY=="Beaufort" & StateFIPS==37
	replace CountyFIPS=015 if COUNTY=="Bertie" & StateFIPS==37
	replace CountyFIPS=017 if COUNTY=="Bladen" & StateFIPS==37
	replace CountyFIPS=019 if COUNTY=="Brunswick" & StateFIPS==37
	replace CountyFIPS=019 if COUNTY=="BRUNSWICK" & StateFIPS==37
	replace CountyFIPS=021 if COUNTY=="Buncombe" & StateFIPS==37
	replace CountyFIPS=023 if COUNTY=="Burke" & StateFIPS==37
	replace CountyFIPS=025 if COUNTY=="Cabarrus" & StateFIPS==37
	replace CountyFIPS=027 if COUNTY=="Caldwell" & StateFIPS==37
	replace CountyFIPS=029 if COUNTY=="Camden" & StateFIPS==37
	replace CountyFIPS=031 if COUNTY=="Carteret" & StateFIPS==37
	replace CountyFIPS=033 if COUNTY=="Caswell" & StateFIPS==37
	replace CountyFIPS=035 if COUNTY=="Catawba" & StateFIPS==37
	replace CountyFIPS=037 if COUNTY=="Chatham" & StateFIPS==37
	replace CountyFIPS=039 if COUNTY=="Cherokee" & StateFIPS==37
	replace CountyFIPS=041 if COUNTY=="Chowan" & StateFIPS==37
	replace CountyFIPS=043 if COUNTY=="Clay" & StateFIPS==37
	replace CountyFIPS=045 if COUNTY=="Cleveland" & StateFIPS==37
	replace CountyFIPS=047 if COUNTY=="Columbus" & StateFIPS==37
	replace CountyFIPS=049 if COUNTY=="Craven" & StateFIPS==37
	replace CountyFIPS=051 if COUNTY=="Cumberland" & StateFIPS==37
	replace CountyFIPS=053 if COUNTY=="Currituck" & StateFIPS==37
	replace CountyFIPS=055 if COUNTY=="Dare" & StateFIPS==37
	replace CountyFIPS=057 if COUNTY=="Davidson" & StateFIPS==37
	replace CountyFIPS=059 if COUNTY=="Davie" & StateFIPS==37
	replace CountyFIPS=061 if COUNTY=="Duplin" & StateFIPS==37
	replace CountyFIPS=063 if COUNTY=="Durham" & StateFIPS==37
	replace CountyFIPS=065 if COUNTY=="Edgecombe" & StateFIPS==37
	replace CountyFIPS=067 if COUNTY=="Forsyth" & StateFIPS==37
	replace CountyFIPS=069 if COUNTY=="Franklin" & StateFIPS==37
	replace CountyFIPS=071 if COUNTY=="Gaston" & StateFIPS==37
	replace CountyFIPS=073 if COUNTY=="Gates" & StateFIPS==37
	replace CountyFIPS=075 if COUNTY=="Graham" & StateFIPS==37
	replace CountyFIPS=077 if COUNTY=="Granville" & StateFIPS==37
	replace CountyFIPS=079 if COUNTY=="Greene" & StateFIPS==37
	replace CountyFIPS=081 if COUNTY=="Guilford" & StateFIPS==37
	replace CountyFIPS=083 if COUNTY=="Halifax" & StateFIPS==37
	replace CountyFIPS=085 if COUNTY=="Harnett" & StateFIPS==37
	replace CountyFIPS=087 if COUNTY=="Haywood" & StateFIPS==37
	replace CountyFIPS=089 if COUNTY=="Henderson" & StateFIPS==37
	replace CountyFIPS=091 if COUNTY=="Hertford" & StateFIPS==37
	replace CountyFIPS=093 if COUNTY=="Hoke" & StateFIPS==37
	replace CountyFIPS=095 if COUNTY=="Hyde" & StateFIPS==37
	replace CountyFIPS=097 if COUNTY=="Iredell" & StateFIPS==37
	replace CountyFIPS=099 if COUNTY=="Jackson" & StateFIPS==37
	replace CountyFIPS=101 if COUNTY=="Johnston" & StateFIPS==37
	replace CountyFIPS=103 if COUNTY=="Jones" & StateFIPS==37
	replace CountyFIPS=105 if COUNTY=="Lee" & StateFIPS==37
	replace CountyFIPS=107 if COUNTY=="Lenoir" & StateFIPS==37
	replace CountyFIPS=109 if COUNTY=="Lincoln" & StateFIPS==37
	replace CountyFIPS=111 if COUNTY=="McDowell" & StateFIPS==37
		replace CountyFIPS=111 if COUNTY=="Mc Dowell" & StateFIPS==37

	replace CountyFIPS=111 if COUNTY=="Mcdowell" & StateFIPS==37
	replace CountyFIPS=113 if COUNTY=="Macon" & StateFIPS==37
	replace CountyFIPS=115 if COUNTY=="Madison" & StateFIPS==37
	replace CountyFIPS=117 if COUNTY=="Martin" & StateFIPS==37
	replace CountyFIPS=119 if COUNTY=="Mecklenburg" & StateFIPS==37
	replace CountyFIPS=121 if COUNTY=="Mitchell" & StateFIPS==37
	replace CountyFIPS=123 if COUNTY=="Montgomery" & StateFIPS==37
	replace CountyFIPS=125 if COUNTY=="Moore" & StateFIPS==37
	replace CountyFIPS=127 if COUNTY=="Nash" & StateFIPS==37
	replace CountyFIPS=129 if COUNTY=="New Hanover" & StateFIPS==37
	replace CountyFIPS=131 if COUNTY=="Northampton" & StateFIPS==37
	replace CountyFIPS=133 if COUNTY=="Onslow" & StateFIPS==37
	replace CountyFIPS=135 if COUNTY=="Orange" & StateFIPS==37
	replace CountyFIPS=137 if COUNTY=="Pamlico" & StateFIPS==37
	replace CountyFIPS=139 if COUNTY=="Pasquotank" & StateFIPS==37
	replace CountyFIPS=141 if COUNTY=="Pender" & StateFIPS==37
	replace CountyFIPS=143 if COUNTY=="Perquimans" & StateFIPS==37
	replace CountyFIPS=145 if COUNTY=="Person" & StateFIPS==37
	replace CountyFIPS=145 if COUNTY=="PERSON" & StateFIPS==37
	replace CountyFIPS=147 if COUNTY=="Pitt" & StateFIPS==37
	replace CountyFIPS=149 if COUNTY=="Polk" & StateFIPS==37
	replace CountyFIPS=151 if COUNTY=="Randolph" & StateFIPS==37
	replace CountyFIPS=153 if COUNTY=="Richmond" & StateFIPS==37
	replace CountyFIPS=155 if COUNTY=="Robeson" & StateFIPS==37
	replace CountyFIPS=157 if COUNTY=="Rockingham" & StateFIPS==37
	replace CountyFIPS=159 if COUNTY=="Rowan" & StateFIPS==37
	replace CountyFIPS=161 if COUNTY=="Rutherford" & StateFIPS==37
	replace CountyFIPS=163 if COUNTY=="Sampson" & StateFIPS==37
	replace CountyFIPS=165 if COUNTY=="Scotland" & StateFIPS==37
	replace CountyFIPS=167 if COUNTY=="Stanly" & StateFIPS==37
	replace CountyFIPS=169 if COUNTY=="Stokes" & StateFIPS==37
	replace CountyFIPS=171 if COUNTY=="Surry" & StateFIPS==37
	replace CountyFIPS=173 if COUNTY=="Swain" & StateFIPS==37
	replace CountyFIPS=175 if COUNTY=="Transylvania" & StateFIPS==37
	replace CountyFIPS=177 if COUNTY=="Tyrrell" & StateFIPS==37
	replace CountyFIPS=179 if COUNTY=="Union" & StateFIPS==37
	replace CountyFIPS=181 if COUNTY=="Vance" & StateFIPS==37
	replace CountyFIPS=183 if COUNTY=="Wake" & StateFIPS==37
	replace CountyFIPS=185 if COUNTY=="Warren" & StateFIPS==37
	replace CountyFIPS=187 if COUNTY=="Washington" & StateFIPS==37
	replace CountyFIPS=189 if COUNTY=="Watauga" & StateFIPS==37
	replace CountyFIPS=191 if COUNTY=="Wayne" & StateFIPS==37
	replace CountyFIPS=193 if COUNTY=="Wilkes" & StateFIPS==37
	replace CountyFIPS=195 if COUNTY=="Wilson" & StateFIPS==37
	replace CountyFIPS=197 if COUNTY=="Yadkin" & StateFIPS==37
	replace CountyFIPS=199 if COUNTY=="Yancey" & StateFIPS==37
	
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==38
	replace CountyFIPS=003 if COUNTY=="Barnes" & StateFIPS==38
	replace CountyFIPS=005 if COUNTY=="Benson" & StateFIPS==38
	replace CountyFIPS=007 if COUNTY=="Billings" & StateFIPS==38
	replace CountyFIPS=009 if COUNTY=="Bottineau" & StateFIPS==38
	replace CountyFIPS=011 if COUNTY=="Bowman" & StateFIPS==38
	replace CountyFIPS=013 if COUNTY=="Burke" & StateFIPS==38
	replace CountyFIPS=015 if COUNTY=="Burleigh" & StateFIPS==38
	replace CountyFIPS=017 if COUNTY=="Cass" & StateFIPS==38
	replace CountyFIPS=019 if COUNTY=="Cavalier" & StateFIPS==38
	replace CountyFIPS=021 if COUNTY=="Dickey" & StateFIPS==38
	replace CountyFIPS=023 if COUNTY=="Divide" & StateFIPS==38
	replace CountyFIPS=025 if COUNTY=="Dunn" & StateFIPS==38
	replace CountyFIPS=027 if COUNTY=="Eddy" & StateFIPS==38
	replace CountyFIPS=029 if COUNTY=="Emmons" & StateFIPS==38
	replace CountyFIPS=031 if COUNTY=="Foster" & StateFIPS==38
	replace CountyFIPS=033 if COUNTY=="Golden Valley" & StateFIPS==38
	replace CountyFIPS=035 if COUNTY=="Grand Forks" & StateFIPS==38
	replace CountyFIPS=037 if COUNTY=="Grant" & StateFIPS==38
	replace CountyFIPS=039 if COUNTY=="Griggs" & StateFIPS==38
	replace CountyFIPS=041 if COUNTY=="Hettinger" & StateFIPS==38
	replace CountyFIPS=043 if COUNTY=="Kidder" & StateFIPS==38
	replace CountyFIPS=045 if COUNTY=="Lamoure" & StateFIPS==38
		replace CountyFIPS=045 if COUNTY=="LaMoure" & StateFIPS==38

		replace CountyFIPS=045 if COUNTY=="La Moure" & StateFIPS==38
	replace CountyFIPS=047 if COUNTY=="Logan" & StateFIPS==38
	replace CountyFIPS=049 if COUNTY=="McHenry" & StateFIPS==38
		replace CountyFIPS=049 if COUNTY=="Mchenry" & StateFIPS==38

	replace CountyFIPS=051 if COUNTY=="McIntosh" & StateFIPS==38
	replace CountyFIPS=051 if COUNTY=="Mcintosh" & StateFIPS==38
	replace CountyFIPS=053 if COUNTY=="Mckenzie" & StateFIPS==38
		replace CountyFIPS=053 if COUNTY=="McKenzie" & StateFIPS==38

	replace CountyFIPS=055 if COUNTY=="Mclean" & StateFIPS==38
	replace CountyFIPS=055 if COUNTY=="McLean" & StateFIPS==38
	replace CountyFIPS=057 if COUNTY=="Mercer" & StateFIPS==38
	replace CountyFIPS=059 if COUNTY=="Morton" & StateFIPS==38
	replace CountyFIPS=061 if COUNTY=="Mountrail" & StateFIPS==38
	replace CountyFIPS=063 if COUNTY=="Nelson" & StateFIPS==38
	replace CountyFIPS=065 if COUNTY=="Oliver" & StateFIPS==38
	replace CountyFIPS=067 if COUNTY=="Pembina" & StateFIPS==38
	replace CountyFIPS=069 if COUNTY=="Pierce" & StateFIPS==38
	replace CountyFIPS=071 if COUNTY=="Ramsey" & StateFIPS==38
	replace CountyFIPS=073 if COUNTY=="Ransom" & StateFIPS==38
	replace CountyFIPS=075 if COUNTY=="Renville" & StateFIPS==38
	replace CountyFIPS=077 if COUNTY=="Richland" & StateFIPS==38
	replace CountyFIPS=079 if COUNTY=="Rolette" & StateFIPS==38
	replace CountyFIPS=081 if COUNTY=="Sargent" & StateFIPS==38
	replace CountyFIPS=083 if COUNTY=="Sheridan" & StateFIPS==38
	replace CountyFIPS=085 if COUNTY=="Sioux" & StateFIPS==38
	replace CountyFIPS=087 if COUNTY=="Slope" & StateFIPS==38
	replace CountyFIPS=089 if COUNTY=="Stark" & StateFIPS==38
	replace CountyFIPS=091 if COUNTY=="Steele" & StateFIPS==38
	replace CountyFIPS=093 if COUNTY=="Stutsman" & StateFIPS==38
	replace CountyFIPS=095 if COUNTY=="Towner" & StateFIPS==38
	replace CountyFIPS=097 if COUNTY=="Traill" & StateFIPS==38
	replace CountyFIPS=099 if COUNTY=="Walsh" & StateFIPS==38
	replace CountyFIPS=101 if COUNTY=="Ward" & StateFIPS==38
	replace CountyFIPS=103 if COUNTY=="Wells" & StateFIPS==38
	replace CountyFIPS=105 if COUNTY=="Williams" & StateFIPS==38
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==39
	replace CountyFIPS=003 if COUNTY=="Allen" & StateFIPS==39
	replace CountyFIPS=005 if COUNTY=="Ashland" & StateFIPS==39
	replace CountyFIPS=007 if COUNTY=="Ashtabula" & StateFIPS==39
	replace CountyFIPS=009 if COUNTY=="Athens" & StateFIPS==39
	replace CountyFIPS=011 if COUNTY=="Auglaize" & StateFIPS==39
	replace CountyFIPS=013 if COUNTY=="Belmont" & StateFIPS==39
	replace CountyFIPS=015 if COUNTY=="Brown" & StateFIPS==39
	replace CountyFIPS=017 if COUNTY=="Butler" & StateFIPS==39
	replace CountyFIPS=019 if COUNTY=="Carroll" & StateFIPS==39
	replace CountyFIPS=021 if COUNTY=="Champaign" & StateFIPS==39
	replace CountyFIPS=023 if COUNTY=="Clark" & StateFIPS==39
	replace CountyFIPS=025 if COUNTY=="Clermont" & StateFIPS==39
	replace CountyFIPS=027 if COUNTY=="Clinton" & StateFIPS==39
	replace CountyFIPS=029 if COUNTY=="Columbiana" & StateFIPS==39
	replace CountyFIPS=031 if COUNTY=="Coshocton" & StateFIPS==39
	replace CountyFIPS=033 if COUNTY=="Crawford" & StateFIPS==39
	replace CountyFIPS=035 if COUNTY=="Cuyahoga" & StateFIPS==39
	replace CountyFIPS=037 if COUNTY=="Darke" & StateFIPS==39
	replace CountyFIPS=039 if COUNTY=="Defiance" & StateFIPS==39
	replace CountyFIPS=041 if COUNTY=="Delaware" & StateFIPS==39
	replace CountyFIPS=043 if COUNTY=="Erie" & StateFIPS==39
	replace CountyFIPS=045 if COUNTY=="Fairfield" & StateFIPS==39
	replace CountyFIPS=047 if COUNTY=="Fayette" & StateFIPS==39
	replace CountyFIPS=049 if COUNTY=="Franklin" & StateFIPS==39
	replace CountyFIPS=051 if COUNTY=="Fulton" & StateFIPS==39
	replace CountyFIPS=053 if COUNTY=="Gallia" & StateFIPS==39
	replace CountyFIPS=055 if COUNTY=="Geauga" & StateFIPS==39
	replace CountyFIPS=057 if COUNTY=="Greene" & StateFIPS==39
	replace CountyFIPS=059 if COUNTY=="Guernsey" & StateFIPS==39
	replace CountyFIPS=061 if COUNTY=="Hamilton" & StateFIPS==39
	replace CountyFIPS=063 if COUNTY=="Hancock" & StateFIPS==39
	replace CountyFIPS=065 if COUNTY=="Hardin" & StateFIPS==39
	replace CountyFIPS=067 if COUNTY=="Harrison" & StateFIPS==39
	replace CountyFIPS=069 if COUNTY=="Henry" & StateFIPS==39
	replace CountyFIPS=071 if COUNTY=="Highland" & StateFIPS==39
	replace CountyFIPS=073 if COUNTY=="Hocking" & StateFIPS==39
	replace CountyFIPS=075 if COUNTY=="Holmes" & StateFIPS==39
	replace CountyFIPS=077 if COUNTY=="Huron" & StateFIPS==39
	replace CountyFIPS=079 if COUNTY=="Jackson" & StateFIPS==39
	replace CountyFIPS=081 if COUNTY=="Jefferson" & StateFIPS==39
	replace CountyFIPS=083 if COUNTY=="Knox" & StateFIPS==39
	replace CountyFIPS=085 if COUNTY=="Lake" & StateFIPS==39
	replace CountyFIPS=087 if COUNTY=="Lawrence" & StateFIPS==39
	replace CountyFIPS=089 if COUNTY=="Licking" & StateFIPS==39
	replace CountyFIPS=091 if COUNTY=="Logan" & StateFIPS==39
	replace CountyFIPS=093 if COUNTY=="Lorain" & StateFIPS==39
	replace CountyFIPS=095 if COUNTY=="Lucas" & StateFIPS==39
	replace CountyFIPS=097 if COUNTY=="Madison" & StateFIPS==39
	replace CountyFIPS=099 if COUNTY=="Mahoning" & StateFIPS==39
	replace CountyFIPS=101 if COUNTY=="Marion" & StateFIPS==39
	replace CountyFIPS=103 if COUNTY=="Medina" & StateFIPS==39
	replace CountyFIPS=105 if COUNTY=="Meigs" & StateFIPS==39
	replace CountyFIPS=107 if COUNTY=="Mercer" & StateFIPS==39
	replace CountyFIPS=109 if COUNTY=="Miami" & StateFIPS==39
	replace CountyFIPS=111 if COUNTY=="Monroe" & StateFIPS==39
	replace CountyFIPS=113 if COUNTY=="Montgomery" & StateFIPS==39
	replace CountyFIPS=115 if COUNTY=="Morgan" & StateFIPS==39
	replace CountyFIPS=117 if COUNTY=="Morrow" & StateFIPS==39
	replace CountyFIPS=119 if COUNTY=="Muskingum" & StateFIPS==39
	replace CountyFIPS=121 if COUNTY=="Noble" & StateFIPS==39
	replace CountyFIPS=123 if COUNTY=="Ottawa" & StateFIPS==39
	replace CountyFIPS=125 if COUNTY=="Paulding" & StateFIPS==39
	replace CountyFIPS=127 if COUNTY=="Perry" & StateFIPS==39
	replace CountyFIPS=129 if COUNTY=="Pickaway" & StateFIPS==39
	replace CountyFIPS=131 if COUNTY=="Pike" & StateFIPS==39
	replace CountyFIPS=133 if COUNTY=="Portage" & StateFIPS==39
	replace CountyFIPS=135 if COUNTY=="Preble" & StateFIPS==39
	replace CountyFIPS=137 if COUNTY=="Putnam" & StateFIPS==39
	replace CountyFIPS=139 if COUNTY=="Richland" & StateFIPS==39
	replace CountyFIPS=141 if COUNTY=="Ross" & StateFIPS==39
	replace CountyFIPS=143 if COUNTY=="Sandusky" & StateFIPS==39
	replace CountyFIPS=145 if COUNTY=="Scioto" & StateFIPS==39
	replace CountyFIPS=147 if COUNTY=="Seneca" & StateFIPS==39
	replace CountyFIPS=149 if COUNTY=="Shelby" & StateFIPS==39
	replace CountyFIPS=151 if COUNTY=="Stark" & StateFIPS==39
	replace CountyFIPS=153 if COUNTY=="Summit" & StateFIPS==39
	replace CountyFIPS=155 if COUNTY=="Trumbull" & StateFIPS==39
	replace CountyFIPS=157 if COUNTY=="Tuscarawas" & StateFIPS==39
	replace CountyFIPS=159 if COUNTY=="Union" & StateFIPS==39
	replace CountyFIPS=161 if COUNTY=="Van Wert" & StateFIPS==39
	replace CountyFIPS=163 if COUNTY=="Vinton" & StateFIPS==39
	replace CountyFIPS=165 if COUNTY=="Warren" & StateFIPS==39
	replace CountyFIPS=167 if COUNTY=="Washington" & StateFIPS==39
	replace CountyFIPS=169 if COUNTY=="Wayne" & StateFIPS==39
	replace CountyFIPS=171 if COUNTY=="Williams" & StateFIPS==39
	replace CountyFIPS=173 if COUNTY=="Wood" & StateFIPS==39
	replace CountyFIPS=175 if COUNTY=="Wyandot" & StateFIPS==39
	replace CountyFIPS=001 if COUNTY=="Adair" & StateFIPS==40
	replace CountyFIPS=003 if COUNTY=="Alfalfa" & StateFIPS==40
	replace CountyFIPS=005 if COUNTY=="Atoka" & StateFIPS==40
	replace CountyFIPS=007 if COUNTY=="Beaver" & StateFIPS==40
	replace CountyFIPS=009 if COUNTY=="Beckham" & StateFIPS==40
	replace CountyFIPS=011 if COUNTY=="Blaine" & StateFIPS==40
	replace CountyFIPS=013 if COUNTY=="Bryan" & StateFIPS==40
	replace CountyFIPS=015 if COUNTY=="Caddo" & StateFIPS==40
	replace CountyFIPS=017 if COUNTY=="Canadian" & StateFIPS==40
	replace CountyFIPS=019 if COUNTY=="Carter" & StateFIPS==40
	replace CountyFIPS=021 if COUNTY=="Cherokee" & StateFIPS==40
	replace CountyFIPS=023 if COUNTY=="Choctaw" & StateFIPS==40
	replace CountyFIPS=025 if COUNTY=="Cimarron" & StateFIPS==40
	replace CountyFIPS=027 if COUNTY=="Cleveland" & StateFIPS==40
	replace CountyFIPS=029 if COUNTY=="Coal" & StateFIPS==40
	replace CountyFIPS=031 if COUNTY=="Comanche" & StateFIPS==40
	replace CountyFIPS=033 if COUNTY=="Cotton" & StateFIPS==40
	replace CountyFIPS=035 if COUNTY=="Craig" & StateFIPS==40
	replace CountyFIPS=037 if COUNTY=="Creek" & StateFIPS==40
	replace CountyFIPS=039 if COUNTY=="Custer" & StateFIPS==40
	replace CountyFIPS=041 if COUNTY=="Delaware" & StateFIPS==40
	replace CountyFIPS=043 if COUNTY=="Dewey" & StateFIPS==40
	replace CountyFIPS=045 if COUNTY=="Ellis" & StateFIPS==40
	replace CountyFIPS=047 if COUNTY=="Garfield" & StateFIPS==40
	replace CountyFIPS=049 if COUNTY=="Garvin" & StateFIPS==40
	replace CountyFIPS=051 if COUNTY=="Grady" & StateFIPS==40
	replace CountyFIPS=053 if COUNTY=="Grant" & StateFIPS==40
	replace CountyFIPS=055 if COUNTY=="Greer" & StateFIPS==40
	replace CountyFIPS=057 if COUNTY=="Harmon" & StateFIPS==40
	replace CountyFIPS=059 if COUNTY=="Harper" & StateFIPS==40
	replace CountyFIPS=061 if COUNTY=="Haskell" & StateFIPS==40
	replace CountyFIPS=063 if COUNTY=="Hughes" & StateFIPS==40
	replace CountyFIPS=065 if COUNTY=="Jackson" & StateFIPS==40
	replace CountyFIPS=067 if COUNTY=="Jefferson" & StateFIPS==40
	replace CountyFIPS=069 if COUNTY=="Johnston" & StateFIPS==40
	replace CountyFIPS=071 if COUNTY=="Kay" & StateFIPS==40
	replace CountyFIPS=073 if COUNTY=="Kingfisher" & StateFIPS==40
	replace CountyFIPS=075 if COUNTY=="Kiowa" & StateFIPS==40
	replace CountyFIPS=077 if COUNTY=="Latimer" & StateFIPS==40
	replace CountyFIPS=079 if COUNTY=="Le Flore" & StateFIPS==40
	replace CountyFIPS=079 if COUNTY=="Leflore" & StateFIPS==40
	replace CountyFIPS=081 if COUNTY=="Lincoln" & StateFIPS==40
	replace CountyFIPS=083 if COUNTY=="Logan" & StateFIPS==40
	replace CountyFIPS=085 if COUNTY=="Love" & StateFIPS==40
	replace CountyFIPS=087 if COUNTY=="Mcclain" & StateFIPS==40
	replace CountyFIPS=087 if COUNTY=="McClain" & StateFIPS==40
	replace CountyFIPS=089 if COUNTY=="McCurtain" & StateFIPS==40
		replace CountyFIPS=089 if COUNTY=="Mccurtain" & StateFIPS==40
	replace CountyFIPS=091 if COUNTY=="Mcintosh" & StateFIPS==40

	replace CountyFIPS=091 if COUNTY=="McIntosh" & StateFIPS==40
	replace CountyFIPS=093 if COUNTY=="Major" & StateFIPS==40
	replace CountyFIPS=095 if COUNTY=="Marshall" & StateFIPS==40
	replace CountyFIPS=097 if COUNTY=="Mayes" & StateFIPS==40
	replace CountyFIPS=099 if COUNTY=="Murray" & StateFIPS==40
	replace CountyFIPS=101 if COUNTY=="Muskogee" & StateFIPS==40
	replace CountyFIPS=103 if COUNTY=="Noble" & StateFIPS==40
	replace CountyFIPS=105 if COUNTY=="Nowata" & StateFIPS==40
	replace CountyFIPS=107 if COUNTY=="Okfuskee" & StateFIPS==40
	replace CountyFIPS=109 if COUNTY=="Oklahoma" & StateFIPS==40
	replace CountyFIPS=111 if COUNTY=="Okmulgee" & StateFIPS==40
	replace CountyFIPS=113 if COUNTY=="Osage" & StateFIPS==40
	replace CountyFIPS=115 if COUNTY=="Ottawa" & StateFIPS==40
	replace CountyFIPS=117 if COUNTY=="Pawnee" & StateFIPS==40
	replace CountyFIPS=119 if COUNTY=="Payne" & StateFIPS==40
	replace CountyFIPS=121 if COUNTY=="Pittsburg" & StateFIPS==40
	replace CountyFIPS=123 if COUNTY=="Pontotoc" & StateFIPS==40
	replace CountyFIPS=125 if COUNTY=="Pottawatomie" & StateFIPS==40
	replace CountyFIPS=127 if COUNTY=="Pushmataha" & StateFIPS==40
	replace CountyFIPS=129 if COUNTY=="Roger Mills" & StateFIPS==40
	replace CountyFIPS=131 if COUNTY=="Rogers" & StateFIPS==40
	replace CountyFIPS=133 if COUNTY=="Seminole" & StateFIPS==40
	replace CountyFIPS=135 if COUNTY=="Sequoyah" & StateFIPS==40
	replace CountyFIPS=137 if COUNTY=="Stephens" & StateFIPS==40
	replace CountyFIPS=139 if COUNTY=="Texas" & StateFIPS==40
	replace CountyFIPS=141 if COUNTY=="Tillman" & StateFIPS==40
	replace CountyFIPS=143 if COUNTY=="Tulsa" & StateFIPS==40
	replace CountyFIPS=145 if COUNTY=="Wagoner" & StateFIPS==40
	replace CountyFIPS=147 if COUNTY=="Washington" & StateFIPS==40
	replace CountyFIPS=149 if COUNTY=="Washita" & StateFIPS==40
	replace CountyFIPS=151 if COUNTY=="Woods" & StateFIPS==40
	replace CountyFIPS=153 if COUNTY=="Woodward" & StateFIPS==40
	replace CountyFIPS=001 if COUNTY=="Baker" & StateFIPS==41
	replace CountyFIPS=003 if COUNTY=="Benton" & StateFIPS==41
	replace CountyFIPS=005 if COUNTY=="Clackamas" & StateFIPS==41
	replace CountyFIPS=007 if COUNTY=="Clatsop" & StateFIPS==41
	replace CountyFIPS=009 if COUNTY=="Columbia" & StateFIPS==41
	replace CountyFIPS=011 if COUNTY=="Coos" & StateFIPS==41
	replace CountyFIPS=013 if COUNTY=="Crook" & StateFIPS==41
	replace CountyFIPS=015 if COUNTY=="Curry" & StateFIPS==41
	replace CountyFIPS=017 if COUNTY=="Deschutes" & StateFIPS==41
	replace CountyFIPS=019 if COUNTY=="Douglas" & StateFIPS==41
	replace CountyFIPS=021 if COUNTY=="Gilliam" & StateFIPS==41
	replace CountyFIPS=023 if COUNTY=="Grant" & StateFIPS==41
	replace CountyFIPS=025 if COUNTY=="Harney" & StateFIPS==41
	replace CountyFIPS=027 if COUNTY=="Hood River" & StateFIPS==41
	replace CountyFIPS=029 if COUNTY=="Jackson" & StateFIPS==41
	replace CountyFIPS=031 if COUNTY=="Jefferson" & StateFIPS==41
	replace CountyFIPS=033 if COUNTY=="Josephine" & StateFIPS==41
	replace CountyFIPS=035 if COUNTY=="Klamath" & StateFIPS==41
	replace CountyFIPS=037 if COUNTY=="Lake" & StateFIPS==41
	replace CountyFIPS=039 if COUNTY=="Lane" & StateFIPS==41
	replace CountyFIPS=041 if COUNTY=="Lincoln" & StateFIPS==41
	replace CountyFIPS=043 if COUNTY=="Linn" & StateFIPS==41
	replace CountyFIPS=045 if COUNTY=="Malheur" & StateFIPS==41
	replace CountyFIPS=047 if COUNTY=="Marion" & StateFIPS==41
	replace CountyFIPS=049 if COUNTY=="Morrow" & StateFIPS==41
	replace CountyFIPS=051 if COUNTY=="Multnomah" & StateFIPS==41
	replace CountyFIPS=053 if COUNTY=="Polk" & StateFIPS==41
	replace CountyFIPS=055 if COUNTY=="Sherman" & StateFIPS==41
	replace CountyFIPS=057 if COUNTY=="Tillamook" & StateFIPS==41
	replace CountyFIPS=059 if COUNTY=="Umatilla" & StateFIPS==41
	replace CountyFIPS=061 if COUNTY=="Union" & StateFIPS==41
	replace CountyFIPS=063 if COUNTY=="Wallowa" & StateFIPS==41
	replace CountyFIPS=065 if COUNTY=="Wasco" & StateFIPS==41
	replace CountyFIPS=067 if COUNTY=="Washington" & StateFIPS==41
	replace CountyFIPS=069 if COUNTY=="Wheeler" & StateFIPS==41
	replace CountyFIPS=071 if COUNTY=="Yamhill" & StateFIPS==41
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==42
	replace CountyFIPS=003 if COUNTY=="Allegheny" & StateFIPS==42
	replace CountyFIPS=005 if COUNTY=="Armstrong" & StateFIPS==42
	replace CountyFIPS=007 if COUNTY=="Beaver" & StateFIPS==42
	replace CountyFIPS=009 if COUNTY=="Bedford" & StateFIPS==42
	replace CountyFIPS=011 if COUNTY=="Berks" & StateFIPS==42
	replace CountyFIPS=013 if COUNTY=="Blair" & StateFIPS==42
	replace CountyFIPS=015 if COUNTY=="Bradford" & StateFIPS==42
	replace CountyFIPS=017 if COUNTY=="Bucks" & StateFIPS==42
	replace CountyFIPS=019 if COUNTY=="Butler" & StateFIPS==42
	replace CountyFIPS=021 if COUNTY=="Cambria" & StateFIPS==42
	replace CountyFIPS=023 if COUNTY=="Cameron" & StateFIPS==42
	replace CountyFIPS=025 if COUNTY=="Carbon" & StateFIPS==42
	replace CountyFIPS=027 if COUNTY=="Centre" & StateFIPS==42
	replace CountyFIPS=029 if COUNTY=="Chester" & StateFIPS==42
	replace CountyFIPS=031 if COUNTY=="Clarion" & StateFIPS==42
	replace CountyFIPS=031 if COUNTY=="CLARION" & StateFIPS==42
	replace CountyFIPS=033 if COUNTY=="Clearfield" & StateFIPS==42
	replace CountyFIPS=035 if COUNTY=="Clinton" & StateFIPS==42
	replace CountyFIPS=037 if COUNTY=="Columbia" & StateFIPS==42
	replace CountyFIPS=039 if COUNTY=="Crawford" & StateFIPS==42
	replace CountyFIPS=041 if COUNTY=="Cumberland" & StateFIPS==42
	replace CountyFIPS=043 if COUNTY=="Dauphin" & StateFIPS==42
	replace CountyFIPS=045 if COUNTY=="Delaware" & StateFIPS==42
	replace CountyFIPS=047 if COUNTY=="Elk" & StateFIPS==42
	replace CountyFIPS=049 if COUNTY=="Erie" & StateFIPS==42
	replace CountyFIPS=051 if COUNTY=="Fayette" & StateFIPS==42
	replace CountyFIPS=053 if COUNTY=="Forest" & StateFIPS==42
	replace CountyFIPS=055 if COUNTY=="Franklin" & StateFIPS==42
	replace CountyFIPS=057 if COUNTY=="Fulton" & StateFIPS==42
	replace CountyFIPS=059 if COUNTY=="Greene" & StateFIPS==42
	replace CountyFIPS=061 if COUNTY=="Huntingdon" & StateFIPS==42
	replace CountyFIPS=063 if COUNTY=="Indiana" & StateFIPS==42
	replace CountyFIPS=065 if COUNTY=="Jefferson" & StateFIPS==42
	replace CountyFIPS=067 if COUNTY=="Juniata" & StateFIPS==42
	replace CountyFIPS=069 if COUNTY=="Lackawanna" & StateFIPS==42
	replace CountyFIPS=071 if COUNTY=="Lancaster" & StateFIPS==42
	replace CountyFIPS=073 if COUNTY=="Lawrence" & StateFIPS==42
	replace CountyFIPS=075 if COUNTY=="Lebanon" & StateFIPS==42
	replace CountyFIPS=077 if COUNTY=="Lehigh" & StateFIPS==42
	replace CountyFIPS=079 if COUNTY=="Luzerne" & StateFIPS==42
	replace CountyFIPS=081 if COUNTY=="Lycoming" & StateFIPS==42
	replace CountyFIPS=083 if COUNTY=="McKean" & StateFIPS==42
		replace CountyFIPS=083 if COUNTY=="Mckean" & StateFIPS==42
	replace CountyFIPS=083 if COUNTY=="Mc Kean" & StateFIPS==42

	replace CountyFIPS=085 if COUNTY=="Mercer" & StateFIPS==42
	replace CountyFIPS=087 if COUNTY=="Mifflin" & StateFIPS==42
	replace CountyFIPS=089 if COUNTY=="Monroe" & StateFIPS==42
	replace CountyFIPS=091 if COUNTY=="Montgomery" & StateFIPS==42
	replace CountyFIPS=093 if COUNTY=="Montour" & StateFIPS==42
	replace CountyFIPS=095 if COUNTY=="Northampton" & StateFIPS==42
	replace CountyFIPS=097 if COUNTY=="Northumberland" & StateFIPS==42
		replace CountyFIPS=097 if COUNTY=="Northumberlnd" & StateFIPS==42

	replace CountyFIPS=099 if COUNTY=="Perry" & StateFIPS==42
	replace CountyFIPS=101 if COUNTY=="Philadelphia" & StateFIPS==42
	replace CountyFIPS=103 if COUNTY=="Pike" & StateFIPS==42
	replace CountyFIPS=105 if COUNTY=="Potter" & StateFIPS==42
	replace CountyFIPS=107 if COUNTY=="Schuylkill" & StateFIPS==42
	replace CountyFIPS=109 if COUNTY=="Snyder" & StateFIPS==42
	replace CountyFIPS=111 if COUNTY=="Somerset" & StateFIPS==42
	replace CountyFIPS=113 if COUNTY=="Sullivan" & StateFIPS==42
	replace CountyFIPS=115 if COUNTY=="Susquehanna" & StateFIPS==42
	replace CountyFIPS=117 if COUNTY=="Tioga" & StateFIPS==42
	replace CountyFIPS=119 if COUNTY=="Union" & StateFIPS==42
	replace CountyFIPS=121 if COUNTY=="Venango" & StateFIPS==42
	replace CountyFIPS=123 if COUNTY=="Warren" & StateFIPS==42
	replace CountyFIPS=125 if COUNTY=="Washington" & StateFIPS==42
	replace CountyFIPS=127 if COUNTY=="Wayne" & StateFIPS==42
	replace CountyFIPS=129 if COUNTY=="Westmoreland" & StateFIPS==42
	replace CountyFIPS=131 if COUNTY=="Wyoming" & StateFIPS==42
	replace CountyFIPS=133 if COUNTY=="York" & StateFIPS==42
	replace CountyFIPS=001 if COUNTY=="Bristol" & StateFIPS==44
	replace CountyFIPS=003 if COUNTY=="Kent" & StateFIPS==44
	replace CountyFIPS=005 if COUNTY=="Newport" & StateFIPS==44
	replace CountyFIPS=007 if COUNTY=="Providence" & StateFIPS==44
	replace CountyFIPS=009 if COUNTY=="Washington" & StateFIPS==44
	replace CountyFIPS=001 if COUNTY=="Abbeville" & StateFIPS==45
	replace CountyFIPS=003 if COUNTY=="Aiken" & StateFIPS==45
	replace CountyFIPS=005 if COUNTY=="Allendale" & StateFIPS==45
	replace CountyFIPS=007 if COUNTY=="Anderson" & StateFIPS==45
	replace CountyFIPS=009 if COUNTY=="Bamberg" & StateFIPS==45
	replace CountyFIPS=011 if COUNTY=="Barnwell" & StateFIPS==45
	replace CountyFIPS=013 if COUNTY=="Beaufort" & StateFIPS==45
	replace CountyFIPS=015 if COUNTY=="Berkeley" & StateFIPS==45
	replace CountyFIPS=017 if COUNTY=="Calhoun" & StateFIPS==45
	replace CountyFIPS=019 if COUNTY=="Charleston" & StateFIPS==45
	replace CountyFIPS=021 if COUNTY=="Cherokee" & StateFIPS==45
	replace CountyFIPS=023 if COUNTY=="Chester" & StateFIPS==45
	replace CountyFIPS=025 if COUNTY=="Chesterfield" & StateFIPS==45
	replace CountyFIPS=027 if COUNTY=="Clarendon" & StateFIPS==45
	replace CountyFIPS=029 if COUNTY=="Colleton" & StateFIPS==45
	replace CountyFIPS=031 if COUNTY=="Darlington" & StateFIPS==45
	replace CountyFIPS=033 if COUNTY=="Dillon" & StateFIPS==45
	replace CountyFIPS=035 if COUNTY=="Dorchester" & StateFIPS==45
	replace CountyFIPS=037 if COUNTY=="Edgefield" & StateFIPS==45
	replace CountyFIPS=039 if COUNTY=="Fairfield" & StateFIPS==45
	replace CountyFIPS=041 if COUNTY=="Florence" & StateFIPS==45
	replace CountyFIPS=043 if COUNTY=="Georgetown" & StateFIPS==45
	replace CountyFIPS=045 if COUNTY=="Greenville" & StateFIPS==45
	replace CountyFIPS=047 if COUNTY=="Greenwood" & StateFIPS==45
	replace CountyFIPS=049 if COUNTY=="Hampton" & StateFIPS==45
	replace CountyFIPS=051 if COUNTY=="Horry" & StateFIPS==45
	replace CountyFIPS=053 if COUNTY=="Jasper" & StateFIPS==45
	replace CountyFIPS=055 if COUNTY=="Kershaw" & StateFIPS==45
	replace CountyFIPS=057 if COUNTY=="Lancaster" & StateFIPS==45
	replace CountyFIPS=059 if COUNTY=="Laurens" & StateFIPS==45
	replace CountyFIPS=061 if COUNTY=="Lee" & StateFIPS==45
	replace CountyFIPS=063 if COUNTY=="Lexington" & StateFIPS==45
	replace CountyFIPS=065 if COUNTY=="McCormick" & StateFIPS==45
	replace CountyFIPS=065 if COUNTY=="Mccormick" & StateFIPS==45
	replace CountyFIPS=067 if COUNTY=="Marion" & StateFIPS==45
	replace CountyFIPS=069 if COUNTY=="Marlboro" & StateFIPS==45
	replace CountyFIPS=071 if COUNTY=="Newberry" & StateFIPS==45
	replace CountyFIPS=073 if COUNTY=="Oconee" & StateFIPS==45
	replace CountyFIPS=075 if COUNTY=="Orangeburg" & StateFIPS==45
	replace CountyFIPS=077 if COUNTY=="Pickens" & StateFIPS==45
	replace CountyFIPS=079 if COUNTY=="Richland" & StateFIPS==45
	replace CountyFIPS=081 if COUNTY=="Saluda" & StateFIPS==45
	replace CountyFIPS=083 if COUNTY=="Spartanburg" & StateFIPS==45
	replace CountyFIPS=085 if COUNTY=="Sumter" & StateFIPS==45
	replace CountyFIPS=087 if COUNTY=="Union" & StateFIPS==45
	replace CountyFIPS=089 if COUNTY=="Williamsburg" & StateFIPS==45
	replace CountyFIPS=091 if COUNTY=="York" & StateFIPS==45
	replace CountyFIPS=003 if COUNTY=="Aurora" & StateFIPS==46
	replace CountyFIPS=005 if COUNTY=="Beadle" & StateFIPS==46
	replace CountyFIPS=007 if COUNTY=="Bennett" & StateFIPS==46
	replace CountyFIPS=009 if COUNTY=="Bon Homme" & StateFIPS==46
	replace CountyFIPS=011 if COUNTY=="Brookings" & StateFIPS==46
	replace CountyFIPS=013 if COUNTY=="Brown" & StateFIPS==46
	replace CountyFIPS=015 if COUNTY=="Brule" & StateFIPS==46
	replace CountyFIPS=017 if COUNTY=="Buffalo" & StateFIPS==46
	replace CountyFIPS=019 if COUNTY=="Butte" & StateFIPS==46
	replace CountyFIPS=021 if COUNTY=="Campbell" & StateFIPS==46
	replace CountyFIPS=023 if COUNTY=="Charles Mix" & StateFIPS==46
	replace CountyFIPS=025 if COUNTY=="Clark" & StateFIPS==46
	replace CountyFIPS=027 if COUNTY=="Clay" & StateFIPS==46
	replace CountyFIPS=029 if COUNTY=="Codington" & StateFIPS==46
	replace CountyFIPS=031 if COUNTY=="Corson" & StateFIPS==46
	replace CountyFIPS=033 if COUNTY=="Custer" & StateFIPS==46
	replace CountyFIPS=035 if COUNTY=="Davison" & StateFIPS==46
	replace CountyFIPS=037 if COUNTY=="Day" & StateFIPS==46
	replace CountyFIPS=039 if COUNTY=="Deuel" & StateFIPS==46
	replace CountyFIPS=041 if COUNTY=="Dewey" & StateFIPS==46
	replace CountyFIPS=043 if COUNTY=="Douglas" & StateFIPS==46
	replace CountyFIPS=045 if COUNTY=="Edmunds" & StateFIPS==46
	replace CountyFIPS=047 if COUNTY=="Fall River" & StateFIPS==46
	replace CountyFIPS=049 if COUNTY=="Faulk" & StateFIPS==46
	replace CountyFIPS=051 if COUNTY=="Grant" & StateFIPS==46
	replace CountyFIPS=053 if COUNTY=="Gregory" & StateFIPS==46
	replace CountyFIPS=055 if COUNTY=="Haakon" & StateFIPS==46
	replace CountyFIPS=057 if COUNTY=="Hamlin" & StateFIPS==46
	replace CountyFIPS=059 if COUNTY=="Hand" & StateFIPS==46
	replace CountyFIPS=061 if COUNTY=="Hanson" & StateFIPS==46
	replace CountyFIPS=063 if COUNTY=="Harding" & StateFIPS==46
	replace CountyFIPS=065 if COUNTY=="Hughes" & StateFIPS==46
	replace CountyFIPS=067 if COUNTY=="Hutchinson" & StateFIPS==46
	replace CountyFIPS=069 if COUNTY=="Hyde" & StateFIPS==46
	replace CountyFIPS=071 if COUNTY=="Jackson" & StateFIPS==46
	replace CountyFIPS=073 if COUNTY=="Jerauld" & StateFIPS==46
	replace CountyFIPS=075 if COUNTY=="Jones" & StateFIPS==46
	replace CountyFIPS=077 if COUNTY=="Kingsbury" & StateFIPS==46
	replace CountyFIPS=079 if COUNTY=="Lake" & StateFIPS==46
	replace CountyFIPS=081 if COUNTY=="Lawrence" & StateFIPS==46
	replace CountyFIPS=083 if COUNTY=="Lincoln" & StateFIPS==46
	replace CountyFIPS=085 if COUNTY=="Lyman" & StateFIPS==46
	replace CountyFIPS=087 if COUNTY=="McCook" & StateFIPS==46
	replace CountyFIPS=087 if COUNTY=="Mc Cook" & StateFIPS==46

	replace CountyFIPS=087 if COUNTY=="Mccook" & StateFIPS==46
	replace CountyFIPS=089 if COUNTY=="McPherson" & StateFIPS==46
	replace CountyFIPS=089 if COUNTY=="Mc Pherson" & StateFIPS==46
	replace CountyFIPS=089 if COUNTY=="Mcpherson" & StateFIPS==46
	replace CountyFIPS=091 if COUNTY=="Marshall" & StateFIPS==46
	replace CountyFIPS=093 if COUNTY=="Meade" & StateFIPS==46
	replace CountyFIPS=095 if COUNTY=="Mellette" & StateFIPS==46
	replace CountyFIPS=097 if COUNTY=="Miner" & StateFIPS==46
	replace CountyFIPS=099 if COUNTY=="Minnehaha" & StateFIPS==46
	replace CountyFIPS=101 if COUNTY=="Moody" & StateFIPS==46
		replace CountyFIPS=102 if COUNTY=="Oglala Lakota" & StateFIPS==46

	replace CountyFIPS=103 if COUNTY=="Pennington" & StateFIPS==46
	replace CountyFIPS=105 if COUNTY=="Perkins" & StateFIPS==46
	replace CountyFIPS=107 if COUNTY=="Potter" & StateFIPS==46
	replace CountyFIPS=109 if COUNTY=="Roberts" & StateFIPS==46
	replace CountyFIPS=111 if COUNTY=="Sanborn" & StateFIPS==46
	replace CountyFIPS=113 if COUNTY=="Shannon" & StateFIPS==46
	replace CountyFIPS=115 if COUNTY=="Spink" & StateFIPS==46
	replace CountyFIPS=117 if COUNTY=="Stanley" & StateFIPS==46
	replace CountyFIPS=119 if COUNTY=="Sully" & StateFIPS==46
	replace CountyFIPS=121 if COUNTY=="Todd" & StateFIPS==46
	replace CountyFIPS=123 if COUNTY=="Tripp" & StateFIPS==46
	replace CountyFIPS=125 if COUNTY=="Turner" & StateFIPS==46
	replace CountyFIPS=127 if COUNTY=="Union" & StateFIPS==46
	replace CountyFIPS=129 if COUNTY=="Walworth" & StateFIPS==46
	replace CountyFIPS=135 if COUNTY=="Yankton" & StateFIPS==46
	replace CountyFIPS=137 if COUNTY=="Ziebach" & StateFIPS==46
	replace CountyFIPS=001 if COUNTY=="Anderson" & StateFIPS==47
	replace CountyFIPS=003 if COUNTY=="Bedford" & StateFIPS==47
	replace CountyFIPS=005 if COUNTY=="Benton" & StateFIPS==47
	replace CountyFIPS=007 if COUNTY=="Bledsoe" & StateFIPS==47
	replace CountyFIPS=009 if COUNTY=="Blount" & StateFIPS==47
	replace CountyFIPS=011 if COUNTY=="Bradley" & StateFIPS==47
	replace CountyFIPS=013 if COUNTY=="Campbell" & StateFIPS==47
	replace CountyFIPS=015 if COUNTY=="Cannon" & StateFIPS==47
	replace CountyFIPS=017 if COUNTY=="Carroll" & StateFIPS==47
	replace CountyFIPS=019 if COUNTY=="Carter" & StateFIPS==47
	replace CountyFIPS=021 if COUNTY=="Cheatham" & StateFIPS==47
	replace CountyFIPS=023 if COUNTY=="Chester" & StateFIPS==47
	replace CountyFIPS=025 if COUNTY=="Claiborne" & StateFIPS==47
	replace CountyFIPS=027 if COUNTY=="Clay" & StateFIPS==47
	replace CountyFIPS=029 if COUNTY=="Cocke" & StateFIPS==47
	replace CountyFIPS=031 if COUNTY=="Coffee" & StateFIPS==47
	replace CountyFIPS=033 if COUNTY=="Crockett" & StateFIPS==47
	replace CountyFIPS=035 if COUNTY=="Cumberland" & StateFIPS==47
	replace CountyFIPS=037 if COUNTY=="Davidson" & StateFIPS==47
	replace CountyFIPS=039 if COUNTY=="Decatur" & StateFIPS==47
	replace CountyFIPS=041 if COUNTY=="Dekalb" & StateFIPS==47
		replace CountyFIPS=041 if COUNTY=="De Kalb" & StateFIPS==47

	replace CountyFIPS=043 if COUNTY=="Dickson" & StateFIPS==47
	replace CountyFIPS=045 if COUNTY=="Dyer" & StateFIPS==47
	replace CountyFIPS=047 if COUNTY=="Fayette" & StateFIPS==47
	replace CountyFIPS=049 if COUNTY=="Fentress" & StateFIPS==47
	replace CountyFIPS=051 if COUNTY=="Franklin" & StateFIPS==47
	replace CountyFIPS=053 if COUNTY=="Gibson" & StateFIPS==47
	replace CountyFIPS=055 if COUNTY=="Giles" & StateFIPS==47
	replace CountyFIPS=057 if COUNTY=="Grainger" & StateFIPS==47
	replace CountyFIPS=059 if COUNTY=="Greene" & StateFIPS==47
	replace CountyFIPS=061 if COUNTY=="Grundy" & StateFIPS==47
	replace CountyFIPS=063 if COUNTY=="Hamblen" & StateFIPS==47
	replace CountyFIPS=065 if COUNTY=="Hamilton" & StateFIPS==47
	replace CountyFIPS=067 if COUNTY=="Hancock" & StateFIPS==47
	replace CountyFIPS=069 if COUNTY=="Hardeman" & StateFIPS==47
	replace CountyFIPS=071 if COUNTY=="Hardin" & StateFIPS==47
	replace CountyFIPS=073 if COUNTY=="Hawkins" & StateFIPS==47
	replace CountyFIPS=075 if COUNTY=="Haywood" & StateFIPS==47
	replace CountyFIPS=077 if COUNTY=="Henderson" & StateFIPS==47
	replace CountyFIPS=079 if COUNTY=="Henry" & StateFIPS==47
	replace CountyFIPS=081 if COUNTY=="Hickman" & StateFIPS==47
	replace CountyFIPS=083 if COUNTY=="Houston" & StateFIPS==47
	replace CountyFIPS=085 if COUNTY=="Humphreys" & StateFIPS==47
	replace CountyFIPS=087 if COUNTY=="Jackson" & StateFIPS==47
	replace CountyFIPS=089 if COUNTY=="Jefferson" & StateFIPS==47
	replace CountyFIPS=091 if COUNTY=="Johnson" & StateFIPS==47
	replace CountyFIPS=093 if COUNTY=="Knox" & StateFIPS==47
	replace CountyFIPS=095 if COUNTY=="Lake" & StateFIPS==47
	replace CountyFIPS=097 if COUNTY=="Lauderdale" & StateFIPS==47
	replace CountyFIPS=099 if COUNTY=="Lawrence" & StateFIPS==47
	replace CountyFIPS=101 if COUNTY=="Lewis" & StateFIPS==47
	replace CountyFIPS=103 if COUNTY=="Lincoln" & StateFIPS==47
	replace CountyFIPS=105 if COUNTY=="Loudon" & StateFIPS==47
	replace CountyFIPS=107 if COUNTY=="McMinn" & StateFIPS==47
	replace CountyFIPS=107 if COUNTY=="Mc Minn" & StateFIPS==47

	replace CountyFIPS=107 if COUNTY=="Mcminn" & StateFIPS==47
	replace CountyFIPS=109 if COUNTY=="Mcnairy" & StateFIPS==47

	replace CountyFIPS=109 if COUNTY=="McNairy" & StateFIPS==47
	replace CountyFIPS=109 if COUNTY=="Mc Nairy" & StateFIPS==47
	replace CountyFIPS=111 if COUNTY=="Macon" & StateFIPS==47
	replace CountyFIPS=113 if COUNTY=="Madison" & StateFIPS==47
	replace CountyFIPS=115 if COUNTY=="Marion" & StateFIPS==47
	replace CountyFIPS=117 if COUNTY=="Marshall" & StateFIPS==47
	replace CountyFIPS=119 if COUNTY=="Maury" & StateFIPS==47
	replace CountyFIPS=121 if COUNTY=="Meigs" & StateFIPS==47
	replace CountyFIPS=123 if COUNTY=="Monroe" & StateFIPS==47
	replace CountyFIPS=125 if COUNTY=="Montgomery" & StateFIPS==47
	replace CountyFIPS=127 if COUNTY=="Moore" & StateFIPS==47
	replace CountyFIPS=129 if COUNTY=="Morgan" & StateFIPS==47
	replace CountyFIPS=131 if COUNTY=="Obion" & StateFIPS==47
	
	replace CountyFIPS=133 if COUNTY=="Overton" & StateFIPS==47
	replace CountyFIPS=135 if COUNTY=="Perry" & StateFIPS==47
	replace CountyFIPS=137 if COUNTY=="Pickett" & StateFIPS==47
	replace CountyFIPS=139 if COUNTY=="Polk" & StateFIPS==47
	replace CountyFIPS=141 if COUNTY=="Putnam" & StateFIPS==47
	replace CountyFIPS=143 if COUNTY=="Rhea" & StateFIPS==47
	replace CountyFIPS=145 if COUNTY=="Roane" & StateFIPS==47
	replace CountyFIPS=147 if COUNTY=="Robertson" & StateFIPS==47
	replace CountyFIPS=149 if COUNTY=="Rutherford" & StateFIPS==47
	replace CountyFIPS=151 if COUNTY=="Scott" & StateFIPS==47
	replace CountyFIPS=153 if COUNTY=="Sequatchie" & StateFIPS==47
	replace CountyFIPS=155 if COUNTY=="Sevier" & StateFIPS==47
	replace CountyFIPS=157 if COUNTY=="Shelby" & StateFIPS==47
	replace CountyFIPS=159 if COUNTY=="Smith" & StateFIPS==47
	replace CountyFIPS=161 if COUNTY=="Stewart" & StateFIPS==47
	replace CountyFIPS=163 if COUNTY=="Sullivan" & StateFIPS==47
	replace CountyFIPS=165 if COUNTY=="Sumner" & StateFIPS==47
	replace CountyFIPS=167 if COUNTY=="Tipton" & StateFIPS==47
	replace CountyFIPS=169 if COUNTY=="Trousdale" & StateFIPS==47
	replace CountyFIPS=171 if COUNTY=="Unicoi" & StateFIPS==47
	replace CountyFIPS=173 if COUNTY=="Union" & StateFIPS==47
	replace CountyFIPS=175 if COUNTY=="Van Buren" & StateFIPS==47
	replace CountyFIPS=177 if COUNTY=="Warren" & StateFIPS==47
	replace CountyFIPS=179 if COUNTY=="Washington" & StateFIPS==47
	replace CountyFIPS=181 if COUNTY=="Wayne" & StateFIPS==47
	replace CountyFIPS=183 if COUNTY=="Weakley" & StateFIPS==47
	replace CountyFIPS=185 if COUNTY=="White" & StateFIPS==47
	replace CountyFIPS=187 if COUNTY=="Williamson" & StateFIPS==47
	replace CountyFIPS=189 if COUNTY=="Wilson" & StateFIPS==47
	replace CountyFIPS=001 if COUNTY=="Anderson" & StateFIPS==48
	replace CountyFIPS=003 if COUNTY=="Andrews" & StateFIPS==48
	replace CountyFIPS=005 if COUNTY=="Angelina" & StateFIPS==48
	replace CountyFIPS=007 if COUNTY=="Aransas" & StateFIPS==48
	replace CountyFIPS=009 if COUNTY=="Archer" & StateFIPS==48
	replace CountyFIPS=011 if COUNTY=="Armstrong" & StateFIPS==48
	replace CountyFIPS=013 if COUNTY=="Atascosa" & StateFIPS==48
	replace CountyFIPS=015 if COUNTY=="Austin" & StateFIPS==48
	replace CountyFIPS=017 if COUNTY=="Bailey" & StateFIPS==48
	replace CountyFIPS=019 if COUNTY=="Bandera" & StateFIPS==48
	replace CountyFIPS=021 if COUNTY=="Bastrop" & StateFIPS==48
	replace CountyFIPS=023 if COUNTY=="Baylor" & StateFIPS==48
	replace CountyFIPS=025 if COUNTY=="Bee" & StateFIPS==48
	replace CountyFIPS=027 if COUNTY=="Bell" & StateFIPS==48
	replace CountyFIPS=029 if COUNTY=="Bexar" & StateFIPS==48
	replace CountyFIPS=031 if COUNTY=="Blanco" & StateFIPS==48
	replace CountyFIPS=033 if COUNTY=="Borden" & StateFIPS==48
	replace CountyFIPS=035 if COUNTY=="Bosque" & StateFIPS==48
	replace CountyFIPS=037 if COUNTY=="Bowie" & StateFIPS==48
	replace CountyFIPS=039 if COUNTY=="Brazoria" & StateFIPS==48
	replace CountyFIPS=041 if COUNTY=="Brazos" & StateFIPS==48
	replace CountyFIPS=043 if COUNTY=="Brewster" & StateFIPS==48
	replace CountyFIPS=045 if COUNTY=="Briscoe" & StateFIPS==48
	replace CountyFIPS=047 if COUNTY=="Brooks" & StateFIPS==48
	replace CountyFIPS=049 if COUNTY=="Brown" & StateFIPS==48
	replace CountyFIPS=051 if COUNTY=="Burleson" & StateFIPS==48
	replace CountyFIPS=053 if COUNTY=="Burnet" & StateFIPS==48
	replace CountyFIPS=055 if COUNTY=="Caldwell" & StateFIPS==48
	replace CountyFIPS=057 if COUNTY=="Calhoun" & StateFIPS==48
	replace CountyFIPS=059 if COUNTY=="Callahan" & StateFIPS==48
	replace CountyFIPS=061 if COUNTY=="Cameron" & StateFIPS==48
	replace CountyFIPS=063 if COUNTY=="Camp" & StateFIPS==48
	replace CountyFIPS=065 if COUNTY=="Carson" & StateFIPS==48
	replace CountyFIPS=067 if COUNTY=="Cass" & StateFIPS==48
	replace CountyFIPS=069 if COUNTY=="Castro" & StateFIPS==48
	replace CountyFIPS=071 if COUNTY=="Chambers" & StateFIPS==48
	replace CountyFIPS=073 if COUNTY=="Cherokee" & StateFIPS==48
	replace CountyFIPS=075 if COUNTY=="Childress" & StateFIPS==48
	replace CountyFIPS=077 if COUNTY=="Clay" & StateFIPS==48
	replace CountyFIPS=079 if COUNTY=="Cochran" & StateFIPS==48
	replace CountyFIPS=081 if COUNTY=="Coke" & StateFIPS==48
	replace CountyFIPS=083 if COUNTY=="Coleman" & StateFIPS==48
	replace CountyFIPS=085 if COUNTY=="Collin" & StateFIPS==48
	replace CountyFIPS=087 if COUNTY=="Collingsworth" & StateFIPS==48
	replace CountyFIPS=089 if COUNTY=="Colorado" & StateFIPS==48
	replace CountyFIPS=091 if COUNTY=="Comal" & StateFIPS==48
	replace CountyFIPS=093 if COUNTY=="Comanche" & StateFIPS==48
	replace CountyFIPS=095 if COUNTY=="Concho" & StateFIPS==48
	replace CountyFIPS=097 if COUNTY=="Cooke" & StateFIPS==48
	replace CountyFIPS=099 if COUNTY=="Coryell" & StateFIPS==48
	replace CountyFIPS=101 if COUNTY=="Cottle" & StateFIPS==48
	replace CountyFIPS=103 if COUNTY=="Crane" & StateFIPS==48
	replace CountyFIPS=105 if COUNTY=="Crockett" & StateFIPS==48
	replace CountyFIPS=107 if COUNTY=="Crosby" & StateFIPS==48
	replace CountyFIPS=109 if COUNTY=="Culberson" & StateFIPS==48
	replace CountyFIPS=111 if COUNTY=="Dallam" & StateFIPS==48
	replace CountyFIPS=113 if COUNTY=="Dallas" & StateFIPS==48
	replace CountyFIPS=115 if COUNTY=="Dawson" & StateFIPS==48
	replace CountyFIPS=117 if COUNTY=="Deaf Smith" & StateFIPS==48
	replace CountyFIPS=119 if COUNTY=="Delta" & StateFIPS==48
	replace CountyFIPS=121 if COUNTY=="Denton" & StateFIPS==48
		replace CountyFIPS=123 if COUNTY=="Dewitt" & StateFIPS==48

	replace CountyFIPS=123 if COUNTY=="De Witt" & StateFIPS==48
	replace CountyFIPS=125 if COUNTY=="Dickens" & StateFIPS==48
	replace CountyFIPS=127 if COUNTY=="Dimmit" & StateFIPS==48
	replace CountyFIPS=129 if COUNTY=="Donley" & StateFIPS==48
	replace CountyFIPS=131 if COUNTY=="Duval" & StateFIPS==48
	replace CountyFIPS=133 if COUNTY=="Eastland" & StateFIPS==48
	replace CountyFIPS=135 if COUNTY=="Ector" & StateFIPS==48
	replace CountyFIPS=137 if COUNTY=="Edwards" & StateFIPS==48
	replace CountyFIPS=139 if COUNTY=="Ellis" & StateFIPS==48
	replace CountyFIPS=141 if COUNTY=="El Paso" & StateFIPS==48
	replace CountyFIPS=143 if COUNTY=="Erath" & StateFIPS==48
	replace CountyFIPS=145 if COUNTY=="Falls" & StateFIPS==48
	replace CountyFIPS=147 if COUNTY=="Fannin" & StateFIPS==48
	replace CountyFIPS=149 if COUNTY=="Fayette" & StateFIPS==48
	replace CountyFIPS=151 if COUNTY=="Fisher" & StateFIPS==48
	replace CountyFIPS=153 if COUNTY=="Floyd" & StateFIPS==48
	replace CountyFIPS=155 if COUNTY=="Foard" & StateFIPS==48
	replace CountyFIPS=157 if COUNTY=="Fort Bend" & StateFIPS==48
	replace CountyFIPS=159 if COUNTY=="Franklin" & StateFIPS==48
	replace CountyFIPS=161 if COUNTY=="Freestone" & StateFIPS==48
	replace CountyFIPS=163 if COUNTY=="Frio" & StateFIPS==48
	replace CountyFIPS=165 if COUNTY=="Gaines" & StateFIPS==48
	replace CountyFIPS=167 if COUNTY=="Galveston" & StateFIPS==48
	replace CountyFIPS=169 if COUNTY=="Garza" & StateFIPS==48
	replace CountyFIPS=171 if COUNTY=="Gillespie" & StateFIPS==48
	replace CountyFIPS=173 if COUNTY=="Glasscock" & StateFIPS==48
	replace CountyFIPS=175 if COUNTY=="Goliad" & StateFIPS==48
	replace CountyFIPS=177 if COUNTY=="Gonzales" & StateFIPS==48
	replace CountyFIPS=179 if COUNTY=="Gray" & StateFIPS==48
	replace CountyFIPS=181 if COUNTY=="Grayson" & StateFIPS==48
	replace CountyFIPS=183 if COUNTY=="Gregg" & StateFIPS==48
	replace CountyFIPS=185 if COUNTY=="Grimes" & StateFIPS==48
	replace CountyFIPS=187 if COUNTY=="Guadalupe" & StateFIPS==48
	replace CountyFIPS=189 if COUNTY=="Hale" & StateFIPS==48
	replace CountyFIPS=191 if COUNTY=="Hall" & StateFIPS==48
	replace CountyFIPS=193 if COUNTY=="Hamilton" & StateFIPS==48
	replace CountyFIPS=195 if COUNTY=="Hansford" & StateFIPS==48
	replace CountyFIPS=197 if COUNTY=="Hardeman" & StateFIPS==48
	replace CountyFIPS=199 if COUNTY=="Hardin" & StateFIPS==48
	replace CountyFIPS=201 if COUNTY=="Harris" & StateFIPS==48
	replace CountyFIPS=203 if COUNTY=="Harrison" & StateFIPS==48
	replace CountyFIPS=205 if COUNTY=="Hartley" & StateFIPS==48
	replace CountyFIPS=207 if COUNTY=="Haskell" & StateFIPS==48
	replace CountyFIPS=209 if COUNTY=="Hays" & StateFIPS==48
	replace CountyFIPS=211 if COUNTY=="Hemphill" & StateFIPS==48
	replace CountyFIPS=213 if COUNTY=="Henderson" & StateFIPS==48
	replace CountyFIPS=215 if COUNTY=="Hidalgo" & StateFIPS==48
	replace CountyFIPS=217 if COUNTY=="Hill" & StateFIPS==48
	replace CountyFIPS=219 if COUNTY=="Hockley" & StateFIPS==48
	replace CountyFIPS=221 if COUNTY=="Hood" & StateFIPS==48
	replace CountyFIPS=223 if COUNTY=="Hopkins" & StateFIPS==48
	replace CountyFIPS=225 if COUNTY=="Houston" & StateFIPS==48
	replace CountyFIPS=227 if COUNTY=="Howard" & StateFIPS==48
	replace CountyFIPS=229 if COUNTY=="Hudspeth" & StateFIPS==48
	replace CountyFIPS=231 if COUNTY=="Hunt" & StateFIPS==48
	replace CountyFIPS=233 if COUNTY=="Hutchinson" & StateFIPS==48
	replace CountyFIPS=235 if COUNTY=="Irion" & StateFIPS==48
	replace CountyFIPS=237 if COUNTY=="Jack" & StateFIPS==48
	replace CountyFIPS=239 if COUNTY=="Jackson" & StateFIPS==48
	replace CountyFIPS=241 if COUNTY=="Jasper" & StateFIPS==48
	replace CountyFIPS=243 if COUNTY=="Jeff Davis" & StateFIPS==48
	replace CountyFIPS=245 if COUNTY=="Jefferson" & StateFIPS==48
	replace CountyFIPS=247 if COUNTY=="Jim Hogg" & StateFIPS==48
	replace CountyFIPS=249 if COUNTY=="Jim Wells" & StateFIPS==48
	replace CountyFIPS=251 if COUNTY=="Johnson" & StateFIPS==48
	replace CountyFIPS=253 if COUNTY=="Jones" & StateFIPS==48
	replace CountyFIPS=255 if COUNTY=="Karnes" & StateFIPS==48
	replace CountyFIPS=257 if COUNTY=="Kaufman" & StateFIPS==48
	replace CountyFIPS=259 if COUNTY=="Kendall" & StateFIPS==48
	replace CountyFIPS=261 if COUNTY=="Kenedy" & StateFIPS==48
	replace CountyFIPS=263 if COUNTY=="Kent" & StateFIPS==48
	replace CountyFIPS=265 if COUNTY=="Kerr" & StateFIPS==48
	replace CountyFIPS=267 if COUNTY=="Kimble" & StateFIPS==48
	replace CountyFIPS=269 if COUNTY=="King" & StateFIPS==48
	replace CountyFIPS=271 if COUNTY=="Kinney" & StateFIPS==48
	replace CountyFIPS=273 if COUNTY=="Kleberg" & StateFIPS==48
	replace CountyFIPS=275 if COUNTY=="Knox" & StateFIPS==48
	replace CountyFIPS=277 if COUNTY=="Lamar" & StateFIPS==48
	replace CountyFIPS=279 if COUNTY=="Lamb" & StateFIPS==48
	replace CountyFIPS=281 if COUNTY=="Lampasas" & StateFIPS==48
	replace CountyFIPS=283 if COUNTY=="La Salle" & StateFIPS==48
	replace CountyFIPS=285 if COUNTY=="Lavaca" & StateFIPS==48
	replace CountyFIPS=287 if COUNTY=="Lee" & StateFIPS==48
	replace CountyFIPS=289 if COUNTY=="Leon" & StateFIPS==48
	replace CountyFIPS=291 if COUNTY=="Liberty" & StateFIPS==48
	replace CountyFIPS=293 if COUNTY=="Limestone" & StateFIPS==48
	replace CountyFIPS=295 if COUNTY=="Lipscomb" & StateFIPS==48
	replace CountyFIPS=297 if COUNTY=="Live Oak" & StateFIPS==48
	replace CountyFIPS=299 if COUNTY=="Llano" & StateFIPS==48
	replace CountyFIPS=301 if COUNTY=="Loving" & StateFIPS==48
	replace CountyFIPS=303 if COUNTY=="Lubbock" & StateFIPS==48
	replace CountyFIPS=305 if COUNTY=="Lynn" & StateFIPS==48
	replace CountyFIPS=307 if COUNTY=="McCulloch" & StateFIPS==48
		replace CountyFIPS=307 if COUNTY=="Mc Culloch" & StateFIPS==48

	replace CountyFIPS=307 if COUNTY=="Mcculloch" & StateFIPS==48
	replace CountyFIPS=309 if COUNTY=="Mclennan" & StateFIPS==48
	replace CountyFIPS=309 if COUNTY=="Mc Lennan" & StateFIPS==48

	replace CountyFIPS=309 if COUNTY=="McLennan" & StateFIPS==48
		replace CountyFIPS=311 if COUNTY=="Mcmullen" & StateFIPS==48

	replace CountyFIPS=311 if COUNTY=="Mc Mullen" & StateFIPS==48
	replace CountyFIPS=311 if COUNTY=="McMullen" & StateFIPS==48
	replace CountyFIPS=313 if COUNTY=="Madison" & StateFIPS==48
	replace CountyFIPS=315 if COUNTY=="Marion" & StateFIPS==48
	replace CountyFIPS=317 if COUNTY=="Martin" & StateFIPS==48
	replace CountyFIPS=319 if COUNTY=="Mason" & StateFIPS==48
	replace CountyFIPS=321 if COUNTY=="Matagorda" & StateFIPS==48
	replace CountyFIPS=323 if COUNTY=="Maverick" & StateFIPS==48
	replace CountyFIPS=325 if COUNTY=="Medina" & StateFIPS==48
	replace CountyFIPS=327 if COUNTY=="Menard" & StateFIPS==48
	replace CountyFIPS=329 if COUNTY=="Midland" & StateFIPS==48
	replace CountyFIPS=331 if COUNTY=="Milam" & StateFIPS==48
	replace CountyFIPS=333 if COUNTY=="Mills" & StateFIPS==48
	replace CountyFIPS=335 if COUNTY=="Mitchell" & StateFIPS==48
	replace CountyFIPS=337 if COUNTY=="Montague" & StateFIPS==48
	replace CountyFIPS=339 if COUNTY=="Montgomery" & StateFIPS==48
	replace CountyFIPS=341 if COUNTY=="Moore" & StateFIPS==48
	replace CountyFIPS=343 if COUNTY=="Morris" & StateFIPS==48
	replace CountyFIPS=345 if COUNTY=="Motley" & StateFIPS==48
	replace CountyFIPS=347 if COUNTY=="Nacogdoches" & StateFIPS==48
	replace CountyFIPS=349 if COUNTY=="Navarro" & StateFIPS==48
	replace CountyFIPS=351 if COUNTY=="Newton" & StateFIPS==48
	replace CountyFIPS=353 if COUNTY=="Nolan" & StateFIPS==48
	replace CountyFIPS=355 if COUNTY=="Nueces" & StateFIPS==48
	replace CountyFIPS=357 if COUNTY=="Ochiltree" & StateFIPS==48
	replace CountyFIPS=359 if COUNTY=="Oldham" & StateFIPS==48
	replace CountyFIPS=361 if COUNTY=="Orange" & StateFIPS==48
	replace CountyFIPS=363 if COUNTY=="Palo Pinto" & StateFIPS==48
	replace CountyFIPS=365 if COUNTY=="Panola" & StateFIPS==48
	replace CountyFIPS=367 if COUNTY=="Parker" & StateFIPS==48
	replace CountyFIPS=369 if COUNTY=="Parmer" & StateFIPS==48
	replace CountyFIPS=371 if COUNTY=="Pecos" & StateFIPS==48
	replace CountyFIPS=373 if COUNTY=="Polk" & StateFIPS==48
	replace CountyFIPS=375 if COUNTY=="Potter" & StateFIPS==48
	replace CountyFIPS=377 if COUNTY=="Presidio" & StateFIPS==48
	replace CountyFIPS=379 if COUNTY=="Rains" & StateFIPS==48
	replace CountyFIPS=381 if COUNTY=="Randall" & StateFIPS==48
	replace CountyFIPS=383 if COUNTY=="Reagan" & StateFIPS==48
	replace CountyFIPS=385 if COUNTY=="Real" & StateFIPS==48
	replace CountyFIPS=387 if COUNTY=="Red River" & StateFIPS==48
	replace CountyFIPS=389 if COUNTY=="Reeves" & StateFIPS==48
	replace CountyFIPS=391 if COUNTY=="Refugio" & StateFIPS==48
	replace CountyFIPS=393 if COUNTY=="Roberts" & StateFIPS==48
	replace CountyFIPS=395 if COUNTY=="Robertson" & StateFIPS==48
	replace CountyFIPS=397 if COUNTY=="Rockwall" & StateFIPS==48
	replace CountyFIPS=399 if COUNTY=="Runnels" & StateFIPS==48
	replace CountyFIPS=401 if COUNTY=="Rusk" & StateFIPS==48
	replace CountyFIPS=403 if COUNTY=="Sabine" & StateFIPS==48
	replace CountyFIPS=405 if COUNTY=="San Augustine" & StateFIPS==48
	replace CountyFIPS=407 if COUNTY=="San Jacinto" & StateFIPS==48
	replace CountyFIPS=409 if COUNTY=="San Patricio" & StateFIPS==48
	replace CountyFIPS=411 if COUNTY=="San Saba" & StateFIPS==48
	replace CountyFIPS=413 if COUNTY=="Schleicher" & StateFIPS==48
	replace CountyFIPS=415 if COUNTY=="Scurry" & StateFIPS==48
	replace CountyFIPS=417 if COUNTY=="Shackelford" & StateFIPS==48
	replace CountyFIPS=419 if COUNTY=="Shelby" & StateFIPS==48
	replace CountyFIPS=421 if COUNTY=="Sherman" & StateFIPS==48
	replace CountyFIPS=423 if COUNTY=="Smith" & StateFIPS==48
	replace CountyFIPS=425 if COUNTY=="Somervell" & StateFIPS==48
	replace CountyFIPS=427 if COUNTY=="Starr" & StateFIPS==48
	replace CountyFIPS=429 if COUNTY=="Stephens" & StateFIPS==48
	replace CountyFIPS=431 if COUNTY=="Sterling" & StateFIPS==48
	replace CountyFIPS=433 if COUNTY=="Stonewall" & StateFIPS==48
	replace CountyFIPS=435 if COUNTY=="Sutton" & StateFIPS==48
	replace CountyFIPS=437 if COUNTY=="Swisher" & StateFIPS==48
	replace CountyFIPS=439 if COUNTY=="Tarrant" & StateFIPS==48
	replace CountyFIPS=441 if COUNTY=="Taylor" & StateFIPS==48
	replace CountyFIPS=443 if COUNTY=="Terrell" & StateFIPS==48
	replace CountyFIPS=445 if COUNTY=="Terry" & StateFIPS==48
	replace CountyFIPS=447 if COUNTY=="Throckmorton" & StateFIPS==48
	replace CountyFIPS=449 if COUNTY=="Titus" & StateFIPS==48
	replace CountyFIPS=451 if COUNTY=="Tom Green" & StateFIPS==48
	replace CountyFIPS=453 if COUNTY=="Travis" & StateFIPS==48
	replace CountyFIPS=455 if COUNTY=="Trinity" & StateFIPS==48
	replace CountyFIPS=457 if COUNTY=="Tyler" & StateFIPS==48
	replace CountyFIPS=459 if COUNTY=="Upshur" & StateFIPS==48
	replace CountyFIPS=461 if COUNTY=="Upton" & StateFIPS==48
	replace CountyFIPS=463 if COUNTY=="Uvalde" & StateFIPS==48
	replace CountyFIPS=465 if COUNTY=="Val Verde" & StateFIPS==48
	replace CountyFIPS=467 if COUNTY=="Van Zandt" & StateFIPS==48
	replace CountyFIPS=469 if COUNTY=="Victoria" & StateFIPS==48
	replace CountyFIPS=471 if COUNTY=="Walker" & StateFIPS==48
	replace CountyFIPS=473 if COUNTY=="Waller" & StateFIPS==48
	replace CountyFIPS=475 if COUNTY=="Ward" & StateFIPS==48
	replace CountyFIPS=477 if COUNTY=="Washington" & StateFIPS==48
	replace CountyFIPS=479 if COUNTY=="Webb" & StateFIPS==48
	replace CountyFIPS=481 if COUNTY=="Wharton" & StateFIPS==48
	replace CountyFIPS=483 if COUNTY=="Wheeler" & StateFIPS==48
	replace CountyFIPS=485 if COUNTY=="Wichita" & StateFIPS==48
	replace CountyFIPS=487 if COUNTY=="Wilbarger" & StateFIPS==48
	replace CountyFIPS=489 if COUNTY=="Willacy" & StateFIPS==48
	replace CountyFIPS=491 if COUNTY=="Williamson" & StateFIPS==48
	replace CountyFIPS=493 if COUNTY=="Wilson" & StateFIPS==48
	replace CountyFIPS=495 if COUNTY=="Winkler" & StateFIPS==48
	replace CountyFIPS=497 if COUNTY=="Wise" & StateFIPS==48
	replace CountyFIPS=499 if COUNTY=="Wood" & StateFIPS==48
	replace CountyFIPS=501 if COUNTY=="Yoakum" & StateFIPS==48
	replace CountyFIPS=503 if COUNTY=="Young" & StateFIPS==48
	replace CountyFIPS=505 if COUNTY=="Zapata" & StateFIPS==48
	replace CountyFIPS=507 if COUNTY=="Zavala" & StateFIPS==48
	replace CountyFIPS=001 if COUNTY=="Beaver" & StateFIPS==49
	replace CountyFIPS=003 if COUNTY=="Box Elder" & StateFIPS==49
	replace CountyFIPS=005 if COUNTY=="Cache" & StateFIPS==49
	replace CountyFIPS=007 if COUNTY=="Carbon" & StateFIPS==49
	replace CountyFIPS=009 if COUNTY=="Daggett" & StateFIPS==49
	replace CountyFIPS=011 if COUNTY=="Davis" & StateFIPS==49
	replace CountyFIPS=013 if COUNTY=="Duchesne" & StateFIPS==49
	replace CountyFIPS=015 if COUNTY=="Emery" & StateFIPS==49
	replace CountyFIPS=017 if COUNTY=="Garfield" & StateFIPS==49
	replace CountyFIPS=019 if COUNTY=="Grand" & StateFIPS==49
	replace CountyFIPS=021 if COUNTY=="Iron" & StateFIPS==49
	replace CountyFIPS=023 if COUNTY=="Juab" & StateFIPS==49
	replace CountyFIPS=025 if COUNTY=="Kane" & StateFIPS==49
	replace CountyFIPS=027 if COUNTY=="Millard" & StateFIPS==49
	replace CountyFIPS=029 if COUNTY=="Morgan" & StateFIPS==49
	replace CountyFIPS=031 if COUNTY=="Piute" & StateFIPS==49
	replace CountyFIPS=033 if COUNTY=="Rich" & StateFIPS==49
	replace CountyFIPS=035 if COUNTY=="Salt Lake" & StateFIPS==49
	replace CountyFIPS=037 if COUNTY=="San Juan" & StateFIPS==49
	replace CountyFIPS=039 if COUNTY=="Sanpete" & StateFIPS==49
	replace CountyFIPS=041 if COUNTY=="Sevier" & StateFIPS==49
	replace CountyFIPS=043 if COUNTY=="Summit" & StateFIPS==49
	replace CountyFIPS=045 if COUNTY=="Tooele" & StateFIPS==49
	replace CountyFIPS=047 if COUNTY=="Uintah" & StateFIPS==49
	replace CountyFIPS=049 if COUNTY=="Utah" & StateFIPS==49
	replace CountyFIPS=051 if COUNTY=="Wasatch" & StateFIPS==49
	replace CountyFIPS=053 if COUNTY=="Washington" & StateFIPS==49
	replace CountyFIPS=055 if COUNTY=="Wayne" & StateFIPS==49
	replace CountyFIPS=057 if COUNTY=="Weber" & StateFIPS==49
	replace CountyFIPS=001 if COUNTY=="Addison" & StateFIPS==50
	replace CountyFIPS=003 if COUNTY=="Bennington" & StateFIPS==50
	replace CountyFIPS=005 if COUNTY=="Caledonia" & StateFIPS==50
	replace CountyFIPS=007 if COUNTY=="Chittenden" & StateFIPS==50
	replace CountyFIPS=009 if COUNTY=="Essex" & StateFIPS==50
	replace CountyFIPS=011 if COUNTY=="Franklin" & StateFIPS==50
	replace CountyFIPS=013 if COUNTY=="Grand Isle" & StateFIPS==50
	replace CountyFIPS=015 if COUNTY=="Lamoille" & StateFIPS==50
	replace CountyFIPS=017 if COUNTY=="Orange" & StateFIPS==50
	replace CountyFIPS=019 if COUNTY=="Orleans" & StateFIPS==50
	replace CountyFIPS=021 if COUNTY=="Rutland" & StateFIPS==50
	replace CountyFIPS=023 if COUNTY=="Washington" & StateFIPS==50
	replace CountyFIPS=025 if COUNTY=="Windham" & StateFIPS==50
	replace CountyFIPS=027 if COUNTY=="Windsor" & StateFIPS==50
	replace CountyFIPS=001 if COUNTY=="Accomack" & StateFIPS==51
	replace CountyFIPS=003 if COUNTY=="Albemarle" & StateFIPS==51
	replace CountyFIPS=005 if COUNTY=="Alleghany" & StateFIPS==51
	replace CountyFIPS=007 if COUNTY=="Amelia" & StateFIPS==51
	replace CountyFIPS=009 if COUNTY=="Amherst" & StateFIPS==51
	replace CountyFIPS=011 if COUNTY=="Appomattox" & StateFIPS==51
	replace CountyFIPS=013 if COUNTY=="Arlington" & StateFIPS==51
	replace CountyFIPS=015 if COUNTY=="Augusta" & StateFIPS==51
	replace CountyFIPS=017 if COUNTY=="Bath" & StateFIPS==51
	replace CountyFIPS=019 if COUNTY=="Bedford" & StateFIPS==51
	replace CountyFIPS=021 if COUNTY=="Bland" & StateFIPS==51
	replace CountyFIPS=023 if COUNTY=="Botetourt" & StateFIPS==51
	replace CountyFIPS=025 if COUNTY=="Brunswick" & StateFIPS==51
	replace CountyFIPS=027 if COUNTY=="Buchanan" & StateFIPS==51
	replace CountyFIPS=029 if COUNTY=="Buckingham" & StateFIPS==51
	replace CountyFIPS=031 if COUNTY=="Campbell" & StateFIPS==51
	replace CountyFIPS=033 if COUNTY=="Caroline" & StateFIPS==51
	replace CountyFIPS=035 if COUNTY=="Carroll" & StateFIPS==51
	replace CountyFIPS=036 if COUNTY=="Charles City" & StateFIPS==51
	replace CountyFIPS=037 if COUNTY=="Charlotte" & StateFIPS==51
	replace CountyFIPS=041 if COUNTY=="Chesterfield" & StateFIPS==51
	replace CountyFIPS=043 if COUNTY=="Clarke" & StateFIPS==51
	replace CountyFIPS=045 if COUNTY=="Craig" & StateFIPS==51
	replace CountyFIPS=047 if COUNTY=="Culpeper" & StateFIPS==51
	replace CountyFIPS=049 if COUNTY=="Cumberland" & StateFIPS==51
	replace CountyFIPS=051 if COUNTY=="Dickenson" & StateFIPS==51
	replace CountyFIPS=053 if COUNTY=="Dinwiddie" & StateFIPS==51
	replace CountyFIPS=057 if COUNTY=="Essex" & StateFIPS==51
	replace CountyFIPS=059 if COUNTY=="Fairfax" & StateFIPS==51
	replace CountyFIPS=061 if COUNTY=="Fauquier" & StateFIPS==51
	replace CountyFIPS=063 if COUNTY=="Floyd" & StateFIPS==51
	replace CountyFIPS=065 if COUNTY=="Fluvanna" & StateFIPS==51
	replace CountyFIPS=067 if COUNTY=="Franklin" & StateFIPS==51
	replace CountyFIPS=069 if COUNTY=="Frederick" & StateFIPS==51
	replace CountyFIPS=071 if COUNTY=="Giles" & StateFIPS==51
	replace CountyFIPS=073 if COUNTY=="Gloucester" & StateFIPS==51
	replace CountyFIPS=075 if COUNTY=="Goochland" & StateFIPS==51
	replace CountyFIPS=077 if COUNTY=="Grayson" & StateFIPS==51
	replace CountyFIPS=079 if COUNTY=="Greene" & StateFIPS==51
	replace CountyFIPS=081 if COUNTY=="Greensville" & StateFIPS==51
	replace CountyFIPS=083 if COUNTY=="Halifax" & StateFIPS==51
	replace CountyFIPS=085 if COUNTY=="Hanover" & StateFIPS==51
	replace CountyFIPS=087 if COUNTY=="Henrico" & StateFIPS==51
	replace CountyFIPS=089 if COUNTY=="Henry" & StateFIPS==51
	replace CountyFIPS=091 if COUNTY=="Highland" & StateFIPS==51
	replace CountyFIPS=093 if COUNTY=="Isle of Wight" & StateFIPS==51
	replace CountyFIPS=093 if COUNTY=="Isle Of Wight" & StateFIPS==51
	replace CountyFIPS=095 if COUNTY=="James City" & StateFIPS==51
	replace CountyFIPS=097 if COUNTY=="King and Queen" & StateFIPS==51
	replace CountyFIPS=097 if COUNTY=="King And Queen" & StateFIPS==51
	replace CountyFIPS=099 if COUNTY=="King George" & StateFIPS==51
	replace CountyFIPS=101 if COUNTY=="King William" & StateFIPS==51
	replace CountyFIPS=103 if COUNTY=="Lancaster" & StateFIPS==51
	replace CountyFIPS=105 if COUNTY=="Lee" & StateFIPS==51
	replace CountyFIPS=107 if COUNTY=="Loudoun" & StateFIPS==51
	replace CountyFIPS=109 if COUNTY=="Louisa" & StateFIPS==51
	replace CountyFIPS=111 if COUNTY=="Lunenburg" & StateFIPS==51
	replace CountyFIPS=113 if COUNTY=="Madison" & StateFIPS==51
	replace CountyFIPS=115 if COUNTY=="Mathews" & StateFIPS==51
	replace CountyFIPS=117 if COUNTY=="Mecklenburg" & StateFIPS==51
	replace CountyFIPS=119 if COUNTY=="Middlesex" & StateFIPS==51
	replace CountyFIPS=121 if COUNTY=="Montgomery" & StateFIPS==51
	replace CountyFIPS=121 if COUNTY=="MONTGOMERY" & StateFIPS==51
	replace CountyFIPS=125 if COUNTY=="Nelson" & StateFIPS==51
	replace CountyFIPS=127 if COUNTY=="New Kent" & StateFIPS==51
	replace CountyFIPS=131 if COUNTY=="Northampton" & StateFIPS==51
	replace CountyFIPS=133 if COUNTY=="Northumberland" & StateFIPS==51
	replace CountyFIPS=133 if COUNTY=="Northumberlnd" & StateFIPS==51

	replace CountyFIPS=135 if COUNTY=="Nottoway" & StateFIPS==51
	replace CountyFIPS=137 if COUNTY=="Orange" & StateFIPS==51
	replace CountyFIPS=139 if COUNTY=="Page" & StateFIPS==51
	replace CountyFIPS=141 if COUNTY=="Patrick" & StateFIPS==51
	replace CountyFIPS=143 if COUNTY=="Pittsylvania" & StateFIPS==51
	replace CountyFIPS=145 if COUNTY=="Powhatan" & StateFIPS==51
	replace CountyFIPS=147 if COUNTY=="Prince Edward" & StateFIPS==51
	replace CountyFIPS=149 if COUNTY=="Prince George" & StateFIPS==51
	replace CountyFIPS=153 if COUNTY=="Prince William" & StateFIPS==51
	replace CountyFIPS=155 if COUNTY=="Pulaski" & StateFIPS==51

	replace CountyFIPS=157 if COUNTY=="Rappahannock" & StateFIPS==51
	replace CountyFIPS=159 if COUNTY=="Richmond" & StateFIPS==51
	replace CountyFIPS=161 if COUNTY=="Roanoke" & StateFIPS==51
	replace CountyFIPS=163 if COUNTY=="Rockbridge" & StateFIPS==51
	replace CountyFIPS=165 if COUNTY=="Rockingham" & StateFIPS==51
	replace CountyFIPS=167 if COUNTY=="Russell" & StateFIPS==51
	replace CountyFIPS=169 if COUNTY=="Scott" & StateFIPS==51
	replace CountyFIPS=171 if COUNTY=="Shenandoah" & StateFIPS==51
	replace CountyFIPS=173 if COUNTY=="Smyth" & StateFIPS==51
	replace CountyFIPS=175 if COUNTY=="Southampton" & StateFIPS==51
	replace CountyFIPS=177 if COUNTY=="Spotsylvania" & StateFIPS==51
	replace CountyFIPS=179 if COUNTY=="Stafford" & StateFIPS==51
	replace CountyFIPS=181 if COUNTY=="Surry" & StateFIPS==51
	replace CountyFIPS=183 if COUNTY=="Sussex" & StateFIPS==51
	replace CountyFIPS=185 if COUNTY=="Tazewell" & StateFIPS==51
	replace CountyFIPS=187 if COUNTY=="Warren" & StateFIPS==51
	replace CountyFIPS=191 if COUNTY=="Washington" & StateFIPS==51
	replace CountyFIPS=193 if COUNTY=="Westmoreland" & StateFIPS==51
	replace CountyFIPS=195 if COUNTY=="Wise" & StateFIPS==51
	replace CountyFIPS=197 if COUNTY=="Wythe" & StateFIPS==51
	replace CountyFIPS=199 if COUNTY=="York" & StateFIPS==51
	replace CountyFIPS=510 if COUNTY=="Alexandria City" & StateFIPS==51
	replace CountyFIPS=510 if COUNTY=="Alexandria city" & StateFIPS==51
	replace CountyFIPS=510 if COUNTY=="Alexandria" & StateFIPS==51
	replace CountyFIPS=515 if COUNTY=="Bedford City" & StateFIPS==51
	replace CountyFIPS=520 if COUNTY=="Bristol City" & StateFIPS==51
	replace CountyFIPS=520 if COUNTY=="Bristol" & StateFIPS==51

	replace CountyFIPS=530 if COUNTY=="Buena Vista City" & StateFIPS==51
	replace CountyFIPS=540 if COUNTY=="Charlottesville City" & StateFIPS==51
	replace CountyFIPS=550 if COUNTY=="Chesapeake City" & StateFIPS==51
	replace CountyFIPS=550 if COUNTY=="Chesapeake city" & StateFIPS==51
	replace CountyFIPS=550 if COUNTY=="Chesapeake" & StateFIPS==51
	replace CountyFIPS=560 if COUNTY=="Clifton Forge City" & StateFIPS==51
	replace CountyFIPS=570 if COUNTY=="Colonial Heights City" & StateFIPS==51
	replace CountyFIPS=580 if COUNTY=="Covington City" & StateFIPS==51
	replace CountyFIPS=580 if COUNTY=="Covington" & StateFIPS==51
	replace CountyFIPS=590 if COUNTY=="Danville City" & StateFIPS==51
	replace CountyFIPS=595 if COUNTY=="Emporia City" & StateFIPS==51
	replace CountyFIPS=600 if COUNTY=="Fairfax City" & StateFIPS==51
	replace CountyFIPS=610 if COUNTY=="Falls Church City" & StateFIPS==51
	replace CountyFIPS=620 if COUNTY=="Franklin City" & StateFIPS==51
	replace CountyFIPS=630 if COUNTY=="Fredericksburg City" & StateFIPS==51
	replace CountyFIPS=640 if COUNTY=="Galax City" & StateFIPS==51
	replace CountyFIPS=650 if COUNTY=="Hampton City" & StateFIPS==51
	replace CountyFIPS=660 if COUNTY=="Harrisonburg City" & StateFIPS==51
	replace CountyFIPS=670 if COUNTY=="Hopewell City" & StateFIPS==51
	replace CountyFIPS=670 if COUNTY=="HOPEWELL CITY" & StateFIPS==51
	replace CountyFIPS=670 if COUNTY=="Hopewell city" & StateFIPS==51

	replace CountyFIPS=678 if COUNTY=="Lexington City" & StateFIPS==51
	replace CountyFIPS=680 if COUNTY=="Lynchburg City" & StateFIPS==51
	replace CountyFIPS=683 if COUNTY=="Manassas City" & StateFIPS==51
		replace CountyFIPS=683 if COUNTY=="Manassus City" & StateFIPS==51

	replace CountyFIPS=685 if COUNTY=="Manassas Park City" & StateFIPS==51
		replace CountyFIPS=685 if COUNTY=="Manassus Park City" & StateFIPS==51

	replace CountyFIPS=690 if COUNTY=="Martinsville City" & StateFIPS==51
	replace CountyFIPS=700 if COUNTY=="Newport News City" & StateFIPS==51
	replace CountyFIPS=710 if COUNTY=="Norfolk City" & StateFIPS==51
	replace CountyFIPS=720 if COUNTY=="Norton City" & StateFIPS==51
	replace CountyFIPS=730 if COUNTY=="Petersburg City" & StateFIPS==51
		replace CountyFIPS=735 if COUNTY=="Poquoson" & StateFIPS==51

	replace CountyFIPS=735 if COUNTY=="Poquoson City" & StateFIPS==51
	replace CountyFIPS=740 if COUNTY=="Portsmouth City" & StateFIPS==51
	replace CountyFIPS=740 if COUNTY=="PORTSMOUTH CITY" & StateFIPS==51
	replace CountyFIPS=740 if COUNTY=="Portsmouth city" & StateFIPS==51
	replace CountyFIPS=750 if COUNTY=="Radford City" & StateFIPS==51

	replace CountyFIPS=750 if COUNTY=="Radford" & StateFIPS==51
	replace CountyFIPS=760 if COUNTY=="Richmond City" & StateFIPS==51
	replace CountyFIPS=760 if COUNTY=="Richmond city" & StateFIPS==51

	replace CountyFIPS=760 if COUNTY=="City of Richmond" & StateFIPS==51
	replace CountyFIPS=770 if COUNTY=="Roanoke City" & StateFIPS==51
	replace CountyFIPS=775 if COUNTY=="Salem City" & StateFIPS==51
		replace CountyFIPS=775 if COUNTY=="Salem" & StateFIPS==51

	replace CountyFIPS=780 if COUNTY=="South Boston City" & StateFIPS==51
	replace CountyFIPS=790 if COUNTY=="Staunton City" & StateFIPS==51
	replace CountyFIPS=800 if COUNTY=="Suffolk City" & StateFIPS==51
	replace CountyFIPS=810 if COUNTY=="Virginia Beach City" & StateFIPS==51
	replace CountyFIPS=820 if COUNTY=="Waynesboro City" & StateFIPS==51
	replace CountyFIPS=830 if COUNTY=="Williamsburg City" & StateFIPS==51
	replace CountyFIPS=840 if COUNTY=="Winchester City" & StateFIPS==51
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==53
	replace CountyFIPS=003 if COUNTY=="Asotin" & StateFIPS==53
	replace CountyFIPS=005 if COUNTY=="Benton" & StateFIPS==53
	replace CountyFIPS=007 if COUNTY=="Chelan" & StateFIPS==53
	replace CountyFIPS=009 if COUNTY=="Clallam" & StateFIPS==53
	replace CountyFIPS=011 if COUNTY=="Clark" & StateFIPS==53
	replace CountyFIPS=013 if COUNTY=="Columbia" & StateFIPS==53
	replace CountyFIPS=015 if COUNTY=="Cowlitz" & StateFIPS==53
	replace CountyFIPS=017 if COUNTY=="Douglas" & StateFIPS==53
	replace CountyFIPS=019 if COUNTY=="Ferry" & StateFIPS==53
	replace CountyFIPS=021 if COUNTY=="Franklin" & StateFIPS==53
	replace CountyFIPS=023 if COUNTY=="Garfield" & StateFIPS==53
	replace CountyFIPS=025 if COUNTY=="Grant" & StateFIPS==53
	replace CountyFIPS=027 if COUNTY=="Grays Harbor" & StateFIPS==53
	replace CountyFIPS=029 if COUNTY=="Island" & StateFIPS==53
	replace CountyFIPS=031 if COUNTY=="Jefferson" & StateFIPS==53
	replace CountyFIPS=033 if COUNTY=="King" & StateFIPS==53
	replace CountyFIPS=035 if COUNTY=="Kitsap" & StateFIPS==53
	replace CountyFIPS=037 if COUNTY=="Kittitas" & StateFIPS==53
	replace CountyFIPS=039 if COUNTY=="Klickitat" & StateFIPS==53
	replace CountyFIPS=041 if COUNTY=="Lewis" & StateFIPS==53
	replace CountyFIPS=043 if COUNTY=="Lincoln" & StateFIPS==53
	replace CountyFIPS=045 if COUNTY=="Mason" & StateFIPS==53
	replace CountyFIPS=047 if COUNTY=="Okanogan" & StateFIPS==53
	replace CountyFIPS=049 if COUNTY=="Pacific" & StateFIPS==53
	replace CountyFIPS=051 if COUNTY=="Pend Oreille" & StateFIPS==53
	replace CountyFIPS=053 if COUNTY=="Pierce" & StateFIPS==53
	replace CountyFIPS=055 if COUNTY=="San Juan" & StateFIPS==53
	replace CountyFIPS=057 if COUNTY=="Skagit" & StateFIPS==53
	replace CountyFIPS=059 if COUNTY=="Skamania" & StateFIPS==53
	replace CountyFIPS=061 if COUNTY=="Snohomish" & StateFIPS==53
	replace CountyFIPS=063 if COUNTY=="Spokane" & StateFIPS==53
	replace CountyFIPS=065 if COUNTY=="Stevens" & StateFIPS==53
	replace CountyFIPS=067 if COUNTY=="Thurston" & StateFIPS==53
	replace CountyFIPS=069 if COUNTY=="Wahkiakum" & StateFIPS==53
	replace CountyFIPS=071 if COUNTY=="Walla Walla" & StateFIPS==53
	replace CountyFIPS=073 if COUNTY=="Whatcom" & StateFIPS==53
	replace CountyFIPS=075 if COUNTY=="Whitman" & StateFIPS==53
	replace CountyFIPS=077 if COUNTY=="Yakima" & StateFIPS==53
	replace CountyFIPS=001 if COUNTY=="Barbour" & StateFIPS==54
	replace CountyFIPS=003 if COUNTY=="Berkeley" & StateFIPS==54
	replace CountyFIPS=005 if COUNTY=="Boone" & StateFIPS==54
	replace CountyFIPS=007 if COUNTY=="Braxton" & StateFIPS==54
	replace CountyFIPS=009 if COUNTY=="Brooke" & StateFIPS==54
	replace CountyFIPS=011 if COUNTY=="Cabell" & StateFIPS==54
	replace CountyFIPS=013 if COUNTY=="Calhoun" & StateFIPS==54
	replace CountyFIPS=015 if COUNTY=="Clay" & StateFIPS==54
	replace CountyFIPS=017 if COUNTY=="Doddridge" & StateFIPS==54
	replace CountyFIPS=019 if COUNTY=="Fayette" & StateFIPS==54
	replace CountyFIPS=021 if COUNTY=="Gilmer" & StateFIPS==54
	replace CountyFIPS=023 if COUNTY=="Grant" & StateFIPS==54
	replace CountyFIPS=025 if COUNTY=="Greenbrier" & StateFIPS==54
	replace CountyFIPS=027 if COUNTY=="Hampshire" & StateFIPS==54
	replace CountyFIPS=029 if COUNTY=="Hancock" & StateFIPS==54
	replace CountyFIPS=031 if COUNTY=="Hardy" & StateFIPS==54
	replace CountyFIPS=033 if COUNTY=="Harrison" & StateFIPS==54
	replace CountyFIPS=035 if COUNTY=="Jackson" & StateFIPS==54
	replace CountyFIPS=037 if COUNTY=="Jefferson" & StateFIPS==54
	replace CountyFIPS=039 if COUNTY=="Kanawha" & StateFIPS==54
	replace CountyFIPS=041 if COUNTY=="Lewis" & StateFIPS==54
	replace CountyFIPS=043 if COUNTY=="Lincoln" & StateFIPS==54
	replace CountyFIPS=045 if COUNTY=="Logan" & StateFIPS==54
		replace CountyFIPS=047 if COUNTY=="Mcdowell" & StateFIPS==54
	replace CountyFIPS=047 if COUNTY=="Mc Dowell" & StateFIPS==54

	replace CountyFIPS=047 if COUNTY=="McDowell" & StateFIPS==54
	replace CountyFIPS=049 if COUNTY=="Marion" & StateFIPS==54
	replace CountyFIPS=049 if COUNTY=="MARION" & StateFIPS==54
	replace CountyFIPS=051 if COUNTY=="Marshall" & StateFIPS==54
	replace CountyFIPS=053 if COUNTY=="Mason" & StateFIPS==54
	replace CountyFIPS=055 if COUNTY=="Mercer" & StateFIPS==54
	replace CountyFIPS=057 if COUNTY=="Mineral" & StateFIPS==54
	replace CountyFIPS=059 if COUNTY=="Mingo" & StateFIPS==54
	replace CountyFIPS=061 if COUNTY=="Monongalia" & StateFIPS==54
	replace CountyFIPS=063 if COUNTY=="Monroe" & StateFIPS==54
	replace CountyFIPS=065 if COUNTY=="Morgan" & StateFIPS==54
	replace CountyFIPS=067 if COUNTY=="Nicholas" & StateFIPS==54
	replace CountyFIPS=069 if COUNTY=="Ohio" & StateFIPS==54
	replace CountyFIPS=071 if COUNTY=="Pendleton" & StateFIPS==54
	replace CountyFIPS=073 if COUNTY=="Pleasants" & StateFIPS==54
	replace CountyFIPS=075 if COUNTY=="Pocahontas" & StateFIPS==54
	replace CountyFIPS=077 if COUNTY=="Preston" & StateFIPS==54
	replace CountyFIPS=079 if COUNTY=="Putnam" & StateFIPS==54
	replace CountyFIPS=081 if COUNTY=="Raleigh" & StateFIPS==54
	replace CountyFIPS=083 if COUNTY=="Randolph" & StateFIPS==54
	replace CountyFIPS=085 if COUNTY=="Ritchie" & StateFIPS==54
	replace CountyFIPS=087 if COUNTY=="Roane" & StateFIPS==54
	replace CountyFIPS=089 if COUNTY=="Summers" & StateFIPS==54
	replace CountyFIPS=091 if COUNTY=="Taylor" & StateFIPS==54
	replace CountyFIPS=093 if COUNTY=="Tucker" & StateFIPS==54
	replace CountyFIPS=095 if COUNTY=="Tyler" & StateFIPS==54
	replace CountyFIPS=097 if COUNTY=="Upshur" & StateFIPS==54
	replace CountyFIPS=099 if COUNTY=="Wayne" & StateFIPS==54
	replace CountyFIPS=101 if COUNTY=="Webster" & StateFIPS==54
	replace CountyFIPS=103 if COUNTY=="Wetzel" & StateFIPS==54
	replace CountyFIPS=105 if COUNTY=="Wirt" & StateFIPS==54
	replace CountyFIPS=107 if COUNTY=="Wood" & StateFIPS==54
	replace CountyFIPS=109 if COUNTY=="Wyoming" & StateFIPS==54
	replace CountyFIPS=001 if COUNTY=="Adams" & StateFIPS==55
	replace CountyFIPS=003 if COUNTY=="Ashland" & StateFIPS==55
	replace CountyFIPS=005 if COUNTY=="Barron" & StateFIPS==55
	replace CountyFIPS=007 if COUNTY=="Bayfield" & StateFIPS==55
	replace CountyFIPS=009 if COUNTY=="Brown" & StateFIPS==55
	replace CountyFIPS=011 if COUNTY=="Buffalo" & StateFIPS==55
	replace CountyFIPS=013 if COUNTY=="Burnett" & StateFIPS==55
	replace CountyFIPS=015 if COUNTY=="Calumet" & StateFIPS==55
	replace CountyFIPS=017 if COUNTY=="Chippewa" & StateFIPS==55
	replace CountyFIPS=019 if COUNTY=="Clark" & StateFIPS==55
	replace CountyFIPS=021 if COUNTY=="Columbia" & StateFIPS==55
	replace CountyFIPS=023 if COUNTY=="Crawford" & StateFIPS==55
	replace CountyFIPS=025 if COUNTY=="Dane" & StateFIPS==55
	replace CountyFIPS=025 if COUNTY=="DANE" & StateFIPS==55
	replace CountyFIPS=027 if COUNTY=="Dodge" & StateFIPS==55
	replace CountyFIPS=029 if COUNTY=="Door" & StateFIPS==55
	replace CountyFIPS=031 if COUNTY=="Douglas" & StateFIPS==55
	replace CountyFIPS=033 if COUNTY=="Dunn" & StateFIPS==55
	replace CountyFIPS=035 if COUNTY=="Eau Claire" & StateFIPS==55
	replace CountyFIPS=037 if COUNTY=="Florence" & StateFIPS==55
	replace CountyFIPS=039 if COUNTY=="Fond Du Lac" & StateFIPS==55
		replace CountyFIPS=039 if COUNTY=="Fond du Lac" & StateFIPS==55

	replace CountyFIPS=041 if COUNTY=="Forest" & StateFIPS==55
	replace CountyFIPS=043 if COUNTY=="Grant" & StateFIPS==55
	replace CountyFIPS=045 if COUNTY=="Green" & StateFIPS==55
	replace CountyFIPS=047 if COUNTY=="Green Lake" & StateFIPS==55
	replace CountyFIPS=049 if COUNTY=="Iowa" & StateFIPS==55
	replace CountyFIPS=051 if COUNTY=="Iron" & StateFIPS==55
	replace CountyFIPS=053 if COUNTY=="Jackson" & StateFIPS==55
	replace CountyFIPS=055 if COUNTY=="Jefferson" & StateFIPS==55
	replace CountyFIPS=057 if COUNTY=="Juneau" & StateFIPS==55
	replace CountyFIPS=059 if COUNTY=="Kenosha" & StateFIPS==55
	replace CountyFIPS=061 if COUNTY=="Kewaunee" & StateFIPS==55
	replace CountyFIPS=063 if COUNTY=="La Crosse" & StateFIPS==55
	replace CountyFIPS=065 if COUNTY=="Lafayette" & StateFIPS==55
	replace CountyFIPS=065 if COUNTY=="LaFayette" & StateFIPS==55
	replace CountyFIPS=067 if COUNTY=="Langlade" & StateFIPS==55
	replace CountyFIPS=069 if COUNTY=="Lincoln" & StateFIPS==55
	replace CountyFIPS=071 if COUNTY=="Manitowoc" & StateFIPS==55
	replace CountyFIPS=073 if COUNTY=="Marathon" & StateFIPS==55
	replace CountyFIPS=075 if COUNTY=="Marinette" & StateFIPS==55
	replace CountyFIPS=077 if COUNTY=="Marquette" & StateFIPS==55
	replace CountyFIPS=078 if COUNTY=="Menominee" & StateFIPS==55
	replace CountyFIPS=079 if COUNTY=="Milwaukee" & StateFIPS==55
		replace CountyFIPS=078 if COUNTY=="Menomonee" & StateFIPS==55

	replace CountyFIPS=081 if COUNTY=="Monroe" & StateFIPS==55
	replace CountyFIPS=083 if COUNTY=="Oconto" & StateFIPS==55
	replace CountyFIPS=085 if COUNTY=="Oneida" & StateFIPS==55
	replace CountyFIPS=087 if COUNTY=="Outagamie" & StateFIPS==55
	replace CountyFIPS=089 if COUNTY=="Ozaukee" & StateFIPS==55
	replace CountyFIPS=091 if COUNTY=="Pepin" & StateFIPS==55
	replace CountyFIPS=093 if COUNTY=="Pierce" & StateFIPS==55
	replace CountyFIPS=095 if COUNTY=="Polk" & StateFIPS==55
	replace CountyFIPS=097 if COUNTY=="Portage" & StateFIPS==55
	replace CountyFIPS=099 if COUNTY=="Price" & StateFIPS==55
	replace CountyFIPS=099 if COUNTY=="PRICE" & StateFIPS==55
	replace CountyFIPS=101 if COUNTY=="Racine" & StateFIPS==55
	replace CountyFIPS=103 if COUNTY=="Richland" & StateFIPS==55
	replace CountyFIPS=105 if COUNTY=="Rock" & StateFIPS==55
	replace CountyFIPS=107 if COUNTY=="Rusk" & StateFIPS==55
	replace CountyFIPS=109 if COUNTY=="St Croix" & StateFIPS==55
		replace CountyFIPS=109 if COUNTY=="St. Croix" & StateFIPS==55
		replace CountyFIPS=109 if COUNTY=="Saint Croix" & StateFIPS==55

	replace CountyFIPS=111 if COUNTY=="Sauk" & StateFIPS==55
	replace CountyFIPS=113 if COUNTY=="Sawyer" & StateFIPS==55
	replace CountyFIPS=115 if COUNTY=="Shawano" & StateFIPS==55
	replace CountyFIPS=117 if COUNTY=="Sheboygan" & StateFIPS==55
	replace CountyFIPS=119 if COUNTY=="Taylor" & StateFIPS==55
	replace CountyFIPS=121 if COUNTY=="Trempealeau" & StateFIPS==55
	replace CountyFIPS=123 if COUNTY=="Vernon" & StateFIPS==55
	replace CountyFIPS=125 if COUNTY=="Vilas" & StateFIPS==55
	replace CountyFIPS=127 if COUNTY=="Walworth" & StateFIPS==55
	replace CountyFIPS=129 if COUNTY=="Washburn" & StateFIPS==55
	replace CountyFIPS=131 if COUNTY=="Washington" & StateFIPS==55
	replace CountyFIPS=133 if COUNTY=="Waukesha" & StateFIPS==55
	replace CountyFIPS=135 if COUNTY=="Waupaca" & StateFIPS==55
	replace CountyFIPS=137 if COUNTY=="Waushara" & StateFIPS==55
	replace CountyFIPS=139 if COUNTY=="Winnebago" & StateFIPS==55
	replace CountyFIPS=139 if COUNTY=="WINNEBAGO" & StateFIPS==55
	replace CountyFIPS=141 if COUNTY=="Wood" & StateFIPS==55
	replace CountyFIPS=001 if COUNTY=="Albany" & StateFIPS==56
	replace CountyFIPS=003 if COUNTY=="Big Horn" & StateFIPS==56
	replace CountyFIPS=005 if COUNTY=="Campbell" & StateFIPS==56
	replace CountyFIPS=005 if COUNTY=="CAMPBELL" & StateFIPS==56
	replace CountyFIPS=007 if COUNTY=="Carbon" & StateFIPS==56
	replace CountyFIPS=009 if COUNTY=="Converse" & StateFIPS==56
	replace CountyFIPS=011 if COUNTY=="Crook" & StateFIPS==56
	replace CountyFIPS=013 if COUNTY=="Fremont" & StateFIPS==56
	replace CountyFIPS=015 if COUNTY=="Goshen" & StateFIPS==56
	replace CountyFIPS=017 if COUNTY=="Hot Springs" & StateFIPS==56
	replace CountyFIPS=019 if COUNTY=="Johnson" & StateFIPS==56
	replace CountyFIPS=021 if COUNTY=="Laramie" & StateFIPS==56
	replace CountyFIPS=023 if COUNTY=="Lincoln" & StateFIPS==56
	replace CountyFIPS=025 if COUNTY=="Natrona" & StateFIPS==56
	replace CountyFIPS=027 if COUNTY=="Niobrara" & StateFIPS==56
	replace CountyFIPS=029 if COUNTY=="Park" & StateFIPS==56
	replace CountyFIPS=031 if COUNTY=="Platte" & StateFIPS==56
	replace CountyFIPS=033 if COUNTY=="Sheridan" & StateFIPS==56
	replace CountyFIPS=035 if COUNTY=="Sublette" & StateFIPS==56
	replace CountyFIPS=037 if COUNTY=="Sweetwater" & StateFIPS==56
	replace CountyFIPS=039 if COUNTY=="Teton" & StateFIPS==56
	replace CountyFIPS=041 if COUNTY=="Uinta" & StateFIPS==56
	replace CountyFIPS=043 if COUNTY=="Washakie" & StateFIPS==56
	replace CountyFIPS=045 if COUNTY=="Weston" & StateFIPS==56
