
execute \
    if entity @s[tag=OS-4-joining] \
        run \
            return fail

execute \
    if entity @s[tag=OS-4-lockedOut] \
        run \
            return fail

execute \
    if entity @s[scores={leaveSurvival=1}] \
        run \
            return fail

execute \
    at @s \
    unless predicate grenadier:location/in_dimension/any_minecraft \
        run \
            return fail

$data modify storage onespin:minigame_4 player.$(ID).x set from entity @s Pos[0]
$data modify storage onespin:minigame_4 player.$(ID).y set from entity @s Pos[1]
$data modify storage onespin:minigame_4 player.$(ID).z set from entity @s Pos[2]
$data modify storage onespin:minigame_4 player.$(ID).dimension set from entity @s Dimension
$data modify storage onespin:minigame_4 player.$(ID).spawnpoint.x set from entity @s respawn.pos[0]
$data modify storage onespin:minigame_4 player.$(ID).spawnpoint.y set from entity @s respawn.pos[1]
$data modify storage onespin:minigame_4 player.$(ID).spawnpoint.z set from entity @s respawn.pos[2]
$data modify storage onespin:minigame_4 player.$(ID).spawnpoint.dimension set from entity @s respawn.dimension
$data modify storage onespin:minigame_4 player.$(ID).spawnpoint.dimension set value "minecraft:overworld"

$execute \
    store result storage onespin:minigame_4 player.$(ID).xp_levels int 1 \
        run \
            xp query @s levels

$execute \
    store result storage onespin:minigame_4 player.$(ID).xp_points int 1 \
        run \
            xp query @s points

$execute \
    store result storage onespin:minigame_4 player.$(ID).damage int 1 \
        run \
            scoreboard players get @s OS-playerDamage