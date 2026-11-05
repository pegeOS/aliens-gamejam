var _emcima = point_in_rectangle(mouse_x, mouse_y, x - 62, y - 30, x + 62, y + 30);
var _clicou = mouse_check_button_pressed(mb_left);
var _controlador = instance_find(obj_controlador, 0);

if (instance_exists(_controlador) && _controlador.venceu) exit;
if (!visible) exit;

if (_emcima) {
    image_xscale = 0.8;
    image_yscale = 0.35;

    if (_clicou) {

        if (texto == "Yes") {

            var _alvo = global.selecionado;

            // Verifica se ainda existem tentativas
            if (obj_controla_balada.chances < obj_controla_balada.quant_aliens) {

                if (instance_exists(_alvo) && !_alvo.decorativo) {

                    // Registra a tentativa
                    obj_controla_balada.chances++;

                    if (!instance_exists(_controlador) || !_alvo.info.id_consultado) {
                        show_debug_message(
                            _alvo.info.nome + " não pontua: ID não consultado"
                        );
                    }
                    else if (_controlador.pessoa_deve_ser_rejeitada(_alvo.info)) {

                        global.pontuacao += 100;

                        show_debug_message(
                            _alvo.info.nome + " é ALIEN"
                        );

                    }
                    else {

                        global.pontuacao = max(0, global.pontuacao - 50);

                        show_debug_message(
                            _alvo.info.nome + " é HUMANO"
                        );

                    }

                    _alvo.info.status = "expulso";
                    _alvo.info.vezes_expulso++;

                    instance_destroy(_alvo);

                    if (instance_exists(_controlador)) _controlador.verifica_vitoria();

                    with (obj_controla_balada) {
    finalizar_balada();
}
                }
            }
        }

        // Limpa a seleção
        global.selecionado = noone;
    }
}
else {
    image_xscale = 0.7;
    image_yscale = 0.3;
}

// Depuração
if (keyboard_check_pressed(ord("P"))) {
    show_debug_message("Pontuação: " + string(global.pontuacao));
    show_debug_message("Expulsões: " + string(obj_controla_balada.chances));
    show_debug_message("Tentativas disponíveis: " + string(obj_controla_balada.quant_aliens));
}