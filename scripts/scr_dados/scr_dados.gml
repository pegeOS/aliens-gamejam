
function cadastra_pessoas() {

    //humanos normais
    var p = new Pessoa("Lucio", 18, "090.788.356-50", spr_personagem, spr_personagem, spr_personagem, true, false, "nunca", "normal")
    
    p.fala_chegada = [
        "Boa noite! Vim pro baile.",
        "Meu convite está aqui, olha.",
        "Pode conferir à vontade."
    ]
    p.fala_volta_liberado = [
        "De novo por aqui! Ontem foi demais.",
        "Posso entrar de novo, né?"
    ]
    p.fala_volta_expulso = [
        "Foi um mal-entendido ontem, juro.",
        "Eu sou gente, moço! Olha meu documento!"
    ]
    
    p.reacao_liberado = "Valeu, chefe!"
    p.reacao_expulso  = "Que absurdo!"
    
    p.fala_balada = [
        "Esse rock é demais!",
        "Alguém quer um milk-shake?"
    ]

    
    
    
    //alien 
    p = new Pessoa("Marta", 25, "111.111.111-11", spr_personagem, spr_personagem, spr_personagem, false, true, "cabine", "normal") // sem convite
    p.fala_chegada = [
        "Saudações, terráqueo... quer dizer, boa noite.",
        "Esqueci meu convite em casa.",
        "Mas eu sou muito normal, pode acreditar."
    ]
    p.fala_volta_liberado = ["Saudações novamente"]
    p.fala_volta_expulso  = ["Dessa vez estou com tudo certo. Provavelmente."]
    p.reacao_liberado = "Excelente."
    p.reacao_expulso  = "Isso não ficará assim."
    p.fala_balada = ["Estou me divertindo como os humanos fazem."]

    
    
    
    
    
    //alien que só entrega na balada
    p = new Pessoa("Ze", 30, "222.222.222-22", spr_personagem, spr_personagem, spr_personagem, true, true, "balada", "dança errado")
    p.dia_fixo = 2;   // aparece a partir do dia 2
    p.fala_chegada = [
        "Boa noite, tudo bem?",
        "Aqui está meu convite.",
        "Tenho trinta anos e trabalho na fábrica."
    ]
    p.fala_volta_liberado = [
        "Boa noite de novo. Tudo bem?",
        "O mesmo convite, o mesmo eu."
    ]
    
    p.reacao_liberado = "Obrigado, amigo."
    p.reacao_expulso  = "Tudo bem... eu entendo."
    
    p.fala_balada = [
        "Eu... gosto... de dançar.",
        "Esse ritmo é... interessante.",
        "Meus joelhos são normais."
    ]
    
    p = new 
}


function monta_fila(_dia, _quantidade) {
    var fixos = []
    var sorteaveis = []

    for (var i = 0; i < array_length(global.pessoas); i++) {
        var p = global.pessoas[i]

        if (p.status == "disponivel") {
            //se nunca apareceu, respeita o dia fixo
            if (p.dia_fixo == _dia)      array_push(fixos, p)
            else if (p.dia_fixo == 0)    array_push(sorteaveis, p)
        }
        else {
            //se já apareceu ( status diferente de "disponivel") volta pro sorteio
            array_push(sorteaveis, p)
        }
    }
    
    //shufflada na array
    array_shuffle_ext(sorteaveis)

    global.fila = fixos
    var faltam = _quantidade - array_length(fixos)
    for (var i = 0; i < faltam && i < array_length(sorteaveis); i++) {
        array_push(global.fila, sorteaveis[i])
    }

    array_shuffle_ext(global.fila)
    global.indice_fila = 0
}