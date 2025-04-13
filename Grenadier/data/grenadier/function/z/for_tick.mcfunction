
# Main

execute as @a unless score @s grenadier-playerID = @s grenadier-playerID store result score @s grenadier-playerID run scoreboard players add #grenadier-lastID grenadier-playerID 1

# Run grenadier:z/for_tick/player_by_id for every existing player ID

execute if score #grenadier-main grenadier-forPlayerID < #grenadier-lastID grenadier-playerID \ 
    store result storage grenadier:players player.temp.ID int 1 \ 
        run scoreboard players add #grenadier-main grenadier-forPlayerID 1

execute if score #grenadier-main grenadier-forPlayerID <= #grenadier-lastID grenadier-playerID \ 
    as @a \ 
        run function grenadier:z/for_tick/player_by_id with storage grenadier:players player.temp

execute if score #grenadier-main grenadier-forPlayerID >= #grenadier-lastID grenadier-playerID \ 
    run scoreboard players set #grenadier-main grenadier-forPlayerID 0

# Counters

execute store result score #grenadier-main grenadier-loadedMobs if entity @e[type=!#grenadier:non_living,type=!player]
execute store result score #grenadier-main grenadier-loadedZombies if entity @e[type=zombie]
execute store result score #grenadier-main grenadier-loadedCreepers if entity @e[type=creeper]
execute store result score #grenadier-main grenadier-loadedPigs if entity @e[type=pig]
execute store result score #grenadier-main grenadier-loadedTNTs if entity @e[type=tnt]
execute store result score #grenadier-main grenadier-loadedSquids if entity @e[type=squid]
execute store result score #grenadier-main grenadier-onlinePlayers if entity @e[type=player]

# Players

execute as @a run function grenadier:z/for_tick/player

# Randoms

execute store result score #grenadier-main grenadier-random-6 run random value 1..6
execute store result score #grenadier-main grenadier-random-2 run random value 1..2
execute store result score #grenadier-main grenadier-random-5 run random value 1..5
execute store result score #grenadier-main grenadier-random-20 run random value 1..20
execute store result score #grenadier-main grenadier-random-100 run random value 1..100
execute store result score #grenadier-main grenadier-random-1000 run random value 1..1000
execute store result score #grenadier-main grenadier-random-3 run random value 1..3