#Réinitialisation de la durée de vie des area_effect_cloud servant de portails
execute as @e[type=area_effect_cloud,tag=portail] run data modify entity @s Age set value 0

#Réinitialisation de la durée de vie des area_effect_cloud servant de transfert d'objets
execute as @e[type=area_effect_cloud,tag=transfert_besancon] at @s if block ~ ~ ~ hopper run data modify entity @s Age set value 0

#Actualisation du contenu des transferts d'objets
scoreboard players add @e[type=area_effect_cloud,tag=transfert_besancon] transfer_timer 1
execute as @e[type=area_effect_cloud,tag=transfert_besancon,scores={transfer_timer=600..}] at @s run function besac_builders:monde_survie/transfer_items

#Attribution d'un identifiant unique à chaque nouveau joueur
execute as @a unless score @s besac-builders_id_joueur matches 0.. run function besac_builders:give_new_id

#Téléportation des joueurs qui s'approchent d'un portail
execute as @a[tag=!besac_admin] at @s if entity @e[type=area_effect_cloud,tag=vers_survie,distance=..0.6,limit=1,sort=nearest] run function besac_builders:monde_survie/travel_to_survival
execute as @a[tag=!besac_admin] at @s if entity @e[type=area_effect_cloud,tag=vers_creatif,distance=..0.6,limit=1,sort=nearest] run function besac_builders:monde_creatif/travel_to_creative
execute as @a[tag=!besac_admin] at @s if entity @e[type=area_effect_cloud,tag=vers_besancon,distance=..0.6,limit=1,sort=nearest] run function besac_builders:monde_besancon/travel_to_besancon

#Suite des commandes en fonction de la dimension dans laquelle sont les joueurs
execute as @a[predicate=besac_builders:dans_monde_survie] run function besac_builders:monde_survie/tick_survival
execute as @a[predicate=besac_builders:dans_monde_creatif] run function besac_builders:monde_creatif/tick_creative
execute as @a[predicate=besac_builders:dans_monde_besancon] run function besac_builders:monde_besancon/tick_besancon