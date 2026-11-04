
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

    // Center the identity details and portrait within their document panels.
    if (sprite_exists(dono.cabeca)) {
        draw_sprite_ext(dono.cabeca, 0, x + 117, y - 18, 0.07, 0.07, 0, c_white, 1)
    }

    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_set_font(fnt_marketdeco)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)

    draw_text_transformed(x - 118, y - 50, "NAME: " + string_upper(dono.nome), 0.8, 0.8, 0)
    draw_text_transformed(x - 118, y - 5, "AGE: " + string(dono.idade), 0.8, 0.8, 0)
    draw_text_transformed(x - 118, y + 40, "SSN: " + dono.cpf, 0.8, 0.8, 0)

    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_color(c_white)
}