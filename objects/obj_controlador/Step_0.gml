
// Atualiza o feedback da pontuação
if (feedback_timer > 0) {
    feedback_timer--;

    if (feedback_timer <= 0) {
        feedback_pontos = "";
    }
}

// Verifica se a transição terminou
if (sq_transicao != noone && layer_sequence_exists("transicao", sq_transicao)) {
    if (layer_sequence_is_finished(sq_transicao)) {
        layer_sequence_destroy(sq_transicao);
        sq_transicao = noone;
    }
}

// Verifica se existe um visitante
if (pessoa_atual == undefined) exit;

// Verifica se as falas terminaram
if (falas_terminaram) exit;

// Aguarda o visitante chegar à posição
if (!instance_exists(obj_pessoa)) exit;
if (!obj_pessoa.moveu) exit;

// Avança o tempo da fala
tempo_fala++;

var duracao = 120 + string_length(falas_atuais[indice_fala]) * 4;

if (tempo_fala >= duracao) {
    tempo_fala = 0;

    if (indice_fala < array_length(falas_atuais) - 1) {
        indice_fala++;
    } else {
        falas_terminaram = true;
    }
}
