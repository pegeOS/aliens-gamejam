if (!obj_controlador.venceu || !mouse_check_button_pressed(mb_left)) exit;

var _centro_x = display_get_gui_width() / 2;
var _centro_y = display_get_gui_height() / 2;
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

if (point_in_rectangle(_mouse_x, _mouse_y, _centro_x - 190, _centro_y + 110, _centro_x + 190, _centro_y + 175)) {
    room_goto(rm_menu);
}