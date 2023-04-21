tag @s add joueur_qui_exporte
scoreboard players operation #id_coffre_cible besac-builders_id_joueur = @s besac-builders_id_joueur
execute as @e[type=area_effect_cloud,tag=coffre_recuperation] if score @s besac-builders_id_joueur = #id_coffre_cible besac-builders_id_joueur run tag @s add coffre_cible
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] at @s run data modify block ~ ~ ~ Items set from entity @r[tag=joueur_qui_exporte] Inventory
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] at @s run item replace block ~ ~ ~ container.36 from entity @r[tag=joueur_qui_exporte] weapon.offhand
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] at @s run item replace block ~ ~ ~ container.37 from entity @r[tag=joueur_qui_exporte] armor.head
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] at @s run item replace block ~ ~ ~ container.38 from entity @r[tag=joueur_qui_exporte] armor.chest
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] at @s run item replace block ~ ~ ~ container.39 from entity @r[tag=joueur_qui_exporte] armor.legs
execute as @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] at @s run item replace block ~ ~ ~ container.40 from entity @r[tag=joueur_qui_exporte] armor.feet
tag @e[type=area_effect_cloud,tag=coffre_recuperation,tag=coffre_cible] remove coffre_cible
clear @s
tag @s remove joueur_qui_exporte