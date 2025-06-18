
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


# Tests if the executing player has the OS-creativeAllowed tag and returns the function if false.

execute if entity @s[gamemode=!creative,tag=!OS-creativeAllowed] run \ 
        tellraw @s [{"text":"Requires creative mode","color":"red"}]
execute if entity @s[gamemode=!creative,tag=!OS-creativeAllowed] run \ 
        return fail


# Place a block beneath the executor.
execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ stone