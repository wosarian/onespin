

$execute as @s[tag=OS-5-saving] store result storage onespin:minigame_5 player.$(ID).save.x int 1 run data get entity @s Pos[0]
$execute as @s[tag=OS-5-saving] store result storage onespin:minigame_5 player.$(ID).save.y int 1 run data get entity @s Pos[1]
$execute as @s[tag=OS-5-saving] store result storage onespin:minigame_5 player.$(ID).save.z int 1 run data get entity @s Pos[2]
$execute as @s[tag=OS-5-saving] run data modify storage onespin:minigame_5 player.$(ID).save.dimension set from entity @s Dimension

# Tell the player that their location has been saved.

execute as @s[tag=OS-5-saving] run tellraw @s ["",{"text":"[SkyGames] ","bold":true,"color":"gold"},"Your location has been saved"]

# Reset the skygamesSave score.

execute as @s[tag=OS-5-saving] run tag @s remove OS-5-saving

