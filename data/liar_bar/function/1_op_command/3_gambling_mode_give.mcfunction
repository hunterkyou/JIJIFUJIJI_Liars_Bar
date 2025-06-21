#赌博模式
give @s minecraft:heart_of_the_sea[minecraft:custom_name={text:"\u00A7c坤坤币"},minecraft:lore=[{text:"用于兑换服务器特供物品的货币。"}]] 64
give @s minecraft:prize_pottery_sherd[unbreakable={},item_model="minecraft:jijifujiji_fantuan",minecraft:custom_name={text:"\u00A74饭团币"},minecraft:lore=[{text:"\u00A7f搏一搏，\u00A7e单车变摩托"}]] 64

give @a minecraft:prize_pottery_sherd[unbreakable={},item_model="minecraft:jijifujiji_fantuan",minecraft:custom_name={text:"\u00A74饭团币"},minecraft:lore=[{text:"\u00A7f搏一搏，\u00A7e单车变摩托"}]] 64


tellraw @s [{text:"每种货币各发一组！",color:"yellow"}]

function liar_bar:0_op