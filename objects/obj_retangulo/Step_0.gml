
var _tem_selecao = global.selecionado != noone && instance_exists(global.selecionado)

if(_tem_selecao){
    y = lerp(y, 709, 0.08)

}
else{
    y = lerp(y, 864, 0.08)
}

b1.x = x + 291
b2.x = x + 471
b1.y = y - 30
b2.y = y - 30
b1.visible = _tem_selecao && !global.selecionado.decorativo
b2.visible = _tem_selecao
b2.texto = (_tem_selecao && global.selecionado.decorativo) ? "Close" : "No"