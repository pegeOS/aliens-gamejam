
//botoes de expulsar
depth = 90
b1 = instance_create_layer(x + 291, y - 30, "botao", obj_botaoExpulsar, { texto: "Yes", cor: c_green })
b2 = instance_create_layer(x + 471, y - 30, "botao", obj_botaoExpulsar, { texto: "No", cor: c_red })
b1.depth = 80
b2.depth = 80