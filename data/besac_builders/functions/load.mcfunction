scoreboard objectives add besac-builders_id_joueur dummy
execute unless score besac-builders_prochain_id besac-builders_id_joueur matches 0.. run scoreboard players set besac-builders_prochain_id besac-builders_id_joueur 1
scoreboard objectives add placed_hopper minecraft.used:minecraft.hopper
scoreboard objectives add transfer_timer dummy