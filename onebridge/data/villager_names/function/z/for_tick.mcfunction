
execute as @e[type=#villager_names:are_named,tag=!villagerNamed] at @s if predicate grenadier:location/in_dimension/any_minecraft run function villager_names:z/for_tick/give_random_villager_name