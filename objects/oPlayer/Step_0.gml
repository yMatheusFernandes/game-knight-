
var xMove = keyboard_check(ord("D")) -  keyboard_check(ord("A"))
var yMove = keyboard_check(ord("S")) -  keyboard_check(ord("W"))




// Normalizar o movimento para manter a mesma velocidade em todas as direções
var move_length = point_distance(0, 0, xMove, yMove);
if (move_length > 0) {
    xMove /= move_length;
    yMove /= move_length;
}

// Verificar colisão antes de mover o jogador
var new_x = x + xMove * spd;
var new_y = y + yMove * spd;

if (!place_meeting(new_x, y, obj_wall)) {
    x = new_x;
}

if (!place_meeting(x, new_y, obj_wall)) {
    y = new_y;
}

// Definir sprite dependendo da direção do movimento
if (xMove != 0 || yMove != 0) {
    sprite_index = GHY;
} else {
    sprite_index = PLAYERIdle;
}

// Definir escala de imagem para direção do movimento horizontal
if (xMove != 0) {
    image_xscale = sign(xMove);
}

show_debug_message(global.life)

if global.life <1 {
	game_restart()
}

with(my_weapon){
	
	var mb;
	
	if(automatic){
	mb = mouse_check_button(mb_left)
	}else{
	mb = mouse_check_button_pressed(mb_left)
	}
	weapon_dir = point_direction(x,y,mouse_x,mouse_y);
	if(mb){
	atirar()
	}
}



