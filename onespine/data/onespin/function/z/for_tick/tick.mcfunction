
# # #
# # # This function runs every tick.
# # #


# Stores all stored locations.

execute store result score @n[tag=OS-bob] OS-storedLocations run data get storage onespin:locations stored_location



# # Function inside of this loop gets ran for every one player according to their ID and goes to next player next tick until it reaches the last ID.

# Start.

execute if score @n[tag=OS-bob] OS-forID < #OS-lastID OSID store result storage onespin:players player.temp.ID int 1 run scoreboard players add @n[tag=OS-bob] OS-forID 1

# Main.

execute if score @n[tag=OS-bob] OS-forID <= #OS-lastID OSID as @a run function onespin:z/for_tick/player_by_id with storage onespin:players player.temp

# End if all IDs have been gone through.

execute if score @n[tag=OS-bob] OS-forID >= #OS-lastID OSID run scoreboard players set @n[tag=OS-bob] OS-forID 0



# # Time won't continue if no player is found in one of these dimensions.

# Stop time if no players are in Survival nor SkyGames.

execute as @a at @s \ 
    unless predicate onespin:location/in_dimension/overworld \ 
        unless predicate onespin:location/dimension/minigame_5 \ 
            unless predicate onespin:location/dimension/dimension_3 \
                unless predicate onespin:location/dimension/dimension_0 \ 
                    run gamerule doDaylightCycle false

# Continue time if any player is in Survival or SkyGames.

execute as @a[predicate=onespin:location/in_dimension/overworld] run gamerule doDaylightCycle true

execute as @a[predicate=onespin:location/dimension/minigame_5] run gamerule doDaylightCycle true

execute as @a[predicate=onespin:location/dimension/dimension_3] run gamerule doDaylightCycle true

execute as @a[predicate=onespin:location/dimension/dimension_0] run gamerule doDaylightCycle true


# Bob lock

execute as @e[tag=OS-bob] in onespin:dimension_1 run tp @s -144 -59 79



# # # Branches.

# # General.

# Runs entity function for every living entity.

execute as @e[type=!#onespin:non_living] \ 
    run function onespin:z/for_tick/entity

# Runs OS-path function for every OS-path entity.

execute as @e[tag=OS-path] \ 
    run function onespin:z/path

# Runs player function for every player.

execute as @a \ 
    run function onespin:z/for_tick/player

# Runs onespin Defender Entity Module for every explosive entity.

execute as @e[type=#onespin:explosive] \ 
    run function onespin:z/defender_entity

# # Survival.

# Runs pet_protection function for every tameable entity.

execute as @e[type=#onespin:tameable,tag=!OS-4-petProtected] at @s if predicate onespin:location/in_dimension/any_minecraft \ 
    if predicate onespin:entity/has_owner \
        run function onespin:z/minigames/minigame_4/protect_pet_on_tame

# Runs silence tagged animal function for every animal.

execute as @e[type=!#onespin:non_living] at @s if predicate onespin:location/in_dimension/any_minecraft \ 
    run function onespin:z/minigames/minigame_4/silence_tagged_mob

# Runs update armor stands function for every Armor Stand.

execute as @e[type=armor_stand,tag=!OS-4-armorStandUpdated] at @s if predicate onespin:location/in_dimension/any_minecraft \ 
    run function onespin:z/minigames/minigame_4/update_armor_stands