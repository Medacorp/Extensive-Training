execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] as @e[tag=ghost,scores={Room=-2},tag=!dying] run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run scoreboard players reset @e[tag=ghost,scores={Room=-2},tag=!dying] HurtTime
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run scoreboard players set @e[tag=ghost,scores={Room=-2},tag=!dying,tag=!vanish] ActionTime 0
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run scoreboard players set @e[tag=ghost,scores={Room=-2},tag=!dying] VulnerableTime 0
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run scoreboard players set @e[tag=ghost,scores={Room=-2},tag=!dying] StunTime 0
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run tag @e[tag=ghost,scores={Room=-2},tag=!dying] add vanish
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run tag @e[tag=ghost,scores={Room=-2}] remove stunable
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] run tag @a[tag=same_room] remove grabbed
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] unless score #training_room Selected matches 1 run scoreboard players remove #training_room Wave 2
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] unless score #training_room Selected matches 1 if score #training_room Wave matches ..-1 run scoreboard players set #training_room Wave 0
execute if entity @e[tag=ghost,scores={Room=-2},tag=vanish,limit=1] unless score #training_room Selected matches 1 run scoreboard players set #training_room Selected 1
scoreboard players add @s[scores={Dialog=298..}] Dialog 1
execute if entity @a[scores={Health=..0},tag=same_room] run scoreboard players set @s[scores={Dialog=297}] Dialog 700
execute if score #training_room Wave matches 21 run scoreboard players set @s[scores={Dialog=297}] Dialog 298
scoreboard players add @s[scores={Dialog=..296}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..345}] as @a[tag=same_room] unless entity @s[scores={MusicGroup=0,MusicType=3}] run function luigis_mansion:other/music/set/training
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.1.more"}]}
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.ohyahmah_luigi_ck_ck neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.2"}]}
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.2.more"}]}
execute if entity @s[scores={Dialog=96}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=192}] store result score #temp Time run data get storage extensive_training:data current_state.speedrun_record
execute if entity @s[scores={Dialog=192}] unless score #temp Time matches -1 run function extensive_training:room/training_room/convert_time
execute if entity @s[scores={Dialog=192}] unless data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.3","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=192}] unless data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.3.more","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=192}] unless data storage extensive_training:data current_state{speedrun_record:-1} as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah_poheh_hap_poh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=192}] unless data storage extensive_training:data current_state{speedrun_record:-1} run scoreboard players add @s Dialog 32
execute if entity @s[scores={Dialog=192}] if data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.3.alt"}]}
execute if entity @s[scores={Dialog=192}] if data storage extensive_training:data current_state{speedrun_record:-1} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.3.alt.more"}]}
execute if entity @s[scores={Dialog=192}] if data storage extensive_training:data current_state{speedrun_record:-1} as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=192}] run scoreboard players reset #temp Time
execute if entity @s[scores={Dialog=192}] run scoreboard players reset #temp2 Time
execute if entity @s[scores={Dialog=192}] run scoreboard players reset #temp2 ActionTime
execute if entity @s[scores={Dialog=192}] run scoreboard players reset #temp2 Money
execute if entity @s[scores={Dialog=296}] run function luigis_mansion:room/training_room/turn_lights/off
execute if entity @s[scores={Dialog=297}] unless entity @e[tag=ghost,scores={Room=-2},limit=1] unless entity @a[x=795.0,y=77,z=-8.0,distance=..5,limit=1] run particle minecraft:crit 795.0 77 -8.0 2.5 2.5 2.5 0 10 force @a[tag=same_room]
execute if entity @s[scores={Dialog=297}] unless entity @e[tag=ghost,scores={Room=-2},limit=1] if entity @a[x=795.0,y=77,z=-8.0,distance=..5,limit=1] run function extensive_training:room/training_room/spawn_wave/speedrun
execute if entity @s[scores={Dialog=297}] if entity @e[tag=ghost,scores={Room=-2},limit=1] run scoreboard players add #training_room Time 1
execute if entity @s[scores={Dialog=298}] run function luigis_mansion:room/training_room/turn_lights/on
execute if entity @s[scores={Dialog=298}] run scoreboard players set @a[tag=same_room] Health 100
execute if entity @s[scores={Dialog=298}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.4"}]}
execute if entity @s[scores={Dialog=298}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.4.more"}]}
execute if entity @s[scores={Dialog=298}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.luigi_odoh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=354}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.5"}]}
execute if entity @s[scores={Dialog=354}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.5.more"}]}
execute if entity @s[scores={Dialog=354}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oui_oomahkah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=410..}] as @a[tag=same_room] unless entity @s[scores={MusicGroup=0,MusicType=24}] run function luigis_mansion:other/music/set/training_results
execute if entity @s[scores={Dialog=410}] run scoreboard players operation #temp Time = #training_room Time
execute if entity @s[scores={Dialog=410}] run function extensive_training:room/training_room/convert_time
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches ..18000 run function extensive_training:room/gallery/clear_task/task_7
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches ..12000 run function extensive_training:room/gallery/clear_task/task_8
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches ..6000 run function extensive_training:room/gallery/clear_task/task_9
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 18001.. if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.slow","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 18001.. if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.slow.more","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 18001.. as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.mm_oydohroh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 18001.. run scoreboard players add @s Dialog 80
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 12001..18000 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.medium","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 12001..18000 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.medium.more","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 12001..18000 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 12001..18000 run scoreboard players add @s Dialog 72
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 6001..12000 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.fast","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 6001..12000 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.fast.more","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 6001..12000 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches 6001..12000 run scoreboard players add @s Dialog 56
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches ..6000 if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.holy_cow","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches ..6000 if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.6.holy_cow.more","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=410}] if score #training_room Time matches ..6000 as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.shortlaugh_oomahkah_bohh_squirtbottlelaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=554}] store result score #temp Time run data get storage extensive_training:data current_state.speedrun_record
execute if entity @s[scores={Dialog=554}] run function extensive_training:room/training_room/convert_time
execute if entity @s[scores={Dialog=554}] if score #temp Time > #training_room Time run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.yes"}]}
execute if entity @s[scores={Dialog=554}] if score #temp Time > #training_room Time as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.longlaugh neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=554}] if score #temp Time > #training_room Time store result storage extensive_training:data current_state.speedrun_record int 1 run scoreboard players get #training_room Time
execute if entity @s[scores={Dialog=554}] if score #temp Time > #training_room Time run scoreboard players add @s Dialog 48
execute if entity @s[scores={Dialog=554}] if score #temp Time <= #training_room Time if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.no","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=554}] if score #temp Time <= #training_room Time if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.no.more","with":[{"score":{"name":"#temp2","objective":"Time"}},{"score":{"name":"#temp2","objective":"ActionTime"}},{"score":{"name":"#temp2","objective":"Money"}}]}]}
execute if entity @s[scores={Dialog=554}] if score #temp Time <= #training_room Time as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh_hey_hey_suu_dehkooroo_hah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=554}] run scoreboard players reset #temp Time
execute if entity @s[scores={Dialog=554}] run scoreboard players reset #temp2 Time
execute if entity @s[scores={Dialog=554}] run scoreboard players reset #temp2 ActionTime
execute if entity @s[scores={Dialog=554}] run scoreboard players reset #temp2 Money
execute if entity @s[scores={Dialog=650}] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if entity @s[scores={Dialog=700}] run function luigis_mansion:room/training_room/turn_lights/on
execute if entity @s[scores={Dialog=700}] run scoreboard players reset @a[tag=same_room] DeathTime
execute if entity @s[scores={Dialog=700}] run scoreboard players set @a[tag=same_room] Health 100
execute if entity @s[scores={Dialog=700}] run tag @a[tag=same_room] remove death_animation
execute if entity @s[scores={Dialog=700}] as @a[tag=same_room,tag=vacuuming_ghost] at @s run function luigis_mansion:entities/player/poltergust_breakage
execute if entity @s[scores={Dialog=700}] run tag @e[tag=ghost,scores={Room=-2},tag=!fleeing] add vanish
execute if entity @s[scores={Dialog=700}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.defeat.1"}]}
execute if entity @s[scores={Dialog=700}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.defeat.1.more"}]}
execute if entity @s[scores={Dialog=700}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.hmmm_nohjeebeedoggy_ohmoogah neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=748}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"extensive_training:dialog.speedrun.defeat.2"}]}
execute if entity @s[scores={Dialog=748}] as @a[tag=same_room] at @s run playsound luigis_mansion:entity.e_gadd.talk.oh_tohmah_poheh_jeemee_jeemee neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=828}] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to