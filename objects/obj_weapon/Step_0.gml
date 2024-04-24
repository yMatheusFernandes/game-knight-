if(instance_exists(weapon_id)){
x = weapon_id.x
y = weapon_id.y + 9

weapon_x = x + lengthdir_x(16,weapon_dir);
weapon_y = y  + lengthdir_y(16,weapon_dir)

function atirar(){
//atirar
if(!weapon>0){
return false;
}
if(!can_shoot){
return false;
}
//var proj_inst = instance_create_layer(weapon_x,weapon_y,"bullets",Bala)
var proj_inst = instance_create_layer(weapon_x,weapon_y,"bullets",Bala)
proj_inst.sprite_index = sBullet
proj_inst.image_angle= weapon_dir
proj_inst.direction = weapon_dir
proj_inst.speed = proj_spd
proj_inst.damage = proj_damage
can_shoot = false;
alarm[0] = proj_delay;



}

image_angle = weapon_dir

}else{
instance_destroy()
}