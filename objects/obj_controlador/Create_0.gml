
cadastra_pessoas();

// =====================================
// INICIALIZAÇÃO GLOBAL
// =====================================

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
        falas_atuais = pega_falas_cabine(pessoa_atual);
    }
    else {
        falas_atuais = [];
    }
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
// LIBERAR
// =====================================

liberar = function() {
    if (!pode_decidir()) return;

    decidido = true;
    reacao_texto = pessoa_atual.reacao_liberado;

    if (pessoa_atual.alien == true) {
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
};

// =====================================
// EXPULSAR
// =====================================

expulsar = function() {
    if (!pode_decidir()) return;

    decidido = true;
    reacao_texto = pessoa_atual.reacao_expulso;

    if (pessoa_atual.alien == false) {
        erros_dia++;
        global.pontuacao = max(0, global.pontuacao - 50);
        feedback_pontos = "-50";
    }
    else {
        global.pontuacao += 50;
        feedback_pontos = "+50";
    }

    feedback_timer = 90;

    pessoa_atual.corpo = asset_get_index(
        string(pessoa_atual.corpo) + "bravo"
    );

    pessoa_atual.status = "expulso";
    pessoa_atual.vezes_expulso++;

    obj_pessoa.saida("direita");
};

// =====================================
// PRÓXIMA PESSOA
// =====================================

proxima_pessoa = function() {
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
    }
};

// =====================================
// FINALIZAR DIA
// =====================================

fim_do_dia = function() {
    global.dia++;

    iniciar_dia();

    room_goto(rm_cabine);
};

// =====================================
// ENTRADA NO MENU
// =====================================

room_goto(rm_menu);
