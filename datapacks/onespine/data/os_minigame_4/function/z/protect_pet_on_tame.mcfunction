
execute \
    if entity @s[type=!#grenadier:tameable] \
        run return fail

effect give @s regeneration infinite 1 true
effect give @s fire_resistance infinite 127 true
effect give @s water_breathing infinite 127 true
tag @s add OS-4-petProtected