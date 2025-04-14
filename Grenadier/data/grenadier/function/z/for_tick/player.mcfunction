
# Players

execute store result score @s grenadier-playerMaxHealth run attribute @s minecraft:max_health get 1
scoreboard players operation @s grenadier-playerDamage = @s grenadier-playerMaxHealth
execute store result score @s grenadier-playerDamage \ 
    run scoreboard players operation @s grenadier-playerDamage -= @s grenadier-playerHealth
execute store result score @s grenadier-playerX run data get entity @s Pos[0] 1
execute store result score @s grenadier-playerY run data get entity @s Pos[1] 1
execute store result score @s grenadier-playerZ run data get entity @s Pos[2] 1
execute store result score @s grenadier-playerPitch run data get entity @s Rotation[0] 1
execute store result score @s grenadier-playerYaw run data get entity @s Rotation[1] 1
execute store result score @s grenadier-playerXPPoints run xp query @s points
execute store result score @s grenadier-playerXPLevels run xp query @s levels
execute store result score @s grenadier-playerRespawnX run data get entity @s respawn.pos[0]
execute store result score @s grenadier-playerRespawnY run data get entity @s respawn.pos[1]
execute store result score @s grenadier-playerRespawnZ run data get entity @s respawn.pos[2]

# Playtime

scoreboard players operation @s grenadier-playTimeSeconds = @s grenadier-playTime
execute \ 
    store result score @s grenadier-playTimeSeconds run \ 
        scoreboard players operation @s grenadier-playTimeSeconds /= #grenadier-main grenadier-const-20
scoreboard players operation @s grenadier-playTimeMinutes = @s grenadier-playTimeSeconds
execute \ 
    store result score @s grenadier-playTimeMinutes run \ 
        scoreboard players operation @s grenadier-playTimeMinutes /= #grenadier-main grenadier-const-60
scoreboard players operation @s grenadier-playTimeHours = @s grenadier-playTimeMinutes
execute \ 
    store result score @s grenadier-playTimeHours run \ 
        scoreboard players operation @s grenadier-playTimeHours /= #grenadier-main grenadier-const-60
scoreboard players operation @s grenadier-playTimeDays = @s grenadier-playTimeHours
execute \ 
    store result score @s grenadier-playTimeDays run \ 
        scoreboard players operation @s grenadier-playTimeDays /= #grenadier-main grenadier-nadier-const-24