
execute if entity @s[advancements={grenadier_right_click_item:use_item_with_custom_data=true}] run tag @s add grenadierRightClickItem-using
execute if entity @s[tag=grenadierRightClickItem-using] run scoreboard players add @s grenadierRightClickItem-usingDelay 1
execute if score @s grenadierRightClickItem-usingDelay matches 3.. run function grenadier_right_click_item:z/reset_after_use