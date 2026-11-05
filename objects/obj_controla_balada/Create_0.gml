
randomize()

mensagem_resultado = ""
quant_aliens = 0
chances = 0
global.aliens = []
fim_de_jogo = false
sprites = [spr_julio, spr_henk, spr_masc1, spr_masc2, spr_masc3, spr_masc4, spr_fem_1, spr_fem2, spr_fem3, spr_angelo, spr_taveira]

nomes = ["Peter", "Cynthia", "Artur", "Brad", "Frank", "Michael", "Bryan", "Phil", "Elvis", "Elliot", "Jimmy", "Silvester", "Ryder", "Ash", "Colin"]

resultado_balada = false
aliens_restantes = 0
vidas_perdidas = 0
global.balada_decorativos = []



for(var i = 0; i < array_length(global.balada); i++){

    if (global.balada[i].alien == true){
        quant_aliens++
        array_push(global.aliens, global.balada[i])
    }
}


while (
    array_length(global.balada_decorativos) < 6
    && array_length(global.balada) + array_length(global.balada_decorativos) < 12
) {

    nome_random = irandom(array_length(nomes) - 1);
    sprite_random = irandom(array_length(sprites) - 1);
    var _numero_convidado = array_length(global.balada_decorativos) + 1;
    var _sprite_convidado = sprites[sprite_random];
	
	array_delete(sprites, sprite_random, 1)

    array_push(global.balada_decorativos, {
        nome: nomes[nome_random],
        idade: irandom_range(18, 50),
        cpf: "GUEST-" + string(_numero_convidado),
        corpo: _sprite_convidado,
        cabeca: _sprite_convidado,
        comportamento: "Just enjoying the music.",
        estilo_danca: choose("normal", "step", "odd", "still"),
        decorativo: true
    });
    array_delete(nomes, nome_random, 1);
}

instance_create_layer(0, 0, "Instances", obj_cria_pessoab);


finalizar_balada = function() {

    show_debug_message("FINALIZAR BALADA FOI CHAMADA");
    show_debug_message("Aliens: " + string(quant_aliens));
    show_debug_message("Chances: " + string(chances));

    if (resultado_balada) return;

    var _controlador = instance_find(obj_controlador, 0);
    if (instance_exists(_controlador) && _controlador.venceu) {
        resultado_balada = true;
        fim_de_jogo = false;
        return;
    }


    if (chances < quant_aliens) return;

    show_debug_message("PASSOU DA VERIFICACAO");

    aliens_restantes = 0;

    // Conta os aliens que não foram expulsos
    for (var i = 0; i < array_length(global.balada); i++) {

        var _p = global.balada[i];

        if (_p.alien == true && _p.status != "expulso") {
            aliens_restantes++;
        }
    }

    // Desconta uma vida por alien restante
    vidas_perdidas = aliens_restantes;

    global.vidas = max(0, global.vidas - vidas_perdidas);

    resultado_balada = true;
    fim_de_jogo = (global.vidas <= 0);

    // Mensagem do resultado
    if (aliens_restantes == 0) {
        mensagem_resultado = "PARTY UNDER CONTROL!";
    }
    else {
        mensagem_resultado = string(aliens_restantes) + "ALIENS ESCAPED!";
    }

    show_debug_message("ALIENS RESTANTES: " + string(aliens_restantes));
    show_debug_message("VIDAS PERDIDAS: " + string(vidas_perdidas));
    show_debug_message("VIDAS ATUAIS: " + string(global.vidas));
};
