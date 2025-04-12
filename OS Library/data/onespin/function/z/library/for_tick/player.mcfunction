
# Players

execute store result score @s OS-playerMaxHealth run attribute @s minecraft:max_health get 1
scoreboard players operation @s OS-playerDamage = @s OS-playerMaxHealth
execute store result score @s OS-playerDamage \ 
    run scoreboard players operation @s OS-playerDamage -= @s OS-playerHealth

# Playtime

scoreboard players operation @s OS-playTimeSeconds = @s OS-playTime
execute \ 
    store result score @s OS-playTimeSeconds run \ 
        scoreboard players operation @s OS-playTimeSeconds /= #OS-holder OS-const-20
scoreboard players operation @s OS-playTimeMinutes = @s OS-playTimeSeconds
execute \ 
    store result score @s OS-playTimeMinutes run \ 
        scoreboard players operation @s OS-playTimeMinutes /= #OS-holder OS-const-60
scoreboard players operation @s OS-playTimeHours = @s OS-playTimeMinutes
execute \ 
    store result score @s OS-playTimeHours run \ 
        scoreboard players operation @s OS-playTimeHours /= #OS-holder OS-const-60
scoreboard players operation @s OS-playTimeDays = @s OS-playTimeHours
execute \ 
    store result score @s OS-playTimeDays run \ 
        scoreboard players operation @s OS-playTimeDays /= #OS-holder OS-const-24