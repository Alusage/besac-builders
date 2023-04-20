tag @s add joueur_qui_exporte
scoreboard players operation #id_coffre_cible besac-builders_id_joueur = @s besac-builders_id_joueur
execute as @e[type=area_effect_cloud,tag=coffre_personnel] if score @s besac-builders_id_joueur = #id_coffre_cible besac-builders_id_joueur at @s align xyz run tp @a[tag=joueur_qui_exporte] @s
execute at @s run data modify block ~ ~ ~ Items set from entity @s Inventory
execute at @s run item replace block ~ ~ ~ container.36 from entity @s weapon.offhand
execute at @s run item replace block ~ ~ ~ container.37 from entity @s armor.head
execute at @s run item replace block ~ ~ ~ container.38 from entity @s armor.chest
execute at @s run item replace block ~ ~ ~ container.39 from entity @s armor.legs
execute at @s run item replace block ~ ~ ~ container.40 from entity @s armor.feet
clear @s
scoreboard players reset #id_coffre_cible
tag @s remove joueur_qui_exporte