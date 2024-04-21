resolution_width =800
resolution_height =600
resolution_scale = 3
global.view_width = resolution_width / resolution_scale
global.view_height = resolution_height / resolution_scale
view_target = oPlayer
window_set_size(global.view_widt * resolution_scale,global.view_height * resolution_scale )
surface_resize(application_surface,global.view_widt * resolution_scale,global.view_height * resolution_scale)
