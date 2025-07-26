

# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run return fail




# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=0}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 1 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=0}] \ 
        run return fail



# Execute if there is no stored location with the specified name, if this location requires the player to be operator and if the executor is not a player.
$execute unless data storage onespin:locations stored_location.$(ID) run tellraw @s ["",{"text":"A stored location with that ID couldn't be found","color":"red"}]
$execute unless data storage onespin:locations stored_location.$(ID) run return fail
#
#
$execute if entity @s[scores={grenadier-playerPermissionLevel=0}] if score #OS-bob OS-storedLocation-$(ID)-operator matches 1 run tellraw @s ["",{"text":"Specified location requires minimum permission level of 2 or more","color":"red"}]
$execute if entity @s[scores={grenadier-playerPermissionLevel=0}] if score #OS-bob OS-storedLocation-$(ID)-operator matches 1 run return fail

# Run teleport function with specified stored location data.
$function onespin:z/teleport with storage onespin:locations stored_location.$(ID)

# Tell the executor that they have been teleported to the specified stored location.
#$tellraw @s ["Teleported ",{"selector": "@s"}," to a stored location called ",{"storage":"onespin:locations","nbt":"stored_location.$(ID).name","color":"green"}]