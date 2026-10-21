
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {

    if (texto == "Sim") {
        var _alvo = global.selecionado
        _alvo.info.status = "expulso"
        _alvo.info.vezes_expulso++
        instance_destroy(_alvo)
    }
	
    // tanto Sim quanto Não limpa a seleção e some com os botões
    global.selecionado = noone
    instance_destroy(obj_botaoExpulsar)
}