
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..1}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 2 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..1}] \ 
        run return fail


# Give the executor OS Spectator Tool.
give @s minecraft:feather[item_name={"text":"OS Spectator Tool"},rarity=epic,item_model="onespin:spectator_tool",consumable={consume_seconds:2147483647,animation:bow,has_consume_particles:0b},custom_data={OS-spectatorTool:true},max_stack_size=1]

# Tell the executor that OS Spectator Tool has been given.
tellraw @s ["Gave 1 ",{"text":"[OS Spectator Tool]","color":"light_purple"}," to ",{"selector":"@s"}]