draw_set_font(fnt_marketdeco);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_colour(make_colour_rgb(74,30,35))
//titulo cabine
draw_set_font(fnt_limelight)
draw_text_transformed(700, 70, "SECURITY", 1, 1, 0)

//dia
draw_set_font(fnt_limelightDia)
draw_text_transformed(110, 430, global.dia, 1,1, 0)

draw_set_font(fnt_marketdeco)
draw_set_colour(c_white)
draw_set_halign(-1)
draw_set_valign(-1)

// POP-UP DE RESULTADO
if (instance_exists(obj_controlador) && obj_controlador.resultado_dia) {

    // Fundo escurecido
    draw_set_alpha(0.7)
    draw_set_colour(c_black)
    draw_rectangle(0, 0, 1400, 800, false)

    draw_set_alpha(1)

    // Painel
    draw_set_colour(make_colour_rgb(74, 30, 35))
    draw_rectangle(400, 270, 1000, 530, false)

    // Texto
    draw_set_colour(c_white)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)

    draw_set_font(fnt_limelight)

    if (obj_controlador.erros_dia == 0) {
        draw_text(700, 350, "Congratulations!")
        draw_set_font(fnt_marketdeco)
        draw_text(700, 410, "You have indentified all aliens!!")
    }
    else {
        draw_text(700, 350, "EXPEDIENTE ENCERRADO")
        draw_set_font(fnt_marketdeco)
        draw_text(700, 410, "Algumas pessoas foram classificadas incorretamente.")
    }

    draw_set_colour(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
}

// INDICADOR DE PONTUAÇÃO
// INDICADOR DE PONTUAÇÃO
if (instance_exists(obj_controlador)) {
    if (obj_controlador.feedback_timer > 0) {

        draw_set_font(fnt_limelight);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);

        if (obj_controlador.feedback_pontos == "+50") {
            draw_set_colour(c_lime);
        } else {
            draw_set_colour(c_red);
        }

        draw_text(700, 160, obj_controlador.feedback_pontos);
    }
}

// RESTAURAR ESTADO DE DESENHO
draw_set_font(fnt_marketdeco);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);