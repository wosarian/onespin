
# Counters

execute store result score #OS-holder OS-loadedMobs if entity @e[type=!#onespin:non_living,type=!player]
execute store result score #OS-holder OS-loadedZombies if entity @e[type=zombie]
execute store result score #OS-holder OS-loadedCreepers if entity @e[type=creeper]
execute store result score #OS-holder OS-loadedPigs if entity @e[type=pig]
execute store result score #OS-holder OS-loadedTNTs if entity @e[type=tnt]
execute store result score #OS-holder OS-loadedSquids if entity @e[type=squid]
execute store result score #OS-holder OS-onlinePlayers if entity @e[type=player]

# Players

execute as @a run function onespin:z/library/for_tick/player

# Randoms

execute store result score #OS-holder OS-random-6 run random value 1..6
execute store result score #OS-holder OS-random-2 run random value 1..2
execute store result score #OS-holder OS-random-5 run random value 1..5
execute store result score #OS-holder OS-random-20 run random value 1..20
execute store result score #OS-holder OS-random-100 run random value 1..100
execute store result score #OS-holder OS-random-1000 run random value 1..1000
execute store result score #OS-holder OS-random-3 run random value 1..3