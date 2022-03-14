function luigis_mansion:spawn_entities/ghost/speedy_spirit
tag @e[distance=..1,tag=hidden,limit=1] add basher
tag @e[distance=..1,tag=hidden,limit=1] remove hidden
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 1000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 1000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 10
scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 20
scoreboard players set #training_room Selected 1