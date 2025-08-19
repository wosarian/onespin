
execute \
    if entity @s[tag=OS-7-inGame] \
        run \
            return fail

execute \
    at @s \
        unless predicate grenadier:location/in_dimension/any_minecraft \
            if score @s grenadier-playerPermissionLevel matches 0 \
                run \
                    return fail

# -46..45 S 46..135 W 135..179 N -179..-135 N -136..-45 E
# -46..0 S 1..45 S 46..90 W 91..135 W 136..179 N -179..-135 N -136..90 E 91..-45 E 

execute \
    if score @s grenadier-playerPitch matches -46..0 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"+",color:red},{text:"+",color:aqua},{text:" | ",color:"gray"},{text:"S",color:"aqua"}]

execute \
    if score @s grenadier-playerPitch matches 1..45 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"-",color:red},{text:"+",color:aqua},{text:" | ",color:"gray"},{text:"S",color:"aqua"}]

execute \
    if score @s grenadier-playerPitch matches 46..90 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"-",color:red},{text:"+",color:aqua},{text:" | ",color:"gray"},{text:"W",color:yellow}]

execute \
    if score @s grenadier-playerPitch matches 91..135 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"-",color:red},{text:"-",color:aqua},{text:" | ",color:"gray"},{text:"W",color:yellow}]

execute \
    if score @s grenadier-playerPitch matches 136..179 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"-",color:red},{text:"-",color:aqua},{text:" | ",color:"gray"},{text:"N",color:gold}]

execute \
    if score @s grenadier-playerPitch matches -179..-135 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"+",color:red},{text:"-",color:aqua},{text:" | ",color:"gray"},{text:"N",color:gold}]

execute \
    if score @s grenadier-playerPitch matches -136..-90 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"+",color:red},{text:"-",color:aqua},{text:" | ",color:"gray"},{text:"E",color:red}]

execute \
    if score @s grenadier-playerPitch matches -90..-45 \
        run \
            title @s actionbar \
                ["",{text:"X: ",color:red},{"score":{"objective":"grenadier-playerX","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Y: ",color:green},{"score":{"objective":"grenadier-playerY","name":"*"},color:white},{text:" | ",color:"gray"},{text:"Z: ",color:aqua},{"score":{"objective":"grenadier-playerZ","name":"*"},color:white},{text:" | ",color:"gray"},{text:"+",color:red},{text:"+",color:aqua},{text:" | ",color:"gray"},{text:"E",color:red}]