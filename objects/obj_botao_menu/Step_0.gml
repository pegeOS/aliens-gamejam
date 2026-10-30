
var _emcima = position_meeting(mouse_x, mouse_y, id);
var _clicou = mouse_check_button_pressed(mb_left);

if (_emcima) {
    image_xscale = 2.2;
    image_yscale = 0.7;

    if (_clicou) {

        // Reinicia os dados da partida
        global.dia = 1;
        global.vidas = 3;
        global.pontuacao = 0;

        global.fila = [];
        global.balada = [];
        global.aliens = [];
        global.indice_fila = 0;

        // Prepara o primeiro dia
        var _controle = instance_find(obj_controlador, 0);

        if (instance_exists(_controle)) {
            _controle.iniciar_dia();
            room_goto(rm_cabine);
        }
        else {
            show_debug_message("ERRO: controlador não encontrado!");
        }
    }
}
else {
    image_xscale = 2;
    image_yscale = 0.6;
}
