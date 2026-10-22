


cadastra_pessoas()

//atributos iniciais
pessoa_atual = undefined
falas_atuais = []
indice_fala = 0
tempo_fala = 0
falas_terminaram = false
decidido = false   //vira true depois que o jogador liberou/expulsou
reacao_texto = ""

sq_transicao = noone

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
    
    if (!pode_decidir()) return
    decidido = true
    reacao_texto = pessoa_atual.reacao_liberado

    pessoa_atual.status = "liberado"
    array_push(global.balada, pessoa_atual)
    obj_pessoa.saida("esquerda")
}

expulsar = function(){
    
    if (!pode_decidir()) return
    decidido = true
    reacao_texto = pessoa_atual.reacao_expulso

    pessoa_atual.status = "expulso"
    pessoa_atual.vezes_expulso++

    obj_pessoa.saida("direita")
}

//chamado pelo obj_pessoa quando ele sai da tela
proxima_pessoa = function() {
    global.indice_fila++;
    if(global.indice_fila < array_length(global.fila)){
        pessoa_atual = global.fila[global.indice_fila]
        carrega_falas()
        cria_visitante()
    } 
    else{
        room_goto(rm_balada)
    }
}

fim_do_dia = function() {
    global.dia++
    iniciar_dia()
    room_goto(rm_cabine)
}

iniciar_dia();
room_goto(rm_cabine);