

entrada()
if(x > 680) moveu = true

//se saiu da tela, libera a próxima pessoa
if(moveu && (x > display_get_gui_width() + 200 || x < -200)){
    obj_controlador.proxima_pessoa()
    instance_destroy()
}