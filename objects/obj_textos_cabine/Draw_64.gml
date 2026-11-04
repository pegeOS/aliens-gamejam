draw_set_font(fnt_marketdeco);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);

if (obj_controlador.venceu) {
    var _win_x = display_get_gui_width() / 2;
    var _win_y = display_get_gui_height() / 2;

    draw_set_alpha(0.86);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

    draw_set_alpha(1);
    draw_set_colour(make_colour_rgb(245, 214, 137));
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_limelight);
    draw_text_transformed(_win_x, _win_y - 90, "CONGRATULATIONS!", 2, 2, 0);
    draw_set_font(fnt_marketdeco);
    draw_text_transformed(_win_x, _win_y - 35, "YOU'VE REACHED 1,000 POINTS!", 1.4, 1.4, 0);

    draw_set_colour(make_colour_rgb(74, 30, 35));
    draw_rectangle(_win_x - 190, _win_y + 110, _win_x + 190, _win_y + 175, false);
    draw_set_colour(c_white);
    draw_rectangle(_win_x - 190, _win_y + 110, _win_x + 190, _win_y + 175, true);
    draw_text_transformed(_win_x, _win_y + 142, "BACK TO MENU", 1.3, 1.3, 0);

    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}
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

//resultado no popup
if(obj_controlador.resultado_dia){
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    var _cx = _gui_w * 0.5;
    var _cy = _gui_h * 0.5;
    var _ouro = make_colour_rgb(210, 178, 113);
    var _painel = make_colour_rgb(38, 28, 29);
    var _titulo = obj_controlador.erros_dia == 0
        ? "ALL CLEAR"
        : "SHIFT'S OVER";
    var _resumo = obj_controlador.erros_dia == 0
        ? "No illegal guests were admitted."
        : "Some guests entered illegally.";
    var _proxima_etapa = obj_controlador.aliens_perdidos == 0
        ? "NEXT: DAY " + string(global.dia + 1)
        : "NEXT: DANCE HALL";

    draw_set_alpha(0.78);
    draw_set_colour(c_black)
    draw_rectangle(0, 0, _gui_w, _gui_h, false)

    draw_set_alpha(1)
    draw_set_colour(_painel)
    draw_rectangle(_cx - 410, _cy - 210, _cx + 410, _cy + 210, false)
    draw_set_colour(_ouro)
    draw_rectangle(_cx - 410, _cy - 210, _cx + 410, _cy + 210, true)
    draw_line(_cx - 370, _cy - 132, _cx + 370, _cy - 132)

    draw_set_colour(c_white)
    draw_set_font(fnt_limelight)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text_transformed(_cx, _cy - 164, "SHIFT REPORT", 0.8, 0.8, 0)
    draw_text_transformed(_cx, _cy - 52, _titulo, 1.15, 1.15, 0)

    draw_set_font(fnt_marketdeco)
    draw_text(_cx, _cy + 18, _resumo)
    draw_set_colour(_ouro)
    draw_text(_cx, _cy + 78, _proxima_etapa)

    draw_set_colour(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
}

//pontuacao feedback
if (obj_controlador.feedback_timer > 0) {

    draw_set_font(fnt_limelight);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    if (obj_controlador.feedback_pontos == "+50") {
        draw_set_colour(c_lime);
    } else {
        draw_set_colour(c_red);
    }

    draw_text_transformed(obj_pontuacao.x, obj_pontuacao.y - 70, obj_controlador.feedback_pontos, 0.5, 0.5, 0)
}



draw_set_font(fnt_marketdeco);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);