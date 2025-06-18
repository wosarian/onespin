


# onespin Defender Entity Module should be branched through for/tick entity.mcfunction.




# # Anti-grief


# This reduces explosion power of all explosive entities outside Survival and Dimension 5.

execute if entity @s[type=#grenadier:explosive,tag=!OS-entityExplosiveDefused] at @s unless predicate grenadier:location/in_dimension/any_minecraft unless predicate onespin:location/dimension/dimension_5 run data merge entity @s {explosion_power:0}
execute if entity @s[type=#grenadier:explosive,tag=!OS-entityExplosiveDefused] at @s unless predicate grenadier:location/in_dimension/any_minecraft unless predicate onespin:location/dimension/dimension_5 run tag @s add OS-entityExplosiveDefused

# This kills all explosive entities (except creeper) outside Survival and Dimension 5.

execute if entity @s[type=#grenadier:explosive_no_creeper] at @s unless predicate grenadier:location/in_dimension/any_minecraft unless predicate onespin:location/dimension/dimension_5 run kill @s

