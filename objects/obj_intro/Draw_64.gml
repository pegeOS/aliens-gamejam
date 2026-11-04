var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();
var _ouro = make_colour_rgb(210, 178, 113);
var _papel = make_colour_rgb(38, 28, 29);

draw_set_alpha(1);
draw_set_colour(c_black);
draw_rectangle(0, 0, _gui_w, _gui_h, false);

if (agente_alpha > 0) {
    draw_sprite_ext(
        spr_intro_agent,
        0,
        320,
        302,
        0.72,
        0.72,
        0,
        c_white,
        agente_alpha
    );

    draw_set_alpha(agente_alpha);
    draw_set_colour(_ouro);
    draw_rectangle(72, 72, 576, 112, false);
    draw_set_colour(c_white);
    draw_set_font(fnt_marketdeco);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_text(92, 92, "SPECIAL AGENT // LEFTOFF");
}

if (indice_fala == 1 && foto_alpha > 0) {
    draw_set_alpha(foto_alpha);
    draw_set_colour(_papel);
    draw_rectangle(852, 92, 1288, 456, false);
    draw_set_colour(_ouro);
    draw_rectangle(852, 92, 1288, 456, true);

    draw_set_alpha(1);
    draw_sprite_ext(
        spr_intro_alien,
        0,
        1070,
        270,
        0.42,
        0.42,
        0,
        c_white,
        foto_alpha
    );

    draw_set_alpha(foto_alpha);
    draw_set_colour(_ouro);
    draw_set_font(fnt_marketdeco);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(1070, 432, "SUBJECT: UNKNOWN // EVIDENCE 01");
}

if (etapa >= 2 && etapa < 4) {
    draw_set_alpha(0.96);
    draw_set_colour(_papel);
    draw_rectangle(72, 496, _gui_w - 72, _gui_h - 36, false);
    draw_set_alpha(1);
    draw_set_colour(_ouro);
    draw_rectangle(72, 496, _gui_w - 72, _gui_h - 36, true);
    draw_line(96, 552, _gui_w - 96, 552);

    draw_set_font(fnt_limelight);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_colour(_ouro);
    draw_text_transformed(104, 524, "FBI // CLASSIFIED BRIEFING", 0.42, 0.42, 0);

    draw_set_font(fnt_marketdeco);
    draw_set_valign(fa_top);
    draw_set_colour(c_white);
    var _texto = string_copy(falas[indice_fala], 1, caracteres_visiveis);
    draw_text_ext(104, 570, _texto, -1, _gui_w - 208);

    draw_set_colour(_ouro);
    draw_set_valign(fa_middle);
    if (caracteres_visiveis >= string_length(falas[indice_fala])) {
        draw_text(_gui_w - 330, _gui_h - 62, "CLICK TO CONTINUE  >");
    }
    else {
        draw_text(_gui_w - 250, _gui_h - 62, "DECODING...");
    }
}

draw_set_alpha(1);
draw_set_colour(_ouro);
draw_rectangle(_gui_w - 172, 24, _gui_w - 28, 72, false);
draw_set_colour(c_white);
draw_set_font(fnt_marketdeco);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_gui_w - 100, 48, "SKIP");

if (alpha_escurecer > 0) {
    draw_set_alpha(alpha_escurecer);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, _gui_w, _gui_h, false);
}

draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
