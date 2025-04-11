
$data modify storage onespin:players player.$(ID).ID set value $(ID)

$team add OS-player-$(ID)
$data modify storage onespin:players player.$(ID).team set value "OS-player-$(ID)"

$team join OS-player-$(ID) @s[scores={OSID=$(ID)},team=!OS-1-team]

$data modify storage onespin:players player.$(ID).x set from entity @s[scores={OSID=$(ID)}] Pos[0]
$data modify storage onespin:players player.$(ID).y set from entity @s[scores={OSID=$(ID)}] Pos[1]
$data modify storage onespin:players player.$(ID).z set from entity @s[scores={OSID=$(ID)}] Pos[2]
$data modify storage onespin:players player.$(ID).dimension set from entity @s[scores={OSID=$(ID)}] Dimension
$data modify storage onespin:players player.$(ID).UUID set from entity @s[scores={OSID=$(ID)}] UUID
$data modify storage onespin:players player.$(ID).pitch set from entity @s[scores={OSID=$(ID)}] Rotation[0]
$data modify storage onespin:players player.$(ID).yaw set from entity @s[scores={OSID=$(ID)}] Rotation[1]

$data modify storage onespin:players player.$(ID).spawnpoint.x set from entity @s[scores={OSID=$(ID)}] respawn.pos[0]
$data modify storage onespin:players player.$(ID).spawnpoint.y set from entity @s[scores={OSID=$(ID)}] respawn.pos[1]
$data modify storage onespin:players player.$(ID).spawnpoint.z set from entity @s[scores={OSID=$(ID)}] respawn.pos[2]

$execute as @s[scores={OSID=$(ID)}] at @s if predicate onespin:location/in_dimension/overworld run data modify storage onespin:players player.$(ID).spawnpoint.dimension set value "minecraft:overworld"

$execute as @s[scores={OSID=$(ID)}] at @s unless predicate onespin:location/in_dimension/overworld run data modify storage onespin:players player.$(ID).spawnpoint.dimension set from entity @s respawn.dimension


$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={OSID=$(ID)}] run \ 
        effect give @s regeneration 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={OSID=$(ID)}] run \ 
        effect give @s resistance 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={OSID=$(ID)}] run \ 
        function onespin:z/teleport with storage onespin:players player.$(ID).spawnpoint


$execute \ 
    as @s[tag=OS-4-locked,scores={OSID=$(ID)}] \ 
        at @s \ 
            unless predicate onespin:location/in_dimension/any_minecraft run \ 
                function onespin:z/teleport with storage onespin:minigame_4 player.$(ID)

$scoreboard players add @s[scores={OSID=$(ID)}] OS-coordinatesUpdateDelay 1
$execute as @s[scores={OSID=$(ID),OS-coordinatesUpdateDelay=5..},name=!wosarian,tag=!OS-3-inGame,tag=!OS-1-inGame] at @s if predicate onespin:location/in_dimension/any_minecraft run title @s actionbar [ { "text": "X: ", "color": "red" }, { "score": { "objective": "OS-playerX", "name": "*" }, "color": "red" }, { "text": " | ", "color": "white" }, { "text": "Y: ", "color": "green" }, { "score": { "objective": "OS-playerY", "name": "*" }, "color": "green" }, { "text": " | ", "color": "white" }, { "text": "Z: ", "color": "aqua" }, { "score": { "objective": "OS-playerZ", "name": "*" }, "color": "aqua" }]
$title @s[scores={OSID=$(ID),OS-coordinatesUpdateDelay=5..},name=wosarian,tag=!OS-3-inGame,tag=!OS-1-inGame] actionbar [ { "text": "X: ", "color": "red" }, { "score": { "objective": "OS-playerX", "name": "*" }, "color": "red" }, { "text": " | ", "color": "white" }, { "text": "Y: ", "color": "green" }, { "score": { "objective": "OS-playerY", "name": "*" }, "color": "green" }, { "text": " | ", "color": "white" }, { "text": "Z: ", "color": "aqua" }, { "score": { "objective": "OS-playerZ", "name": "*" }, "color": "aqua" }, { "text": " | ", "color": "white" }, { "score": { "objective": "OSID", "name": "@n[tag=OS-bob]" }, "color": "light_purple" }]
$scoreboard players reset @s[scores={OSID=$(ID),OS-coordinatesUpdateDelay=5..}] OS-coordinatesUpdateDelay


$execute \ 
    store result score @s[scores={OSID=$(ID)}] OS-playerX run \ 
        data get storage onespin:players player.$(ID).x 1
$execute \ 
    store result score @s[scores={OSID=$(ID)}] OS-playerY run \ 
        data get storage onespin:players player.$(ID).y 1
$execute \ 
    store result score @s[scores={OSID=$(ID)}] OS-playerZ run \ 
        data get storage onespin:players player.$(ID).z 1

$execute \ 
    store result score @s[scores={OSID=$(ID)}] OS-playerPitch run \ 
        data get storage onespin:players player.$(ID).pitch 1
$execute \ 
    store result score @s[scores={OSID=$(ID)}] OS-playerYaw run \ 
        data get storage onespin:players player.$(ID).yaw 1

$execute \ 
    as @s[scores={OSID=$(ID),panel=1}] run \ 
        function onespin:z/print_control_panel with storage onespin:players player.temp



# # Branches.

# Minigame: Survival branches.

$execute \ 
    as @s[scores={OSID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/joining with storage onespin:players player.temp
$execute \ 
    as @s[scores={OSID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/autosave with storage onespin:players player.temp
$execute \ 
    as @s[scores={OSID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/leaving with storage onespin:players player.temp

# Minigame: SkyGames branches.

$execute \ 
    as @s[scores={OSID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_5/save_location with storage onespin:players player.temp
