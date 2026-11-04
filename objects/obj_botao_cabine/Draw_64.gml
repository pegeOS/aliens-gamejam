if (!variable_instance_exists(id, "acao")) {
    exit;
}

if (!visible) {
    exit;
}

draw_sprite_ext(
    sprite_index,
    image_index,
    x,
    y,
    image_xscale,
    image_yscale,
    image_angle,
    image_blend,
    image_alpha
);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

var _escala_texto = texto == "GO TO THE DANCE HALL" ? 1.4 : 1.8;
draw_text_transformed(x, y, texto, _escala_texto, _escala_texto, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_alpha(1);