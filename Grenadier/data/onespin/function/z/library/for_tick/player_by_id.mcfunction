
# Player data

$data modify storage onespin:players player.$(ID).ID set value $(ID)
$data modify storage onespin:players player.$(ID).x set from entity @s[scores={OS-playerID=$(ID)}] Pos[0]
$data modify storage onespin:players player.$(ID).y set from entity @s[scores={OS-playerID=$(ID)}] Pos[1]
$data modify storage onespin:players player.$(ID).z set from entity @s[scores={OS-playerID=$(ID)}] Pos[2]
$data modify storage onespin:players player.$(ID).dimension set from entity @s[scores={OS-playerID=$(ID)}] Dimension
$data modify storage onespin:players player.$(ID).UUID set from entity @s[scores={OS-playerID=$(ID)}] UUID
$data modify storage onespin:players player.$(ID).pitch set from entity @s[scores={OS-playerID=$(ID)}] Rotation[0]
$data modify storage onespin:players player.$(ID).yaw set from entity @s[scores={OS-playerID=$(ID)}] Rotation[1]
$data modify storage onespin:players player.$(ID).spawnpoint.x set from entity @s[scores={OS-playerID=$(ID)}] respawn.pos[0]
$data modify storage onespin:players player.$(ID).spawnpoint.y set from entity @s[scores={OS-playerID=$(ID)}] respawn.pos[1]
$data modify storage onespin:players player.$(ID).spawnpoint.z set from entity @s[scores={OS-playerID=$(ID)}] respawn.pos[2]
$execute as @s[scores={OS-playerID=$(ID)}] at @s if predicate onespin:location/in_dimension/overworld run data modify storage onespin:players player.$(ID).spawnpoint.dimension set value "minecraft:overworld"
$execute as @s[scores={OS-playerID=$(ID)}] at @s unless predicate onespin:location/in_dimension/overworld run data modify storage onespin:players player.$(ID).spawnpoint.dimension set from entity @s respawn.dimension

# Player scores from data

$execute \ 
    store result score @s[scores={OS-playerID=$(ID)}] OS-playerX run \ 
        data get storage onespin:players player.$(ID).x 1
$execute \ 
    store result score @s[scores={OS-playerID=$(ID)}] OS-playerY run \ 
        data get storage onespin:players player.$(ID).y 1
$execute \ 
    store result score @s[scores={OS-playerID=$(ID)}] OS-playerZ run \ 
        data get storage onespin:players player.$(ID).z 1
$execute \ 
    store result score @s[scores={OS-playerID=$(ID)}] OS-playerPitch run \ 
        data get storage onespin:players player.$(ID).pitch 1
$execute \ 
    store result score @s[scores={OS-playerID=$(ID)}] OS-playerYaw run \ 
        data get storage onespin:players player.$(ID).yaw 1