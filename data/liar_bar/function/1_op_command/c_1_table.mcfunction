#配置第一桌的坐标

tellraw @s [{text:"配置第一桌：",color:"yellow"},{text:"【设置坐标】",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/data modify storage jijifujiji_liat_bar c_table_position set value {x:number,y:number,z:number}"},hover_event:{action:"show_text",value:"请把里面的数字改成对应的XYZ整数坐标"}},{text:"【生成结构】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/c_2_table_generate with storage minecraft:jijifujiji_liat_bar c_table_position"},hover_event:{action:"show_text",value:"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{text:"【获取命令方块】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/c_3_table_command_block"},hover_event:{action:"show_text",value:"获得开始游戏和结束游戏的命令方块"}}]

function liar_bar:0_op

