
execute if entity @s[type=#grenadier:explosive_no_creeper] at @s unless predicate grenadier:location/in_dimension/any_minecraft unless predicate onespin:location/dimension/dimension_5 run kill @s

execute if entity @s[type=#grenadier:explosive,tag=!OS-entityExplosiveDefused] at @s unless predicate grenadier:location/in_dimension/any_minecraft unless predicate onespin:location/dimension/dimension_5 run data merge entity @s {ExplosionRadius:0b}
execute if entity @s[type=#grenadier:explosive,tag=!OS-entityExplosiveDefused] at @s unless predicate grenadier:location/in_dimension/any_minecraft unless predicate onespin:location/dimension/dimension_5 run tag @s add OS-entityExplosiveDefused