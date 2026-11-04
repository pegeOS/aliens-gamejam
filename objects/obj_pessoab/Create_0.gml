info = noone
decorativo = false
danca_inicializada = false
estilo_danca = "normal"
fase_danca = random(360)
deslocamento_danca = 0
deslocamento_anterior = 0

//atributos de move
tempo_min = 1
tempo_max	= 2
alarme = room_speed * random_range(tempo_min, tempo_max)

//metodo de nao sair da room
ficar_room = function(){

	if(x - sprite_width/2 <= 120 or x + sprite_width/2 > room_width - 120){
		//inverter a velocidade horizontal
		hspeed = hspeed * -1
	}
	
	if(y - sprite_height/2 <= 170 or y + sprite_height/2 >= room_height - 170){
		//inverter a velocidade vertical
		vspeed = vspeed * -1
	}
	
	//angulo muda
	//image_angle = direction

}

define_movimento = function(){
	if (estilo_danca == "still") {
		direction = irandom(359)
		speed = random_range(0.35, 0.75)
		return
	}

	direction = irandom(359)
	
	//velocidade aleatoria
	speed = random_range(0.8, 2)
    
	//image_angle = direction
}

	
//metodo de mudar a direcao do inimigo de tempos em tempos
muda_direcao = function(){

	alarme--
	
	if(alarme <= 0){
		
		define_movimento()
		
		alarme = room_speed * random_range(tempo_min, tempo_max)
	}
}