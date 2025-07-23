


# onespin Defender Player Module should be branched through for/tick player.mcfunction.





# # Illegal Gamemode Watchdog

# Send a warning to all operators if a player who is not an operator is in any other gamemode than adventure.

execute if entity @s[type=player,tag=!OS-creativeAllowed,gamemode=!adventure] run title @s[scores={grenadier-playerPermissionLevel=3..}] times 0t 60t 0t
execute if entity @s[type=player,tag=!OS-creativeAllowed,gamemode=!adventure] run title @s[scores={grenadier-playerPermissionLevel=3..}] subtitle [{"selector":"@s[tag=!OS-creativeAllowed,gamemode=!adventure]","color":"red","bold":true},{"text":" was in another gamemode than adventure!","color":"red","bold":true}]
execute if entity @s[type=player,tag=!OS-creativeAllowed,gamemode=!adventure] run title @s[scores={grenadier-playerPermissionLevel=3..}] title {"text":"Alert!","color":"red","bold":true}
execute if entity @s[type=player,tag=!OS-creativeAllowed,gamemode=adventure] run title @s[scores={grenadier-playerPermissionLevel=3..}] reset
 




# # Illegal Item Watchdog

# Send a warning to all operators if a player who is not an operator has operator utility item(s).

execute if items entity @s[type=player,scores={grenadier-playerPermissionLevel=0}] container.* #grenadier:operator_utility run title @s[type=player,scores={grenadier-playerPermissionLevel=3..}] times 0t 60t 0t
execute if items entity @s[type=player,scores={grenadier-playerPermissionLevel=0}] container.* #grenadier:operator_utility run title @s[type=player,scores={grenadier-playerPermissionLevel=3..}] subtitle [{"selector":"@s[type=player,scores={grenadier-playerPermissionLevel=0}]","color":"red","bold":true},{"text":" has an operator item!","color":"red","bold":true}]
execute if items entity @s[type=player,scores={grenadier-playerPermissionLevel=0}] container.* #grenadier:operator_utility run title @s[type=player,scores={grenadier-playerPermissionLevel=3..}] title {"text":"Alert!","color":"red","bold":true}
execute unless items entity @s[type=player,scores={grenadier-playerPermissionLevel=0}] container.* #grenadier:operator_utility run title @s[type=player,scores={grenadier-playerPermissionLevel=3..}] reset

