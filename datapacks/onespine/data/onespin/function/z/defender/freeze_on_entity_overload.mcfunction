
execute if score #grenadier-main grenadier-loadedEntities matches 2000.. if score #OS-defender OSD-entityOverload-hasWarned matches 0 run tellraw @a[scores={grenadier-playerPermissionLevel=1..}] ["",{text:"[onespin Defender]:",color:"aqua",bold:true},{text:" The game has been frozen due to entity overload",color:red}]
execute if score #grenadier-main grenadier-loadedEntities matches 2000.. if score #OS-defender OSD-entityOverload-hasWarned matches 0 run scoreboard players set #OS-defender OSD-entityOverload-hasWarned 1
execute if score #grenadier-main grenadier-loadedEntities matches 2000.. run tick freeze
execute if score #grenadier-main grenadier-loadedEntities matches ..1999 run scoreboard players set #OS-defender OSD-entityOverload-hasWarned 0
