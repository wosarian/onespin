
$execute \
    at @s \
    if score @s grenadier-raycast-timer-old < @s grenadier-raycast-timer \
        run \
            tp @e[type=armor_stand,tag=grenadier-raycasting-marker-$(ID)] ^ ^ ^$(timer)

scoreboard players add @s grenadier-raycast-timer-old 1