
//botoes de expulsar
b1 = instance_create_layer(x - 100, y + 30, "botao", obj_botaoExpulsar, { texto: "Sim", cor: c_green })
b2 = instance_create_layer(x + 100, y + 30, "botao", obj_botaoExpulsar, { texto: "Não", cor: c_red })