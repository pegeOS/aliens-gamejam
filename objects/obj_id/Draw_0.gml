
var _x = 25
var _y = 75

//fundo escuro
if(escuro > 0.01){
    draw_set_alpha(escuro)
    draw_set_color(c_black)
    draw_rectangle(0, 0, room_width, room_height, false)
    draw_set_alpha(1)
    draw_set_color(c_white)
}

draw_self()


if(ampliar && image_xscale > escala * 0.6){

    if (dono == undefined) exit
    var esq  = x - sprite_xoffset * image_xscale
    var topo = y - sprite_yoffset * image_yscale
    var larg = sprite_width
    var alt  = sprite_height

    //fotinha
    if (sprite_exists(dono.cabeca)) {
        draw_sprite_ext(dono.cabeca, 0, x - 220, y,0.15,0.15,0,c_white, 1)
    }
	
    draw_set_alpha(1)
    draw_set_color(c_black) 
    draw_set_valign(fa_top)

    draw_text_transformed(x - _x, y - _y, "Nome: " + dono.nome, 1, 1, 0)
    draw_text_transformed(x - _x, y, "Idade: " + string(dono.idade), 1, 1, 0)
    draw_text_transformed(x - _x, y + _y, "CPF: "   + dono.cpf, 1, 1, 0)
    
    draw_set_color(c_white)
}