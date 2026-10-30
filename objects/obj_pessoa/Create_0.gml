saindo = false;
image_xscale = 0.25
image_yscale = image_xscale

sprite_index = pessoa.corpo

//posicao inicial
y = 335
x = -40

moveu = false


rg = instance_create_layer(608, 576, "id", obj_id, { dono: pessoa })
convite = instance_create_layer(908, 576, "id", obj_convite, { dono: pessoa })



//movimentação ensaboada
entrada = function(){
    
    if(!moveu) x = lerp(x, room_width / 2, 0.03)
    
}

// Ou vai para esquerda ou direita dependendo do lado
saida = function(lado) {

    // Impede iniciar a saída mais de uma vez
    if (saindo) return;

    if (moveu) {
        saindo = true;

        if (lado == "esquerda") speed = 5;
        if (lado == "direita") speed = -5;

        if (instance_exists(rg)) instance_destroy(rg);
        if (instance_exists(convite)) instance_destroy(convite);
    }
}