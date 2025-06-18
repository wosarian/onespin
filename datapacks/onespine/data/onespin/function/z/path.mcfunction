
# Tests if the executor is a player entity and returns the function if false.
execute if entity @s[type=player] run tellraw @s [{"text":"Requires a non-player entity to be the executor","color":"red"}]
execute if entity @s[type=player] run return fail

# These check if the executor is a player and/or does not have !OS-path tag.
execute if entity @s[tag=!OS-path] run tellraw @s ["",{"text":"This function can not be executed by an entity that does not have OS-path tag","color":"red"}]
execute if entity @s[tag=!OS-path] run return fail

# These add a OS-pathCheck tag if the executor is in these positions relative to these blocks.
execute at @s if block ~ ~-4 ~ red_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~ ~4 lime_wool run tag @s add OS-pathCheck
execute at @s if block ~4 ~ ~ lime_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~ ~-4 lime_wool run tag @s add OS-pathCheck
execute at @s if block ~-4 ~ ~ lime_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~-4 ~ light_blue_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~-4 ~ yellow_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~ ~4 magenta_wool run tag @s add OS-pathCheck
execute at @s if block ~4 ~ ~ magenta_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~ ~-4 magenta_wool run tag @s add OS-pathCheck
execute at @s if block ~-4 ~ ~ magenta_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~-4 ~ orange_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~-4 ~ purple_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~ ~4 purple_wool run tag @s add OS-pathCheck
execute at @s if block ~4 ~ ~ purple_wool run tag @s add OS-pathCheck
execute at @s if block ~ ~ ~-4 purple_wool run tag @s add OS-pathCheck
execute at @s if block ~-4 ~ ~ purple_wool run tag @s add OS-pathCheck

# This removes OS-pathCheck tag if the executor is not in these positions relative to specified blocks.
execute at @s unless block ~ ~-4 ~ red_wool unless block ~ ~ ~4 lime_wool unless block ~4 ~ ~ lime_wool unless block ~ ~ ~-4 lime_wool unless block ~-4 ~ ~ lime_wool unless block ~ ~-4 ~ light_blue_wool unless block ~ ~-4 ~ yellow_wool unless block ~ ~ ~4 magenta_wool unless block ~4 ~ ~ magenta_wool unless block ~ ~ ~-4 magenta_wool unless block ~-4 ~ ~ magenta_wool unless block ~ ~-4 ~ orange_wool unless block ~ ~-4 ~ purple_wool unless block ~ ~ ~4 purple_wool unless block ~4 ~ ~ purple_wool unless block ~ ~ ~-4 purple_wool unless block ~-4 ~ ~ purple_wool run tag @s remove OS-pathCheck

# These rotate the entity depending on specified blocks.
execute at @s if block ~ ~-4 ~ red_wool run rotate @s facing ~1 ~ ~
execute at @s if block ~ ~ ~4 lime_wool run rotate @s facing ~ ~2 ~
execute at @s if block ~4 ~ ~ lime_wool run rotate @s facing ~ ~2 ~
execute at @s if block ~ ~ ~-4 lime_wool run rotate @s facing ~ ~2 ~
execute at @s if block ~-4 ~ ~ lime_wool run rotate @s facing ~ ~2 ~
execute at @s if block ~ ~-4 ~ light_blue_wool run rotate @s facing ~ ~ ~1
execute at @s if block ~ ~-4 ~ yellow_wool run rotate @s facing ~-1 ~ ~
execute at @s if block ~ ~ ~4 magenta_wool run rotate @s facing ~ ~-1 ~
execute at @s if block ~4 ~ ~ magenta_wool run rotate @s facing ~ ~-1 ~
execute at @s if block ~ ~ ~-4 magenta_wool run rotate @s facing ~ ~-1 ~
execute at @s if block ~-4 ~ ~ magenta_wool run rotate @s facing ~ ~-1 ~
execute at @s if block ~ ~-4 ~ orange_wool run rotate @s facing ~ ~ ~-1

# These move the executor forward depending on their tags.
execute if entity @s[tag=OS-pathCheck,tag=OS-pathSpeedVerySlow] at @s run tp @s ^ ^ ^0.01
execute if entity @s[tag=OS-pathCheck,tag=OS-pathSpeedSlow] at @s run tp @s ^ ^ ^0.05
execute if entity @s[tag=OS-pathCheck,tag=OS-pathSpeedNormal] at @s run tp @s ^ ^ ^0.1
execute if entity @s[tag=OS-pathCheck,tag=OS-pathSpeedBitFaster] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=OS-pathCheck,tag=OS-pathSpeedFast] at @s run tp @s ^ ^ ^0.2
execute if entity @s[tag=OS-pathCheck,tag=OS-pathSpeedVeryFast] at @s run tp @s ^ ^ ^0.4
