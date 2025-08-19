
scoreboard players operation @s grenadier-playerDamage = @s grenadier-playerMaxHealth

execute \
    store result score @s grenadier-playerDamage \ 
        run \
            scoreboard players operation @s grenadier-playerDamage -= @s grenadier-playerHealth

execute \
    store result score @s grenadier-playerPercentHealth \
        run \
            scoreboard players operation @s grenadier-playerHealth-100 /= @s grenadier-playerMaxHealth

execute \ 
    store result score @s grenadier-playerPlayTimeSeconds \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeSeconds = @s grenadier-playerPlayTime

execute \ 
    store result score @s grenadier-playerPlayTimeSeconds \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeSeconds /= #grenadier-main grenadier-const-20

execute \ 
    store result score @s grenadier-playerPlayTimeMinutes \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeMinutes = @s grenadier-playerPlayTimeSeconds

execute \ 
    store result score @s grenadier-playerPlayTimeMinutes \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeMinutes /= #grenadier-main grenadier-const-60

execute \ 
    store result score @s grenadier-playerPlayTimeHours \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeHours = @s grenadier-playerPlayTimeMinutes

execute \ 
    store result score @s grenadier-playerPlayTimeHours \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeHours /= #grenadier-main grenadier-const-60

execute \ 
    store result score @s grenadier-playerPlayTimeDays \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeDays = @s grenadier-playerPlayTimeHours

execute \ 
    store result score @s grenadier-playerPlayTimeDays \
        run \ 
            scoreboard players operation @s grenadier-playerPlayTimeDays /= #grenadier-main grenadier-const-24

execute \
    store result score @s grenadier-playerXPPoints \
        run \
            xp query @s points

execute \
    store result score @s grenadier-playerXPLevels \
        run \
            xp query @s levels