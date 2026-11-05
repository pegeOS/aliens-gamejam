
// Solicita landscape ao iniciar no Android; a opção do target também gera
// o manifesto sem orientações portrait.
if (os_type == os_android) {
    os_set_orientation_lock(true, false);
}

cadastra_pessoas()

if (!variable_global_exists("dia")) {
    global.dia = 1;
}

if (!variable_global_exists("vidas")) {
    global.vidas = 3;
}

if (!variable_global_exists("pontuacao")) {
    global.pontuacao = 0;
}

global.fila = [];
global.balada = [];
global.aliens = [];
global.indice_fila = 0;

// =====================================
// ATRIBUTOS DO CONTROLADOR
// =====================================

aliens_perdidos = 0;
pessoa_atual = undefined;
falas_atuais = [];
indice_fala = 0;
tempo_fala = 0;
falas_terminaram = false;
decidido = false;
reacao_texto = "";
erros_dia = 0;
sq_transicao = noone;
resultado_dia = false;
feedback_pontos = "";
feedback_timer = 0;
venceu = false;
introducao_vista = false;
introducao_ativa = false;

verifica_vitoria = function() {
    if (!venceu && global.pontuacao >= 1000) {
        venceu = true;
        global.selecionado = noone;
    }

    return venceu;
};

pessoa_deve_ser_rejeitada = function(_pessoa) {
    return _pessoa.alien
        || !_pessoa.convite
        || _pessoa.convite_falso
        || !_pessoa.id_autentico;
};

// =====================================
// DIÁLOGOS
// =====================================

carrega_falas = function() {
    indice_fala = 0;
    tempo_fala = 0;
    falas_terminaram = false;
    decidido = false;
    reacao_texto = "";

    if (pessoa_atual != undefined) {
        prepara_visita(pessoa_atual);
        falas_atuais = pega_falas_cabine(pessoa_atual);
    }
    else {
        falas_atuais = [];
    }
};

prepara_visita = function(_pessoa) {
    if (_pessoa.ultimo_dia_visita == global.dia) return;

    if (_pessoa.vezes_apareceu > 0) {
        if (!_pessoa.convite_inicial && _pessoa.rejeitado_sem_convite) {
            _pessoa.convite = true;
            _pessoa.convite_falso = true;
        }
        else if (_pessoa.convite_falso_inicial) {
            _pessoa.convite = true;
            _pessoa.convite_falso = false;
        }
    }

    _pessoa.fotoConvite = _pessoa.convite_falso
        ? spr_conviteFalso
        : spr_conviteGrande;
    _pessoa.vezes_apareceu++;
    _pessoa.ultimo_dia_visita = global.dia;
};

// =====================================
// CRIAÇÃO DO VISITANTE
// =====================================


cria_visitante = function() {
    if (pessoa_atual == undefined) return;

    var inst = instance_create_layer(
        -40,
        352,
        "Instances",
        obj_pessoa,
        { pessoa: pessoa_atual }
    );
}


// =====================================
// VERIFICAÇÃO DOS BOTÕES
// =====================================

pode_decidir = function() {
    if (venceu) return false;
    if (pessoa_atual == undefined) return false;
    if (!falas_terminaram) return false;
    if (decidido) return false;

    if (instance_exists(obj_id) && obj_id.ampliar) {
        return false;
    }

    return true;
};

// =====================================
// INICIAR DIA
// =====================================

iniciar_dia = function() {
    erros_dia = 0;
    aliens_perdidos = 0;
    resultado_dia = false;
    feedback_pontos = "";
    feedback_timer = 0;

    pessoa_atual = undefined;
    falas_atuais = [];
    global.balada = [];

    global.indice_fila = 0;

    monta_fila(global.dia, 8);

    if (array_length(global.fila) > 0) {
        pessoa_atual = global.fila[0];
    }

    carrega_falas();
};

// =====================================
// NOVA PARTIDA
// =====================================

nova_partida = function() {
    venceu = false;
    global.dia = 1;
    global.vidas = 3;
    global.pontuacao = 0;
    global.fila = [];
    global.balada = [];
    global.aliens = [];
    global.balada_decorativos = [];
    global.indice_fila = 0;
    global.selecionado = noone;

    for (var i = 0; i < array_length(global.pessoas); i++) {
        var _p = global.pessoas[i];
        _p.status = _p.status_inicial;
        _p.vezes_expulso = _p.vezes_expulso_inicial;
        _p.corpo = _p.corpo_original;
        _p.convite = _p.convite_inicial;
        _p.convite_falso = _p.convite_falso_inicial;
        _p.fotoConvite = _p.convite_falso
            ? spr_conviteFalso
            : spr_conviteGrande;
        _p.vezes_apareceu = 0;
        _p.ultimo_dia_visita = -1;
        _p.rejeitado_sem_convite = false;
        _p.id_autentico = false;
        _p.id_consultado = false;
    }

    randomize();
    var _pessoas_sorteadas = [];
    for (var i = 0; i < array_length(global.pessoas); i++) {
        array_push(_pessoas_sorteadas, global.pessoas[i]);
    }
    array_shuffle_ext(_pessoas_sorteadas);

    var _quantidade_com_selo = ceil(array_length(_pessoas_sorteadas) / 2);
    for (var i = 0; i < _quantidade_com_selo; i++) {
        _pessoas_sorteadas[i].id_autentico = true;
    }

    aliens_perdidos = 0;
    pessoa_atual = undefined;
    falas_atuais = [];
    indice_fala = 0;
    tempo_fala = 0;
    falas_terminaram = false;
    decidido = false;
    reacao_texto = "";
    erros_dia = 0;
    sq_transicao = noone;
    resultado_dia = false;
    feedback_pontos = "";
    feedback_timer = 0;

    iniciar_dia();
};

// =====================================
// LIBERAR
// =====================================

liberar = function() {
    if (!pode_decidir()) return;

    decidido = true;
    reacao_texto = pessoa_atual.reacao_liberado;

    if (!pessoa_atual.id_consultado) {
        feedback_pontos = "CHECK ID FIRST";
    }
    else if (pessoa_deve_ser_rejeitada(pessoa_atual)) {
        erros_dia++;
        global.pontuacao = max(0, global.pontuacao - 50);
        feedback_pontos = "-50";
    }
    else {
        global.pontuacao += 50;
        feedback_pontos = "+50";
    }

    feedback_timer = 90;
    pessoa_atual.status = "liberado";

    array_push(global.balada, pessoa_atual);
    obj_pessoa.saida("esquerda");
    verifica_vitoria();
};

// =====================================
// EXPULSAR
// =====================================

expulsar = function() {
    if (!pode_decidir()) return;

    decidido = true;
    reacao_texto = pessoa_atual.reacao_expulso;

    if (!pessoa_atual.id_consultado) {
        feedback_pontos = "CHECK ID FIRST";
    }
    else if (!pessoa_deve_ser_rejeitada(pessoa_atual)) {
        erros_dia++;
        global.pontuacao = max(0, global.pontuacao - 50);
        feedback_pontos = "-50";
    }
    else {
        global.pontuacao += 50;
        feedback_pontos = "+50";
    }

    feedback_timer = 90;

    switch (pessoa_atual.corpo_original) {
        case spr_masc1: pessoa_atual.corpo = spr_masc1_bravo; break;
        case spr_masc2: pessoa_atual.corpo = spr_masc2_bravo; break;
        case spr_masc3: pessoa_atual.corpo = spr_masc3_bravo; break;
        case spr_masc4: pessoa_atual.corpo = spr_masc4_bravo; break;
        case spr_masc5: pessoa_atual.corpo = spr_masc5_bravo; break;
        case spr_fem_1: pessoa_atual.corpo = spr_fem1_bravo; break;
        case spr_fem2: pessoa_atual.corpo = spr_fem2_bravo; break;
        case spr_fem3: pessoa_atual.corpo = spr_fem3_bravo; break;
    }

    pessoa_atual.status = "expulso";
    pessoa_atual.vezes_expulso++;
    if (!pessoa_atual.convite && !pessoa_atual.convite_inicial) {
        pessoa_atual.rejeitado_sem_convite = true;
    }

    obj_pessoa.saida("direita");
    verifica_vitoria();
};

// =====================================
// PRÓXIMA PESSOA
// =====================================

proxima_pessoa = function() {
    if (venceu) return;

    global.indice_fila++;

    if (global.indice_fila < array_length(global.fila)) {
        pessoa_atual = global.fila[global.indice_fila];

        carrega_falas();
        cria_visitante();
    }
    else {
        aliens_perdidos = 0;

        for (var i = 0; i < array_length(global.balada); i++) {
            if (global.balada[i].alien == true) {
                aliens_perdidos++;
            }
        }

        if (aliens_perdidos == 0) {
            global.pontuacao += 200;
        }

        resultado_dia = true;
        verifica_vitoria();
    }
};

// =====================================
// FINALIZAR DIA
// =====================================

fim_do_dia = function() {
    if (venceu) return;

    global.dia++;

    iniciar_dia();

    room_goto(rm_cabine);
};

// =====================================
// ENTRADA NO MENU
// =====================================

room_goto(rm_menu);
