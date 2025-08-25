
$execute \
    if score @s grenadier-raycast-timer matches 0 \
        run \
            tp @e[type=armor_stand,tag=grenadier-raycasting-marker-$(ID)] @s

scoreboard players add @s grenadier-raycast-timer 1

$execute \
    store result storage grenadier_raycasting:storage player.$(ID).timer int 1 \
        run \
            scoreboard players get @s grenadier-raycast-timer

$execute \
    store result storage grenadier_raycasting:storage player.$(ID).ID int 1 \
        run \
            data get storage grenadier:storage player.ID

$execute \
    as @s \
        run \
            function grenadier_raycasting:z/hoot with storage grenadier_raycasting:storage player.$(ID)

$execute \
    at @e[type=armor_stand,tag=grenadier-raycasting-marker-$(ID)] \
    unless block ~ ~1 ~ air \
        run \
            scoreboard players set @s grenadier-raycast-timer 0

execute \
    if score @s grenadier-raycast-timer matches 20.. \
        run \
            scoreboard players set @s grenadier-raycast-timer 0

$execute \
    at @e[type=armor_stand,tag=grenadier-raycasting-marker-$(ID)] \
    unless block ~ ~1 ~ air \
        run \
            scoreboard players set @s grenadier-raycast-timer-old 0

execute \
    if score @s grenadier-raycast-timer-old matches 20.. \
        run \
            scoreboard players set @s grenadier-raycast-timer-old 0