
if (!visible) exit;

var _controle = instance_find(obj_controla_balada, 0);

if (!instance_exists(_controle)) exit;
if (!_controle.resultado_balada) exit;

// Dimensões da tela
var _centro_x = display_get_gui_width() / 2;
var _centro_y = display_get_gui_height() / 2;

// Texto do botão
var _texto_botao = _controle.fim_de_jogo
    ? "VOLTAR AO MENU"
    : "CONTINUAR";

// Fundo escuro
draw_set_alpha(0.8);
draw_set_colour(c_black);
draw_rectangle(
    0, 0,
    display_get_gui_width(),
    display_get_gui_height(),
    false
);

// Título
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(
    _centro_x,
    150,
    _controle.fim_de_jogo ? "GAME OVER" : _controle.mensagem_resultado,
    2,
    2,
    0
);

// Informações
draw_text_transformed(
    _centro_x,
    230,
    "ALIENS RESTANTES: " + string(_controle.aliens_restantes),
    1.3, 1.3, 0
);

draw_text_transformed(
    _centro_x,
    280,
    "VIDAS PERDIDAS: " + string(_controle.vidas_perdidas),
    1.3, 1.3, 0
);

draw_text_transformed(
    _centro_x,
    330,
    "VIDAS: " + string(global.vidas),
    1.3, 1.3, 0
);

// Fundo do botão
draw_set_colour(make_colour_rgb(45, 30, 35));

draw_rectangle(
    _centro_x - 150,
    _centro_y + 150,
    _centro_x + 150,
    _centro_y + 210,
    false
);

// Borda
draw_set_colour(c_white);

draw_rectangle(
    _centro_x - 150,
    _centro_y + 150,
    _centro_x + 150,
    _centro_y + 210,
    true
);

// Texto do botão
draw_text_transformed(
    _centro_x,
    _centro_y + 180,
    _texto_botao,
    1.5, 1.5, 0
);

// Restaurar configurações
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
