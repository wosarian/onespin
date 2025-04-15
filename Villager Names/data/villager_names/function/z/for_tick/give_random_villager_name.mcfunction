
#execute store result score @s villagerNameRandom run random value 1..100

#execute if score @s villagerNameRandom matches 1 run data merge entity @s {CustomName:[{text:"Yulif",italic:false}]}
#execute if score @s villagerNameRandom matches 2 run data merge entity @s {CustomName:[{text:"",italic:false}]}