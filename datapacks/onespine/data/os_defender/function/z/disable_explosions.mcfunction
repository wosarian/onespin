
execute \
    at @s \
    if predicate grenadier:location/in_dimension/any_minecraft \
        run \
            return fail

execute \
    at @s \
    if predicate onespin:location/dimension/dimension_5 \
        run \
            return fail

execute \ 
    if entity @s[type=#grenadier:explosive_no_creeper] \
        run \
            kill @s

execute \
    if entity @s[type=#grenadier:explosive,tag=!OS-entityExplosiveDefused] \
        run \
            data merge entity @s {ExplosionRadius:0b}

execute \
    if entity @s[type=#grenadier:explosive,tag=!OS-entityExplosiveDefused] \
        run \
            tag @s add OS-entityExplosiveDefused