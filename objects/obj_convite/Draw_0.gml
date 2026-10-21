

//fundo escuro
if(escuro > 0.01){
    draw_set_alpha(escuro)
    draw_set_color(c_black)
    draw_rectangle(0, 0, room_width, room_height, false)
    draw_set_alpha(1)
    draw_set_color(c_white)
}

draw_self()