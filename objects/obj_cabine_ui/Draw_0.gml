
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var c = obj_controlador

if(c.pessoa_atual == undefined){
    draw_text(50, 50, "Ninguém na fila")
    exit
}

// enquanto a pessoa ainda está andando, não mostra fala
if(!instance_exists(obj_pessoa) || !obj_pessoa.moveu) exit


var p = c.pessoa_atual
var _txt

//se tiver reação pra escolha do player, reagir
if(c.reacao_texto != ""){
    _txt = p.nome + ": " + c.reacao_texto
}
else{
    _txt = p.nome + ": " + c.falas_atuais[c.indice_fala]
}

draw_sprite_ext(spr_balaoFala, 0, obj_pessoa.x + 400, obj_pessoa.y - 100, (string_width(_txt) + 20) / 70, (string_height(_txt) + 20) / 70, 0, c_white, 1)
draw_text_ext(obj_pessoa.x + 400, obj_pessoa.y - 100, _txt, 20, 600)

draw_set_halign(-1)
draw_set_valign(-1)