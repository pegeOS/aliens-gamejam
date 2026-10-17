
image_xscale = 5.5
image_yscale = image_xscale

//posicao inicial
y = 352
x = -40

moveu = false

//movimentação ensaboada
entrada = function(){
    
    if(!moveu) x = lerp(x, display_get_gui_width() / 2, 0.03)
    
}

//ou vai pra esquerda ou pra direita dependendo do lado
saida = function(lado){
    
    if(moveu){
        if(lado == "esquerda") speed = 5
        if(lado == "direita") speed = -5
    }
      
}

