
execute store result score #grenadier-main grenadier-loadedMobs if entity @e[type=!#grenadier:non_living,type=!player]
execute store result score #grenadier-main grenadier-loadedZombies if entity @e[type=zombie]
execute store result score #grenadier-main grenadier-loadedCreepers if entity @e[type=creeper]
execute store result score #grenadier-main grenadier-loadedPigs if entity @e[type=pig]
execute store result score #grenadier-main grenadier-loadedTNTs if entity @e[type=tnt]
execute store result score #grenadier-main grenadier-loadedSquids if entity @e[type=squid]
execute store result score #grenadier-main grenadier-onlinePlayers if entity @e[type=player]
execute store result score #grenadier-main grenadier-loadedEntities if entity @e