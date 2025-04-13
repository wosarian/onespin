
# Player data

$data modify storage grenadier:players player.$(ID).ID set value $(ID)
$data modify storage grenadier:players player.$(ID).x set from entity @s[scores={grenadier-playerID=$(ID)}] Pos[0]
$data modify storage grenadier:players player.$(ID).y set from entity @s[scores={grenadier-playerID=$(ID)}] Pos[1]
$data modify storage grenadier:players player.$(ID).z set from entity @s[scores={grenadier-playerID=$(ID)}] Pos[2]
$data modify storage grenadier:players player.$(ID).dimension set from entity @s[scores={grenadier-playerID=$(ID)}] Dimension
$data modify storage grenadier:players player.$(ID).UUID set from entity @s[scores={grenadier-playerID=$(ID)}] UUID
$data modify storage grenadier:players player.$(ID).pitch set from entity @s[scores={grenadier-playerID=$(ID)}] Rotation[0]
$data modify storage grenadier:players player.$(ID).yaw set from entity @s[scores={grenadier-playerID=$(ID)}] Rotation[1]
$data modify storage grenadier:players player.$(ID).spawnpoint.x set from entity @s[scores={grenadier-playerID=$(ID)}] respawn.pos[0]
$data modify storage grenadier:players player.$(ID).spawnpoint.y set from entity @s[scores={grenadier-playerID=$(ID)}] respawn.pos[1]
$data modify storage grenadier:players player.$(ID).spawnpoint.z set from entity @s[scores={grenadier-playerID=$(ID)}] respawn.pos[2]
$execute as @s[scores={grenadier-playerID=$(ID)}] at @s if predicate grenadier:location/in_dimension/overworld run data modify storage grenadier:players player.$(ID).spawnpoint.dimension set value "minecraft:overworld"
$execute as @s[scores={grenadier-playerID=$(ID)}] at @s unless predicate grenadier:location/in_dimension/overworld run data modify storage grenadier:players player.$(ID).spawnpoint.dimension set from entity @s respawn.dimension

# Player scores from data

$execute \ 
    store result score @s[scores={grenadier-playerID=$(ID)}] grenadier-playerX run \ 
        data get storage grenadier:players player.$(ID).x 1
$execute \ 
    store result score @s[scores={grenadier-playerID=$(ID)}] grenadier-playerY run \ 
        data get storage grenadier:players player.$(ID).y 1
$execute \ 
    store result score @s[scores={grenadier-playerID=$(ID)}] grenadier-playerZ run \ 
        data get storage grenadier:players player.$(ID).z 1
$execute \ 
    store result score @s[scores={grenadier-playerID=$(ID)}] grenadier-playerPitch run \ 
        data get storage grenadier:players player.$(ID).pitch 1
$execute \ 
    store result score @s[scores={grenadier-playerID=$(ID)}] grenadier-playerYaw run \ 
        data get storage grenadier:players player.$(ID).yaw 1