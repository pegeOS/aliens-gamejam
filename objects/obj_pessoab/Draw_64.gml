
var _id = id
var _mouse_enter = position_meeting(mouse_x, mouse_y, _id)

//mostra o nome da pessoa se passar o nome em cima
if(_mouse_enter && id != global.selecionado) {

		draw_text_transformed(_id.x- 25, _id.y - 60, info.nome, 1, 1,0)

}

if(id == global.selecionado){
    
    draw_sprite(spr_personagemClick, 0, x, y)
    draw_text_transformed(_id.x- 20, _id.y - 70, info.nome, 1.5, 1.5,0)
    
    
    draw_text_transformed(obj_retangulo.x - 100, obj_retangulo.y - 60,  "Expulsar " + string(info.nome) + "?", 2, 2, 0)

}