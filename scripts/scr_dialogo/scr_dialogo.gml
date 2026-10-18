
//falas da pessoa na cabine
function pega_falas_cabine(_p){
    if (_p.status == "expulso" && array_length(_p.fala_volta_expulso) > 0) {
        return _p.fala_volta_expulso;
    }
    if (_p.status == "liberado" && array_length(_p.fala_volta_liberado) > 0) {
        return _p.fala_volta_liberado;
    }
    return _p.fala_chegada;
}

//sorteia uma fala da balada
function pega_fala_balada(_p){
    var total = array_length(_p.fala_balada);
    if (total == 0) return "";
    //retorna fala aleatoria da array de falas balada    
    return _p.fala_balada[irandom(total - 1)];
}