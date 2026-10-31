
var _controle = instance_find(obj_controla_balada, 0)

if(!instance_exists(_controle)){
    visible = false;
    exit;
}

visible = _controle.resultado_balada

if (!visible) exit

if(mouse_check_button_pressed(mb_left)){

    var _centro_x = display_get_gui_width() / 2;
    var _centro_y = display_get_gui_height() / 2;
    var _mouse_x = device_mouse_x_to_gui(0);
    var _mouse_y = device_mouse_y_to_gui(0);

    //se clicou no botão
    if (point_in_rectangle( _mouse_x, _mouse_y,  _centro_x - 150, _centro_y + 150, _centro_x + 150, _centro_y + 210)){
		
        if(_controle.fim_de_jogo){
            room_goto(rm_menu)
        }

        // proximo dia
        else {
             obj_controlador.fim_do_dia()
        }
    }
}
