etapa = 0;
temporizador = 0;
agente_alpha = 0;
foto_alpha = 0;
indice_fala = 0;
caracteres_visiveis = 0;
acumulador_texto = 0;
entrada_liberada = false;
alpha_escurecer = 0;

falas = [
    "I'm Special Agent Leftoff with the FBI. I came here to alert you of extraterrestrial beings on their way to this building.",
    "They are disguising themselves as humans, to enter the party.",
    "Their objective for coming here is classified.",
    "We need your help to identify those aliens, and prevent them from partying. The world thanks you."
];

var _controle = instance_find(obj_controlador, 0);
tutorial_balada = instance_exists(_controle) && _controle.tutorial_balada_ativa;

if (tutorial_balada) {
    depth = -10000;
    falas = [
        "Aliens slipped past the checkpoint. Be more careful, Agent.",
        "At the dance hall, watch for strange moves and off-beat dancing. A clue is not proof.",
        "Click a guest to select them. Press YES to eject a suspect. Attempts are limited; ejecting a human costs points."
    ];
}

concluir_introducao = function() {
    var _controle = instance_find(obj_controlador, 0);

    if (!instance_exists(_controle)) {
        show_debug_message("ERROR: game controller missing at end of introduction.");
        instance_destroy();
        return;
    }

    if (tutorial_balada) {
        _controle.tutorial_balada_ativa = false;
        _controle.tutorial_balada_visto = true;
        room_goto(rm_balada);
        instance_destroy();
        return;
    }

    _controle.introducao_ativa = false;
    _controle.introducao_vista = true;
    _controle.nova_partida();
    room_goto(rm_cabine);
    instance_destroy();
};
