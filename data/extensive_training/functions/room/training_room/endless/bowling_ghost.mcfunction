execute if entity @e[type=minecraft:marker,tag=selected,tag=bowling_ghost,limit=1] run function extensive_training:room/training_room/spawn/bowling_ghost
execute unless entity @e[type=minecraft:marker,tag=selected,limit=1] if score #training_room Wave matches 15.. run summon minecraft:marker ~ ~ ~ {Tags:["select_ghost","bowling_ghost"]}