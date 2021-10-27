state("Bully"){
	int M_POINTER : 0x1CC4328;
	int ARC_POINTER : "Bully.exe", 0x8674C8;
	int IGT : "Bully.exe", 0x81A340;
	byte isLoading : 0x7F3E34;
	byte M1State : 0x1CC4328, 0x1C;
}
	// amzy wuz here - Cleaned Code for readability.
	
	// Thanks for stopping by :)

//////////////////////////////////////////////////////////////////////////

startup{
	
	vars.mAddresses = new Dictionary<string, int> {

						//Chapter 1
					        //---Welcome to Bullworth	
		{"M_1_01a",	0x1A}, 				//Meet the Principal
		{"M_1_01b",	0x20},				//Bully Fight
		{"M_1",	0x26},					//Meet Gary

		{"M_1_02",	0x2C},				//Mission Tutorial
		{"M_1_03",	0x32},				//This is Your School
		{"M_1_04",	0x38},				//Get to Class
		{"M_1_05",	0x3E},				//The Setup
		{"M_1_06",	0x4A},				//Slingshot
		{"M_1_07",	0x50},				//Save Algie
		{"M_1_0E",	0x8},				//Peter's Errand
		{"M_1_08",	0x56},				//A Little Help
		{"M_1_09",	0x7A},				//Defend Bucky
		{"M_1_10",	0x80},				//That Bitch
		{"M_1_11",	0x8C},				//The Candidate
		{"M_1_12",	0x9E},				//Halloween
		{"M_1_13",	0xBC},				//Help Gary
		{"M_1_14",	0xC2},				//Russell in the Hole
						

						//Chapter 2
		{"M_2_02",	0xEC},				//Hattrick vs. Galloway
		{"M_2_01",	0xF2},				//Last Minute Shopping
		{"M_2_03",	0x182},				//Prep Challenge
		{"M_2_03R",	0xE6},				//Prep Challenge Rounds (1 - Chad, 2 - Justin, 3 - )
		{"M_2_04",	0x10A},				//The Eggs
		{"M_2_05",	0x110},				//Movie Tickets
		{"M_2_06",	0x116},				//Carnival Date
		{"M_2_07",	0x122},				//Race the Vale
		{"M_2_08",	0x128},				//Beach Rumble
		{"M_2_09",	0x188},				//Tad's House
		{"M_2_10",	0x194},				//Boxing Challenge
		{"M_2_11",	0x19A},				//Dishonorable Fight
					

						//Chapter 3
		{"M_3_01",	0x1CA},				//Balls of Snow
		{"M_3_02",	0x1D0},				//Miracle on Bullworth St.
		{"M_3_03",	0x1B2},				//Christmas is Here
		{"M_3_04",	0x1D6},				//Nutcrackin'
		{"M_3_05",	0x1DC},				//Rudy the Red Nosed Santa
		{"M_3_06",	0x1E2},				//Jealous Johnny
		{"M_3_07",	0x1E8},				//Bait
		{"M_3_08",	0x1F4},				//Wrong Part of Town
		{"M_3_09",	0x1FA},				//Tagging
		{"M_3_10",	0x206},				//Lola's Race
		{"M_3_11",	0x20C},				//The Tenements
		{"M_3_12",	0x212},				//The Rumble
		{"M_3_13",	0x218},				//Fighting Johnny Vincent
		

						//Chapter 4
		{"M_4_01",	0x236},				//Stronghold Assault				
		{"M_4_02",	0x23C},				//Nerd Boss Fight		
		{"M_4_03",	0x25A},				//Funhouse Fun				
		{"M_4_04",	0x24E},				//Paparazzi	
		{"M_4_05",	0x254},				//Defender of the Castle
		{"M_4_06",	0x260},				//Nice Outfit
		{"M_4_07",	0x266},				//Discretion Assured
		{"M_4_08",	0x26C},				//The Big Game
		{"M_4_09",	0x272},				//Jock Boss Fight
		

						//Chapter 5
		{"M_5_01",	0x284},				//Making a Mark				
		{"M_5_02",	0x28A},				//Rats in the Library
		{"M_5_03",	0x290},				//The Gym is Burning
		{"M_5_04",	0x296},				//Finding Johnny Vincent
		{"M_5_05",	0x2A2},				//Revenge on Mr. Burton
		{"M_5_06",	0x2B4},				//Preppies Vandalised
		{"M_5_07",	0x2C6},				//Go See The Principal
		{"M_5_08",	0x2CC},				//Busting In Part 1
		{"M_5_09",	0x2D2},				//Busting In Part 2
		{"M_5_10",	0x2DE},				//Showdown at the Plant
		{"M_5_11a",	0x2E4},				//Rescue Russell
		{"M_5_11b",	0x2EA},				//Take down the Clique Leaders
		{"M_5_11",	0x2F0},				//Final Showdown
		

						//Side missions
							//Little Helps
		{"M_X_LH2",	0x5C},				//A Little Help 2
		{"M_X_LH3",	0x62},				//A Little Help 3
		{"M_X_LH4",	0x68},				//A Little Help 4
		{"M_X_LH5",	0x6E},				//A Little Help 5
		{"M_X_LH6",	0x74},				//A Little Help 6
		

						//Side missions
		{"M_X_01",	0x86},				//The Diary
		{"M_X_02",	0xB6},				//Character Sheets
		{"M_X_03",	0xAA},				//The Big Prank
		{"M_X_04",	0x1A6},				//Small Offences
		{"M_X_05",	0x11C},				//Panty Raid
		{"M_X_06",	0x104},				//Comic Klepto
		{"M_X_07",	0x18E},				//Weed Killer
		{"M_X_08",	0x1BE},				//Cook's Crush
		{"M_X_09",	0x1EE},				//Glass House
		{"M_X_10",	0x21E},				//Discreet Deliveries
		{"M_X_11",	0x22A},				//Here's to you Ms. Philips
		{"M_X_12",	0x230},				//Cook's Date
		{"M_X_13",	0x242},				//Galloway Away
		{"M_X_14",	0x27E},				//Cheating Time
		{"M_X_15",	0x2A8},				//Smash It Up
		{"M_X_16",	0x2AE},				//The Collector
		{"M_X_17",	0x2D8},				//Mailbox Armageddon
		
        
						//Challenges
		{"M_C_N",	0x1C4},				//Nerd Challenge
		{"M_C_G",	0x200},				//Greaser Challenge
		{"M_C_J",	0x248},				//Jocks Challenge
		{"M_C_T",	0x29C},				//Townie Challenge
		

						//Side activities
							//Boxing
		{"M_BX_01",	0xCE},				    //Chad
		{"M_BX_02",	0xD4},				    //Justin
		{"M_BX_03",	0xDA},				    //Parker
		{"M_BX_04",	0xE0},				    //Bryce
		

							//Dodgeball
		{"M_DB_01",	0x3EC},				//vs. Team Prep
		{"M_DB_02",	0x3F2},				//vs. Team Greaser
		{"M_DB_03",	0x3F8},				//vs. Team Jock
		{"M_DB_04",	0x3FE},				//vs. Team Townie
		

							//Paper Route
		{"M_PR_01",	0xF8},				    //Intro
		{"M_PR_D",	0xFE},				    // 1 = 10 , 2 = 14 , 3 = 19 , 4 = 24 Deliveries
		

							//Bike Races
		{"M_BR_V01",	0x12E},			    //Bullworth Vale Bike Race 1
		{"M_BR_V02",	0x134},			    //Bullworth Vale Bike Race 2
		{"M_BR_V03",	0x13A},			    //Bullworth Vale Bike Race 3
		{"M_BR_V04",	0x140},			    //Bullworth Vale Bike Race 4
		{"M_BR_V05",	0x146},			    //Bullworth Vale Bike Race 5
		{"M_BR_V06",	0x14C},			    //Bullworth Vale Bike Race 6
		{"M_BR_V07",	0x152},			    //Bullworth Vale Bike Race 7
		
		{"M_BR_T01",	0x158},			    //Bullworth Town Bike Race 1
		{"M_BR_T02",	0x15E},			    //Bullworth Town Bike Race 2
		{"M_BR_T03",	0x164},			    //Bullworth Town Bike Race 3
		{"M_BR_T04",	0x16A},			    //Bullworth Town Bike Race 4
		
		{"M_BR_NC01",	0x170},			    //New Coventry Race 1
		{"M_BR_NC02",	0x176},			    //New Coventry Race 2
		
		{"M_BR_A01",	0x17C},			    //Bullworth Academy Race 1
		

							//Go-Kart Races
		{"M_GO_GP01",	0x4C4},				//Grand Prix Race 1
		{"M_GO_GP02",	0x4CA},				//Grand Prix Race 2
		{"M_GO_GP03",	0x4D0},				//Grand Prix Race 3
		{"M_GO_GP04",	0x4D6},				//Grand Prix Race 4
		{"M_GO_GP05",	0x4DC},				//Grand Prix Race 5
		
		{"M_GO_SR01",	0x4E2},				//Street Race 1
		{"M_GO_SR02",	0x4E8},				//Street Race 2
		{"M_GO_SR03",	0x4EE},				//Street Race 3
						

							//Lawn Mowing
		{"M_LAWN_01",	0x5D8},				//Park 1
		{"M_LAWN_02",	0x5DE},				//Park 2
		{"M_LAWN_03",	0x5E4},				//Park 3
		
		{"M_LAWN_04",	0x5EA},				//House 1
		{"M_LAWN_05",	0x5F0},				//House 2
		{"M_LAWN_06",	0x5F6},				//House 3
		

						    //Classes
							 //Chemistry
		{"C_CEM_1",	0x302},				    //Chemistry 1
		{"C_CEM_2",	0x308},				    //Chemistry 2
		{"C_CEM_3",	0x30E},				    //Chemistry 3
		{"C_CEM_4",	0x314},				    //Chemistry 4
		{"C_CEM_5",	0x31A},				    //Chemistry 5
							 //English
		{"C_ENG_1",	0x3A4},				    //English 1
		{"C_ENG_2",	0x3AA},				    //English 2
		{"C_ENG_3",	0x3B0},				    //English 3
		{"C_ENG_4",	0x3B6},				    //English 4
		{"C_ENG_5",	0x3BC},				    //English 5
							 //Art
		{"C_ART_1",	0x326},				    //Art 1	
		{"C_ART_2",	0x32C},				    //Art 2		
		{"C_ART_3",	0x332},				    //Art 3
		{"C_ART_4",	0x338},				    //Art 4
		{"C_ART_5",	0x33E},				    //Art 5
							 //Gym
		{"C_GYM_1",	0x368},				    //Gym 1
		{"C_GYM_2",	0x36E},				    //Gym 2
		{"C_GYM_3",	0x374},				    //Gym 3
		{"C_GYM_4",	0x37A},				    //Gym 4
		{"C_GYM_5",	0x380},				    //Gym 5
							//Biology
		{"C_BIO_1",	0x40A},				    //Biology 1
		{"C_BIO_2",	0x410},				    //Biology 2
		{"C_BIO_3",	0x416},				    //Biology 3
		{"C_BIO_4",	0x41C},				    //Biology 4
		{"C_BIO_5",	0x422},				    //Biology 5
							//Music
		{"C_MSC_1",	0x476},				    //Music 1
		{"C_MSC_2",	0x47C},				    //Music 2
		{"C_MSC_3",	0x482},				    //Music 3
		{"C_MSC_4",	0x488},				    //Music 4
		{"C_MSC_5",	0x48E},				    //Music 5
							 //Shop
		{"C_SHP_1",	0x3C8},				    //Shop 1					
		{"C_SHP_2",	0x3CE},				    //Shop 2
		{"C_SHP_3",	0x3D4},				    //Shop 3
		{"C_SHP_4",	0x3DA},				    //Shop 4
		{"C_SHP_5",	0x3E0},				    //Shop 5
							 //Photography
		{"C_PGY_1",	0x386},				    //Photography 1
		{"C_PGY_2",	0x38C},				    //Photography 2				
		{"C_PGY_3",	0x392},				    //Photography 3
		{"C_PGY_4",	0x398},				    //Photography 4
		{"C_PGY_5",	0x39E},				    //Photography 5
							 //Geography
		{"C_GEO_1",	0x42E},				    //Geography 1
		{"C_GEO_2",	0x434},				    //Geography 2
		{"C_GEO_3",	0x43A},				    //Geography 3
		{"C_GEO_4",	0x440},				    //Geography 4
		{"C_GEO_5",	0x446},				    //Geography 5
							 //Math
		{"C_MTH_1",	0x452},				    //Math 1
		{"C_MTH_2",	0x458},				    //Math 2
		{"C_MTH_3",	0x45E},				    //Math 3
		{"C_MTH_4",	0x464},				    //Math 4
		{"C_MTH_5",	0x46A},				    //Math 5
		
						    //Misc
		{"C_C_02",	0xC8},				//CH2 Cutscene
		{"C_C_03",	0x1A0},				//CH3 Cutscene
		{"C_C_04",	0x224},				//CH4 Cutscene
		{"C_C_05",	0x278},				//CH5 Cutscene
		{"C_C_C",	0x2F6}				//Credits
	};
	
//////////////////////////////////////////////////////////////////////////

                        //Errands
	vars.eAddresses = new Dictionary<string, int>{};
	for (int i = 0; i < 50; i++){								// Errands ... yes ... this small snipet is responsible for the errands dictionary ... 
		vars.eAddresses.Add("ER_"+i,	0x81B096 + (0x4*i));		// I probably should do the same with the mess above , but im too lazy
	}															// also thanks for reading my comment in this section ... here ... have a imaginary cookie
	
                        //Collectibles
	vars.colAdr = new Dictionary<string, int>{};				// Collectibles ... currently only gnomes
	for (int i = 0; i < 25; i++ ){								// Will expand if requested/required
		vars.colAdr.Add("GNOME_" + i,	0x7CEB54 + (0x2 * i));	// Regions ends for my own memory don't worry about this :)
	}															// 25/Gnomes , 31/Transistor, 106/Rubberbands, 146/Cards, 173/Pumpkins, 192/Tombstones

//////////////////////////////////////////////////////////////////////////

// Settings


		//------CHAPTER ONE------//
	    settings.Add("CH1", true, "Chapter 1"); 

		    settings.Add("M_1", true, "Welcome to Bullworth", "CH1");
			    settings.Add("M_1_01a", false, "Meet the Principal", "M_1");
			    settings.Add("M_1_01b", false, "Bully Fight", "M_1");
			    settings.SetToolTip("M_1_01a", "Additional split after going to the Principal.");
			    settings.SetToolTip("M_1_01b", "Additional split when entering Boys Dorm.");
		    settings.Add("M_1_02", false, "Mission Tutorial", "CH1");
		    settings.SetToolTip("M_1_02", "Splits after walking into 'This is Your School' mission marker.\nUnsure why it's counted as seperate mission,\nadded it anyway in case any one wants to use it.");

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
		

		//------CHAPTER TWO------//	
	    settings.Add("C_C_02", false, "Chapter 2 Introduction");
	    settings.SetToolTip("C_C_02", "Splits after Chapter 2 introduction cutscene");
	    settings.Add("CH2", true, "Chapter 2");

		settings.Add("M_2_02", true, "Hattrick vs. Galloway", "CH2");
		settings.Add("M_2_01", true, "Last Minute Shopping", "CH2");

		    settings.Add("M_2_03", true, "Prep Challenge", "CH2");
			    settings.Add("M_2_03R1", false, "Chad", "M_2_03");
			    settings.SetToolTip("M_2_03R1", "Additional split for Chad");
			    settings.Add("M_2_03R2", false, "Justin", "M_2_03");
			    settings.SetToolTip("M_2_03R2", "Additional split for Justin");
			    settings.Add("M_2_03R3", false, "Parker", "M_2_03");
			    settings.SetToolTip("M_2_03R3", "Additional split for Parker");

		settings.Add("M_2_04", true, "The Eggs", "CH2");
		settings.Add("M_2_05", true, "Movie Tickets", "CH2");
		settings.Add("M_2_06", true, "Carnival Date", "CH2");
		settings.Add("M_2_07", true, "Race the Vale", "CH2");
		settings.Add("M_2_08", true, "Beach Rumble", "CH2");
		settings.Add("M_2_09", true, "Tad's House", "CH2");
		settings.Add("M_2_10", false, "Boxing Challenge", "CH2");
		settings.Add("M_2_11", true, "Dishonorable Fight", "CH2");
	

		//------CHAPTER THREE------//
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
		
	
		//------CHAPTER FOUR------//
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
		
		
		//------CHAPTER FIVE------//
	    settings.Add("C_C_05", false, "Chapter 5 Introduction");
	    settings.Add("CH5", true, "Chapter 5");
		    settings.Add("M_5_01", true, "Making a Mark","CH5");
		    settings.Add("M_5_02", true, "Rats in the Library","CH5");
		    settings.Add("M_5_03", true, "The Gym is Burning","CH5");
		    settings.Add("M_5_04", true, "Finding Johnny Vincent","CH5");
		    settings.Add("M_5_05", true, "Revenge on Mr. Burton","CH5");
		    settings.Add("M_5_06", true, "Preppies Vandalised","CH5");
		    settings.Add("M_5_07", true, "Go See The Principal","CH5");
		    settings.Add("M_5_08", false, "Busting In Part 1","CH5");
		    settings.Add("M_5_09", false, "Busting In Part 2","CH5");
		    settings.Add("M_5_10", true, "Showdown at the Plant","CH5");    
            settings.Add("M_5_11", true, "Complete Mayhem","CH5");
			    settings.Add("M_5_11a", false, "Rescue Russell","M_5_11");
			    settings.Add("M_5_11b", false, "Take down the Clique Leaders","M_5_11");
			

        //------CREDITS------//            
	     settings.Add("C_C_C", false, "Credits");
	     settings.SetToolTip("C_C_C", @"Splits after Credits where you would normally pause at Jimmy's room");


//////////////////////////////////////////////////////////////////////////


		//------Extra Missions + Markers (Not part of Any% route)------//	
	    settings.Add("chx", false, "Side Missions");
	    settings.SetToolTip("chx", "Missions that are not included in Any% route");

			// ---- Transistor Missions
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
			settings.Add("M_PR_D1", true, "10 Clients","M_PR");
			settings.Add("M_PR_D2", true, "14 Clients","M_PR");
			settings.Add("M_PR_D3", true, "19 Clients","M_PR");
			settings.Add("M_PR_D4", true, "24 Clients","M_PR");
		
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
				

//////////////////////////////////////////////////////////////////////////


			// ---- Rest of the Side Missions
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
		

//////////////////////////////////////////////////////////////////////////


	//------Classes------//	
	settings.Add("CLASS", false, "Classes");
	settings.SetToolTip("CLASS", "Splits when passing selected classes");

        //CHEMISTRY
		settings.Add("CEM", true, "Chemistry","CLASS");
			settings.Add("C_CEM_1", true, "Chemistry 1","CEM");
			settings.Add("C_CEM_2", true, "Chemistry 2","CEM");
			settings.Add("C_CEM_3", true, "Chemistry 3","CEM");
			settings.Add("C_CEM_4", true, "Chemistry 4","CEM");
			settings.Add("C_CEM_5", true, "Chemistry 5","CEM");

        //ENGLISH
		settings.Add("ENG", true, "English", "CLASS");
			settings.Add("C_ENG_1", true, "English 1","ENG");
			settings.Add("C_ENG_2", true, "English 2","ENG");
			settings.Add("C_ENG_3", true, "English 3","ENG");
			settings.Add("C_ENG_4", true, "English 4","ENG");
			settings.Add("C_ENG_5", true, "English 5","ENG");

        //ART
		settings.Add("ART", true, "Art", "CLASS");
			settings.Add("C_ART_1", true, "Art 1","ART");
			settings.Add("C_ART_2", true, "Art 2","ART");
			settings.Add("C_ART_3", true, "Art 3","ART");
			settings.Add("C_ART_4", true, "Art 4","ART");
			settings.Add("C_ART_5", true, "Art 5","ART");

        //GYM
		settings.Add("GYM", true, "Gym", "CLASS");
			settings.Add("C_GYM_1", true, "Gym 1","GYM");
			settings.Add("C_GYM_2", true, "Gym 2","GYM");
			settings.Add("C_GYM_3", true, "Gym 3","GYM");
			settings.Add("C_GYM_4", true, "Gym 4","GYM");
			settings.Add("C_GYM_5", true, "Gym 5","GYM");

        //BIOLOGY
		settings.Add("BIO", true, "Biology", "CLASS");
			settings.Add("C_BIO_1", true, "Biology 1","BIO");
			settings.Add("C_BIO_2", true, "Biology 2","BIO");
			settings.Add("C_BIO_3", true, "Biology 3","BIO");
			settings.Add("C_BIO_4", true, "Biology 4","BIO");
			settings.Add("C_BIO_5", true, "Biology 5","BIO");

        //MUSIC
		settings.Add("MSC", true, "Music", "CLASS");
			settings.Add("C_MSC_1", true, "Music 1","MSC");
			settings.Add("C_MSC_2", true, "Music 2","MSC");
			settings.Add("C_MSC_3", true, "Music 3","MSC");
			settings.Add("C_MSC_4", true, "Music 4","MSC");
			settings.Add("C_MSC_5", true, "Music 5","MSC");

        //SHOP
		settings.Add("SHP", true, "Shop", "CLASS");
			settings.Add("C_SHP_1", true, "Shop 1","SHP");
			settings.Add("C_SHP_2", true, "Shop 2","SHP");
			settings.Add("C_SHP_3", true, "Shop 3","SHP");
			settings.Add("C_SHP_4", true, "Shop 4","SHP");
			settings.Add("C_SHP_5", true, "Shop 5","SHP");

        //PHOTOGRAPHY
		settings.Add("PGY", true, "Photography", "CLASS");
			settings.Add("C_PGY_1", true, "Photography 1","PGY");
			settings.Add("C_PGY_2", true, "Photography 2","PGY");
			settings.Add("C_PGY_3", true, "Photography 3","PGY");
			settings.Add("C_PGY_4", true, "Photography 4","PGY");
			settings.Add("C_PGY_5", true, "Photography 5","PGY");

        //GEOGRAPHY
		settings.Add("GEO", true, "Geography", "CLASS");	
			settings.Add("C_GEO_1", true, "Geography 1","GEO");
			settings.Add("C_GEO_2", true, "Geography 2","GEO");
			settings.Add("C_GEO_3", true, "Geography 3","GEO");
			settings.Add("C_GEO_4", true, "Geography 4","GEO");
			settings.Add("C_GEO_5", true, "Geography 5","GEO");

        //MATH
		settings.Add("MTH", true, "Math", "CLASS");
			settings.Add("C_MTH_1", true, "Math 1","MTH");
			settings.Add("C_MTH_2", true, "Math 2","MTH");
			settings.Add("C_MTH_3", true, "Math 3","MTH");
			settings.Add("C_MTH_4", true, "Math 4","MTH");
			settings.Add("C_MTH_5", true, "Math 5","MTH");


//////////////////////////////////////////////////////////////////////////


		//------Errands------//
	settings.Add("ER", false, "Errands");
		settings.Add("ER_ALL", false, "50 Errands", "ER");
			settings.SetToolTip("ER_ALL","Splits when reaching 50 Errands.");
		
        //BULLWORTH ACADEMY//
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
			

		//BULLWORTH TOWN//
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


        //OLD BULLWORTH VALE//
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
			

        //NEW COVENTRY//
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
			
		
        //BLUE SKIES//
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


//////////////////////////////////////////////////////////////////////////


	//------Category Extensions------//
		settings.Add("CAT_X", false, "Category Extensions");


		// ---- Gnome Code
			settings.Add("ALL_GNOME", false, "All Gnomes", "CAT_X");
			settings.SetToolTip("ALL_GNOME", "Splits upon smashing all gnomes\nSelecting indivdual gnomes is optional");
			
			for(int i = 0; i < 25; i++){
				settings.Add("GNOME_" + i, false, "Gnome " + (i + 1), "ALL_GNOME");
			}

        // ---- Gnome List
			settings.SetToolTip("GNOME_0", "Bullworth Town\nIn the hedges in front of Police HQ.");

			settings.SetToolTip("GNOME_1", "Vale\nIn the bushy corner of the front of the church exterior.");

			settings.SetToolTip("GNOME_2", "Vale\nTad's yard, near his gazebo.");

			settings.SetToolTip("GNOME_3", "Vale\nTad's front yard, near a small vine-grown lattice.");

			settings.SetToolTip("GNOME_4", "Blue Skies\nBackyard next to tattoo shop.");

			settings.SetToolTip("GNOME_5", "Vale\nHappy Endings Retirement home, in the front yard near the pond.");

			settings.SetToolTip("GNOME_6", "Vale\nNext to a mailbox at the house on the left\nafter the intersection leading from Bullworth Town bridge.");

			settings.SetToolTip("GNOME_7", "Vale\nFront yard of house near the cul-de-sac,\nEnter through the front gate.");

			settings.SetToolTip("GNOME_8", "School\nSide lawn of Harrington House you mow during detention.");

			settings.SetToolTip("GNOME_9", "Vale\nIn the yard of the second 'Lawn Mowing' with the four bird baths");

			settings.SetToolTip("GNOME_10", "Vale\nYard across the street from Tad's house.");

			settings.SetToolTip("GNOME_11", "Vale\nNext to the front door of the house with the epic jump\non the back patio that sends you to the beach");

			settings.SetToolTip("GNOME_12", "Vale\nInside the little shed in the park near the port-a-potty\nLeft one");

			settings.SetToolTip("GNOME_13", "Vale\nInside the little shed in the park near the port-a-potty\nRight one");

			settings.SetToolTip("GNOME_14", "Blue skies\nMain asylum grounds beside 'the watcher' statue.");

			settings.SetToolTip("GNOME_15", "Vale\nFront porch of fenced-in house across the street from the mowing job house.\nJump the missing fence section on the west side of the house.");

			settings.SetToolTip("GNOME_16", "Vale\nOffshore on the beach facing the sunken pirate ship.");

			settings.SetToolTip("GNOME_17", "Vale\nNext to the front door of the house due east of the retirement home.");

			settings.SetToolTip("GNOME_18", "Blue Skies\nOn the barge off the industrial docks.");

			settings.SetToolTip("GNOME_19", "Vale\nNext to Tad's standalone garage.");

			settings.SetToolTip("GNOME_20", "Vale\nOn the west side of the house across from Tad's garage.");

			settings.SetToolTip("GNOME_21", "Vale\nBeside the front porch of the first house on the left after the bridge\nthat leads from Bullworth Town to Vale.");

			settings.SetToolTip("GNOME_22", "Vale\nBesides the entrace to Bullworth Park. Near the retirment home.\nLeft side.");

			settings.SetToolTip("GNOME_23", "Vale\nBesides the entrace to Bullworth Park.\nNear the retirment home.Right side.");

			settings.SetToolTip("GNOME_24", "Vale\nBeside the southeast entrace to Bullworth Park.");
		
		// ---- Future Street Racer settings
		
		settings.Add("FSR", false, "Future Street Racer", "CAT_X");
			settings.SetToolTip("FSR", "FSR Category Extensions timing for FSR 2165 & FSR 3D.\nSplits after each of the 3 races.\n\nSomewhat experimental");
			
			settings.Add("FSR_Laps", false, "Individual Laps", "FSR");
			settings.SetToolTip("FSR_Laps", "Additional splitting after each Lap");
//////////////////////////////////////////////////////////////////////////
		// --- Todo? if Required
//////////////////////////////////////////////////////////////////////////


        //IL TOGGLES//
	settings.Add("IL", false, "Individual Level toggle");
	settings.SetToolTip("IL", @"Toggle for Timer start
Will start the timer at 0 on any selected mission,
if the timer isn't already running.

Start does not work on mission retry after a fail, the save MUST be reloaded!

Resets based on the mission the timer started on,
manual Reset clears auto-Resets memorized mission.
");


//////////////////////////////////////////////////////////////////////////

	// --- MISC
	settings.Add("LOADLESS", false, "Loadless IGT");
	settings.SetToolTip("LOADLESS", "Currently testing purposes only\nThis will invalid your run!");
	
	settings.Add("IGT_message", true, "Ask if Game Time should be used when the game opens");
			
	 // ------------------------- End of Settings
}


//////////////////////////////////////////////////////////////////////////


init{
	
	if (timer.CurrentTimingMethod == TimingMethod.RealTime && settings["IGT_message"]){
		var message = MessageBox.Show(
		    "You need to be using In-Game Time\nPress OK to switch", 
		    "LiveSplit | Bully Auto Splitter", MessageBoxButtons.OK, MessageBoxIcon.Information);

		if (message == DialogResult.OK){
		    timer.CurrentTimingMethod = TimingMethod.GameTime;
		}
	}
    
	if (current.M_POINTER == 0){
		throw new Exception("--Memory still initializing pointers--");}			//Idk how to word this correctly, but is required for MemoryWatcher

	vars.watcherList = new MemoryWatcherList();
	vars.watcherListIL = new MemoryWatcherList();
	vars.watcherListFSR = new MemoryWatcherList();

	foreach ( var address in vars.mAddresses){
		vars.watcherList.Add(new MemoryWatcher<byte>((IntPtr)current.M_POINTER + address.Value) {Name = address.Key});
		vars.watcherListIL.Add(new MemoryWatcher<byte>((IntPtr)current.M_POINTER + address.Value + 0x2) {Name = address.Key});
	}

	foreach ( var errand in vars.eAddresses){
		vars.watcherList.Add(new MemoryWatcher<byte>(modules.First().BaseAddress + errand.Value) {Name = errand.Key});
	}
	
	foreach ( var col in vars.colAdr){
		vars.watcherList.Add(new MemoryWatcher<byte>(modules.First().BaseAddress + col.Value) {Name = col.Key});
	}
	
	vars.watcherListFSR.Add(new MemoryWatcher<byte>((IntPtr)current.ARC_POINTER + 0x8){Name = "ARC_STATE"});
	vars.watcherListFSR.Add(new MemoryWatcher<int>((IntPtr)current.ARC_POINTER + 0x64){Name = "ARC_IGT"});
	vars.watcherListFSR.Add(new MemoryWatcher<int>((IntPtr)current.ARC_POINTER + 0x6C){Name = "ARC_GAP"});
	vars.watcherListFSR.Add(new MemoryWatcher<int>((IntPtr)current.ARC_POINTER + 0x70){Name = "ARC_LAP"});
	vars.watcherListFSR.Add(new MemoryWatcher<byte>(modules.First().BaseAddress + 0x7B6100){Name = "AREA"});

	vars.hasSplit = new List<string>();
	vars.errandTracker = new List<string>();
	vars.gnomeTracker = new List<string>();
	vars.IGToffset = new int();
	vars.IGToffset = 0;
	vars.ILStart = "YEP";
	
	vars.initBool = true;
}

update{
	vars.watcherList.UpdateAll(game);
	if(settings["IL"]){
		vars.watcherListIL.UpdateAll(game);
	}
	
	if(settings["FSR"]){
		vars.watcherListFSR.UpdateAll(game);
		if(settings["FSR_Laps"] && vars.watcherListFSR["ARC_LAP"].Current != 0 && !vars.watcherListFSR["ARC_LAP"].Changed && vars.watcherListFSR["ARC_GAP"].Changed){
			memory.WriteValue<int>((IntPtr)(current.ARC_POINTER + 0x70), 0);				//Resets best lap time incase same lap time is set and change not detected in result
		}
	}
	// Save load detection as im too lazy to look for memory address specific for it loading saves ... IGT is in memory region that gets reset upon loads anyway
	if(old.IGT == 0 && current.IGT != 0 || vars.initBool){
		vars.hasSplit.Clear();
		vars.errandTracker.Clear();
		vars.gnomeTracker.Clear();
		
		foreach (var watcher in vars.watcherList){
						//Mission stuff
			if(watcher.Current > 0){
				if(vars.mAddresses.ContainsKey(watcher.Name)){
							//Paper routes or Boxing Rounds
					if(watcher.Name == "M_PR_D" || watcher.Name == "M_2_03R"){
						for (int i = 1; i <= watcher.Current; i++){
							vars.hasSplit.Add(watcher.Name + i);
						}
					} 
							//Everything else
					else {
							vars.hasSplit.Add(watcher.Name);
					}
				}
							//Errand stuff
				else if(vars.eAddresses.ContainsKey(watcher.Name)){
						vars.errandTracker.Add(watcher.Name);
				}
							//Collectibles
				else if(vars.colAdr.ContainsKey(watcher.Name)){
					if(watcher.Name.Contains("GNOME")){
						vars.gnomeTracker.Add(watcher.Name);
					}
				}
			}
		}
		vars.initBool = false;
	}
	if(settings["LOADLESS"]){
		vars.NOP = current.isLoading != 0 ? new byte[] {0x90,0x90,0x90,0x90,0x90,0x90} : new byte[] {0x01,0x35,0x40,0xA3,0xC1,0x00};
		memory.WriteBytes((IntPtr)(modules.First().BaseAddress + 0x5A6CC), (byte[])vars.NOP);
	}
	//Bully.exe+5A6CC - 01 35 40A3C100
}

split{
	foreach (var mission in vars.mAddresses) {
		string setKey = mission.Key;
			// PAPER ROUTE and BOXING ROUND EXCEPTION
		if (mission.Key == "M_PR_D" || mission.Key == "M_2_03R") {
			setKey = setKey + vars.watcherList[setKey].Current;
		}
			//Checking if settings has key provided due how paper route // boxing round exceptions are handled;
		if(settings.ContainsKey(setKey) && settings[setKey] && !vars.hasSplit.Contains(setKey)){
			if (vars.watcherList[mission.Key].Current != vars.watcherList[mission.Key].Old){
				vars.hasSplit.Add(setKey);
				return true;
			}	
		}
	}
	
	if (settings["ER"]){
		foreach (var errand in vars.eAddresses) {						//Responsible for the whole errand shazamble 
			if(vars.watcherList[errand.Key].Current == 1 && vars.watcherList[errand.Key].Old == 0 && !vars.errandTracker.Contains(errand.Key)){
				vars.errandTracker.Add(errand.Key);
				if(settings["ER_ALL"] && vars.errandTracker.Count >= 50){
					return true;
				}
				if(settings[errand.Key]){
					return true;
				}
			}
		}
	}
	
	if (settings["CAT_X"]){
		if (settings["ALL_GNOME"]){				//You shall be gnomed.
			foreach (var gnome in vars.colAdr){
				if(vars.watcherList[gnome.Key].Current == 1 && vars.watcherList[gnome.Key].Old == 0 && !vars.gnomeTracker.Contains(gnome.Key)){
					vars.gnomeTracker.Add(gnome.Key);
					if(vars.gnomeTracker.Count >= 25){
						return true;
					}
					if(settings[gnome.Key]){
						return true;
					}
				}
			}
		}
		if (settings["FSR"]){
			
			if(settings["FSR_Laps"] && vars.watcherListFSR["ARC_LAP"].Changed && vars.watcherListFSR["ARC_LAP"].Current != 0){
				return true;
			}	
			
			if(vars.watcherListFSR["ARC_STATE"].Old == 1 && vars.watcherListFSR["ARC_STATE"].Current == 0){
				vars.IGToffset += vars.watcherListFSR["ARC_IGT"].Current;						//Sums up Arcade IGT as game resets it between stages.
				memory.WriteValue<int>((IntPtr)(current.ARC_POINTER + 0x64), 0);				//Resets Arcade IGT upon completing race, since game resets it upon start of next game
																								//and as to not have extra time shown after offset is updated.
				return !settings["FSR_Laps"];													//Probably could have throw sum calculation as the next race starts, but thats just more checks :)				
			}
		}
	}
}

gameTime {
	if (settings["LOADLESS"]){
		return -TimeSpan.FromMilliseconds((double)current.IGT);
	}
	
	if(settings["IL"]){
		return TimeSpan.FromMilliseconds((double)(current.IGT - vars.IGToffset));
	}
	else if(settings["FSR"]){
		return TimeSpan.FromMilliseconds(vars.watcherListFSR["ARC_IGT"].Current + (double)vars.IGToffset);
	}
	else{
		return TimeSpan.FromMilliseconds((double)current.IGT);
	}
}

isLoading {
	return true;
}

start{
	if (current.M1State == 17 && old.M1State == 0 && !settings["IL"]){
		return true;
	}
	else if(settings["IL"]){
		foreach (var mission in vars.mAddresses) {
			if (settings[mission.Key]){
				if (vars.watcherListIL[mission.Key].Current == 17 && vars.watcherListIL[mission.Key].Old != 17){
					vars.IGToffset = current.IGT;
					vars.ILStart = mission.Key;
					return true;
				}
			}
		}
	}
	else if(settings["FSR"]){
		if(vars.watcherListFSR["AREA"].Current == 51 && vars.watcherListFSR["ARC_STATE"].Old == 0 && vars.watcherListFSR["ARC_STATE"].Current == 1){
			memory.WriteValue<int>((IntPtr)(current.ARC_POINTER + 0x64), 0);
			vars.IGToffset = 0;
			return true;
		}
	}
} 

reset{
	if (current.M1State == 17 && old.M1State == 0 && !settings["IL"]){
		return true;
	}
	
	else if(settings["IL"]){
		foreach (var mission in vars.mAddresses) {
			if (settings[mission.Key] && vars.ILStart == mission.Key){
				if (vars.watcherListIL[mission.Key].Current == 17 && vars.watcherListIL[mission.Key].Old != 17){
					vars.IGToffset = current.IGT;
					return true;
				}
			}
		}
	}
	else if(settings["FSR"]){
		if(vars.watcherListFSR["AREA"].Current == 51 && vars.watcherListFSR["ARC_STATE"].Old == 0 && vars.watcherListFSR["ARC_STATE"].Current == 1){
			memory.WriteValue<int>((IntPtr)(current.ARC_POINTER + 0x64), 0);
			vars.IGToffset = 0;
			return true;
		}
	}
}
