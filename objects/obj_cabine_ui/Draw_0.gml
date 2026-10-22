

var c = obj_controlador
if (c.pessoa_atual == undefined)exit

//nao mostra a fala se a pessoa ta se mexendo
if(!instance_exists(obj_pessoa) || !obj_pessoa.moveu) exit

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var p = c.pessoa_atual
var _txt = ""

//reage se tiver reação nos dados
if(c.reacao_texto != ""){
    _txt = p.nome + ": " + c.reacao_texto
}
else{
    _txt = p.nome + ": " + c.falas_atuais[c.indice_fala]
}

var _quebra = 250
var _sep = 20
var _margem = 50
// tamanho do balão
var _w = string_width_ext(_txt, _sep, _quebra) + _margem * 2
var _h = string_height_ext(_txt, _sep, _quebra) + _margem * 2
// centro do balão
var _centrox = obj_pessoa.x + 280
var _centroy = obj_pessoa.y - 100

draw_sprite_stretched(spr_balaoFala, vel_animacao, _centrox - _w / 2, _centroy - _h / 2, _w, _h)
draw_text_ext_transformed(_centrox, _centroy, _txt, _sep, _quebra, 1.2, 1.2, 0)

draw_set_halign(-1)
draw_set_valign(-1)