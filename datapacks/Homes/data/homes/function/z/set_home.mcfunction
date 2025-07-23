
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] run tellraw @s {text:'You can only execute this command in Overworld',color:red}
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] run scoreboard players reset @s setHome
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] run return fail
execute if score @s homes-cooldown matches 1..2147483647 run tellraw @s {text:'Setting home has a cooldown of 20 minutes, please wait!',color:red}
execute if score @s homes-cooldown matches 1..2147483647 run scoreboard players reset @s setHome
execute if score @s homes-cooldown matches 1..2147483647 run return fail
execute store result score @s homes-x run data get entity @s Pos[0]
execute store result score @s homes-y run data get entity @s Pos[1]
execute store result score @s homes-z run data get entity @s Pos[2]
tellraw @s [{text:"Your home has been set to "},{score:{name:"*",objective:"homes-x"}}," ",{score:{name:"*",objective:"homes-y"}}," ",{score:{name:"*",objective:"homes-z"}}]
scoreboard players set @s homes-cooldown 24000
scoreboard players reset @s setHome