
var _escala = 1.6

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

    if (sprite_exists(dono.cabeca)) {
        draw_sprite_ext(dono.cabeca, 0, x + 160, y - 60, 0.14, 0.14, 0, c_white, 1)
    }

    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_set_font(fnt_marketdeco)
    draw_set_valign(fa_middle)
	draw_set_halign(fa_left)

    draw_text_transformed(x - 280, y - 150, "NAME: " + string_upper(dono.nome),  _escala, _escala, 0)
    draw_text_transformed(x - 280, y - 90, "AGE: " + string(dono.idade), _escala, _escala, 0)
    draw_text_transformed(x - 280, y - 30, "SSN: " + dono.cpf, _escala, _escala, 0)

    draw_set_valign(fa_top)
    draw_set_color(c_white)
}