var _c = obj_controlador;
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