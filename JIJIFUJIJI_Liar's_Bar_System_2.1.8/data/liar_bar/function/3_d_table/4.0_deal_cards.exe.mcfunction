#重新发牌回合系统



execute as @a[tag=d_table_1,team=liar_bar_d_table] at @s run tp @s ~ ~ ~ 90 0
execute as @a[tag=d_table_2,team=liar_bar_d_table] at @s run tp @s ~ ~ ~ 180 0
execute as @a[tag=d_table_3,team=liar_bar_d_table] at @s run tp @s ~ ~ ~ -90 0
execute as @a[tag=d_table_4,team=liar_bar_d_table] at @s run tp @s ~ ~ ~ 0 0
#调整玩家的面向
execute as @a[tag=d_table_1,team=liar_bar_d_table] run ride @s mount @n[type=minecraft:interaction,tag=d_table_1]
execute as @a[tag=d_table_2,team=liar_bar_d_table] run ride @s mount @n[type=minecraft:interaction,tag=d_table_2]
execute as @a[tag=d_table_3,team=liar_bar_d_table] run ride @s mount @n[type=minecraft:interaction,tag=d_table_3]
execute as @a[tag=d_table_4,team=liar_bar_d_table] run ride @s mount @n[type=minecraft:interaction,tag=d_table_4]
#将玩家传送到座位
scoreboard players set liar_bar_d_table_stage jijifujiji_liar_bar_variable 3
#到3阶段
scoreboard players set liar_bar_d_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set liar_bar_d_table_time jijifujiji_liar_bar_variable 40
#秒为0
scoreboard players set liar_bar_d_table_temp jijifujiji_liar_bar_variable 5
#临时变量=20
bossbar set jijifujiji_liar_bar_d_table_time value 5
bossbar set jijifujiji_liar_bar_d_table_time max 5
bossbar set jijifujiji_liar_bar_d_table_time name [{"text":"正在发牌...","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_d_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
#立刻更新进度条
$execute positioned $(x2) $(y2) $(z2) run summon minecraft:item_display ~ ~ ~ {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:oak_button"}, item_display: "gui", teleport_duration: 20, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0000001f,0.0000001f,0.0000001f], translation: [0.0f, 0.8f, 0.0f]},Tags:["liar_bar_d_table_card","card_main"]}
#$execute positioned $(x2) $(y2) $(z2) run summon minecraft:item_display ~ ~ ~ {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:air"}, item_display: "gui", teleport_duration: 20, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4999997f, 0.49999982f, 0.49999973f], translation: [0.0f, 0.8f, 0.0f]},Tags:["liar_bar_d_table_card","card_main"]}
#生成遮挡牌,也是后面旋转的显示主牌
#这是一个基础尺寸{left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.6 ~1.0625 ~-0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"A"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_a","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.6 ~1.0625 ~0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"A"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_a","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.6 ~1.0625 ~-0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"A"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_a","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.6 ~1.0625 ~0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"A"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_a","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0 ~1.0625 ~-0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"A"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_a","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0 ~1.0625 ~0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"A"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_a","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0 ~1.0625 ~-0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"Q"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_q","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0 ~1.0625 ~0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"Q"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_q","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.6 ~1.0625 ~-0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"Q"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_q","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.6 ~1.0625 ~0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"Q"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_q","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.6 ~1.0625 ~-0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"Q"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_q","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.6 ~1.0625 ~0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"Q"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_q","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.3 ~1.1 ~-0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"K"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_k","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.3 ~1.1 ~0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"K"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_k","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.3 ~1.1 ~-0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"K"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_k","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.3 ~1.1 ~0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"K"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_k","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.3 ~1.1 ~-0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"K"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_k","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.3 ~1.1 ~0.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"K"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_k","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.3 ~1.1 ~-0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999453, "minecraft:custom_name": '{"color":"yellow","text":"J"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_kun","card_main_gaming","card_gaming"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.3 ~1.1 ~0.6 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999453, "minecraft:custom_name": '{"color":"yellow","text":"J"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui", transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","card_up","card_kun","card_main_gaming","card_gaming"]}
#生成所有牌
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~1.2 ~1.0625 ~-0.8 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999456, "minecraft:custom_name": '{"color":"yellow","text":"gun"}'}, count: 1, id: "minecraft:carrot_on_a_stick"}, item_display: "head", transformation: {left_rotation: [-0.5f, 0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999976f, 0.99999976f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","gun_up","card_gun1"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~0.8 ~1.0625 ~1.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999456, "minecraft:custom_name": '{"color":"yellow","text":"gun"}'}, count: 1, id: "minecraft:carrot_on_a_stick"}, item_display: "head", transformation: {left_rotation: [-0.5f, 0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999976f, 0.99999976f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","gun_up","card_gun2"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-1.2 ~1.0625 ~0.8 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999456, "minecraft:custom_name": '{"color":"yellow","text":"gun"}'}, count: 1, id: "minecraft:carrot_on_a_stick"}, item_display: "head", transformation: {left_rotation: [-0.5f, 0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999976f, 0.99999976f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","gun_up","card_gun3"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~-0.8 ~1.0625 ~-1.2 {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999456, "minecraft:custom_name": '{"color":"yellow","text":"gun"}'}, count: 1, id: "minecraft:carrot_on_a_stick"}, item_display: "head", transformation: {left_rotation: [-0.5f, 0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.99999976f, 0.99999976f], translation: [0.0f, 0.5f, 0.0f]},Tags:["liar_bar_d_table_card","gun_up","card_gun4"]}
#生成枪
schedule function liar_bar:3_d_table/4.2_deal_cards_up 5t replace
#5t后下降
schedule function liar_bar:3_d_table/4.3_deal_cards_center 25t replace
#25t后到中心
execute store result score liar_bar_d_table_main jijifujiji_liar_bar_variable run random value 1..3
#随机一个主牌