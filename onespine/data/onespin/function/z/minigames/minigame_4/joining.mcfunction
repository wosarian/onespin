$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] if items entity @s container.* * run tag @s add OS-4-itemDetectedOnJoin
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] if items entity @s weapon.* * run tag @s add OS-4-itemDetectedOnJoin
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] if items entity @s armor.* * run tag @s add OS-4-itemDetectedOnJoin


$execute if entity @s[tag=OS-4-itemDetectedOnJoin,scores={OS-playerID=$(ID)}] run tellraw @s [ "", { "text": "Please empty your inventory before joining Survival", "color": "red", "bold": false, "underlined": false } ]

$execute if entity @s[tag=OS-4-itemDetectedOnJoin,scores={OS-playerID=$(ID)}] in onespin:dimension_2 run tp @s -269 57 49

$execute if entity @s[tag=OS-4-itemDetectedOnJoin,scores={OS-playerID=$(ID)}] run tag @s remove OS-4-joining

$execute if entity @s[tag=OS-4-itemDetectedOnJoin,scores={OS-playerID=$(ID)}] run tag @s remove OS-4-itemDetectedOnJoin


$title @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] title [ "", { "text": "Loading data...", "color": "white", "bold": false, "underlined": false } ]

$effect give @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] instant_health 1 100

$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] run tag @s remove OS-4-lockedOut

$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] unless data storage onespin:minigame_4 player.$(ID) in minecraft:overworld run tp @s 140 69 772

$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] unless data storage onespin:minigame_4 player.$(ID) in minecraft:overworld run spawnpoint @s 140 69 772
# teleports to previous location
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] run function onespin:z/teleport with storage onespin:minigame_4 player.$(ID)
# gives survivallock
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] run tag @s add OS-4-locked
# survival
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] run gamemode survival @s
# restores XP
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)},predicate=onespin:location/in_dimension/any_minecraft] run function onespin:z/restore_xp with storage onespin:minigame_4 player.$(ID)
# restore spawnpoint
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)},predicate=onespin:location/in_dimension/any_minecraft] run function onespin:z/set_spawnpoint with storage onespin:minigame_4 player.$(ID).spawnpoint

# set to 0
# teleports to spawn if no data
$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)},predicate=onespin:location/in_dimension/any_minecraft] if score @s OS-playerHealth = @s OS-playerMaxHealth run function onespin:z/damage with storage onespin:minigame_4 player.$(ID)

$title @s[tag=OS-4-joining,scores={OS-playerID=$(ID)}] title [ "", { "text": "Welcome to Survival!", "color": "yellow", "bold": false, "underlined": false } ]

$execute as @s[tag=OS-4-joining,scores={OS-playerID=$(ID)},predicate=onespin:location/in_dimension/any_minecraft] if score @s OS-playerHealth = @s OS-playerMaxHealth run tag @s remove OS-4-joining