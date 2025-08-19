
execute \
    if entity @s[x=-14999992,y=-65,z=-14999992,dx=29999984,dy=29999933,dz=29999984] \
        run \
            return fail

effect give @s minecraft:saturation 2 255 true
effect give @s minecraft:regeneration 2 255 true
effect give @s minecraft:resistance 2 255 true

$execute \
    as @s[tag=!OS-5-inGame] \
        run \
            function onespin:z/teleport with storage grenadier:players player.$(ID).spawnpoint

execute \
    if entity @s[x=-14999992,y=-100,z=-14999992,dx=29999984,dy=-29999899,dz=29999984] \
        run \
            kill @s