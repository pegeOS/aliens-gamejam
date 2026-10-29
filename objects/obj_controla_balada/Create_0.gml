
quant_aliens = 0
chances = 0
global.aliens = []
sprites =[spr_personagem]
nomes = ["Peter", "Cynthia", "Artur", "Brad", "Frank", "Michael", "Bryan", "Phil", "Elvis", "Elliot", "Jimmy", "Silvester", "Ryder", "Ash", "Colin"]

for(var i = 0; i < array_length(global.balada); i++){

	//adicionando objeto alien na array e aumentando a quantidade
		if(global.balada[i].alien == true){
			quant_aliens++
			array_push(global.aliens, global.balada[i])
		}

}


//CRIANDO ALIENS NPC
while(array_length(global.balada) < 15){
	
		nome_random = irandom(array_length(nomes) - 1)
		sprite_random = irandom(array_length(sprites) - 1)

		var _p = new Pessoa(nomes[nome_random], 18, "090.788.356-50", sprites[sprite_random], sprites[sprite_random], sprites[sprite_random], true, false, "nunca", "normal")
		array_push(global.balada, _p)
		array_delete(nomes, nome_random, 1)
}

instance_create_layer(0, 0, "Instances", obj_cria_pessoab)