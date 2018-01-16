traits = ds_map_create();
towns = ds_map_create();
ghostTowns = ds_list_create();
destinations = ds_list_create();
charList = ds_list_create();
startPoint = noone;
destination = noone;
roundTrip = false;

ds_map_add(traits, "Smoker", "A smoker gets aggrivated if they don't smoke often");
ds_map_add(traits, "Small Bladder", "This person always 'has to go'");
ds_map_add(traits, "Diabetic", "Diabetics need a meter, test strips, lancets, syringes, INSULIN, and sugar too");
ds_map_add(traits, "Snacker", "Has anyone seen the bag of chips?");
ds_map_add(traits, "Gastrointestinal Issues", "Nobody wants to be stuck in a vehicle with this guy");
ds_map_add(traits, "Optomistic", "Optomists see the bright side of EVERY situation.");
ds_map_add(traits, "Vain", "Oh Lord its hard to be humble");
ds_map_add(traits, "Rich", "They may be loaded but that doesn't mean they will share");
ds_map_add(traits, "Student Driver", "If you can see out the windshield and reach the pedals, you can drive!");
ds_map_add(traits, "Country Music Fan", "Don't rock the jukebox");
ds_map_add(traits, "Big Mouth", "This person may drive you crazy with chit chat");
ds_map_add(traits, "Know It All", "Salad is not a single component, salad is several ingredients compiled together such as, lettuce combined with tomato and dressing");
ds_map_add(traits, "Back Seat Driver", "You're touching the line!! Slow down too!");
ds_map_add(traits, "Alcoholic", "I swear to drunk, I'm not God");
ds_map_add(traits, "Bubbly", "Bubbly people are happy all the time");
ds_map_add(traits, "Kleptomaniac", "This person finds cool stuff everywhere, and keeps it");
ds_map_add(traits, "Loser", "This person loses their belongings often");


ds_map_add(towns, "Toadsuck, Arkansas", "35.0808,92.56");
//ds_map_add(towns, "Tightwad, Missouri", "38.31,93.55");
ds_map_add(towns, "Nowhere, Oklahoma", "35.16,98.44");
ds_map_add(towns, "Chicken, Alaska", "64.07,141.94");
ds_map_add(towns, "Frankenstein, Missouri", "38.57,91.88");
ds_map_add(towns, "Gaylordsville, Connecticut", "41.65,73.48");
ds_map_add(towns, "Hell, Michigan", "42.43,83.99");
ds_map_add(towns, "Imalone, Wisconsin", "45.55,91.23");
ds_map_add(towns, "Fargo, North Dakota", "46.88,96.79");
ds_map_add(towns, "Intercourse, Pennsylvania", "40.04,76.11");
ds_map_add(towns, "Silver City, New Mexico", "32.77,108.28");
ds_map_add(towns, "Los Banos, California", "37.06,120.85");
ds_map_add(towns, "Money, Mississippi", "33.65,90.21");
ds_map_add(towns, "Mosquitoville, Vermont", "44.27,72.14");
ds_map_add(towns, "Ninety Six, South Carolina", "34.18,82.02");
ds_map_add(towns, "Oatmeal, Texas", "30.69,98.1");
ds_map_add(towns, "Pee Pee, Ohio", "39.13,83.01");
ds_map_add(towns, "Wood Hill, Missouri", "37.74,93.04");


ds_list_add(ghostTowns, "Calico, California");
ds_list_add(ghostTowns, "Santa Clause, Arizona");

ds_list_add(destinations, "Miami, Florida");
ds_list_add(destinations, "Galveston, Texas");
ds_list_add(destinations, "Nome, Alaska");
ds_list_add(destinations, "New York City, New York");
ds_list_add(destinations, "Atlanta, Georgia");
ds_list_add(destinations, "Los Angeles, California");
ds_list_add(destinations, "New Orleans, Louisianna");
ds_list_add(destinations, "Chicago, Illinois");
ds_list_add(destinations, "San Francisco");
ds_list_add(destinations, "Bangor, Maine");
ds_list_add(destinations, "Seattle, Washington.");

events = ds_list_create();

ds_list_add(events, "flatTire",
					"blownMotor",
					"blizzard",
					"",
					"",);