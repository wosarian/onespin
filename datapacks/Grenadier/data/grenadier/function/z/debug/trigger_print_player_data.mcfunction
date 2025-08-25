
scoreboard players enable @s grenadier-printPlayerData
execute if score @s grenadier-printPlayerData matches 1.. store result storage grenadier:storage player.scores.print_player_data.ID int 1 run scoreboard players get @s grenadier-printPlayerData
execute if score @s grenadier-printPlayerData matches 1.. run function grenadier:z/debug/print_player_data with storage grenadier:storage player.scores.print_player_data
execute if score @s grenadier-printPlayerData matches 1.. run scoreboard players reset @s grenadier-printPlayerData