


var _emcima = position_meeting(mouse_x, mouse_y, id)
var _clicou = mouse_check_button_pressed(mb_left)

if(_emcima){
	
	image_xscale = 1.4
	image_yscale = 0.5

	if(_clicou){
		
	    if (texto == "Sim") {
	        var _alvo = global.selecionado
	        _alvo.info.status = "expulso"
	        _alvo.info.vezes_expulso++
	        instance_destroy(_alvo)
	    }
	
	    // tanto Sim quanto Não limpa a seleção e some com os botões
	    global.selecionado = noone
	}
	
}
else{

	image_xscale = 1.2
	image_yscale = 0.4
}