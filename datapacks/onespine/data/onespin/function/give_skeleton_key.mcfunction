
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run \ 
        return fail


# Tests if the executing player is either wosarian or spoockybro and returns the function if false.

execute if entity @s[scores={grenadier-playerID=3..}] run \ 
        tellraw @s [{"text":"Only two specific players can obtain this item","color":"red"}]
execute if entity @s[scores={grenadier-playerID=3..}] run \ 
        return fail


# Give the executor OS Skeleton Key.
give @s minecraft:stick[item_name={"text":"OS Skeleton Key"},rarity=epic,item_model="onespin:skeleton_key",custom_data={OS-skeletonKey:true},max_stack_size=1]