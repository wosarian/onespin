
execute if entity @s[advancements={grenadier_right_click_item:use_item_with_custom_data=true}] run tag @s add grenadier-rightClickItem-using
execute if score @s grenadier-rightClickItem-usingDelay matches 1.. run function grenadier_right_click_item:z/reset_after_use
execute if entity @s[tag=grenadier-rightClickItem-using] run scoreboard players add @s grenadier-rightClickItem-usingDelay 1