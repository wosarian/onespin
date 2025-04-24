
# Tests if the executing player his in SkyGames and returns the function if false.

execute as @s[predicate=!onespin:location/dimension/minigame_5,scores={skygamesSave=1..}] run tellraw @s ["",{"text":"You can not use this command here","color":"red"}]
execute as @s[predicate=!onespin:location/dimension/minigame_5,scores={skygamesSave=1..}] run scoreboard players set @s skygamesSave 0
execute as @s[predicate=!onespin:location/dimension/minigame_5,scores={skygamesSave=1..}] run return fail

# When player triggers skygamesSave, they save their location..

$execute as @s[scores={skygamesSave=1..}] store result storage onespin:minigame_5 player.$(ID).save.x int 1 run data get entity @s Pos[0]
$execute as @s[scores={skygamesSave=1..}] store result storage onespin:minigame_5 player.$(ID).save.y int 1 run data get entity @s Pos[1]
$execute as @s[scores={skygamesSave=1..}] store result storage onespin:minigame_5 player.$(ID).save.z int 1 run data get entity @s Pos[2]
$execute as @s[scores={skygamesSave=1..}] run data modify storage onespin:minigame_5 player.$(ID).save.dimension set from entity @s Dimension

# Tell the player that their location has been saved.

execute as @s[scores={skygamesSave=1..}] run tellraw @s ["",{"text":"[SkyGames] ","bold":true,"color":"gold"},"Your location has been saved"]

# Reset the skygamesSave score.

execute as @s[scores={skygamesSave=1..}] run scoreboard players set @s skygamesSave 0

