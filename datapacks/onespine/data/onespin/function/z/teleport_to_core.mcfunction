
scoreboard players enable @s core

execute \ 
    if entity @s[scores={core=0}] \ 
        run return fail

# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..2}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 3 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=..2}] \ 
        run return fail

execute in onespin:dimension_7 run tp @s 1 -63 4
scoreboard players reset @s core