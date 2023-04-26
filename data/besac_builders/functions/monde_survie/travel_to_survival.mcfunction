tag @s add teleportation_en_cours
scoreboard players operation #id_destination besac-builders_id_joueur = @s besac-builders_id_joueur
clear @s[tag=!besac_admin]
effect clear @s[tag=!besac_admin]
scoreboard players set succes_commande donnees 0
execute store success score succes_commande donnees as @e[type=area_effect_cloud,tag=coffre_recuperation] if score @s besac-builders_id_joueur = #id_destination besac-builders_id_joueur run tp @a[tag=teleportation_en_cours] @s
execute if score succes_commande donnees matches 0..0 run tp @s @e[type=area_effect_cloud,tag=spawn_survival,limit=1]
scoreboard players reset #id_destination besac-builders_id_joueur
tag @s remove teleportation_en_cours