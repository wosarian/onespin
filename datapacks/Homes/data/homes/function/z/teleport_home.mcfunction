
execute store result storage homes:temp temp.x int 1 run scoreboard players get @s homes-x
execute store result storage homes:temp temp.y int 1 run scoreboard players get @s homes-y
execute store result storage homes:temp temp.z int 1 run scoreboard players get @s homes-z
effect give @s regeneration 1 255 true
effect give @s resistance 1 255 true
effect give @s saturation 1 255 true
function homes:z/teleport_home_second with storage homes:temp temp
