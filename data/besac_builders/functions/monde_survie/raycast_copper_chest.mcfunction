scoreboard players reset @a[scores={placed_copper_chest=1..}] placed_copper_chest

#Placer un coffre de récupération
execute if block ~ ~ ~ ironchests:copper_chest{CustomName:'{"text":"Coffre de récupération"}'} positioned ^ ^ ^ run execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:10,Tags:["coffre_personnel","nouveau"]}
scoreboard players operation @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] besac-builders_id_joueur = @s besac-builders_id_joueur
execute if entity @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] run tag @s add place_un_coffre

#Détécter la pose d'un coffre alors qu'un autre existe
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] at @s if score @s besac-builders_id_joueur = @e[type=area_effect_cloud,tag=coffre_personnel,tag=!nouveau,limit=1] besac-builders_id_joueur run execute as @p[tag=place_un_coffre] run tellraw @s [{"text":"Tu possèdes déjà un coffre de récupération en ","color":"yellow"},{"score":{"name":"@s","objective":"coordonnees_recuperateur_X"},"color":"red"},"/",{"score":{"name":"@s","objective":"coordonnees_recuperateur_Y"},"color":"green"},"/",{"score":{"name":"@s","objective":"coordonnees_recuperateur_Z"},"color":"blue"},{"text":"\nDétruis-le si tu veux en poser un autre.","color":"yellow"}]
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] at @s if score @s besac-builders_id_joueur = @e[type=area_effect_cloud,tag=coffre_personnel,tag=!nouveau,limit=1] besac-builders_id_joueur run tag @s add redondant

#Détécter la pose d'un coffre dans le Nether ou l'End
execute if score @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,limit=1,sort=arbitrary] besac-builders_id_joueur = @s besac-builders_id_joueur run tellraw @s[predicate=besac_builders:dans_nether_ou_end] [{"text":"Tu ne peux pas poser de coffre de récupération\ndans le ","color":"yellow"},{"text":"Nether","color":"dark_red"},{"text":" ou l'","color":"yellow"},{"text":"End","color":"dark_blue"}]
tag @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,predicate=besac_builders:dans_nether_ou_end] add redondant

#Récupérer les coordonnées du coffre et marquer le chunk comme important
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,tag=!redondant] at @s store result score @p[tag=place_un_coffre] coordonnees_recuperateur_X run data get entity @s Pos[0]
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,tag=!redondant] at @s store result score @p[tag=place_un_coffre] coordonnees_recuperateur_Y run data get entity @s Pos[1]
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,tag=!redondant] at @s store result score @p[tag=place_un_coffre] coordonnees_recuperateur_Z run data get entity @s Pos[2]
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau,tag=!redondant] at @s run forceload add ~ ~

#Terminer le raycast et clore la fonction, ou pas
tag @e[type=area_effect_cloud,tag=coffre_personnel,tag=nouveau] remove nouveau
tag @a[tag=place_un_coffre] remove place_un_coffre
execute if entity @p[distance=..10] unless block ~ ~ ~ ironchests:copper_chest positioned ^ ^ ^0.05 run function besac_builders:monde_survie/raycast_copper_chest

#Détruire les coffres détéctés comme redondants
execute as @e[type=area_effect_cloud,tag=coffre_personnel,tag=redondant] at @s run setblock ~ ~ ~ air destroy