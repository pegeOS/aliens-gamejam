
var _emcima = position_meeting(mouse_x, mouse_y, id);
var _clicou = mouse_check_button_pressed(mb_left);

if (_emcima) {
    image_xscale = 1.4;
    image_yscale = 0.5;

    if (_clicou) {

if (texto == "Sim") {

    var _alvo = global.selecionado;

    if (instance_exists(_alvo)) {

        // Registra a expulsão
        obj_controla_balada.chances++;

        // Verifica se é alien
        if (_alvo.info.alien == true) {
            global.pontuacao += 100;
        }
        else {
            global.pontuacao -= 50;
        }

        _alvo.info.status = "expulso";
        _alvo.info.vezes_expulso++;

        instance_destroy(_alvo);
    }
}
        // Limpa a seleção
        global.selecionado = noone;
    }
}
else {
    image_xscale = 1.2;
    image_yscale = 0.4;
}
if (keyboard_check_pressed(ord("P"))) {
    show_debug_message("Pontuação: " + string(global.pontuacao));
    show_debug_message("Expulsões: " + string(obj_controla_balada.chances));
}