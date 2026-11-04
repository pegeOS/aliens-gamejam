var _mouse_down = mouse_check_button(mb_left)
    || device_mouse_check_button(0, mb_left);
var _click = mouse_check_button_pressed(mb_left)
    || device_mouse_check_button_pressed(0, mb_left);

if (!_mouse_down) {
    entrada_liberada = true;
}

if (entrada_liberada && etapa < 4) {
    if (keyboard_check_pressed(vk_escape)) {
        etapa = 4;
        exit;
    }

    if (_click) {
        var _skip_x = device_mouse_x_to_gui(0);
        var _skip_y = device_mouse_y_to_gui(0);

        if (point_in_rectangle(
            _skip_x,
            _skip_y,
            display_get_gui_width() - 172,
            24,
            display_get_gui_width() - 28,
            72
        )) {
            entrada_liberada = false;
            etapa = 4;
            exit;
        }
    }
}

if (etapa == 0) {
    temporizador++;

    if (temporizador >= 36) {
        etapa = 1;
    }

    exit;
}

if (etapa == 1) {
    agente_alpha = min(1, agente_alpha + 0.035);

    if (agente_alpha >= 1) {
        etapa = 2;
        temporizador = 0;
    }

    exit;
}

if (etapa == 4) {
    alpha_escurecer = min(1, alpha_escurecer + 0.025);

    if (alpha_escurecer >= 1) {
        concluir_introducao();
    }

    exit;
}

if (indice_fala == 1) {
    foto_alpha = min(1, foto_alpha + 0.04);
}

var _fala = falas[indice_fala];
if (caracteres_visiveis < string_length(_fala)) {
    acumulador_texto += 0.7;

    if (acumulador_texto >= 1) {
        var _novos = floor(acumulador_texto);
        caracteres_visiveis = min(string_length(_fala), caracteres_visiveis + _novos);
        acumulador_texto -= _novos;
    }
}

if (!entrada_liberada) exit;
if (!_click) exit;

entrada_liberada = false;

if (caracteres_visiveis < string_length(_fala)) {
    caracteres_visiveis = string_length(_fala);
    exit;
}

if (indice_fala < array_length(falas) - 1) {
    indice_fala++;
    caracteres_visiveis = 0;
    acumulador_texto = 0;
    foto_alpha = 0;
}
else {
    etapa = 4;
}
