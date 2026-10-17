
var _emcima = place_meeting(mouse_x, mouse_y, obj_botao_cabine)
var _clicou = mouse_check_button_pressed(mb_left)

//se clicou e ta com o mouse em cima
if(_emcima && _clicou){
    
    if(texto == "Expulsar") obj_pessoa.saida("esquerda")
    if(texto == "Liberar") obj_pessoa.saida("direita")
    
}