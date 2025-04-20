

$team add OS-player-$(ID)


$team join OS-player-$(ID) @s[team=!OS-1-team]




$execute \ 
    as @s[tag=OS-4-locked] \ 
        at @s \ 
            unless predicate grenadier:location/in_dimension/any_minecraft run \ 
                function onespin:z/teleport with storage onespin:minigame_4 player.$(ID)


execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984] run \ 
        effect give @s regeneration 4 255 true
execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984] run \ 
        effect give @s resistance 4 255 true
$execute \ 
    as @s[x=-14999992,y=-66,z=-14999992,dx=29999984,dy=-29999933,dz=29999984] run \ 
        function onespin:z/teleport with storage grenadier:players player.$(ID).spawnpoint

execute \ 
    as @s[scores={panel=1}] run \ 
        function onespin:z/print_control_panel with storage grenadier:temp temp


# # Branches.

# Minigame: Survival branches.

execute \ 
    as @s run \ 
        function onespin:z/minigames/minigame_4/joining with storage grenadier:temp temp
execute \ 
    as @s run \ 
        function onespin:z/minigames/minigame_4/autosave with storage grenadier:temp temp
execute \ 
    as @s run \ 
        function onespin:z/minigames/minigame_4/leaving with storage grenadier:temp temp

# Minigame: SkyGames branches.

execute \ 
    as @s run \ 
        function onespin:z/minigames/minigame_5/save_location with storage grenadier:temp temp


execute as @s if score @s OS-rainbow = @s OS-rainbow run scoreboard players add @s OS-rainbow 1
$execute as @s if score @s OS-rainbow matches 1..2 run team modify OS-player-$(ID) color yellow
$execute as @s if score @s OS-rainbow matches 3..4 run team modify OS-player-$(ID) color red
$execute as @s if score @s OS-rainbow matches 5..6 run team modify OS-player-$(ID) color blue
$execute as @s if score @s OS-rainbow matches 7..8 run team modify OS-player-$(ID) color green
$execute as @s if score @s OS-rainbow matches 9..10 run team modify OS-player-$(ID) color light_purple
execute as @s if score @s OS-rainbow matches 11.. run scoreboard players set @s OS-rainbow 0