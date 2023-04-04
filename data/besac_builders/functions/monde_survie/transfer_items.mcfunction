scoreboard players reset @s transfer_timer
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run summon hopper_minecart ~4 ~3 ~ {NoGravity:true,Invulnerable:true,Tags:[arrivee_transfert]}
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run data modify entity @e[type=hopper_minecart,tag=arrivee_transfert,limit=1] Items set from block ~ ~ ~ Items
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run kill @e[type=hopper_minecart,tag=arrivee_transfert]
execute at @s align xyz run execute unless block ~ ~ ~ hopper{Items:[]} run data remove block ~ ~ ~ Items