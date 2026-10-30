

var _c = instance_find(obj_controlador, 0);

if (!instance_exists(_c)) {
    exit;
}
// NOVOS BOTÕES DO ENCERRAMENTO
if (variable_instance_exists(id, "acao")) {

    var _mostrar = false;

    if (instance_exists(_c) && _c.resultado_dia) {

        if (acao == "continuar" && _c.aliens_perdidos == 0) {
            _mostrar = true;
        }

        if (acao == "balada" && _c.aliens_perdidos > 0) {
            _mostrar = true;
        }
    }

    visible = _mostrar;

    if (!_mostrar) {
        image_alpha = 0;
        exit;
    }

    image_alpha = 1;

    var _emcima = position_meeting(mouse_x, mouse_y, id);

    image_xscale = _emcima ? 2.2 : 2;
    image_yscale = _emcima ? 0.7 : 0.6;

    if (_emcima && mouse_check_button_pressed(mb_left)) {

        if (acao == "continuar") {
            _c.fim_do_dia();
        }
        else if (acao == "balada") {
            room_goto(rm_balada);
        }
    }
}

// BOTÕES ORIGINAIS DA CABINE
else {

    visible = true;

    var _pode = _c.pode_decidir();
    image_alpha = _pode ? 1 : 0.4;

    var _emcima = position_meeting(mouse_x, mouse_y, id);
    var _clicou = mouse_check_button_pressed(mb_left);

    if (_emcima && _pode) {

        image_xscale = 2.2;
        image_yscale = 0.7;

        if (_clicou) {
            if (texto == "Liberar") {
                _c.liberar();
            }
            else if (texto == "Expulsar") {
                _c.expulsar();
            }
        }
    }
    else {
        image_xscale = 2;
        image_yscale = 0.6;
    }
}
