execute \
    if entity @s[type=!#grenadier:non_living,tag=!OS-4-silenced,name=silenced,predicate=grenadier:location/in_dimension/any_minecraft] \ 
        run data merge entity @s {Silent:1b} 
execute \
    if entity @s[type=!#grenadier:non_living,tag=!OS-4-silenced,name=silenced,predicate=grenadier:location/in_dimension/any_minecraft] \ 
        run tag @s add OS-4-silenced