
global.pessoas = [] 
global.fila = []
global.balada  = []
global.dia = 1;
global.indice_fila = 0;
global.selecionado = noone
if (!variable_global_exists("pontuacao")) {
    global.pontuacao = 0;
}
function Pessoa(_nome, _idade, _cpf, _corpo, _cabeca, _sprBalada, _convite,  _alien, _revelacao, _comportamento) constructor{
    nome = _nome
    idade = _idade
    cpf = _cpf
    corpo = _corpo
    cabeca = _cabeca
    sprBalada = _sprBalada
    convite = _convite
    alien = _alien
    revelacao = _revelacao
    comportamento = _comportamento
    dia_fixo = 0
    status = "disponivel"
    vezes_expulso = 0
    
    //falas
    fala_chegada = ["..."]
    fala_volta_liberado = []
    fala_volta_expulso = []
    reacao_liberado = ""
    reacao_expulso = ""
    fala_balada = []
    array_push(global.pessoas, self)
}