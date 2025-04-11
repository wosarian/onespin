

# Tests if the executor is a player entity and returns the function if false.

execute \ 
        if entity @s[type=!player] run \ 
                tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute \ 
        if entity @s[type=!player] run \ 
                scoreboard players reset @s warplist
execute \ 
        if entity @s[type=!player] run \ 
                return fail


# Tests if the executor executed the function through warplist and returns the function if false.

execute \ 
        if score @s warplist matches 0 run \ 
                tellraw @s ["",{"text":"Requires to be executed through /trigger warplist","color":"red"}]
execute \ 
        if score @s warplist matches 0 run \ 
                return fail



# Tests if there are stored locations to list and returns the function if false.

execute unless data storage onespin:locations stored_location run tellraw @s ["",{"text":"There are no stored locations to list","color":"red"}]
execute unless data storage onespin:locations stored_location run scoreboard players reset @s warplist
execute unless data storage onespin:locations stored_location run return fail




# Adds the tag when the command is executed to execute these commands only once.

execute if entity @s[tag=!OS-listStoredLocations-start] run scoreboard players set @s OS-forStoredLocation 0


# Prints the first line.

execute if entity @s[tag=!OS-listStoredLocations-start] run tellraw @s ["------------- ",{"text":"Stored Locations","color":"aqua","bold":true}," | ",{"text":"Page","color":"green"},": ",{"color":"white","score":{"objective":"warplist","name":"@s"}}," -------------"]

# Sets Dynamic-15 to 15 incase player is using this function the first time.

execute if entity @s[tag=!OS-listStoredLocations-start] run scoreboard players set @s OS-dynamic-15 15

# Multiplies dynamic-15 by the warplist you input. Dynamic-15 represents the ID of the last stored location on 1 page.

execute if entity @s[tag=!OS-listStoredLocations-start] store result score @s OS-dynamic-15 run scoreboard players operation @s OS-dynamic-15 *= @s warplist

# Adds dynamic-15 to forStoredLocation.

execute if entity @s[tag=!OS-listStoredLocations-start] store result score @s OS-forStoredLocation run scoreboard players operation @s OS-forStoredLocation += @s OS-dynamic-15

# Removes constant 15 from forStoredLocation so it doesn't start to print locations from location with ID 1, but the first location on the selected page.

execute if entity @s[tag=!OS-listStoredLocations-start] store result score @s OS-forStoredLocation run scoreboard players operation @s OS-forStoredLocation -= @n[tag=OS-bob] OS-const-15


execute if entity @s[tag=!OS-listStoredLocations-start] run tag @s add OS-listStoredLocations-start




# Adds to the forStoredLocation until it reaches either the amount of locations that are stored or Dynamic-15.

execute if score @n[tag=OS-bob] OS-storedLocations >= @s OS-forStoredLocation if score @s OS-forStoredLocation <= @s OS-dynamic-15 store result storage onespin:scores forStoredLocation.ID int 1 run scoreboard players add @s OS-forStoredLocation 1

execute if score @n[tag=OS-bob] OS-storedLocations >= @s OS-forStoredLocation if score @s OS-forStoredLocation <= @s OS-dynamic-15 run function onespin:print_stored_location with storage onespin:scores forStoredLocation




# Adds the tag when all stored locations have been printed to do the resetting and such.

execute if score @n[tag=OS-bob] OS-storedLocations <= @s OS-forStoredLocation run tag @s add OS-listStoredLocations-end

execute if score @s OS-dynamic-15 <= @s OS-forStoredLocation run tag @s add OS-listStoredLocations-end

execute if entity @s[tag=OS-listStoredLocations-end] run tellraw @s "-----------------------------------------------------"
execute if entity @s[tag=OS-listStoredLocations-end] run scoreboard players reset @s warplist
execute if entity @s[tag=OS-listStoredLocations-end] run scoreboard players set @s OS-forStoredLocation 0
execute if entity @s[tag=OS-listStoredLocations-end] run scoreboard players set @s OS-dynamic-15 15
execute if entity @s[tag=OS-listStoredLocations-end] run tag @s remove OS-listStoredLocations-start
execute if entity @s[tag=OS-listStoredLocations-end] run tag @s remove OS-listStoredLocations-end
