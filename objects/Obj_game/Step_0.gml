/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
script_execute(get_input)

if key_pause {
	if (room = rm_pause) {
		if (instance_exits(oPlayer)) {
			oPlayer.persistent = false
			isPause = true 
			instance_activate_all()
		}
		room_previous(room)
		room_goto (rm_pause)
	} else {
		room_goto_previous()
		instance_deactivate_all(true)
	}
}
		