/// @description Insert description here
// You can write your code in this editor

#region camera position
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);
#endregion

// temp code to display number of lives and flies.
draw_set_color(c_black);
draw_set_font(tempscorefont);
draw_text(cam_x + 100, 
			cam_y + 100, 
			"Flies left: " + string(num_flies) + 
			"\nLives left: " + string(clamp(LennyLives, 0, 200)));

