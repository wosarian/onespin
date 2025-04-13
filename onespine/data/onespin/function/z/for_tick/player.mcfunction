
# # # Initial

# # Happens when the player joins the world first time.

# Sets their spawnpoint to lobby.

execute \ 
    if entity @s[tag=!OS-firstJoined] \ 
        in onespin:dimension_0 run \ 
            spawnpoint @s 0 50 0

# Teleports them to lobby.

execute \ 
    if entity @s[tag=!OS-firstJoined] \ 
        in onespin:dimension_0 run \ 
            tp @s 0 50 0

# Adds a tag that breaks the loop.

execute \ 
    if entity @s[tag=!OS-firstJoined] run \ 
        tag @s add OS-4-lockedOut
execute \ 
    if entity @s[tag=!OS-firstJoined] run \ 
        scoreboard players set @s OS-dynamic-15 15
execute \ 
    if entity @s[tag=!OS-firstJoined] run \ 
        tag @s add OS-firstJoined

# # # Permissions

# Adds OS-member tag to every new player.

execute \ 
    if entity @s[tag=!OS-member] \ 
        run tag @s add OS-member

# Sets permission level of every player to 0 in the beginning.

execute \ 
    if entity @s[tag=OS-member] \ 
        unless score @s OS-permissionLevel = @s OS-permissionLevel \ 
            run scoreboard players set @s OS-permissionLevel 0



# # Operators

# Sets a permission level to wosarian.

execute \ 
    unless score @s OS-permissionLevel = @s OS-permissionLevel \ 
        if score @s OS-playerID matches 1 \ 
            run scoreboard players set @s OS-permissionLevel 4

# Sets a permission level to spoockybro.

execute \ 
    unless score @s OS-permissionLevel = @s OS-permissionLevel \ 
        if score @s OS-playerID matches 2 \ 
            run scoreboard players set @s OS-permissionLevel 3

# Sets a permission level to teratoph.

execute \ 
    unless score @s OS-permissionLevel = @s OS-permissionLevel \ 
        if score @s OS-playerID matches 3 \ 
            run scoreboard players set @s OS-permissionLevel 3

# Sets a permission level to _Dere_.

execute \ 
    unless score @s OS-permissionLevel = @s OS-permissionLevel \ 
        if score @s OS-playerID matches 4 \ 
            run scoreboard players set @s OS-permissionLevel 3

# Sets a permission level to _Shouly.

execute unless score @s OS-permissionLevel = @s OS-permissionLevel if score @s OS-playerID matches 5 run scoreboard players set @s OS-permissionLevel 3


execute \ 
    unless score @s OS-permissionLevel = @s OS-permissionLevel \ 
        if score @s OS-playerID matches 6 \ 
            run scoreboard players set @s OS-permissionLevel 3



# Constantly tries to add OS-creativeAllowed tag to operators.

# execute if score @s[tag=!OS-creativeAllowed] OS-permissionLevel matches 2.. run tag @s add OS-creativeAllowed




tag @s remove OS-operator
tag @s remove OS-isOperator
tag @s remove OS-firstJoin
tag @s remove OS-allowCreative
tag @s remove OS-allowTeleportLocation
tag @s remove OS-resetScoresFunction
tag @s remove OS-pass-1
tag @s remove OS-allowFallingTree
clear @s[scores={OS-playerID=3..}] *[custom_data={"OS-skeletonKey":true}]

tag @s[advancements={onespin:use_tagged_item=true}] add OS-taggedItemUsing
tag @s[advancements={onespin:use_tagged_item=false}] remove OS-taggedItemUsing
advancement revoke @s[tag=OS-taggedItemUsing] only onespin:use_tagged_item

execute if predicate onespin:entity/player/has_input/sprint run scoreboard players set @s OS-playerInput-sprint 1



# RTC stands for Redstone Tick Conversion. These following scores exist so comparators could detect command block 1 tick inputs.


execute \ 
    if score @s OS-playerDead matches 1.. run \ 
        scoreboard players add @s OS-RTCResetDelay 1
execute \ 
    if score @s OS-RTCResetDelay matches 2.. run \ 
         function onespin:z/reset_rtc_scores
execute \ 
    if score @s OS-RTCResetDelay matches 2.. run \ 
        scoreboard players set @s OS-RTCResetDelay 0


# Run if player is in void.
execute if entity @s[x=-14999992,y=-65,z=-14999992,dx=29999984,dy=-29999933,dz=29999984] run effect give @s minecraft:saturation 2 255 true
execute if entity @s[x=-14999992,y=-65,z=-14999992,dx=29999984,dy=-29999933,dz=29999984] run effect give @s minecraft:regeneration 2 255 true
execute if entity @s[x=-14999992,y=-65,z=-14999992,dx=29999984,dy=-29999933,dz=29999984] run effect give @s minecraft:resistance 2 255 true
execute if entity @s[x=-14999992,y=-100,z=-14999992,dx=29999984,dy=-29999899,dz=29999984] run kill @s

# Move player in the facing direction if player is using the OS Spectator Tool.
execute if items entity @s[tag=OS-taggedItemUsing] weapon.* *[minecraft:custom_data={OS-spectatorTool:true}] at @s run tp @s ^ ^ ^0.5
#execute if items entity @s[name=wosarian,tag=OS-taggedItemUsing] weapon.* *[minecraft:custom_data={laser:true}] at @s run function onespin:raycast

# Run functions if player scores higher than 0 with specified trigger scores and re-enable them.
scoreboard players enable @s warp
execute if entity @s[scores={warp=1..}] run function onespin:z/trigger/warp
scoreboard players enable @s warplist
execute if entity @s[scores={warplist=1..}] run function onespin:z/list_stored_locations
scoreboard players enable @s sptool
execute if entity @s[scores={sptool=1..}] run function onespin:z/trigger/sptool
scoreboard players enable @s lobby
execute if entity @s[scores={lobby=1..}] run function onespin:z/trigger/lobby
scoreboard players enable @s sword
execute if entity @s[scores={sword=1..}] run function onespin:z/trigger/sword
scoreboard players enable @s b
execute if entity @s[scores={b=1..}] run function onespin:z/trigger/b
scoreboard players enable @s nv
execute if entity @s[scores={nv=1..}] run function onespin:z/trigger/nv
scoreboard players enable @s skygamesSave
scoreboard players enable @s panel
scoreboard players enable @s leaveSurvival


execute at @s if entity @s[tag=!OS-4-locked] unless predicate onespin:location/in_dimension/any_minecraft run xp set @s 0 levels
execute at @s if entity @s[tag=!OS-4-locked] unless predicate onespin:location/in_dimension/any_minecraft run xp set @s 0 points

execute at @s if entity @s[tag=OS-4-locked] if predicate onespin:location/in_dimension/any_minecraft run tag @s add OS-mod-fallingTree-allowed
execute at @s if entity @s[tag=!OS-4-locked] unless predicate onespin:location/in_dimension/any_minecraft run tag @s remove OS-mod-fallingTree-allowed


#execute as @n[tag=ee] at @s if block ~ ~ ~ air store result storage onespin:players player.temp.ray int 1 run scoreboard players add wosarian raycast 1
#execute as @n[tag=ee] at @s if block ~ ~ ~ air run function onespin:ray_move with storage onespin:players player.temp
#execute as @n[tag=ee] at @s unless block ~ ~ ~ air run data modify storage onespin:scores raycast.x set from entity @s Pos[0]
#execute as @n[tag=ee] at @s unless block ~ ~ ~ air run data modify storage onespin:scores raycast.y set from entity @s Pos[1]
#execute as @n[tag=ee] at @s unless block ~ ~ ~ air run data modify storage onespin:scores raycast.z set from entity @s Pos[2]


# Survival
# recipes
execute at @s unless predicate onespin:location/in_dimension/any_minecraft run tag @s remove OS-4-defaultRecipesAllowed
execute at @s if predicate onespin:location/in_dimension/any_minecraft run tag @s add OS-4-defaultRecipesAllowed
recipe take @s[tag=!OS-4-defaultRecipesAllowed] *
recipe give @s[tag=OS-4-defaultRecipesAllowed] *

#execute as @s[tag=OS-4-lockedOut] at @s if predicate onespin:location/in_dimension/any_minecraft in onespin:dimension_2 run tp @s -271 57 29


execute at @s unless predicate onespin:location/dimension/minigame_5 run tag @s remove OS-5-inGame
execute at @s if predicate onespin:location/dimension/minigame_5 run tag @s add OS-5-inGame

effect give @s[tag=OS-5-inGame] saturation 2 255 true

#207 63 2


execute if entity @s[tag=OS-4-lockedOut,predicate=onespin:location/in_dimension/any_minecraft] in onespin:dimension_2 run tp @s -269 57 49



# night vision for library
execute if entity @s[x=6633,y=80,z=-65,dx=80,dy=41,dz=129,tag=!OS-inLibrary] run tag @s add OS-inLibrary
execute unless entity @s[x=6633,y=80,z=-65,dx=80,dy=41,dz=129,tag=OS-inLibrary] run tag @s remove OS-inLibrary


execute if entity @s[tag=OS-inLibrary] run effect give @s night_vision infinite 255 true
#execute if entity @s[tag=!OS-inLibrary] run effect clear @s night_vision


# You are the chosen one
execute as @s[x=-145,y=-59,z=75.9,dx=1,dy=1,dz=0,scores={OS-playerID=1}] at @s in onespin:dimension_1 run tp @s ~ ~ 77
execute as @s[x=-145,y=-59,z=76.1,dx=1,dy=1,dz=0,scores={OS-playerID=1}] at @s in onespin:dimension_1 run tp @s ~ ~ 75


# Branches.

function onespin:z/defender_player