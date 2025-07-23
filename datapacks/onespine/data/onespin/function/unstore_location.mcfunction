

# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run return fail




# Tests if the executing player has the required minimum permission level and returns the function if false.

execute if entity @s[scores={grenadier-playerPermissionLevel=0}] run tellraw @s [{"text":"Requires minimum permission level to be 1 or more","color":"red"}]
execute if entity @s[scores={grenadier-playerPermissionLevel=0}] run return fail




$execute unless data storage onespin:locations stored_location.$(ID) run tellraw @s ["",{"text":"A stored location with that ID couldn't be found","color":"red"}]
#
$execute unless data storage onespin:locations stored_location.$(ID) run return fail


# Remove the score required to check if player is operator.
$scoreboard objectives remove OS-storedLocation-$(ID)-operator

# Tell player that specified stored location has been unstored.
$tellraw @s ["Unstored a location named ",{"storage":"onespin:locations","nbt":"stored_location.$(ID).name","color":"green"}]

# The main command.
$data remove storage onespin:locations stored_location.$(ID)