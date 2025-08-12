
# # Sidebar

# Summon sidebar markers unless they already exist.

execute unless entity @e[tag=OS-sidebarLine-1] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-1","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-2] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-2","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-3] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-3","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-4] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-4","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-5] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-5","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-6] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-6","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-7] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-7","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-8] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-8","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-9] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-9","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-10] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-10","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-11] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-11","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-12] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-12","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-13] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-13","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-14] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-14","OS-sidebarLine"]}
execute unless entity @e[tag=OS-sidebarLine-15] in onespin:dimension_1 run summon marker -145 -60 82 {Tags:["OS-sidebarLine-15","OS-sidebarLine"]}

# Set sidebar markers in right position on the sidebar.

scoreboard players set @e[tag=OS-sidebarLine-1] OS-sidebarLine -1
scoreboard players set @e[tag=OS-sidebarLine-2] OS-sidebarLine -2
scoreboard players set @e[tag=OS-sidebarLine-3] OS-sidebarLine -3
scoreboard players set @e[tag=OS-sidebarLine-4] OS-sidebarLine -4
scoreboard players set @e[tag=OS-sidebarLine-5] OS-sidebarLine -5
scoreboard players set @e[tag=OS-sidebarLine-6] OS-sidebarLine -6
scoreboard players set @e[tag=OS-sidebarLine-7] OS-sidebarLine -7
scoreboard players set @e[tag=OS-sidebarLine-8] OS-sidebarLine -8
scoreboard players set @e[tag=OS-sidebarLine-9] OS-sidebarLine -9
scoreboard players set @e[tag=OS-sidebarLine-10] OS-sidebarLine -10
scoreboard players set @e[tag=OS-sidebarLine-11] OS-sidebarLine -11
scoreboard players set @e[tag=OS-sidebarLine-12] OS-sidebarLine -12
scoreboard players set @e[tag=OS-sidebarLine-13] OS-sidebarLine -13
scoreboard players set @e[tag=OS-sidebarLine-14] OS-sidebarLine -14
scoreboard players set @e[tag=OS-sidebarLine-15] OS-sidebarLine -15

# Names all sidebar components and entities so it will make a proper info panel.

scoreboard objectives modify OS-sidebarLine displayname [ { "text": "onespin", "color": "aqua", "bold": true }]
scoreboard players display name @e[tag=OS-sidebarLine-1] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-2] OS-sidebarLine ["",{"text":"For warps:","color":"yellow","bold":false,"underlined":true}]
scoreboard players display name @e[tag=OS-sidebarLine-3] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-4] OS-sidebarLine ["",{"text":"/trigger","color":"aqua","bold":false}]
scoreboard players display name @e[tag=OS-sidebarLine-5] OS-sidebarLine ["",{"text":"warplist","color":"aqua","bold":false}]
scoreboard players display name @e[tag=OS-sidebarLine-6] OS-sidebarLine ["",{"text":"set <num>","color":"aqua","bold":false}]
scoreboard players display name @e[tag=OS-sidebarLine-7] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-8] OS-sidebarLine ["",{"text":"Minigames:","color":"yellow","bold":false,"underlined":true}]
scoreboard players display name @e[tag=OS-sidebarLine-9] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-10] OS-sidebarLine ["",{"text":"CS:M3","color":"gold","bold":false}]
scoreboard players display name @e[tag=OS-sidebarLine-11] OS-sidebarLine ["",{"text":"Survival","color":"red","bold":false}]
scoreboard players display name @e[tag=OS-sidebarLine-12] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-13] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-14] OS-sidebarLine ""
scoreboard players display name @e[tag=OS-sidebarLine-15] OS-sidebarLine ""