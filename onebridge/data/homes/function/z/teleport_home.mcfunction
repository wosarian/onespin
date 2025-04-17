
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if entity @s[nbt=!{Dimension:"minecraft:the_nether"}] if entity @s[nbt=!{Dimension:"minecraft:the_end"}] run tellraw @s {text:'You can only execute this command in Survival',color:red}
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if entity @s[nbt=!{Dimension:"minecraft:the_nether"}] if entity @s[nbt=!{Dimension:"minecraft:the_end"}] run scoreboard players reset @s home
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if entity @s[nbt=!{Dimension:"minecraft:the_nether"}] if entity @s[nbt=!{Dimension:"minecraft:the_end"}] run scoreboard players reset @s h
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if entity @s[nbt=!{Dimension:"minecraft:the_nether"}] if entity @s[nbt=!{Dimension:"minecraft:the_end"}] run return fail
execute store result storage homes:temp temp.x int 1 run scoreboard players get @s homes-x
execute store result storage homes:temp temp.y int 1 run scoreboard players get @s homes-y
execute store result storage homes:temp temp.z int 1 run scoreboard players get @s homes-z
effect give @s regeneration 1 255 true
effect give @s resistance 1 255 true
effect give @s saturation 1 255 true
function homes:z/teleport_home_second with storage homes:temp temp
