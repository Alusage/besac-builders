# Tests pour savoir si le casque de chantier est porté ou non par le joueur puis forcer le gamemode correspondant
execute as @a[predicate=besac_builders:casque_off,tag=!besac_admin] run function besac_builders:monde_besancon/helmet_off
execute as @a[predicate=besac_builders:casque_on,tag=!besac_admin] run function besac_builders:monde_besancon/helmet_on