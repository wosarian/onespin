
$execute in minecraft:overworld run teleport @s $(x) $(y) $(z)
data remove storage homes:temp temp
tellraw @s "You've been teleported to your home!"
scoreboard players reset @s home
scoreboard players reset @s h