
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


# Tests if the executing player has the required minimum permission level and returns the function if false.

execute if entity @s[scores={OS-permissionLevel=..1}] run \ 
        tellraw @s [{"text":"Requires minimum permission level to be 2 or more","color":"red"}]
execute if entity @s[scores={OS-permissionLevel=..1}] run \ 
        return fail


# Place a block beneath the executor.
execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ stone

# Tell the executor that block has been placed beneath them.
tellraw @s ["Placed a block below ",{"selector":"@s"}]