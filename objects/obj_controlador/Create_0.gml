


cadastra_pessoas()

//atributos iniciais
aliens_perdidos = 0;
pessoa_atual = undefined
falas_atuais = []
indice_fala = 0
tempo_fala = 0
falas_terminaram = false
decidido = false   //vira true depois que o jogador liberou/expulsou
reacao_texto = ""
erros_dia = 0;
sq_transicao = noone
resultado_dia = false;
feedback_pontos = "";
feedback_timer = 0;
carrega_falas = function(){

    indice_fala      = 0
    tempo_fala       = 0
    falas_terminaram = false
    decidido         = false
    reacao_texto     = ""
    if(pessoa_atual != undefined){
        falas_atuais = pega_falas_cabine(pessoa_atual)
    } 
    else{
        falas_atuais = []
    }
}

//cria a pessoa andando até a cabine
cria_visitante = function() {

    if (pessoa_atual == undefined) {
        return;
    }
    var inst = instance_create_layer(-40, 352, "Instances", obj_pessoa, { pessoa: pessoa_atual });
}

pode_decidir = function(){
    if(pessoa_atual == undefined) return false
	
    if(!falas_terminaram) return false
	
    if(decidido) return false
	
	 //rg ta aberto
    if(instance_exists(obj_id) && obj_id.ampliar) return false 
	
    return true
}

iniciar_dia = function(){
	erros_dia = 0;
	aliens_perdidos = 0;
	resultado_dia = false;
    global.balada = []
    monta_fila(global.dia, 8)

    if(array_length(global.fila) > 0){
        pessoa_atual = global.fila[0]
    } 
    else{
        pessoa_atual = undefined
    }
    carrega_falas()
}

liberar = function(){
	if (!pode_decidir()) return;
    decidido = true
    reacao_texto = pessoa_atual.reacao_liberado

    if (pessoa_atual.alien == true) {
        erros_dia++
        global.pontuacao = max(0, global.pontuacao - 50)
    } else {
        global.pontuacao += 50
    }
if (pessoa_atual.alien == true) {
    feedback_pontos = "-50";
} else {
    feedback_pontos = "+50";
}

feedback_timer = 90;
    pessoa_atual.status = "liberado"
    array_push(global.balada, pessoa_atual)
    obj_pessoa.saida("esquerda")
}

expulsar = function(){
	if (!pode_decidir()) return;
    decidido = true
    reacao_texto = pessoa_atual.reacao_expulso

    if (pessoa_atual.alien == false) {
        erros_dia++
        global.pontuacao = max(0, global.pontuacao - 50)
    } else {
        global.pontuacao += 50
    }
if (pessoa_atual.alien == false) {
    feedback_pontos = "-50";
} else {
    feedback_pontos = "+50";
}

feedback_timer = 90;
    pessoa_atual.corpo = asset_get_index(string(pessoa_atual.corpo) + "bravo")
    pessoa_atual.status = "expulso"
    pessoa_atual.vezes_expulso++

    obj_pessoa.saida("direita")
}

//chamado pelo obj_pessoa quando ele sai da tela
proxima_pessoa = function() {
    global.indice_fila++;

    if (global.indice_fila < array_length(global.fila)) {
        pessoa_atual = global.fila[global.indice_fila]
        carrega_falas()
        cria_visitante()
    }
    else {
        aliens_perdidos = 0;

        // Conta quantos aliens foram liberados
        for (var i = 0; i < array_length(global.balada); i++) {
            if (global.balada[i].alien == true) {
                aliens_perdidos++;
            }
        }

        // Bônus por não deixar nenhum alien entrar
        if (aliens_perdidos == 0) {
            global.pontuacao += 200;
        }

        resultado_dia = true;
    }
}

fim_do_dia = function() {
    global.dia++
    iniciar_dia()
    room_goto(rm_cabine)
}

iniciar_dia();
room_goto(rm_cabine);