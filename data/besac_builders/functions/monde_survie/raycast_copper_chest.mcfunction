scoreboard players reset @a[scores={placed_copper_chest=1..}] placed_copper_chest
execute if block ~ ~ ~ ironchests:copper_chest{CustomName:'{"text":"Coffre de récupération"}'} positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Tags:["coffre_personnel","nouveau"]}
scoreboard players operation @e[type=area_effect_cloud,tag=coffre_personnel,limit=1,sort=arbitrary,distance=..1] besac-builders_id_joueur = @s besac-builders_id_joueur

#Empêcher la pose d'un deuxième coffre s'il en existe déjà un
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] at @s if score @s besac-builders_id_joueur = @e[type=area_effect_cloud,tag=coffre_personnel,tag=!nouveau,limit=1,sort=arbitrary] besac-builders_id_joueur align xyz run setblock ~ ~ ~ air destroy

#Empêcher la pose d'un coffre dans le Nether et l'End
execute if score @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,limit=1,sort=arbitrary] besac-builders_id_joueur = @s besac-builders_id_joueur run tellraw @s[predicate=besac_builders:dans_nether_ou_end] [{"text":"Tu ne peux pas poser de coffre de récupération\ndans le ","color":"yellow"},{"text":"Nether","color":"dark_red"},{"text":" ou l'","color":"yellow"},{"text":"End","color":"dark_blue"}]
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] at @s in the_nether run setblock ~ ~ ~ air destroy
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] at @s in the_end run setblock ~ ~ ~ air destroy


tag @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,limit=1,sort=arbitrary,distance=..1] remove nouveau
execute if entity @p[distance=..7] unless block ~ ~ ~ ironchests:copper_chest positioned ^ ^ ^0.05 run function besac_builders:monde_survie/raycast_copper_chest