$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \ 
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).x set from entity @s Pos[0]

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \ 
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).y set from entity @s Pos[1]

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \ 
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).z set from entity @s Pos[2]

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).dimension set from entity @s Dimension

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).spawnpoint.x set from entity @s respawn.pos[0]

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).spawnpoint.y set from entity @s respawn.pos[1]

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).spawnpoint.z set from entity @s respawn.pos[2]

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        run data modify storage onespin:minigame_4 player.$(ID).spawnpoint.dimension set from entity @s respawn.dimension

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/overworld \
        run data modify storage onespin:minigame_4 player.$(ID).spawnpoint.dimension set value "minecraft:overworld"

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        store result storage onespin:minigame_4 player.$(ID).xp_levels int 1 \
            run xp query @s levels

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        store result storage onespin:minigame_4 player.$(ID).xp_points int 1 \
            run xp query @s points

$execute as @s[tag=!OS-4-lockedOut,tag=!OS-4-joining,scores={leaveSurvival=0}] at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        store result storage onespin:minigame_4 player.$(ID).damage int 1 \
            run scoreboard players get @s OS-playerDamage