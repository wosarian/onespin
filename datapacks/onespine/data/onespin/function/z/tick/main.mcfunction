
# # #
# # # This function runs every tick.
# # #


# Stores all stored locations.

execute store result score @n[tag=OS-bob] OS-storedLocations run data get storage onespin:locations stored_location

# # Time won't continue if no player is found in one of these dimensions.

# Stop time if no players are in Survival nor SkyGames.

execute as @a at @s \ 
    unless predicate grenadier:location/in_dimension/overworld \ 
        unless predicate onespin:location/dimension/minigame_5 \ 
            unless predicate onespin:location/dimension/dimension_3 \
                unless predicate onespin:location/dimension/dimension_0 \ 
                    run gamerule doDaylightCycle false

# Continue time if any player is in Survival or SkyGames.

execute as @a[predicate=grenadier:location/in_dimension/overworld] run gamerule doDaylightCycle true

execute as @a[predicate=onespin:location/dimension/minigame_5] run gamerule doDaylightCycle true

execute as @a[predicate=onespin:location/dimension/dimension_3] run gamerule doDaylightCycle true

execute as @a[predicate=onespin:location/dimension/dimension_0] run gamerule doDaylightCycle true

# Cock

execute store result storage onespin:scores scores.copper_cock_length.num int 1 run scoreboard players add #OS-main OS-copperCockLoop 1
function onespin:z/extend_copper_cock with storage onespin:scores scores.copper_cock_length
execute if score #OS-main OS-copperCockMaxLength < #OS-main OS-copperCockLoop run scoreboard players set #OS-main OS-copperCockLoop 164

# Bob lock

execute as @e[tag=OS-bob] in onespin:dimension_1 run tp @s -144 -59 79



# # # Branches.

# # General.

# Runs entity function for every living entity.

execute as @e[type=!#grenadier:non_living] \ 
    run function onespin:z/for_tick/entity

# Runs OS-path function for every OS-path entity.

execute as @e[tag=OS-path] \ 
    run function onespin:z/path

# Runs onespin Defender Entity Module for every explosive entity.

execute as @e[type=#grenadier:explosive] \ 
    run function onespin:z/defender_entity

# # Survival.

# Runs pet_protection function for every tameable entity.

execute as @e[type=#grenadier:tameable,tag=!OS-4-petProtected] at @s if predicate grenadier:location/in_dimension/any_minecraft \ 
    if predicate grenadier:entity/has_owner \
        run function onespin:z/minigames/minigame_4/protect_pet_on_tame

# Runs silence tagged animal function for every animal.

execute as @e[type=!#grenadier:non_living] at @s if predicate grenadier:location/in_dimension/any_minecraft \ 
    run function onespin:z/minigames/minigame_4/silence_tagged_mob