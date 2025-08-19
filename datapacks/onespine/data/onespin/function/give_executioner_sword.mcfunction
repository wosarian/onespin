
# Tests if the executor is a player entity and returns the function if false.

execute if entity @s[type=!player] run \ 
        tellraw @s {text:'Requires a player entity to be the executor',color:'red'}
execute if entity @s[type=!player] run \
        return fail


# Tests if the executing player has the required minimum permission level and returns the function if false.

execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=0}] \ 
        run tellraw @s [{"text":"Requires minimum permission level to be 1 or more","color":"red"}]
execute \ 
    if entity @s[scores={grenadier-playerPermissionLevel=0}] \ 
        run return fail



# Gives the Executioner Sword to the executor.

give @s netherite_sword\
[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:2048,operation:"add_value",slot:"hand"},{id:"attack_speed",type:"attack_speed",amount:1024,operation:"add_value",slot:"hand"},{id:"sweeping_damage_ratio",type:"sweeping_damage_ratio",amount:0,operation:"add_value",slot:"hand"}],item_name="OS Executioner Sword",rarity="epic",unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["attribute_modifiers","unbreakable","enchantments"]},item_model="onespin:executioner_sword"] \
1
