

$team add OS-player-$(ID)


$team join OS-player-$(ID) @s[scores={grenadier-playerID=$(ID)},team=!OS-1-team]


$execute \ 
    as @s[tag=OS-4-locked,scores={grenadier-playerID=$(ID)}] \ 
        at @s \ 
            unless predicate grenadier:location/in_dimension/any_minecraft run \ 
                function onespin:z/teleport with storage onespin:minigame_4 player.$(ID)


$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={grenadier-playerID=$(ID)}] run \ 
        effect give @s regeneration 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={grenadier-playerID=$(ID)}] run \ 
        effect give @s resistance 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984,scores={grenadier-playerID=$(ID)}] run \ 
        function onespin:z/teleport with storage grenadier:players player.$(ID).spawnpoint

$scoreboard players add @s[scores={grenadier-playerID=$(ID)}] OS-coordinatesUpdateDelay 1
$execute as @s[scores={grenadier-playerID=$(ID),OS-coordinatesUpdateDelay=5..},name=!wosarian,tag=!OS-3-inGame,tag=!OS-1-inGame] at @s if predicate grenadier:location/in_dimension/any_minecraft run title @s actionbar [ { "text": "X: ", "color": "red" }, { "score": { "objective": "grenadier-playerX", "name": "*" }, "color": "red" }, { "text": " | ", "color": "white" }, { "text": "Y: ", "color": "green" }, { "score": { "objective": "grenadier-playerY", "name": "*" }, "color": "green" }, { "text": " | ", "color": "white" }, { "text": "Z: ", "color": "aqua" }, { "score": { "objective": "grenadier-playerZ", "name": "*" }, "color": "aqua" }]
$title @s[scores={grenadier-playerID=$(ID),OS-coordinatesUpdateDelay=5..},name=wosarian,tag=!OS-3-inGame,tag=!OS-1-inGame] actionbar [ { "text": "X: ", "color": "red" }, { "score": { "objective": "grenadier-playerX", "name": "*" }, "color": "red" }, { "text": " | ", "color": "white" }, { "text": "Y: ", "color": "green" }, { "score": { "objective": "grenadier-playerY", "name": "*" }, "color": "green" }, { "text": " | ", "color": "white" }, { "text": "Z: ", "color": "aqua" }, { "score": { "objective": "grenadier-playerZ", "name": "*" }, "color": "aqua" }, { "text": " | ", "color": "white" }, { "score": { "objective": "grenadier-playerID", "name": "#grenadier-lastID" }, "color": "light_purple" }]
$scoreboard players reset @s[scores={grenadier-playerID=$(ID),OS-coordinatesUpdateDelay=5..}] OS-coordinatesUpdateDelay

$execute \ 
    as @s[scores={grenadier-playerID=$(ID),panel=1}] run \ 
        function onespin:z/print_control_panel with storage grenadier:players player.temp


# # Branches.

# Minigame: Survival branches.

$execute \ 
    as @s[scores={grenadier-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/joining with storage grenadier:players player.temp
$execute \ 
    as @s[scores={grenadier-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/autosave with storage grenadier:players player.temp
$execute \ 
    as @s[scores={grenadier-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_4/leaving with storage grenadier:players player.temp

# Minigame: SkyGames branches.

$execute \ 
    as @s[scores={grenadier-playerID=$(ID)}] run \ 
        function onespin:z/minigames/minigame_5/save_location with storage grenadier:players player.temp


$execute as @s[scores={grenadier-playerID=$(ID)}] if score @s OS-rainbow = @s OS-rainbow run scoreboard players add @s OS-rainbow 1
$execute as @s[scores={grenadier-playerID=$(ID)}] if score @s OS-rainbow matches 1..2 run team modify OS-player-$(ID) color yellow
$execute as @s[scores={grenadier-playerID=$(ID)}] if score @s OS-rainbow matches 3..4 run team modify OS-player-$(ID) color red
$execute as @s[scores={grenadier-playerID=$(ID)}] if score @s OS-rainbow matches 5..6 run team modify OS-player-$(ID) color blue
$execute as @s[scores={grenadier-playerID=$(ID)}] if score @s OS-rainbow matches 7..8 run team modify OS-player-$(ID) color green
$execute as @s[scores={grenadier-playerID=$(ID)}] if score @s OS-rainbow matches 9.. run scoreboard players set @s OS-rainbow 1