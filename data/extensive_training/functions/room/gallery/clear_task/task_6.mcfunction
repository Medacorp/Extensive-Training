execute if data storage extensive_training:data current_state.trophy{task_6:0b} if score #3ds_remake Loaded matches 1.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.trophy.clear_task","color":"gold","with":[{"translate":"luigis_mansion:message.hover_event","color":"white","with":[{"translate":"extensive_training:message.gallery.trophy.play_fair_cheater","color":"gold","hoverEvent":{"action":"show_text","contents":[{"translate":"extensive_training:message.gallery.trophy.play_fair_cheater.description"}]}}]}]}]}
data modify storage extensive_training:data current_state.trophy.task_6 set value 1b
execute if data storage extensive_training:data current_state.trophy{done:0b,task_1:1b,task_2:1b,task_3:1b,task_4:1b,task_5:1b,task_6:1b,task_7:1b,task_8:1b,task_9:1b} run data modify storage extensive_training:data current_state.trophy.done set value 1b