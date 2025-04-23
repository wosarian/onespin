
# Every Tick | Update Counter Scores in #grenadier-main

execute store result score #grenadier-main grenadier-loadedMobs if entity @e[type=!#grenadier:non_living,type=!player]
execute store result score #grenadier-main grenadier-loadedZombies if entity @e[type=zombie]
execute store result score #grenadier-main grenadier-loadedCreepers if entity @e[type=creeper]
execute store result score #grenadier-main grenadier-loadedPigs if entity @e[type=pig]
execute store result score #grenadier-main grenadier-loadedTNTs if entity @e[type=tnt]
execute store result score #grenadier-main grenadier-loadedSquids if entity @e[type=squid]
execute store result score #grenadier-main grenadier-onlinePlayers if entity @e[type=player]

# Every Tick | Player Using Temp

execute as @a store result storage grenadier:temp temp.ID int 1 run scoreboard players get @s grenadier-playerID
execute as @a run function #grenadier:runs_every_tick_as_player with storage grenadier:temp temp

# Every Tick | Update Random Scores in #grenadier-main

execute store result score #grenadier-main grenadier-random-6 run random value 1..6
execute store result score #grenadier-main grenadier-random-2 run random value 1..2
execute store result score #grenadier-main grenadier-random-5 run random value 1..5
execute store result score #grenadier-main grenadier-random-20 run random value 1..20
execute store result score #grenadier-main grenadier-random-100 run random value 1..100
execute store result score #grenadier-main grenadier-random-1000 run random value 1..1000
execute store result score #grenadier-main grenadier-random-3 run random value 1..3