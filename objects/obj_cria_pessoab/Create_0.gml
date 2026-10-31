


//criando pessoas na balada com base na quantidade que foram aceitas
for (var  i = 0;  i <  array_length(global.balada); i++){
		randomize()
	
		var _p = instance_create_layer(random_range( 150, 1150), random_range(150, 600), "Instances", obj_pessoab)
	
		_p.info = global.balada[i]
}