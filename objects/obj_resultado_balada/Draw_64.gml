
if (!visible) exit

var _controlador = instance_find(obj_controlador, 0)
if (instance_exists(_controlador) && _controlador.venceu) {
    var _win_x = display_get_gui_width() / 2
    var _win_y = display_get_gui_height() / 2

    draw_set_alpha(0.86)
    draw_set_colour(c_black)
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false)

    draw_set_alpha(1)
    draw_set_colour(make_colour_rgb(245, 214, 137))
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text_transformed(_win_x, _win_y - 90, "CONGRATULATIONS!", 2, 2, 0)
    draw_text_transformed(_win_x, _win_y - 35, "YOU'VE REACHED 1,000 POINTS!", 1.4, 1.4, 0)

    draw_set_colour(make_colour_rgb(74, 30, 35))
    draw_rectangle(_win_x - 190, _win_y + 110, _win_x + 190, _win_y + 175, false)
    draw_set_colour(c_white)
    draw_rectangle(_win_x - 190, _win_y + 110, _win_x + 190, _win_y + 175, true)
    draw_text_transformed(_win_x, _win_y + 142, "BACK TO MENU", 1.3, 1.3, 0)

    draw_set_colour(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_alpha(1)
    exit;
}

var _controle = instance_find(obj_controla_balada, 0)

if (!instance_exists(_controle)) exit
if (!_controle.resultado_balada) exit

var _centro_x = display_get_gui_width() / 2
var _centro_y = display_get_gui_height() / 2
var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()
var _ouro = make_colour_rgb(210, 178, 113)
var _painel = make_colour_rgb(38, 28, 29)

var _texto_botao = _controle.fim_de_jogo ? "BACK TO MENU" : "CONTINUE"
var _titulo = _controle.fim_de_jogo ? "GAME OVER" : "DANCE HALL REPORT"

draw_set_alpha(0.82)
draw_set_colour(c_black)
draw_rectangle(
    0, 0,
    _gui_w,
    _gui_h,
    false
);

draw_set_alpha(1)
draw_set_colour(_painel)
draw_rectangle(_centro_x - 390, _centro_y - 245, _centro_x + 390, _centro_y + 235, false)
draw_set_colour(_ouro)
draw_rectangle(_centro_x - 390, _centro_y - 245, _centro_x + 390, _centro_y + 235, true)
draw_line(_centro_x - 345, _centro_y - 170, _centro_x + 345, _centro_y - 170)

draw_set_colour(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(fnt_limelight)
draw_text_transformed(_centro_x, _centro_y - 205, _titulo, 0.95, 0.95, 0)
draw_text_transformed(_centro_x, _centro_y - 112, _controle.fim_de_jogo ? "GAME OVER" : _controle.mensagem_resultado, 1.35, 1.35, 0)

draw_set_font(fnt_marketdeco)
draw_text(_centro_x, _centro_y - 38, "ALIENS LEFT: " + string(_controle.aliens_restantes))
draw_text(_centro_x, _centro_y + 8, "LIVES LOST: " + string(_controle.vidas_perdidas))
draw_text(_centro_x, _centro_y + 54, "LIVES REMAINING: " + string(global.vidas))

draw_set_colour(make_colour_rgb(74, 30, 35))
draw_rectangle(_centro_x - 150, _centro_y + 150, _centro_x + 150, _centro_y + 210,  false)
draw_set_colour(_ouro)
draw_rectangle(_centro_x - 150,  _centro_y + 150, _centro_x + 150, _centro_y + 210,  true)
draw_set_colour(c_white)
draw_text_transformed(_centro_x, _centro_y + 180, _texto_botao, 1.1, 1.1, 0)

//restaurar configurações
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(1);
