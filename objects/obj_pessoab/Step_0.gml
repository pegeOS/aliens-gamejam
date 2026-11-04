
if (!danca_inicializada && info != noone) {
	if (variable_struct_exists(info, "estilo_danca")) {
		estilo_danca = info.estilo_danca
	}
	else {
		estilo_danca = choose("normal", "step", "odd", "still")
	}

	danca_inicializada = true
	define_movimento()
	alarme = room_speed * random_range(tempo_min, tempo_max)
}

if (danca_inicializada) {
	y -= deslocamento_anterior
	fase_danca += 0.12
	deslocamento_anterior = 0

	switch (estilo_danca) {
		case "still":
			deslocamento_danca = 0
			image_angle = 0
			break
		case "step":
			deslocamento_danca = abs(sin(fase_danca)) * 4
			image_angle = sin(fase_danca) * 7
			break
		case "odd":
			deslocamento_danca = sin(fase_danca * 1.7) * 6
			image_angle = sin(fase_danca * 1.3) * 13
			break
		case "wrong_beat":
			deslocamento_danca = sin(fase_danca * 2.2) * 7
			image_angle = sin(fase_danca * 1.9) * 18
			break
		case "showoff":
			deslocamento_danca = abs(sin(fase_danca * 0.8)) * 5
			image_angle = sin(fase_danca * 0.8) * 11
			break
		case "strange_turn":
			deslocamento_danca = sin(fase_danca * 0.6) * 2
			image_angle = (sin(fase_danca * 0.6) > 0.85) ? 24 : sin(fase_danca) * 3
			break
		default:
			deslocamento_danca = sin(fase_danca) * 2
			image_angle = sin(fase_danca) * 4
			break
	}

	if (estilo_danca != "still") {
		deslocamento_anterior = deslocamento_danca
		y += deslocamento_anterior
	}
	else {
		deslocamento_anterior = 0
	}
}

ficar_room()
muda_direcao()