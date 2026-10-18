
var _c = obj_controlador

//botão meio apagado quando não pode decidir
image_alpha = _c.pode_decidir() ? 1 : 0.4

var _emcima = position_meeting(mouse_x, mouse_y, id)
var _clicou = mouse_check_button_pressed(mb_left)

if(_emcima && _clicou){
    if (texto == "Liberar")  _c.liberar()
    if (texto == "Expulsar") _c.expulsar()
}