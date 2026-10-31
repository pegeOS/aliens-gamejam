
draw_self()

draw_set_font(fnt_marketdeco)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(x + sprite_width/2 - 200, y, "Chances: " +  string(obj_controla_balada.chances) + " / " + string(obj_controla_balada.quant_aliens), 2, 2, 0 )
draw_text_transformed(x, y, "Score: " + string(global.pontuacao), 3, 3 ,0)

draw_set_halign(fa_left)
draw_set_valign(fa_top)