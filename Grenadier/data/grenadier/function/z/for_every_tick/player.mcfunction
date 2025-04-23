
# Every Tick | Player | Using Temp

execute store result storage grenadier:temp temp.ID int 1 run scoreboard players get @s grenadier-playerID
execute as @s run function #grenadier:runs_through_players_using_temp with storage grenadier:temp temp

# Every Tick | Player | Debug | Enable Trigger Print Player Data

execute as @s run function grenadier:z/for_every_tick/player/debug/trigger_print_player_data
