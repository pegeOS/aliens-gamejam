

// clicou em qualquer lugar com o RG aberto fecha o rg
if(ampliar && mouse_check_button_pressed(mb_left) && !ignora_clique){
    ampliar = false
    sprite_index = sprite_pequeno
    image_xscale = 0
    image_yscale = 0
}
ignora_clique = false

//resetar atributos pra quando ta sem zoom
if(ampliar = false){
    image_xscale = lerp(image_xscale, 1, 0.1)
    image_yscale = image_xscale
    x = lerp(x, 550, 0.1)
    y = lerp(y, 650, 0.1)
    escuro = lerp(escuro, 0, 0.15)
    
    //lista de convidados
     with(obj_lista){
        
        y = lerp(y, 928 , 0.1)
    }
}
else{ //com zoom
    sprite_index = spr_IDgrande
    image_xscale = lerp(image_xscale, escala, 0.1)
    image_yscale = image_xscale
    x = lerp(x, display_get_gui_width()/2 - 280, 0.1)
    y = lerp(y, display_get_gui_height()/2 - 100 , 0.1)
    escuro = lerp(escuro, 0.6, 0.1)
    
    //lista de convidados
    with(obj_lista){
        image_angle = lerp(image_angle, 0, 0.1)
        y = lerp(y, 352, 0.1)
    }
}