# teleport back to pyramid, store sht
# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={leaveSurvival=1},predicate=!grenadier:location/in_dimension/any_minecraft] \ 
        run tellraw @s [{"text":"You can not use this command here","color":"red"}]
execute \ 
    if entity @s[scores={leaveSurvival=1},predicate=!grenadier:location/in_dimension/any_minecraft] \ 
        run scoreboard players set @s leaveSurvival 0


execute as @s[scores={leaveSurvival=1}] if items entity @s container.* * run tag @s add OS-4-itemDetectedOnLeave
execute as @s[scores={leaveSurvival=1}] if items entity @s weapon.* * run tag @s add OS-4-itemDetectedOnLeave
execute as @s[scores={leaveSurvival=1}] if items entity @s armor.* * run tag @s add OS-4-itemDetectedOnLeave

execute if entity @s[tag=OS-4-itemDetectedOnLeave] run tellraw @s [ "", { "text": "Please empty your inventory before leaving Survival", "color": "red", "bold": false, "underlined": false } ]

execute if entity @s[tag=OS-4-itemDetectedOnLeave] run scoreboard players set @s leaveSurvival 0

execute if entity @s[tag=OS-4-itemDetectedOnLeave] run tag @s remove OS-4-itemDetectedOnLeave

execute as @s[scores={leaveSurvival=1},predicate=grenadier:location/in_dimension/any_minecraft] run tag @s remove OS-4-locked
execute as @s[scores={leaveSurvival=1},predicate=grenadier:location/in_dimension/any_minecraft] run gamemode adventure @s
execute as @s[scores={leaveSurvival=1}] in onespin:dimension_2 run tp @s -269 57 49
execute as @s[scores={leaveSurvival=1}] at @s unless predicate grenadier:location/in_dimension/any_minecraft in onespin:dimension_2 run spawnpoint @s -269 57 49
execute as @s[scores={leaveSurvival=1}] run tag @s add OS-4-lockedOut
execute as @s[scores={leaveSurvival=1}] at @s unless predicate grenadier:location/in_dimension/any_minecraft run scoreboard players set @s leaveSurvival 0