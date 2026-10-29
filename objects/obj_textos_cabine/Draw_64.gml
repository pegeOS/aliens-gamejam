
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