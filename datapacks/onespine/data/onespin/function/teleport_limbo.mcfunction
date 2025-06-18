#
# This function puts the player with specified name in limbo.
#

# Set limbo level.
$scoreboard players set @n[tag=OS-bob] OS-limboLevel $(level)


# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..2}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 3 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..2}] \ 
        run return fail


# Tell the executor if player with the specified name does not exist.
$execute unless entity @s[name=$(name)] run \
        tellraw @s [{"text":"Player with the specified name does not exist","color":"red"}]
$execute unless entity @s[name=$(name)] run \
        return fail

# Tell the executor if the specified level of limbo does not exist.
execute if score @n[tag=OS-bob] OS-limboLevel matches ..0 run \ 
        tellraw @s [{"text":"Specified level of limbo does not exist","color":"red"}]
#
execute if score @n[tag=OS-bob] OS-limboLevel matches 3.. run \ 
        tellraw @s [{"text":"Specified level of limbo does not exist","color":"red"}]

# Return if the specified level of limbo does not exist.
execute if score @n[tag=OS-bob] OS-limboLevel matches ..0 run \ 
        return fail
execute if score @n[tag=OS-bob] OS-limboLevel matches 3.. run \
        return fail

# Set spawnpoint of player with specified name to the first level of limbo.
$execute if score @n[tag=OS-bob] OS-limboLevel matches 1 run \
        spawnpoint $(name) ~ -75 ~

# Teleport player with specified name to the first level of limbo.
$execute if score @n[tag=OS-bob] OS-limboLevel matches 1 run \
        tp $(name) ~ -75 ~

# Set spawnpoint of player with specified name to the first level of limbo.
$execute if score @n[tag=OS-bob] OS-limboLevel matches 2 run \ 
        spawnpoint $(name) ~ -9999 ~

# Teleport player with specified name to the first level of limbo.
$execute if score @n[tag=OS-bob] OS-limboLevel matches 2 run \ 
        tp $(name) ~ -9999 ~