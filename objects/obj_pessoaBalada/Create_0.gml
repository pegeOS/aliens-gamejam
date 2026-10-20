

info = noone

//atributos de move
tempo_min	= 1
tempo_max	= 2
alarme		= room_speed * random_range(tempo_min, tempo_max)


//metodo de nao sair da room
ficar_room = function(){

	if(x - sprite_width/2 <= 100 or x + sprite_width/2 > room_width - 100){
		//inverter a velocidade horizontal
		hspeed = hspeed * -1
	}
	
	if(y - sprite_height/2 <= 100 or y + sprite_height/2 >= room_height - 100){
		//inverter a velocidade vertical
		vspeed = vspeed * -1
	}
	
	//angulo muda
	//image_angle = direction

}

define_movimento = function(){

	direction = irandom(359)
	
	//velocidade aleatoria
	speed = random(2)
    
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