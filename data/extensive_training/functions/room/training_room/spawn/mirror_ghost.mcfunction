function luigis_mansion:spawn_entities/ghost/forced_spawn/mirror_ghost
tag @e[distance=..1,tag=hidden,limit=1] add no_appear
tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 2000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 2000