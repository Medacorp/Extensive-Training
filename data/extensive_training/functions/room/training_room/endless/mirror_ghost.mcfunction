execute if entity @e[type=minecraft:marker,tag=selected,tag=mirror_ghost,limit=1] run function extensive_training:room/training_room/spawn/mirror_ghost
execute unless entity @e[type=minecraft:marker,tag=selected,limit=1] if score #training_room Wave matches 25.. run summon minecraft:marker ~ ~ ~ {Tags:["select_ghost","mirror_ghost"]}