

$team add OS-player-$(ID)
$data modify storage onespin:players player.$(ID).team set value "OS-player-$(ID)"


$team join OS-player-$(ID) @s[scores={OS-playerID=$(ID)},team=!OS-1-team]


$execute \ 
    as @s[tag=OS-4-locked,scores={OS-playerID=$(ID)}] \ 
        at @s \ 
            unless predicate onespin:location/in_dimension/any_minecraft run \ 
                function onespin:z/teleport with storage onespin:minigame_4 player.$(ID)


$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={OS-playerID=$(ID)}] run \ 
        effect give @s regeneration 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={OS-playerID=$(ID)}] run \ 
        effect give @s resistance 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={OS-playerID=$(ID)}] run \ 
        function onespin:z/teleport with storage onespin:players player.$(ID).spawnpoint

$scoreboard players add @s[scores={OS-playerID=$(ID)}] OS-coordinatesUpdateDelay 1
$execute as @s[scores={OS-playerID=$(ID),OS-coordinatesUpdateDelay=5..},name=!wosarian,tag=!OS-3-inGame,tag=!OS-1-inGame] at @s if predicate onespin:location/in_dimension/any_minecraft run title @s actionbar [ { "text": "X: ", "color": "red" }, { "score": { "objective": "OS-playerX", "name": "*" }, "color": "red" }, { "text": " | ", "color": "white" }, { "text": "Y: ", "color": "green" }, { "score": { "objective": "OS-playerY", "name": "*" }, "color": "green" }, { "text": " | ", "color": "white" }, { "text": "Z: ", "color": "aqua" }, { "score": { "objective": "OS-playerZ", "name": "*" }, "color": "aqua" }]
$title @s[scores={OS-playerID=$(ID),OS-coordinatesUpdateDelay=5..},name=wosarian,tag=!OS-3-inGame,tag=!OS-1-inGame] actionbar [ { "text": "X: ", "color": "red" }, { "score": { "objective": "OS-playerX", "name": "*" }, "color": "red" }, { "text": " | ", "color": "white" }, { "text": "Y: ", "color": "green" }, { "score": { "objective": "OS-playerY", "name": "*" }, "color": "green" }, { "text": " | ", "color": "white" }, { "text": "Z: ", "color": "aqua" }, { "score": { "objective": "OS-playerZ", "name": "*" }, "color": "aqua" }, { "text": " | ", "color": "white" }, { "score": { "objective": "OS-playerID", "name": "#OS-lastID" }, "color": "light_purple" }]
$scoreboard players reset @s[scores={OS-playerID=$(ID),OS-coordinatesUpdateDelay=5..}] OS-coordinatesUpdateDelay

$execute \ 
    as @s[scores={OS-playerID=$(ID),panel=1}] run \ 
        function onespin:z/print_control_panel with storage onespin:players player.temp



# # Branches.

# Minigame: Survival branches.

$execute \ 
    as @s[scores={OS-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/joining with storage onespin:players player.temp
$execute \ 
    as @s[scores={OS-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/autosave with storage onespin:players player.temp
$execute \ 
    as @s[scores={OS-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/leaving with storage onespin:players player.temp

# Minigame: SkyGames branches.

$execute \ 
    as @s[scores={OS-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_5/save_location with storage onespin:players player.temp
