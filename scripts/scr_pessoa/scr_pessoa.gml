
global.pessoas = [] 
global.fila = []
global.balada  = []
global.dia = 1;
global.indice_fila = 0;
if (!variable_global_exists("vidas")) {
    global.vidas = 3;
}
global.selecionado = noone
global.pontuacao = 0
function Pessoa(_nome, _idade, _cpf, _corpo, _cabeca, _convite, _fotoConvite,  _alien, _revelacao, _comportamento) constructor{
    nome = _nome
    idade = _idade
    cpf = _cpf
    corpo = _corpo
    corpo_original = _corpo
    cabeca = _cabeca
    convite = _convite
	fotoConvite = _fotoConvite
    alien = _alien
    revelacao = _revelacao
    comportamento = _comportamento
    estilo_danca = "normal"
    dia_fixo = 0
    status = "disponivel"
    status_inicial = "disponivel"
    vezes_expulso = 0
    vezes_expulso_inicial = 0
    
    //falas
    fala_chegada = ["..."]
    fala_volta_liberado = []
    fala_volta_expulso = []
    reacao_liberado = ""
    reacao_expulso = ""
    fala_balada = []
    array_push(global.pessoas, self)
}