
if(pessoa_atual == undefined) exit
if(falas_terminaram) exit

//só começa a falar quando a pessoa já chegou ( se o moveu é tru)
if(!instance_exists(obj_pessoa)) exit
if(!obj_pessoa.moveu) exit

tempo_fala++

var duracao = 120 + string_length(falas_atuais[indice_fala]) * 4

if (tempo_fala >= duracao) {
    tempo_fala = 0
    if(indice_fala < array_length(falas_atuais) - 1){
        indice_fala++
    } 
    else{
        falas_terminaram = true//acabou a última fala
    }
}