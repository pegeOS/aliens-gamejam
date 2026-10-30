
mensagem_resultado = "";
quant_aliens = 0;
chances = 0;
global.aliens = [];
fim_de_jogo = false;
sprites = [spr_personagem];

nomes = [
    "Peter", "Cynthia", "Artur", "Brad", "Frank",
    "Michael", "Bryan", "Phil", "Elvis", "Elliot",
    "Jimmy", "Silvester", "Ryder", "Ash", "Colin"
];

resultado_balada = false;
aliens_restantes = 0;
vidas_perdidas = 0;

show_debug_message("CONTROLADOR INICIADO");
show_debug_message("Resultado inicial: " + string(resultado_balada));

// CONTANDO OS ALIENS QUE ENTRARAM NA BALADA
for (var i = 0; i < array_length(global.balada); i++) {

    if (global.balada[i].alien == true) {
        quant_aliens++;
        array_push(global.aliens, global.balada[i]);
    }
}

show_debug_message("ALIENS QUE ENTRARAM: " + string(quant_aliens));

// CRIANDO NPCs PARA COMPLETAR A BALADA
while (array_length(global.balada) < 15) {

    nome_random = irandom(array_length(nomes) - 1);
    sprite_random = irandom(array_length(sprites) - 1);

    var _p = new Pessoa(
        nomes[nome_random],
        18,
        "090.788.356-50",
        sprites[sprite_random],
        sprites[sprite_random],
        sprites[sprite_random],
        true,
        false,
        "nunca",
        "normal"
    );

    array_push(global.balada, _p);
    array_delete(nomes, nome_random, 1);
}

instance_create_layer(0, 0, "Instances", obj_cria_pessoab);

// FINALIZAÇÃO DA BALADA
finalizar_balada = function() {

    show_debug_message("FINALIZAR BALADA FOI CHAMADA");
    show_debug_message("Aliens: " + string(quant_aliens));
    show_debug_message("Chances: " + string(chances));

    if (resultado_balada) return;

    // Só finaliza quando todas as tentativas forem utilizadas
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
        mensagem_resultado = "BALADA SOB CONTROLE!";
    }
    else {
        mensagem_resultado = string(aliens_restantes) + " ALIEN(S) ESCAPARAM!";
    }

    show_debug_message("ALIENS RESTANTES: " + string(aliens_restantes));
    show_debug_message("VIDAS PERDIDAS: " + string(vidas_perdidas));
    show_debug_message("VIDAS ATUAIS: " + string(global.vidas));
};
