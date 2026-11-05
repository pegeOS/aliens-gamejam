
draw_self()

draw_set_font(fnt_marketdeco)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var _y = y + 20

draw_text_transformed(x + 450, _y, "Attempts: " + string(obj_controla_balada.chances) + " / " + string(obj_controla_balada.quant_aliens), 1.6, 1.6, 0)
draw_text_transformed(x, _y, "Score: " + string(global.pontuacao), 2, 2, 0)

draw_set_halign(fa_left)
draw_text_transformed(x - 630, _y, "Lives", 1.5, 1.5, 0)
for (var i = 0; i < global.vidas; i++) {
	draw_sprite_ext(spr_estrela, 0, x - 540 + i * 40, _y - 16, 0.5, 0.5, 0, c_white, 1)
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)