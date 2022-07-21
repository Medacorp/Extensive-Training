scoreboard players add @s[scores={Dialog=266..}] Dialog 1
execute if entity @a[scores={Health=..0},tag=same_room] run scoreboard players set @s[scores={Dialog=265}] Dialog 266
scoreboard players add @s[scores={Dialog=..264}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..345}] as @a[tag=same_room] run function luigis_mansion:other/music/set/training
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.1.more"}]}
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyahmah_luigi_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=80}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.2"}]}
execute if entity @s[scores={Dialog=80}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.2.more"}]}
execute if entity @s[scores={Dialog=80}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=160}] unless data storage extensive_training:data current_state{endless_record:-1} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.3","with":[{"nbt":"current_state.endless_record","storage":"extensive_training:data"}]}]}
execute if entity @s[scores={Dialog=160}] unless data storage extensive_training:data current_state{endless_record:-1} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.3.more","with":[{"nbt":"current_state.endless_record","storage":"extensive_training:data"}]}]}
execute if entity @s[scores={Dialog=160}] unless data storage extensive_training:data current_state{endless_record:-1} as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=160}] unless data storage extensive_training:data current_state{endless_record:-1} run scoreboard players add @s Dialog 32
execute if entity @s[scores={Dialog=160}] if data storage extensive_training:data current_state{endless_record:-1} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.3.alt"}]}
execute if entity @s[scores={Dialog=160}] if data storage extensive_training:data current_state{endless_record:-1} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.3.alt.more"}]}
execute if entity @s[scores={Dialog=160}] if data storage extensive_training:data current_state{endless_record:-1} as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=264}] as @a[tag=same_room,gamemode=!spectator,tag=gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=264}] run function luigis_mansion:room/training_room/turn_lights/off
execute if entity @s[scores={Dialog=265}] unless entity @e[tag=ghost,scores={Room=-2},limit=1] run function extensive_training:room/training_room/spawn_wave/endless
execute if entity @s[scores={Dialog=265}] if entity @e[tag=speedy_spirit,scores={Room=-2},tag=dying,limit=1] run function extensive_training:room/gallery/clear_task/task_5
execute if entity @s[scores={Dialog=266..553}] as @a[tag=same_room,gamemode=!spectator,tag=!gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/gameboy_horror
execute if entity @s[scores={Dialog=266}] run function luigis_mansion:room/training_room/turn_lights/on
execute if entity @s[scores={Dialog=266}] run scoreboard players reset @a[tag=same_room] DeathTime
execute if entity @s[scores={Dialog=266}] run scoreboard players set @a[tag=same_room] Health 100
execute if entity @s[scores={Dialog=266}] run tag @a[tag=same_room] remove death_animation
execute if entity @s[scores={Dialog=266}] as @a[tag=same_room,tag=vacuuming_ghost] at @s run function luigis_mansion:entities/player/poltergust_breakage
execute if entity @s[scores={Dialog=266}] run tag @e[tag=ghost,scores={Room=-2},tag=!fleeing] add vanish
execute if entity @s[scores={Dialog=266}] if score #training_room Wave matches 1 run function extensive_training:room/gallery/clear_task/task_1
execute if entity @s[scores={Dialog=266}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.4"}]}
execute if entity @s[scores={Dialog=266}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.4.more"}]}
execute if entity @s[scores={Dialog=266}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=298}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.5"}]}
execute if entity @s[scores={Dialog=298}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.5.more"}]}
execute if entity @s[scores={Dialog=298}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oomahkah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=346..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/training_results
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 50.. run function extensive_training:room/gallery/clear_task/task_2
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 100.. run function extensive_training:room/gallery/clear_task/task_3
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 250.. run function extensive_training:room/gallery/clear_task/task_4
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 0 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.none"}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 0 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.none.more"}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 0 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 0 run scoreboard players add @s Dialog 48
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 1 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.one"}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 1 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.one.more"}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 1 run scoreboard players add @s Dialog 64
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 2..19 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.low","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 2..19 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.low.more","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 2..19 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 2..19 run scoreboard players add @s Dialog 64
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 20..49 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.medium","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 20..49 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.medium.more","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 20..49 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 20..49 run scoreboard players add @s Dialog 56
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 50..249 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.high","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 50..249 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.high.more","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 50..249 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 50..249 run scoreboard players add @s Dialog 40
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 250.. if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.holy_cow","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 250.. if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.6.holy_cow.more","with":[{"score":{"name":"#training_room","objective":"GhostCaught"}}]}]}
execute if entity @s[scores={Dialog=346}] if score #training_room GhostCaught matches 250.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=458}] store result score #temp GhostCaught run data get storage extensive_training:data current_state.endless_record
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught < #training_room GhostCaught run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.yes"}]}
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught < #training_room GhostCaught as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.longlaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught < #training_room GhostCaught store result storage extensive_training:data current_state.endless_record int 1 run scoreboard players get #training_room GhostCaught
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught < #training_room GhostCaught run scoreboard players add @s Dialog 48
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught >= #training_room GhostCaught if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.no","with":[{"nbt":"current_state.endless_record","storage":"extensive_training:data"}]}]}
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught >= #training_room GhostCaught if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.endless.no.more","with":[{"nbt":"current_state.endless_record","storage":"extensive_training:data"}]}]}
execute if entity @s[scores={Dialog=458}] if score #temp GhostCaught >= #training_room GhostCaught as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=458}] run scoreboard players reset #temp GhostCaught
execute if entity @s[scores={Dialog=554}] as @a[tag=same_room,gamemode=!spectator,tag=gameboy_horror,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=554}] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to