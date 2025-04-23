
# Run functions with tag #grenadier-main grenadier-onlinePlayers for every existing player by ID

execute store result storage grenadier:temp temp.ID int 1 run scoreboard players get @s grenadier-playerID
execute as @s run function #grenadier:runs_through_players_by_id with storage grenadier:temp temp

# Players

execute store result score @s grenadier-playerMaxHealth run attribute @s minecraft:max_health get 1
scoreboard players operation @s grenadier-playerDamage = @s grenadier-playerMaxHealth
execute store result score @s grenadier-playerDamage \ 
    run scoreboard players operation @s grenadier-playerDamage -= @s grenadier-playerHealth
execute store result score @s grenadier-playerXPPoints run xp query @s points
execute store result score @s grenadier-playerXPLevels run xp query @s levels
execute store result score @s grenadier-playerPercentHealth run scoreboard players operation @s grenadier-playerHealth-100 /= @s grenadier-playerMaxHealth

# Playtime

execute \ 
    store result score @s grenadier-playTimeSeconds run \ 
        scoreboard players operation @s grenadier-playTimeSeconds = @s grenadier-playTime

execute \ 
    store result score @s grenadier-playTimeSeconds run \ 
        scoreboard players operation @s grenadier-playTimeSeconds /= #grenadier-main grenadier-const-20

execute \ 
    store result score @s grenadier-playTimeMinutes run \ 
        scoreboard players operation @s grenadier-playTimeMinutes = @s grenadier-playTimeSeconds

execute \ 
    store result score @s grenadier-playTimeMinutes run \ 
        scoreboard players operation @s grenadier-playTimeMinutes /= #grenadier-main grenadier-const-60

execute \ 
    store result score @s grenadier-playTimeHours run \ 
        scoreboard players operation @s grenadier-playTimeHours = @s grenadier-playTimeMinutes

execute \ 
    store result score @s grenadier-playTimeHours run \ 
        scoreboard players operation @s grenadier-playTimeHours /= #grenadier-main grenadier-const-60

execute \ 
    store result score @s grenadier-playTimeDays run \ 
        scoreboard players operation @s grenadier-playTimeDays = @s grenadier-playTimeHours

execute \ 
    store result score @s grenadier-playTimeDays run \ 
        scoreboard players operation @s grenadier-playTimeDays /= #grenadier-main grenadier-const-24