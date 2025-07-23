

# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run tellraw @s [{"text":"Requires a player entity to be the executor","color":"red"}]
execute if entity @s[type=!player] run return fail




# Tests if the executing player is not in Survival or has the required minimum permission level and returns the function if false.

execute \ 
        at @s \ 
                unless predicate grenadier:location/in_dimension/any_minecraft \ 
                        if entity @s[scores={grenadier-playerPermissionLevel=0}] run \ 
                                tellraw @s [{"text":"Requires minimum permission level to be 1 or more","color":"red"}]
execute \ 
        at @s \ 
                unless predicate grenadier:location/in_dimension/any_minecraft \ 
                        if entity @s[scores={grenadier-playerPermissionLevel=0}] run \ 
                                return fail




scoreboard players add @s OS-nv-toggle 1

scoreboard players set @s[nbt=!{active_effects:[{id:"minecraft:night_vision"}]}] OS-nv-toggle 1
#
scoreboard players set @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] OS-nv-toggle 2

execute \ 
        if score @s OS-nv-toggle matches 1 run \ 
                effect give @s night_vision infinite 255 true
#
execute \ 
        if score @s OS-nv-toggle matches 2 run \ 
                effect clear @s night_vision

execute \ 
        if score @s OS-nv-toggle matches 1 run \ 
                tellraw @s ["Gave night vision to ",{"selector":"@s"}]
#
execute \ 
        if score @s OS-nv-toggle matches 2 run \ 
                tellraw @s ["Removed night vision from ",{"selector":"@s"}]

execute \ 
        if score @s OS-nv-toggle matches 2 run \ 
                scoreboard players reset @s OS-nv-toggle
