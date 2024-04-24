norte = 1
oeste = 2
leste= 4 
sul = 8

var layer_id = layer_tilemap_get_id("Wall_tiles")


cell_size = 32;
grid_width = room_width div cell_size
grid_height = room_height div cell_size
grid = ds_grid_create(grid_width,grid_height)
ds_grid_clear(grid,0)

randomize()


var xx = grid_width div 2;
var yy = grid_height div 2;
var dir = irandom(3)
var room_count = 10
var room_size = 5



var tile_layer = layer_tilemap_get_id("Wall_tiles")

for(var i=0;i<room_count;i++) {
	
ds_grid_set_region(grid,xx-room_size,yy-room_size,xx+room_size,yy+room_size,1)

var path_distance= room_size*5;

while(path_distance>0){
	
	grid[# xx,yy]= 1
	
xx+=lengthdir_x(1,dir*90)
yy+=lengthdir_y(1,dir*90)

xx= clamp(xx,2,grid_width-2)
yy= clamp(yy,2,grid_height-2)

path_distance--;

}
if(path_distance ==0){
	
	
	
dir = irandom(3)
}

}
for(var xx = 0;xx<grid_width;xx++){
for(var yy = 0;yy<grid_height;yy++){
if(grid[# xx,yy]!=1){
var norte_t = grid[# xx,yy-1]==0;
 var oeste_t =  grid[# xx-1,yy]==0;
 var leste_t =  grid[# xx + 1,yy]==0;
 var sul_t =  grid[# xx,yy+1]==0;
 
 var tile_index = norte_t * norte + oeste_t * oeste + leste_t * leste + sul_t * sul + 1;
 
 tilemap_set(layer_id,tile_index,xx,yy)
}else if(grid[# xx,yy]==1){
tilemap_set(layer_id,17,xx,yy)
}
}
}


//for(var xx = 0;xx < cell_size; xx++){
//for(var yy = 0;yy < cell_size; yy++){
//	if(grid[# xx,yy] == 0){
		
	//	var norte_t = grid[# xx,yy-1]==0;

	//	var leste_t =  grid[# xx + 1,yy]==0;
	//	var sul_t =  grid[# xx,yy+1]==0;
		
	//	var tile_index = norte_t * norte + oeste_t * oeste + leste_t * leste + sul_t * sul + 1;
		
		//tilemap_set(tile_layer,tile_index,xx,yy)
	//}
	//}
	//}





//for(var xx = 0;xx < cell_size; xx++){
//for(var yy = 0;yy < cell_size; yy++){
	//if(grid[# xx,yy] == 0){
	//instance_create_layer(xx * cell_size,yy * cell_size,"instance",parede)}
//}
//}