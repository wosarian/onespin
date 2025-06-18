
# Sets a permission level to wosarian.

execute \ 
    unless score @s grenadier-playerPermissionLevel = @s grenadier-playerPermissionLevel \ 
        if score @s grenadier-playerID matches 1 \ 
            run scoreboard players set @s grenadier-playerPermissionLevel 4

# Sets a permission level to spoockybro.

execute \ 
    unless score @s grenadier-playerPermissionLevel = @s grenadier-playerPermissionLevel \ 
        if score @s grenadier-playerID matches 2 \ 
            run scoreboard players set @s grenadier-playerPermissionLevel 3

# Sets a permission level to teratoph.

execute \ 
    unless score @s grenadier-playerPermissionLevel = @s grenadier-playerPermissionLevel \ 
        if score @s grenadier-playerID matches 3 \ 
            run scoreboard players set @s grenadier-playerPermissionLevel 3

# Sets a permission level to _Dere_.

execute \ 
    unless score @s grenadier-playerPermissionLevel = @s grenadier-playerPermissionLevel \ 
        if score @s grenadier-playerID matches 4 \ 
            run scoreboard players set @s grenadier-playerPermissionLevel 3

# Sets a permission level to _Shouly.

execute \ 
    unless score @s grenadier-playerPermissionLevel = @s grenadier-playerPermissionLevel \ 
        if score @s grenadier-playerID matches 5 \ 
            run scoreboard players set @s grenadier-playerPermissionLevel 3


# Sets a permission level to spoockybro (Bedrock).

execute \ 
    unless score @s grenadier-playerPermissionLevel = @s grenadier-playerPermissionLevel \ 
        if score @s grenadier-playerID matches 6 \ 
            run scoreboard players set @s grenadier-playerPermissionLevel 3