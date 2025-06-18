
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


# Give the executor OS Spectator Tool.
give @s minecraft:stick[item_name='[{"text":"Litematica Tool"}]',rarity=epic,item_model="onespin:litematica_tool",custom_data={OS-litematicaTool:true},max_stack_size=1]