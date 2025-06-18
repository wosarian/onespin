
scoreboard players enable @a setHome
scoreboard players enable @a home
scoreboard players enable @a h

execute as @a if score @s setHome matches 1.. run function homes:z/set_home
execute as @a if score @s home matches 1.. run function homes:z/teleport_home
execute as @a if score @s h matches 1.. run function homes:z/teleport_home

execute as @a if score @s homes-cooldown matches 1..2147483647 run scoreboard players remove @s homes-cooldown 1