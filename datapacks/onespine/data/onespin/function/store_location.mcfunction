
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=0}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 1 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=0}] \ 
        run return fail



$execute if data storage onespin:locations stored_location.$(ID) run tellraw @s ["",{"text":"Location with the specified ID is already stored","color":"red"}]
#
$execute if data storage onespin:locations stored_location.$(ID) run return fail

$data modify storage onespin:locations stored_location.$(ID).name set value "$(name)"

$tag @e[tag=OS-bob] add OS-storedLocation-$(ID)-op
#
$scoreboard players set #OS-bob OS-storedLocation-$(ID)-operator 1

$data modify storage onespin:locations stored_location.$(ID).dimension set from entity @s Dimension
#
$execute store result storage onespin:locations stored_location.$(ID).x int 1 run data get entity @s Pos[0]
#
$execute store result storage onespin:locations stored_location.$(ID).y int 1 run data get entity @s Pos[1]
#
$execute store result storage onespin:locations stored_location.$(ID).z int 1 run data get entity @s Pos[2]

$tellraw @s ["Stored a new location named ",{"text":"$(name)","color":"green"}]
