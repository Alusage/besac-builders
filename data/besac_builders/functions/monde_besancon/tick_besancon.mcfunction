# Tests pour savoir si le casque de chantier est porté ou non par le joueur puis forcer le gamemode correspondant
execute as @s[predicate=besac_builders:is_helmet_off,tag=!besac_admin] run function besac_builders:monde_besancon/helmet_off
execute as @s[predicate=besac_builders:is_helmet_on,tag=!besac_admin] run function besac_builders:monde_besancon/helmet_on