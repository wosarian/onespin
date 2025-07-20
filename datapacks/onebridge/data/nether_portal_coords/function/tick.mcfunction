# Controls everything to do with datapack_name

schedule function nether_portal_coords:tick 1t

scoreboard players enable @a nc_inNether
scoreboard players enable @a nc_inOverworld

execute as @a[scores={nc_inOverworld=1..}] at @s if predicate grenadier:location/in_dimension/any_minecraft run function nether_portal_coords:overworld
execute as @a[scores={nc_inOverworld=1..}] at @s if predicate grenadier:location/in_dimension/any_minecraft_inverted run tellraw @s {text:'You can not execute this command here',color:red}
execute as @a[scores={nc_inOverworld=1..}] at @s if predicate grenadier:location/in_dimension/any_minecraft_inverted run scoreboard players set @s nc_inOverworld 0
execute as @a[scores={nc_inNether=1..}] at @s if predicate grenadier:location/in_dimension/any_minecraft run function nether_portal_coords:nether
execute as @a[scores={nc_inNether=1..}] at @s if predicate grenadier:location/in_dimension/any_minecraft_inverted run tellraw @s {text:'You can not execute this command here',color:red}
execute as @a[scores={nc_inNether=1..}] at @s if predicate grenadier:location/in_dimension/any_minecraft_inverted run scoreboard players set @s nc_inNether 0