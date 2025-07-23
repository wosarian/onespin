item replace entity @s weapon.mainhand with air

execute store result score @s drownedMainhandRandom run random value 1..10000

execute if score @s drownedMainhandRandom matches 1500..1585 run item replace entity @s weapon.mainhand with fishing_rod

execute if score @s drownedMainhandRandom matches 1..1499 run item replace entity @s weapon.mainhand with trident

execute as @s[nbt={equipment:{mainhand:{id:"minecraft:trident"}}}] run data merge entity @s {drop_chances:{mainhand:.25}}

tag @s add drownedMainhandUpdated