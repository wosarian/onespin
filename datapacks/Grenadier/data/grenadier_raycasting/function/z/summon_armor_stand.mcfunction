
execute \
    if entity @s[tag=grenadier-raycasting-markerSummoned] \
        run \
            return fail

$execute \
    at @s \
        run \
            summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Tags:["grenadier-raycasting-marker-$(ID)"],Invisible:1b}

tag @s add grenadier-raycasting-markerSummoned