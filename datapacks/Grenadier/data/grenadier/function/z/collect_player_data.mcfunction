
# Math

scoreboard players operation @s grenadier-playerDamage = @s grenadier-playerMaxHealth

execute store result score @s grenadier-playerDamage \ 
    run scoreboard players operation @s grenadier-playerDamage -= @s grenadier-playerHealth

execute store result score @s grenadier-playerPercentHealth run scoreboard players operation @s grenadier-playerHealth-100 /= @s grenadier-playerMaxHealth

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

# To Player Data Scores From Player Data

execute store result score @s grenadier-playerXPPoints run xp query @s points
execute store result score @s grenadier-playerXPLevels run xp query @s levels

# To grenadier:players From Player Data

$data modify storage grenadier:players player.$(ID).x set from entity @s Pos[0]
$data modify storage grenadier:players player.$(ID).y set from entity @s Pos[1]
$data modify storage grenadier:players player.$(ID).z set from entity @s Pos[2]
$data modify storage grenadier:players player.$(ID).dimension set from entity @s Dimension
$execute as @s at @s if predicate grenadier:location/in_dimension/overworld run data modify storage grenadier:players player.$(ID).spawnpoint.dimension set value "minecraft:overworld"
$execute as @s at @s unless predicate grenadier:location/in_dimension/overworld run data modify storage grenadier:players player.$(ID).spawnpoint.dimension set from entity @s respawn.dimension
$data modify storage grenadier:players player.$(ID).UUID set from entity @s UUID
$data modify storage grenadier:players player.$(ID).pitch set from entity @s Rotation[0]
$data modify storage grenadier:players player.$(ID).yaw set from entity @s Rotation[1]
$data modify storage grenadier:players player.$(ID).spawnpoint.x set from entity @s respawn.pos[0]
$data modify storage grenadier:players player.$(ID).spawnpoint.y set from entity @s respawn.pos[1]
$data modify storage grenadier:players player.$(ID).spawnpoint.z set from entity @s respawn.pos[2]
$execute store result storage grenadier:players player.$(ID).max_health int 1 run attribute @s max_health base get 1
$data modify storage grenadier:players player.$(ID).health set from entity @s Health

# To Player Data Scores From grenadier:players

$execute store result score @s grenadier-playerX run data get storage grenadier:players player.$(ID).x 1
$execute store result score @s grenadier-playerY run data get storage grenadier:players player.$(ID).y 1
$execute store result score @s grenadier-playerZ run data get storage grenadier:players player.$(ID).z 1
$execute store result score @s grenadier-playerSpawnpointX run data get storage grenadier:players player.$(ID).spawnpoint.x 1
$execute store result score @s grenadier-playerSpawnpointY run data get storage grenadier:players player.$(ID).spawnpoint.y 1
$execute store result score @s grenadier-playerSpawnpointZ run data get storage grenadier:players player.$(ID).spawnpoint.z 1
$execute store result score @s grenadier-playerYaw run data get storage grenadier:players player.$(ID).yaw 1
$execute store result score @s grenadier-playerPitch run data get storage grenadier:players player.$(ID).pitch 1
$execute store result score @s grenadier-playerHealth run data get storage grenadier:players player.$(ID).health 1
$execute store result score @s grenadier-playerHealth-100 run data get storage grenadier:players player.$(ID).health 100
$execute store result score @s grenadier-playerMaxHealth run data get storage grenadier:players player.$(ID).max_health

# To grenadier:players From Player Data Scores

$execute store result storage grenadier:players player.$(ID).health_percent int 1 run scoreboard players get @s grenadier-playerPercentHealth