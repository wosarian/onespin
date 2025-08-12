
execute store result storage grenadier:temp temp.ID int 1 run scoreboard players get @s grenadier-playerID
execute as @s run function #grenadier:runs_every_tick_as_player with storage grenadier:temp temp