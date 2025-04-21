
# Player data

$data modify storage grenadier:players player.$(ID).ID set value $(ID)
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

# Player data to scores

$execute store result score @s grenadier-playerX run data get storage grenadier:players player.$(ID).x 1
$execute store result score @s grenadier-playerY run data get storage grenadier:players player.$(ID).y 1
$execute store result score @s grenadier-playerZ run data get storage grenadier:players player.$(ID).z 1
$execute store result score @s grenadier-playerSpawnpointX run data get storage grenadier:players player.$(ID).spawnpoint.x 1
$execute store result score @s grenadier-playerSpawnpointY run data get storage grenadier:players player.$(ID).spawnpoint.y 1
$execute store result score @s grenadier-playerSpawnpointZ run data get storage grenadier:players player.$(ID).spawnpoint.z 1
$execute store result score @s grenadier-playerYaw run data get storage grenadier:players player.$(ID).yaw 1
$execute store result score @s grenadier-playerPitch run data get storage grenadier:players player.$(ID).pitch 1