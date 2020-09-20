state("Bully", "Steam"){
	int IGT : "Bully.exe", 0x81A340;
	byte M1State : 0x1CC4328, 0x1C;
	byte LMState : 0x1CC4328, 0x2F2;
	int M : 0x1CC4328;
	byte C : 0x83CF82;
}

startup{
	refreshRate = 30;
	vars.mAddresses = new Dictionary<int, string> {
						//Chapter 1
					//---Welcome to Bullworth	
		{0x1A, "M_1_01a"}, 				//Meet the Principal
		{0x20, "M_1_01b"},				//Bully Fight
		{0x26, "M_1_01c"},				//Meet Gary
					//---
		{0x2C, "M_1_02"},				//Mission Tutorial
		{0x32, "M_1_03"},				//This is Your School
		{0x38, "M_1_04"},				//Get to Class
		{0x3E, "M_1_05"},				//The Setup
		{0x4A, "M_1_06"},				//Slingshot
		{0x50, "M_1_07"},				//Save Algie
		{0x8, "M_1_0E"},				//Peter's Errand
		{0x56, "M_1_08"},				//A Little Help
		{0x7A, "M_1_09"},				//Defend Bucky
		{0x80, "M_1_10"},				//That Bitch
		{0x8C, "M_1_11"},				//The Candidate
		{0x9E, "M_1_12"},				//Halloween
		{0xBC, "M_1_13"},				//Help Gary
		{0xC2, "M_1_14"},				//Russell in the Hole
						
						//Chapter 2
		{0xEC, "M_2_02"},				//Hattrick vs. Galloway
		{0xF2, "M_2_01"},				//Last Minute Shopping
		{0x182, "M_2_03"},				//Prep Challenge
		{0xE6, "M_2_03R"},					//Prep Challenge Rounds (1 - Chad, 2 - Justin, 3 - )
		{0x10A, "M_2_04"},				//The Eggs
		{0x110, "M_2_05"},				//Movie Tickets
		{0x116, "M_2_06"},				//Carnival Date
		{0x122, "M_2_07"},				//Race the Vale
		{0x128, "M_2_08"},				//Beach Rumble
		{0x188, "M_2_09"},				//Tad's House
		{0x194, "M_2_10"},				//Boxing Challenge
		{0x19A, "M_2_11"},				//Dishonorable Fight
					
						//Chapter 3
		{0x1CA, "M_3_01"},				//Balls of Snow
		{0x1D0, "M_3_02"},				//Miracle on Bullworth St.
		{0x1B2, "M_3_03"},				//Christmas is Here
		{0x1D6, "M_3_04"},				//Nutcrackin'
		{0x1DC, "M_3_05"},				//Rudy the Red Nosed Santa
		{0x1E2, "M_3_06"},				//Jealous Johnny
		{0x1E8, "M_3_07"},				//Bait
		{0x1F4, "M_3_08"},				//Wrong Part of Town
		{0x1FA, "M_3_09"},				//Tagging
		{0x206, "M_3_10"},				//Lola's Race
		{0x20C, "M_3_11"},				//The Tenements
		{0x212, "M_3_12"},				//The Rumble
		{0x218, "M_3_13"},				//Fighting Johnny Vincent
		
						//Chapter 4
		{0x236, "M_4_01"},				//Stronghold Assault				
		{0x23C, "M_4_02"},				//Nerd Boss Fight		
		{0x25A, "M_4_03"},				//Funhouse Fun				
		{0x24E, "M_4_04"},				//Paparazzi	
		{0x254, "M_4_05"},				//Defender of the Castle
		{0x260, "M_4_06"},				//Nice Outfit
		{0x266, "M_4_07"},				//Discretion Assured
		{0x26C, "M_4_08"},				//The Big Game
		{0x272, "M_4_09"},				//Jock Boss Fight
		
						//Chapter 5
		{0x284, "M_5_01"},				//Making a Mark				
		{0x28A, "M_5_02"},				//Rats in the Library
		{0x290, "M_5_03"},				//The Gym is Burning
		{0x296, "M_5_04"},				//Finding Johnny Vincent
		{0x2A2, "M_5_05"},				//Revenge on Mr.Burton
		{0x2B4, "M_5_06"},				//Preppies Vandalised
		{0x2C6, "M_5_07"},				//Go See The Principal
		{0x2CC, "M_5_08"},				//Busting In Part 1
		{0x2D2, "M_5_09"},				//Busting In Part 2
		{0x2DE, "M_5_10"},				//Showdown at the Plant
		{0x2E4, "M_5_11a"},				//Rescue Russell
		{0x2EA, "M_5_11b"},				//Take down the Clique Leaders
		{0x2F0, "M_5_11c"},				//Final Showdown
		
						//Side missions
							//Little Help's
		{0x5C, "M_X_LH2"},					//A Little Help 2
		{0x62, "M_X_LH3"},					//A Little Help 3
		{0x68, "M_X_LH4"},					//A Little Help 4
		{0x6E, "M_X_LH5"},					//A Little Help 5
		{0x74, "M_X_LH6"},					//A Little Help 6
		
						//Side mission
		{0x86, "M_X_01"},				//The Diary
		{0xB6, "M_X_02"},				//Character Sheets
		{0xAA, "M_X_03"},				//The Big Prank
		{0x1A6, "M_X_04"},				//Small Offences
		{0x11C, "M_X_05"},				//Panty Raid
		{0x104, "M_X_06"},				//Comic Klepto
		{0x18E, "M_X_07"},				//Weed Killer
		{0x1BE, "M_X_08"},				//Cook's Crush
		{0x1EE, "M_X_09"},				//Glass House
		{0x21E, "M_X_10"},				//Discreet Deliveries
		{0x22A, "M_X_11"},				//Here's to you Ms. Philips
		{0x230, "M_X_12"},				//Cook's Date
		{0x242, "M_X_13"},				//Galloway Away
		{0x27E, "M_X_14"},				//Cheating Time
		{0x2A8, "M_X_15"},				//Smash It Up
		{0x2AE, "M_X_16"},				//The Collector
		{0x2D8, "M_X_17"},				//Mailbox Armageddon
		
						//Challenges
		{0x1C4, "M_C_N"},				//Nerd Challenge
		{0x200, "M_C_G"},				//Greaser Challenge
		{0x248, "M_C_J"},				//Jocks Challenge
		{0x29C, "M_C_T"},				//Townie Challenge
		
						//Side activities
							//Boxing
		{0xCE, "M_BX_01"},				//Chad
		{0xD4, "M_BX_02"},				//Justin
		{0xDA, "M_BX_03"},				//Parker
		{0xE0, "M_BX_04"},				//Bryce
		
							//Dodgeball
		{0x3EC, "M_DB_01"},				//vs. Team Prep
		{0x3F2, "M_DB_02"},				//vs. Team Greaser
		{0x3F8, "M_DB_03"},				//vs. Team Jock
		{0x3FE, "M_DB_04"},				//vs. Team Townie
		
							//Paper Route
		{0xF8, "M_PR_01"},				//Intro
		{0xFE, "M_PR_D"},				// 1 = 10 , 2 = 14 , 3 = 19 , 4 = 24 Deliveries
		
							//Bike Races
		{0x12E, "M_BR_V01"},				//Bullworth Vale Bike Race 1
		{0x134, "M_BR_V02"},				//Bullworth Vale Bike Race 2
		{0x13A, "M_BR_V03"},				//Bullworth Vale Bike Race 3
		{0x140, "M_BR_V04"},				//Bullworth Vale Bike Race 4
		{0x146, "M_BR_V05"},				//Bullworth Vale Bike Race 5
		{0x14C, "M_BR_V06"},				//Bullworth Vale Bike Race 6
		{0x152, "M_BR_V07"},				//Bullworth Vale Bike Race 7
		
		{0x158, "M_BR_T01"},				//Bullworth Town Bike Race 1
		{0x15E, "M_BR_T02"},				//Bullworth Town Bike Race 2
		{0x164, "M_BR_T03"},				//Bullworth Town Bike Race 3
		{0x16A, "M_BR_T04"},				//Bullworth Town Bike Race 4
		
		{0x170, "M_BR_NC01"},				//New Coventry Race 1
		{0x176, "M_BR_NC02"},				//New Coventry Race 2
		
		{0x17C, "M_BR_A01"},				//Bullworth Academy Race 1
		
							//Go-Kart Races
		{0x4C4, "M_GO_GP01"},				//Grand Prix Race 1
		{0x4CA, "M_GO_GP02"},				//Grand Prix Race 2
		{0x4D0, "M_GO_GP03"},				//Grand Prix Race 3
		{0x4D6, "M_GO_GP04"},				//Grand Prix Race 4
		{0x4DC, "M_GO_GP05"},				//Grand Prix Race 5
		
		{0x4E2, "M_GO_SR01"},				//Street Race 1
		{0x4E8, "M_GO_SR02"},				//Street Race 2
		{0x4EE, "M_GO_SR03"},				//Street Race 3
						
							//Lawn Mowing
		{0x5D8, "M_LAWN_01"},				//Park 1
		{0x5DE, "M_LAWN_02"},				//Park 2
		{0x5E4, "M_LAWN_03"},				//Park 3
		
		{0x5EA, "M_LAWN_04"},				//House 1
		{0x5F0, "M_LAWN_05"},				//House 2
		{0x5F6, "M_LAWN_06"},				//House 3
		
						//Classes
							//Chemistry
		{0x302, "C_CEM_1"},				//Chemistry 1
		{0x308, "C_CEM_2"},				//Chemistry 2
		{0x30E, "C_CEM_3"},				//Chemistry 3
		{0x314, "C_CEM_4"},				//Chemistry 4
		{0x31A, "C_CEM_5"},				//Chemistry 5
							//English
		{0x3A4, "C_ENG_1"},				//English 1
		{0x3AA, "C_ENG_2"},				//English 2
		{0x3B0, "C_ENG_3"},				//English 3
		{0x3B6, "C_ENG_4"},				//English 4
		{0x3BC, "C_ENG_5"},				//English 5
							//Art
		{0x326, "C_ART_1"},				//Art 1	
		{0x32C, "C_ART_2"},				//Art 2		
		{0x332, "C_ART_3"},				//Art 3
		{0x338, "C_ART_4"},				//Art 4
		{0x33E, "C_ART_5"},				//Art 5
							//Gym
		{0x368, "C_GYM_1"},				//Gym 1
		{0x36E, "C_GYM_2"},				//Gym 2
		{0x374, "C_GYM_3"},				//Gym 3
		{0x37A, "C_GYM_4"},				//Gym 4
		{0x380, "C_GYM_5"},				//Gym 5
							//Biology
		{0x40A, "C_BIO_1"},				//Biology 1
		{0x410, "C_BIO_2"},				//Biology 2
		{0x416, "C_BIO_3"},				//Biology 3
		{0x41C, "C_BIO_4"},				//Biology 4
		{0x422, "C_BIO_5"},				//Biology 5
							//Music
		{0x476, "C_MSC_1"},				//Music 1
		{0x47C, "C_MSC_2"},				//Music 2
		{0x482, "C_MSC_3"},				//Music 3
		{0x488, "C_MSC_4"},				//Music 4
		{0x48E, "C_MSC_5"},				//Music 5
							//Shop
		{0x3C8, "C_SHP_1"},				//Shop 1					
		{0x3CE, "C_SHP_2"},				//Shop 2
		{0x3D4, "C_SHP_3"},				//Shop 3
		{0x3DA, "C_SHP_4"},				//Shop 4
		{0x3E0, "C_SHP_5"},				//Shop 5
							//Photography
		{0x386, "C_PGY_1"},				//Photography 1
		{0x38C, "C_PGY_2"},				//Photography 2				
		{0x392, "C_PGY_3"},				//Photography 3
		{0x398, "C_PGY_4"},				//Photography 4
		{0x39E, "C_PGY_5"},				//Photography 5
							//Geography
		{0x42E, "C_GEO_1"},				//Geography 1
		{0x434, "C_GEO_2"},				//Geography 2
		{0x43A, "C_GEO_3"},				//Geography 3
		{0x440, "C_GEO_4"},				//Geography 4
		{0x446, "C_GEO_5"},				//Geography 5
							//Math
		{0x452, "C_MTH_1"},				//Math 1
		{0x458, "C_MTH_2"},				//Math 2
		{0x45E, "C_MTH_3"},				//Math 3
		{0x464, "C_MTH_4"},				//Math 4
		{0x46A, "C_MTH_5"},				//Math 5
		
						//Misc
		{0xC8, "C_C_02"},				//CH2 Cutscene
		{0x1A0, "C_C_03"},				//CH3 Cutscene
		{0x224, "C_C_04"},				//CH4 Cutscene
		{0x278, "C_C_05"},				//CH5 Cutscene
		{0x2F6, "C_C_C"}				//Credits
	};
	
	vars.eAddresses = new Dictionary<int, string>{};
	for (int i = 0; i < 50; i++){								// Errands ... yes ... this small snipet is responsible for the errands dictionary ... 
		vars.eAddresses.Add(0x81B096 + (0x4*i),"ER_"+i);		// I probably should do the same with the mess above , but im too lazy
	}															// also thanks for reading my comment in this section ... here ... have a imaginary cookie
	
	
	
	 // ------------------------- Settings    ... I wonder could i have written them better :thinking:
		//-----Chapter 1-----//
		
	settings.Add("CH1", true, "Chapter 1"); 
		settings.Add("M_1", true, "Welcome to Bullworth", "CH1");
			settings.Add("M_1_01a", false, "Meet the Principal", "M_1");
			settings.Add("M_1_01b", false, "Bully Fight", "M_1");
			settings.Add("M_1_01c", true, "Meet Gary", "M_1");
			settings.SetToolTip("M_1_01a", "Splits after going to the Principal.");
			settings.SetToolTip("M_1_01b", "Splits when entering Boys Dorm.");
			settings.SetToolTip("M_1_01c", "Splits after mission ends.");
		settings.Add("M_1_02", false, "Mission Tutorial", "CH1");
		settings.SetToolTip("M_1_02", @"Splits after walking into 'This is Your School' mission marker.
Not sure why it's counted as seperate mission,
added it anyway in case any one wants to use it.");
		settings.Add("M_1_03", true, "This is Your School", "CH1");
		settings.Add("M_1_04", false,"Get to Class", "CH1");
		settings.Add("M_1_05", true, "The Setup", "CH1");
		settings.Add("M_1_06", true,"Slingshot", "CH1");
		settings.Add("M_1_07", true,"Save Algie","CH1");
		settings.Add("M_1_0E", false,"Peter's Errand","CH1");
		settings.Add("M_1_08", true,"A Little Help","CH1");
		settings.Add("M_1_09", true,"Defend Bucky","CH1");
		settings.Add("M_1_10", true,"That Bitch","CH1");
		settings.Add("M_1_11", true,"The Candidate","CH1");
		settings.Add("M_1_12", true,"Halloween","CH1");
		settings.Add("M_1_13", false,"Help Gary","CH1");
		settings.Add("M_1_14", true,"Russell in the Hole","CH1");
		
		//-----Chapter 2-----//	
		
	settings.Add("C_C_02", false, "Chapter 2 Introduction");
	settings.SetToolTip("C_C_02", "Splits after Chapter 2 introduction cutscene");
	settings.Add("CH2", true, "Chapter 2");
		settings.Add("M_2_02", true, "Hattrick vs. Galloway", "CH2");
		settings.Add("M_2_01", true, "Last Minute Shopping", "CH2");
		settings.Add("M_2_03", true, "Prep Challenge", "CH2");
			settings.Add("M_2_03R", false, "Chad", "M_2_03");
			settings.SetToolTip("M_2_03R", "Additional split for Chad");
			settings.Add("M_2_03R1", false, "Justin", "M_2_03");
			settings.SetToolTip("M_2_03R1", "Additional split for Justin");
			settings.Add("M_2_03R2", false, "Parker", "M_2_03");
			settings.SetToolTip("M_2_03R2", "Additional split for Parker");
		settings.Add("M_2_04", true, "The Eggs", "CH2");
		settings.Add("M_2_05", true, "Movie Tickets", "CH2");
		settings.Add("M_2_06", true, "Carnival Date", "CH2");
		settings.Add("M_2_07", true, "Race the Vale", "CH2");
		settings.Add("M_2_08", true, "Beach Rumble", "CH2");
		settings.Add("M_2_09", true, "Tad's House", "CH2");
		settings.Add("M_2_10", false, "Boxing Challenge", "CH2");
		settings.Add("M_2_11", true, "Dishonorable Fight", "CH2");
	
		//-----Chapter 3-----//
	
	settings.Add("C_C_03", false, "Chapter 3 Introduction");
	settings.Add("CH3", true, "Chapter 3");
		settings.Add("M_3_01", true, "Balls of Snow","CH3");
		settings.Add("M_3_02", true, "Miracle on Bullworth St.","CH3");
		settings.Add("M_3_03", true, "Christmas is Here","CH3");
		settings.Add("M_3_04", true, "Nutcrackin'","CH3");
		settings.Add("M_3_05", true, "Rudy the Red Nosed Santa","CH3");
		settings.Add("M_3_06", true, "Jealous Johnny","CH3");
		settings.Add("M_3_07", true, "Bait","CH3");
		settings.Add("M_3_08", true, "Wrong Part of Town","CH3");
		settings.Add("M_3_09", true, "Tagging","CH3");
		settings.Add("M_3_10", true, "Lola's Race","CH3");
		settings.Add("M_3_11", true, "The Tenements","CH3");
		settings.Add("M_3_12", false, "The Rumble","CH3");
		settings.Add("M_3_13", true, "Fighting Johnny Vincent","CH3");
		
	
		//-----Chapter 4-----//
	
	settings.Add("C_C_04", false, "Chapter 4 Introduction");	
	settings.Add("CH4", true, "Chapter 4");
		settings.Add("M_4_01", false, "Stronghold Assault","CH4");
		settings.Add("M_4_02", true, "Nerd Boss Fight","CH4");
		settings.Add("M_4_03", true, "Funhouse Fun","CH4");
		settings.Add("M_4_04", true, "Paparazzi","CH4");
		settings.Add("M_4_05", true, "Defender of the Castle","CH4");
		settings.Add("M_4_06", true, "Nice Outfit","CH4");
		settings.Add("M_4_07", true, "Discretion Assured","CH4");
		settings.Add("M_4_08", false, "The Big Game","CH4");
		settings.Add("M_4_09", true, "Jock Boss Fight","CH4");
		
		
		//-----Chapter 5-----//
	
	settings.Add("C_C_05", false, "Chapter 5 Introduction");
	settings.Add("CH5", true, "Chapter 5");
		settings.Add("M_5_01", true, "Making a Mark","CH5");
		settings.Add("M_5_02", true, "Rats in the Library","CH5");
		settings.Add("M_5_03", true, "The Gym is Burning","CH5");
		settings.Add("M_5_04", true, "Finding Johnny Vincent","CH5");
		settings.Add("M_5_05", true, "Revenge on Mr.Burton","CH5");
		settings.Add("M_5_06", true, "Preppies Vandalised","CH5");
		settings.Add("M_5_07", true, "Go See The Principal","CH5");
		settings.Add("M_5_08", false, "Busting In Part 1","CH5");
		settings.Add("M_5_09", false, "Busting In Part 2","CH5");
		settings.Add("M_5_10", true, "Showdown at the Plant","CH5");
		settings.Add("M_5_11", true, "Complete Mayhem","CH5");
			settings.Add("M_5_11a", false, "Rescue Russell","M_5_11");
			settings.Add("M_5_11b", false, "Take down the Clique Leaders","M_5_11");
			settings.Add("M_5_11c", true, "Final Showdown","M_5_11");
			settings.SetToolTip("M_5_11c", "Splits as the Crabblesnitch cutscene ends");
			settings.Add("M_5_11d", false, "Gary KO'd","M_5_11"); 
			settings.SetToolTip("M_5_11d", @"Somewhat experimental
Chance of it splitting when it shouldn't 
Use at your own risk!");

	settings.Add("C_C_C", false, "Credits");
	settings.SetToolTip("C_C_C", @"Splits after Credits
When you would normally pause at Jimmy's room");
	
		//-----Side Missions (Not part of Any% route)-----//
		
	settings.Add("chx", false, "Side missions");
	settings.SetToolTip("chx", "Missions that are not included in Any% route");
			// ---- Transistor missions
		settings.Add("M_X_T", false, "Transistors","chx");
			settings.Add("M_X_LH2", true, "A Little Help 2","M_X_T");
			settings.Add("M_X_LH3", true, "A Little Help 3","M_X_T");
			settings.Add("M_X_LH4", true, "A Little Help 4","M_X_T");
			settings.Add("M_X_LH5", true, "A Little Help 5","M_X_T");
			settings.Add("M_X_LH6", true, "A Little Help 6","M_X_T");
			
			// ---- Clique Challenges
		settings.Add("M_C", false, "Clique Challenges","chx");
			settings.Add("M_C_N", true, "Nerd Challenge","M_C");
			settings.Add("M_C_G", true, "Greaser Challenge","M_C");
			settings.Add("M_C_J", true, "Jocks Challenge","M_C");
			settings.Add("M_C_T", true, "Townie Challenge","M_C");
			
			// ---- Boxing
		settings.Add("M_BX", false, "Boxing","chx");	
			settings.Add("M_BX_01", true, "Chad","M_BX");
			settings.Add("M_BX_02", true, "Justin","M_BX");
			settings.Add("M_BX_03", true, "Parker","M_BX");
			settings.Add("M_BX_04", true, "Bryce","M_BX");
			
			// ---- Dodgeball
		settings.Add("M_DB", false, "Dodgeball","chx");
			settings.Add("M_DB_01", true, "vs. Team Prep","M_DB");
			settings.Add("M_DB_02", true, "vs. Team Greaser","M_DB");
			settings.Add("M_DB_03", true, "vs. Team Jock","M_DB");
			settings.Add("M_DB_04", true, "vs. Team Townie","M_DB");
			
			// ---- Paper Route
		settings.Add("M_PR", false, "Paper Route","chx");
			settings.Add("M_PR_01", true, "Intro","M_PR");
			settings.Add("M_PR_D", true, "10 Clients","M_PR");
			settings.Add("M_PR_D1", true, "14 Clients","M_PR");
			settings.Add("M_PR_D2", true, "19 Clients","M_PR");
			settings.Add("M_PR_D3", true, "24 Clients","M_PR");
		
			// ----Lawn Mowing
		settings.Add("M_LAWN", false, "Lawn Mowing","chx");	
			settings.Add("M_LAWN_P", true, "Park","M_LAWN");
				settings.Add("M_LAWN_01", true, "Park 1","M_LAWN_P");
				settings.Add("M_LAWN_02", true, "Park 2","M_LAWN_P");
				settings.Add("M_LAWN_03", true, "Park 3","M_LAWN_P");
			settings.Add("M_LAWN_H", true, "House","M_LAWN");	
				settings.Add("M_LAWN_04", true, "House 1","M_LAWN_H");
				settings.Add("M_LAWN_05", true, "House 2","M_LAWN_H");
				settings.Add("M_LAWN_06", true, "House 3","M_LAWN_H");
			
			// ---- Bike Races
		settings.Add("M_BR", false, "Bike Races","chx");
			settings.Add("M_BR_V", true, "Bullworth Vale","M_BR");
				settings.Add("M_BR_V01", true, "Bullworth Vale Bike Race 1","M_BR_V");
				settings.Add("M_BR_V02", true, "Bullworth Vale Bike Race 2","M_BR_V");
				settings.Add("M_BR_V03", true, "Bullworth Vale Bike Race 3","M_BR_V");
				settings.Add("M_BR_V04", true, "Bullworth Vale Bike Race 4","M_BR_V");
				settings.Add("M_BR_V05", true, "Bullworth Vale Bike Race 5","M_BR_V");
				settings.Add("M_BR_V06", true, "Bullworth Vale Bike Race 6","M_BR_V");
				settings.Add("M_BR_V07", true, "Bullworth Vale Bike Race 7","M_BR_V");
			settings.Add("M_BR_T", true, "Bullworth Town", "M_BR");
				settings.Add("M_BR_T01", true, "Bullworth Town Bike Race 1","M_BR_T");
				settings.Add("M_BR_T02", true, "Bullworth Town Bike Race 2","M_BR_T");
				settings.Add("M_BR_T03", true, "Bullworth Town Bike Race 3","M_BR_T");
				settings.Add("M_BR_T04", true, "Bullworth Town Bike Race 4","M_BR_T");
			settings.Add("M_BR_NC", true, "New Coventry", "M_BR");
				settings.Add("M_BR_NC01", true, "New Coventry Race 1","M_BR_NC");
				settings.Add("M_BR_NC02", true, "New Coventry Race 2","M_BR_NC");
			settings.Add("M_BR_A01", true, "Bullworth Academy Race 1","M_BR");
			
			// ---- Go-Kart Races
		settings.Add("M_GO", false, "Go-Kart Races","chx");
			settings.Add("GP", true, "Carnival Races","M_GO");
				settings.Add("M_GO_GP01", true, "Grand Prix Race 1","GP");
				settings.Add("M_GO_GP02", true, "Grand Prix Race 2","GP");
				settings.Add("M_GO_GP03", true, "Grand Prix Race 3","GP");
				settings.Add("M_GO_GP04", true, "Grand Prix Race 4","GP");
				settings.Add("M_GO_GP05", true, "Grand Prix Race 5","GP");
			settings.Add("SR", true, "Street Races","M_GO");	
				settings.Add("M_GO_SR01", true, "Street Race 1","SR");
				settings.Add("M_GO_SR02", true, "Street Race 2","SR");
				settings.Add("M_GO_SR03", true, "Street Race 3","SR");
				
			// ---- Rest of sidemissions
		settings.Add("M_X_01", false, "The Diary", "chx");
		settings.Add("M_X_02", false, "Character Sheets", "chx");
		settings.Add("M_X_03", false, "The Big Prank", "chx");
		settings.Add("M_X_04", false, "Small Offences", "chx");
		settings.Add("M_X_05", false, "Panty Raid", "chx");
		settings.Add("M_X_06", false, "Comic Klepto", "chx");
		settings.Add("M_X_07", false, "Weed Killer", "chx");
		settings.Add("M_X_08", false, "Cook's Crush", "chx");
		settings.Add("M_X_09", false, "Glass House", "chx");
		settings.Add("M_X_10", false, "Discreet Deliveries", "chx");
		settings.Add("M_X_11", false, "Here's to you Ms. Philips", "chx");
		settings.Add("M_X_12", false, "Cook's Date", "chx");
		settings.Add("M_X_13", false, "Galloway Away", "chx");
		settings.Add("M_X_14", false, "Cheating Time", "chx");
		settings.Add("M_X_15", false, "Smash It Up", "chx");
		settings.Add("M_X_16", false, "The Collector", "chx");
		settings.Add("M_X_17", false, "Mailbox Armageddon", "chx");
		
	//Classes	
	
	settings.Add("CLASS", false, "Classes");
	settings.SetToolTip("CLASS", "Splits when passing selected classes");
		settings.Add("CEM", true, "Chemistry","CLASS");
			settings.Add("C_CEM_1", true, "Chemistry 1","CEM");
			settings.Add("C_CEM_2", true, "Chemistry 2","CEM");
			settings.Add("C_CEM_3", true, "Chemistry 3","CEM");
			settings.Add("C_CEM_4", true, "Chemistry 4","CEM");
			settings.Add("C_CEM_5", true, "Chemistry 5","CEM");
		settings.Add("ENG", true, "English", "CLASS");
			settings.Add("C_ENG_1", true, "English 1","ENG");
			settings.Add("C_ENG_2", true, "English 2","ENG");
			settings.Add("C_ENG_3", true, "English 3","ENG");
			settings.Add("C_ENG_4", true, "English 4","ENG");
			settings.Add("C_ENG_5", true, "English 5","ENG");
		settings.Add("ART", true, "Art", "CLASS");
			settings.Add("C_ART_1", true, "Art 1","ART");
			settings.Add("C_ART_2", true, "Art 2","ART");
			settings.Add("C_ART_3", true, "Art 3","ART");
			settings.Add("C_ART_4", true, "Art 4","ART");
			settings.Add("C_ART_5", true, "Art 5","ART");
		settings.Add("GYM", true, "Gym", "CLASS");
			settings.Add("C_GYM_1", true, "Gym 1","GYM");
			settings.Add("C_GYM_2", true, "Gym 2","GYM");
			settings.Add("C_GYM_3", true, "Gym 3","GYM");
			settings.Add("C_GYM_4", true, "Gym 4","GYM");
			settings.Add("C_GYM_5", true, "Gym 5","GYM");
		settings.Add("BIO", true, "Biology", "CLASS");
			settings.Add("C_BIO_1", true, "Biology 1","BIO");
			settings.Add("C_BIO_2", true, "Biology 2","BIO");
			settings.Add("C_BIO_3", true, "Biology 3","BIO");
			settings.Add("C_BIO_4", true, "Biology 4","BIO");
			settings.Add("C_BIO_5", true, "Biology 5","BIO");
		settings.Add("MSC", true, "Music", "CLASS");
			settings.Add("C_MSC_1", true, "Music 1","MSC");
			settings.Add("C_MSC_2", true, "Music 2","MSC");
			settings.Add("C_MSC_3", true, "Music 3","MSC");
			settings.Add("C_MSC_4", true, "Music 4","MSC");
			settings.Add("C_MSC_5", true, "Music 5","MSC");
		settings.Add("SHP", true, "Shop", "CLASS");
			settings.Add("C_SHP_1", true, "Shop 1","SHP");
			settings.Add("C_SHP_2", true, "Shop 2","SHP");
			settings.Add("C_SHP_3", true, "Shop 3","SHP");
			settings.Add("C_SHP_4", true, "Shop 4","SHP");
			settings.Add("C_SHP_5", true, "Shop 5","SHP");
		settings.Add("PGY", true, "Photography", "CLASS");
			settings.Add("C_PGY_1", true, "Photography 1","PGY");
			settings.Add("C_PGY_2", true, "Photography 2","PGY");
			settings.Add("C_PGY_3", true, "Photography 3","PGY");
			settings.Add("C_PGY_4", true, "Photography 4","PGY");
			settings.Add("C_PGY_5", true, "Photography 5","PGY");
		settings.Add("GEO", true, "Geography", "CLASS");	
			settings.Add("C_GEO_1", true, "Geography 1","GEO");
			settings.Add("C_GEO_2", true, "Geography 2","GEO");
			settings.Add("C_GEO_3", true, "Geography 3","GEO");
			settings.Add("C_GEO_4", true, "Geography 4","GEO");
			settings.Add("C_GEO_5", true, "Geography 5","GEO");
		settings.Add("MTH", true, "Math", "CLASS");
			settings.Add("C_MTH_1", true, "Math 1","MTH");
			settings.Add("C_MTH_2", true, "Math 2","MTH");
			settings.Add("C_MTH_3", true, "Math 3","MTH");
			settings.Add("C_MTH_4", true, "Math 4","MTH");
			settings.Add("C_MTH_5", true, "Math 5","MTH");
			
		// ---- Errands 	
	 settings.Add("ER", false, "Errands");
		settings.Add("ER_ALL", false, "50 Errands", "ER");
			settings.SetToolTip("ER_ALL","Splits when reaching 50 Errands.");
			
		settings.Add("ER_BA", true, "Bullworth Academy","ER");
			settings.Add("ER_1", true, "Escort Algie","ER_BA");
			settings.SetToolTip("ER_1","Escort Algie back to the Library.");
			
			settings.Add("ER_2", true, "Bog Roll","ER_BA");
			settings.SetToolTip("ER_2","Bring the roll of toilet paper for Vance.");
			
			settings.Add("ER_3", true, "Bog Roll 2","ER_BA");
			settings.SetToolTip("ER_3","Bring the roll of toilet paper for Max.");			

			settings.Add("ER_6", true, "Takin' Out The Trash","ER_BA");
			settings.SetToolTip("ER_6","Stuff three students in trash cans.");
			
			settings.Add("ER_8", true, "Blow The Toilet","ER_BA");
			settings.SetToolTip("ER_8","Throw a firecracker in a toilet.");		
	
			settings.Add("ER_13", true, "Egg the Boys Dorm","ER_BA");
			settings.SetToolTip("ER_13","Hit the outside of the boys dorm with three eggs.");	

			settings.Add("ER_14", true, "Egg the Girls Dorm","ER_BA");
			settings.SetToolTip("ER_14","Hit the outside of the girls dorm with three eggs.");

			settings.Add("ER_19", true, "Fire Alarm","ER_BA");
			settings.SetToolTip("ER_19","Pull the fire alarm.");
			
			settings.Add("ER_23", true, "Locker Stuffing","ER_BA");
			settings.SetToolTip("ER_23","Stuff two kids into lockers.");			
			
			settings.Add("ER_29", true, "Locksmith","ER_BA");
			settings.SetToolTip("ER_29","Break in to three lockers.");			
			
			settings.Add("ER_33", true, "Secret Admirer","ER_BA");
			settings.SetToolTip("ER_33","Constantinos wants Jimmy to break into Gloria's locker and put chocolates in it.");

			settings.Add("ER_34", true, "Secret Admirer 2","ER_BA");
			settings.SetToolTip("ER_34","Melody wants Jimmy to break into Trevor's locker and put chocolates in it.");			
			
			settings.Add("ER_45", true, "Details","ER_BA");
			settings.SetToolTip("ER_45","Escort Christy back to the girls dorm.");
			
			
			
			
		settings.Add("ER_BT",true,"Bullworth Town","ER");
			settings.Add("ER_0",true, "Lost Jacket","ER_BT");
			settings.SetToolTip("ER_0","Retrieve Algie's jacket and bring it back to him.");
	 
			settings.Add("ER_4",true, "Stolen Bike","ER_BT");
			settings.SetToolTip("ER_4","Chase the guy on the stolen bike.");

			settings.Add("ER_11",true, "Detective Jimmy","ER_BT");
			settings.SetToolTip("ER_11","Take a photo of a dirty cop.");
			
			settings.Add("ER_12",true, "Free Drugs","ER_BT");
			settings.SetToolTip("ER_12","Smash the trash cans to find the hobos medication.");
			
			settings.Add("ER_26",true, "Lost Dog","ER_BT");
			settings.SetToolTip("ER_26","Dr. Bambillo wants Jimmy to find his lost dog.");	

			settings.Add("ER_27",true, "Lost Dog 2","ER_BT");
			settings.SetToolTip("ER_27","Bethany wants Jimmy to find her lost dog.");	
	
			settings.Add("ER_30",true, "Water Balloons","ER_BT");
			settings.SetToolTip("ER_30","Hit three people with water balloons.");
			
			settings.Add("ER_39",true, "Thank You For Not Smoking","ER_BT");
			settings.SetToolTip("ER_39","Beat up the two Greasers on the roof of the gas station.");

			settings.Add("ER_41",true, "Weird Hobo","ER_BT");
			settings.SetToolTip("ER_41","Give the hobo some change.");			


			
	
		settings.Add("ER_BV",true,"Old Bullworth Vale","ER");	
			settings.Add("ER_7",true, "Carnival Photos","ER_BV");
			settings.SetToolTip("ER_7","Take pictures of the Fun House, the Big Squid and Round The World.");

			settings.Add("ER_9",true, "Crab Traps","ER_BV");
			settings.SetToolTip("ER_9","Swim out in the bay and collect the crabs.");
		
			settings.Add("ER_17",true, "Great Escape","ER_BV");
			settings.SetToolTip("ER_17","Escort Mrs. Lisburn to the park entrance.");
		
			settings.Add("ER_18",true, "Fast Food","ER_BV");
			settings.SetToolTip("ER_18","Make the three fast food deliverys.");		

			settings.Add("ER_22",true, "Balancing Act","ER_BV");
			settings.SetToolTip("ER_22","Check out the island beyond the shipwreck.");	

			settings.Add("ER_24",true, "Lost Teddy Bear","ER_BV");
			settings.SetToolTip("ER_24","Beat up the bully that stole her Teddy Bear.");

			settings.Add("ER_36",true, "Shipwreck","ER_BV");
			settings.SetToolTip("ER_36","Swim to the shipwreck.");
			
			settings.Add("ER_42",true, "Swim Meet","ER_BV");
			settings.SetToolTip("ER_42","Swim out and around the bouy and back before the timer runs out.");			
			
			settings.Add("ER_44",true, "Bullworth Vale Tag","ER_BV");
			settings.SetToolTip("ER_44","Spray any three tags in Bullworth Vale.");			
			
			settings.Add("ER_48",true, "Goin' Postal","ER_BV");
			settings.SetToolTip("ER_48","Pick up a package and bring it back to Mr. Svenson");	
			
			settings.Add("ER_49",true, "The Widow","ER_BV");
			settings.SetToolTip("ER_49","Mrs. Lisburn wants Jimmy to pick six flowers to put on her late husband's grave.");			
			
			
		settings.Add("ER_NC",true,"New Coventry","ER");	
			settings.Add("ER_16",true, "Egg The Tenements","ER_NC");
			settings.SetToolTip("ER_16","Hit the Greasers building with three eggs in the tenements area.");			
			
			settings.Add("ER_20",true, "Escort service 2","ER_NC");
			settings.SetToolTip("ER_20","Walk Christy to the In and Out Motel.");

			settings.Add("ER_21",true, "Help The Elderly","ER_NC");
			settings.SetToolTip("ER_21","Escort Miss Abby to the tenements.");
			
			settings.Add("ER_28",true, "Tag Proof","ER_NC");
			settings.SetToolTip("ER_28","Take a picture of someone spraying a tag.");
			
			settings.Add("ER_32",true, "Rat Infestation","ER_NC");
			settings.SetToolTip("ER_32","Kill the 18 rats inside the tenements.");

			settings.Add("ER_38",true, "Vehicular Vandalism","ER_NC");
			settings.SetToolTip("ER_38","Break 11 parts of the car before the timer runs out.");

			settings.Add("ER_40",true, "Spazz Delivery","ER_NC");
			settings.SetToolTip("ER_40","Deliver the package to a man in Blue Skies.");
			
			settings.Add("ER_43",true, "New Coventry Tag","ER_NC");
			settings.SetToolTip("ER_43","Spray any three tags in New Coventry.");			

			settings.Add("ER_46",true, "Tenement Fires","ER_NC");
			settings.SetToolTip("ER_46","Take the fire extinguisher and put out the 6 fires inside the tenements.");			
			
			settings.Add("ER_47",true, "Infidelity","ER_NC");
			settings.SetToolTip("ER_47","Go to the In and Out Motel and take a picture of Buckingham's wife kissing the other guy without being seen.");			
			
			
			
		settings.Add("ER_BSI", true, "Blue Skies Industrial Park", "ER");
			settings.Add("ER_5",true, "Cable Guy","ER_BSI");
			settings.SetToolTip("ER_5","Destroy the four satellite dishes.");

			settings.Add("ER_10",true, "Loons On The Loose","ER_BSI");
			settings.SetToolTip("ER_10","Find the two escaped patients and lead them back to the Asylum.");

			settings.Add("ER_15",true, "Greasy Eggs","ER_BSI");
			settings.SetToolTip("ER_15","Egg the two Greasers.");

			settings.Add("ER_25",true, "Lost Cargo","ER_BSI");
			settings.SetToolTip("ER_25","Swim out to the sunken boat and retrieve the man's package.");

			settings.Add("ER_31",true, "Rat Poison","ER_BSI");
			settings.SetToolTip("ER_31","Kill the rats at docks.");
			
			settings.Add("ER_35",true, "Shipping and Receiving","ER_BSI");
			settings.SetToolTip("ER_35","Deliver the package to the man near the Police Station.");

			settings.Add("ER_37",true, "Vehicular Vandalism 2","ER_BSI");
			settings.SetToolTip("ER_37","Destroy the 11 parts of the car.");


			//IL Toggles	
	settings.Add("IL", false, "Individual Level toggle");
	settings.SetToolTip("IL", @"Toggle for Timer start/reset
Will start/reset on first mission in selection order
Automatically removes save IGT when starting/reseting");

	// --- MISC
	settings.Add("IGT_message", true, "Ask if Game Time should be used when the game opens");
			
	 // ------------------------- End of Settings
}

init{
	
    if (timer.CurrentTimingMethod == TimingMethod.RealTime && settings["IGT_message"]){
        var message = MessageBox.Show(
            "You need to be using In-Game Time\nPress OK to switch", 
            "LiveSplit | Bully Auto Splittter", MessageBoxButtons.OK, MessageBoxIcon.Information);

        if (message == DialogResult.OK){
            timer.CurrentTimingMethod = TimingMethod.GameTime;
        }
    }
	
	switch (modules.First().ModuleMemorySize){
		case 0x1D49000: version = "Steam"; break;
		default: version = "Undetected"; break;
	}
	
	if (current.M == 0){
		throw new Exception("--Memory still loading--");}			//Idk how to word this correctly, but is required for MemoryWatcher
		
	vars.watcherList = new MemoryWatcherList();
	vars.watcherListIL = new MemoryWatcherList();
	
	foreach ( var address in vars.mAddresses){
		vars.watcherList.Add(new MemoryWatcher<byte>((IntPtr)current.M + address.Key) {Name = address.Value});
		vars.watcherListIL.Add(new MemoryWatcher<byte>((IntPtr)current.M + address.Key + 0x2) {Name = address.Value});
	}
	
	foreach ( var errand in vars.eAddresses){
		vars.watcherList.Add(new MemoryWatcher<byte>(modules.First().BaseAddress + errand.Key) {Name = errand.Value});
	}
	
	vars.hasSplit = new List<string>();
	vars.errandTracker = new List<string>();
	vars.IGToffset = new int();
	vars.IGToffset = 0;
}

update{
	vars.watcherList.UpdateAll(game);
	if(settings["IL"]){
		vars.watcherListIL.UpdateAll(game);
	}
	
	current.timerPhase = timer.CurrentPhase;
										//Yes i did take this snipet from GTA3 AS, as i was too busy making the cluster buster up there ... you know what im talking about
	if ((old.timerPhase != current.timerPhase && old.timerPhase != TimerPhase.Paused) && current.timerPhase == TimerPhase.Running){
		vars.hasSplit.Clear();
		vars.errandTracker.Clear();
	}
}

split{
	foreach (var mission in vars.mAddresses) {						// Now that i think about it ... why didn't i just simply do current != old ??? :thinking: ... Too lazy to go back and test why...This works fine too :)
		if (settings[mission.Value] && vars.watcherList[mission.Value].Current == 1 && vars.watcherList[mission.Value].Old == 0 && !vars.hasSplit.Contains(mission.Value)){
			vars.hasSplit.Add(mission.Value);
			return true;
		}
	}
	for (int i = 1; i < 4; i++){			//The special case of Paper route missions being under same address 
		if (settings["M_PR_D"+i] && vars.watcherList["M_PR_D"].Current == i+1 && vars.watcherList["M_PR_D"].Old == i && !vars.hasSplit.Contains("M_PR_D"+i)){
			vars.hasSplit.Add("M_PR_D"+i);
			return true;
		}
										//Special Boxing Round stuff
		if ( i != 3){
			if (settings["M_2_03R"+i] && vars.watcherList["M_2_03R"].Current == i+1 && vars.watcherList["M_2_03R"].Old == i && !vars.hasSplit.Contains("M_2_03R"+i)){
				vars.hasSplit.Add("M_2_03R"+i);
				return true;
			}
		}
	}
								// The somewhat experimental Gary KO split, Im not exactly sure what C does,
								// It does switch states at earlier stages as well, but seems to be only once durring Gary's fight
								// And right as you KO him ... so dicided to make this mess...
	if (settings["M_5_11d"] && current.LMState == 17 && current.C == 1 && old.C == 0 && !vars.hasSplit.Contains("M_5_11d")){
		vars.hasSplit.Add("M_5_11d");
		return true;
	}
	
	if (settings["ER"]){
		foreach (var errand in vars.eAddresses) {						//Responsible for the whole errand shazamble 
			if(vars.watcherList[errand.Value].Current == 1 && vars.watcherList[errand.Value].Old == 0 && !vars.errandTracker.Contains(errand.Value)){
				vars.errandTracker.Add(errand.Value);
				if(settings["ER_ALL"] && vars.errandTracker.Count == 50){
					return true;
				}
				if(settings[errand.Value]){
					return true;
				}
				
			}
			
		}
	}
}

gameTime {
	if(!settings["IL"]){
		return TimeSpan.FromSeconds((double)current.IGT / 1000);
	}
	
	else{
		return TimeSpan.FromSeconds((double)(current.IGT - vars.IGToffset) / 1000);
	}
}

isLoading {
	return true;
}

start{
	if (current.M1State == 17 && old.M1State == 0 && !settings["IL"]){				
		vars.hasSplit.Clear();
		vars.errandTracker.Clear();
		return true;
	}
	
	else
	if(settings["IL"]){
		foreach (var mission in vars.mAddresses) {
			if (settings[mission.Value]){
				if (vars.watcherListIL[mission.Value].Current == 17 && (vars.watcherListIL[mission.Value].Old == 0 || vars.watcherListIL[mission.Value].Old == 1 || vars.watcherListIL[mission.Value].Old == 16)){
					vars.IGToffset = current.IGT;
					return true;
				}
				break;
			}
		}
	}
} 

reset{
	if (current.M1State == 17 && old.M1State == 0 && !settings["IL"]){
		vars.hasSplit.Clear();
		vars.errandTracker.Clear();
		return true;
	}
	
	else
	if(settings["IL"]){
		foreach (var mission in vars.mAddresses) {
			if (settings[mission.Value]){
				if (vars.watcherListIL[mission.Value].Current == 17 && (vars.watcherListIL[mission.Value].Old == 0 || vars.watcherListIL[mission.Value].Old == 1 || vars.watcherListIL[mission.Value].Old == 16)){
					vars.IGToffset = current.IGT;
					return true;
				}
				break;
			}
		}
	}
}
