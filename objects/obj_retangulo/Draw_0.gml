if (global.selecionado == noone || !instance_exists(global.selecionado)) exit

var _info = global.selecionado.info
var _top = room_height * 0.71
var _bottom = room_height
var _decorativo = variable_struct_exists(_info, "decorativo") && _info.decorativo
var _sprite_id = variable_struct_exists(_info, "cabeca") ? _info.cabeca : -1
var _sprite_scale = 0.1

if (sprite_exists(_sprite_id)) {
	_sprite_scale = min(220 / sprite_get_width(_sprite_id), 180 / sprite_get_height(_sprite_id))
}

draw_set_alpha(0.94)
draw_set_colour(make_colour_rgb(38, 28, 29))
draw_rectangle(36, _top, room_width - 36, _bottom, false)
draw_set_alpha(1)

draw_set_colour(make_colour_rgb(210, 178, 113))
draw_rectangle(36, _top, room_width - 36, _bottom, true)
draw_line(290, _top + 18, 290, _bottom - 18)
draw_line(900, _top + 18, 900, _bottom - 18)

draw_set_font(fnt_limelight)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
if (sprite_exists(_sprite_id)) {
	draw_sprite_ext(
		_sprite_id,
		0,
		160,
		_top + (_bottom - _top) / 2,
		_sprite_scale,
		_sprite_scale,
		0,
		c_white,
		1
	)
}

draw_set_halign(fa_left)
draw_set_font(fnt_marketdeco)
draw_text(340, _top + 30, "SUBJECT")
draw_text(340, _top + 68, "Name: " + string(_info.nome))

if (variable_struct_exists(_info, "idade")) {
	draw_text(340, _top + 100, "Age: " + string(_info.idade))
}

if (variable_struct_exists(_info, "cpf")) {
	draw_text(500, _top + 100, "ID: " + string(_info.cpf))
}

if (variable_struct_exists(_info, "comportamento")) {
	draw_text_ext(340, _top + 132, string(_info.comportamento), 4, 530)
}

draw_set_halign(fa_center)
draw_set_font(fnt_limelight)
draw_text_transformed(1085, _top + 36, _decorativo ? "DANCE FLOOR GUEST" : "DECISION", 0.72, 0.72, 0)
draw_set_font(fnt_marketdeco)
draw_text(1085, _top + 76, _decorativo ? "Just enjoying the music." : "Evict this guest?")

draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)