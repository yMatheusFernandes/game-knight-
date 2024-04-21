camera_set_view_size(view_camera[0],global.view_width,global.view_height)

if(instance_exists(view_target)){
var x1 = view_target.x - global.view_width / 2
var y1 = view_target.y - global.view_height / 2

x1 = clamp(x1,0 , room_width- global.view_width)
y1 = clamp(y1,0 , room_height- global.view_height)

camera_set_view_size(view_camera[0],x1,y1)
}