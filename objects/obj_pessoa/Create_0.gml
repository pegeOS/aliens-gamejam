
image_xscale = 5.5
image_yscale = image_xscale

sprite_index = pessoa.corpo

//posicao inicial
y = 352
x = -40

moveu = false

//criando RG
rg = instance_create_layer(608, 576, "id", obj_id, { dono: pessoa });


//movimentação ensaboada
entrada = function(){
    
    if(!moveu) x = lerp(x, room_width / 2, 0.03)
    
}

//ou vai pra esquerda ou pra direita dependendo do lado
saida = function(lado){
    
    if(moveu){
        if(lado == "esquerda") speed = 5
        if(lado == "direita") speed = -5 
        if(instance_exists(rg)) instance_destroy(rg)
    }
      
}