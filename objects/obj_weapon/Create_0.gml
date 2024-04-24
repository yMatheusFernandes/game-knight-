//Sem armas
armas[0] = ds_map_create();
ds_map_add(armas[0],"sprite",-1)
ds_map_add(armas[0],"proj",-1)
ds_map_add(armas[0],"proj_spd",0)
ds_map_add(armas[0],"proj_damage",0)
ds_map_add(armas[0],"proj_delay",0)
ds_map_add(armas[0],"automatic",false)

//Pistola
armas[1] = ds_map_create();
ds_map_add(armas[1],"sprite",ARMA_1)
ds_map_add(armas[1],"proj",sBullet)
ds_map_add(armas[1],"proj_spd",8)
ds_map_add(armas[1],"proj_damage",10)
ds_map_add(armas[1],"proj_delay",12)
ds_map_add(armas[1],"automatic",true)


weapon_id = -1;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;
can_shoot = true

scr_mudar_arma(self,1)
