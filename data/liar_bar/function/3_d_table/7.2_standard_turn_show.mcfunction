#随机选一个玩家然后让他出牌
$tellraw @s ["",\
{text:"【质疑】",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_d_table_join set 99"},hover_event:{action:"show_text",value:"开上家的牌！"}},\
{text:"【",color:"yellow"},{selector:"@n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_d_table_card,tag=card_1]",color:"gold",bold:true},{text:"】",color:"yellow"},\
{text:"[$(select1)"},hover_event:{action:"show_text",value:"点击选择这张牌"}},\
{text:"【",color:"yellow"},{selector:"@n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_d_table_card,tag=card_2]",color:"gold",bold:true},{text:"】",color:"yellow"},\
{text:"[$(select2)"},hover_event:{action:"show_text",value:"点击选择这张牌"}},\
{text:"【",color:"yellow"},{selector:"@n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_d_table_card,tag=card_3]",color:"gold",bold:true},{text:"】",color:"yellow"},\
{text:"[$(select3)"},hover_event:{action:"show_text",value:"点击选择这张牌"}},\
{text:"【",color:"yellow"},{selector:"@n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_d_table_card,tag=card_4]",color:"gold",bold:true},{text:"】",color:"yellow"},\
{text:"[$(select4)"},hover_event:{action:"show_text",value:"点击选择这张牌"}},\
{text:"【",color:"yellow"},{selector:"@n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_d_table_card,tag=card_5]",color:"gold",bold:true},{text:"】",color:"yellow"},\
{text:"[$(select5)"},hover_event:{action:"show_text",value:"点击选择这张牌"}},\
{text:"【出牌】",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_d_table_join set 100"},hover_event:{action:"show_text",value:"把选中的牌打出去！"}}]
#聊天框传参显示