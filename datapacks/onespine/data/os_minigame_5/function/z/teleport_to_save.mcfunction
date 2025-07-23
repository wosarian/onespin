
# Tests if the executing player has saved their game before and returns the function if false.

$execute as @s[tag=OS-5-teleportingToSave] unless data storage onespin:minigame_5 player.$(ID).save run tellraw @s ["",{"text":"[SkyGames]: ","bold":true,"color":"gold"},{"text":"You do not have a saved location or you have lost it","color":"red"}]
$execute as @s[tag=OS-5-teleportingToSave] unless data storage onespin:minigame_5 player.$(ID).save run tag @s remove OS-5-teleportingToSave
$execute as @s[tag=OS-5-teleportingToSave] unless data storage onespin:minigame_5 player.$(ID).save run return fail

# AAAAA

$execute as @s[tag=OS-5-teleportingToSave] run function onespin:z/teleport with storage onespin:minigame_5 player.$(ID).save
execute as @s[tag=OS-5-teleportingToSave] in onespin:minigame_5 run spawnpoint @s -255 56 -262
execute as @s[tag=OS-5-teleportingToSave] run tag @s add OS-5-inGame
execute as @s[tag=OS-5-teleportingToSave] run gamemode adventure
execute as @s[tag=OS-5-teleportingToSave] run tag @s remove OS-5-teleportingToSave
