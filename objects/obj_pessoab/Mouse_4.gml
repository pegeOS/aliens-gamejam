
global.selecionado = id

instance_destroy(obj_botaoExpulsar)

//botoes de expulsar
instance_create_layer(room_width / 2 - 150, room_height - 120, "botao", obj_botaoExpulsar, { texto: "Sim", cor: c_green })
instance_create_layer(room_width / 2 + 150, room_height - 120, "botao", obj_botaoExpulsar, { texto: "Não", cor: c_red })