team remove Red
team remove Blue
team remove Green
team remove Yellow
team remove Aqua
team remove Gold
team remove LightPurple
team remove White
team remove LightRed
team remove DarkBlue
team remove DarkGreen
team remove DarkPurple
team remove DarkAqua
team remove Gray
team remove DarkGray
team remove Black

team add Red
team add Blue
team add Green
team add Yellow
team add Aqua
team add Gold
team add LightPurple
team add White
team add LightRed
team add DarkBlue
team add DarkGreen
team add DarkPurple
team add DarkAqua
team add Gray
team add DarkGray
team add Black

team modify Red color dark_red
team modify Blue color blue
team modify Green color green
team modify Yellow color yellow
team modify Aqua color aqua
team modify Gold color gold
team modify LightPurple color light_purple
team modify White color white
team modify LightRed color red
team modify DarkBlue color dark_blue
team modify DarkGreen color dark_green
team modify DarkPurple color dark_purple
team modify DarkAqua color dark_aqua
team modify Gray color gray
team modify DarkGray color dark_gray
team modify Black color black

team modify Red nametagVisibility hideForOtherTeams
team modify Blue nametagVisibility hideForOtherTeams
team modify Green nametagVisibility hideForOtherTeams
team modify Yellow nametagVisibility hideForOtherTeams
team modify Aqua nametagVisibility hideForOtherTeams
team modify Gold nametagVisibility hideForOtherTeams
team modify LightPurple nametagVisibility hideForOtherTeams
team modify White nametagVisibility hideForOtherTeams
team modify LightRed nametagVisibility hideForOtherTeams
team modify DarkBlue nametagVisibility hideForOtherTeams
team modify DarkGreen nametagVisibility hideForOtherTeams
team modify DarkPurple nametagVisibility hideForOtherTeams
team modify DarkAqua nametagVisibility hideForOtherTeams
team modify Gray nametagVisibility hideForOtherTeams
team modify DarkGray nametagVisibility hideForOtherTeams
team modify Black nametagVisibility hideForOtherTeams

team modify Red prefix {"text":"[Alpha] "}
team modify Blue prefix {"text":"[Bravo] "}
team modify Green prefix {"text":"[Charlie] "}
team modify Yellow prefix {"text":"[Delta] "}
team modify Aqua prefix {"text":"[Echo] "}
team modify Gold prefix {"text":"[Foxtrot] "}
team modify LightPurple prefix {"text":"[Golf] "}
team modify White prefix {"text":"[Hotel] "}
team modify LightRed prefix {"text":"[India] "}
team modify DarkBlue prefix {"text":"[Kilo] "}
team modify DarkGreen prefix {"text":"[Lima] "}
team modify DarkPurple prefix {"text":"[Mike] "}
team modify DarkAqua prefix {"text":"[Oscar] "}
team modify Gray prefix {"text":"[Sierra] "}
team modify DarkGray prefix {"text":"[Whiskey] "}
team modify Black prefix {"text":"[Zulu] "}

tellraw @a {"text":"[>] Teams successfully initialized","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1