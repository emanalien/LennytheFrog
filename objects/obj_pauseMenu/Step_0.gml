/// @description Insert description here
// You can write your code in this editor

// simply move the menu straight to the desired position
#region move the pause menu into position
if (moving) {
	target_y = camera_get_view_y(view_camera[0]) + camera.view_height/2;
	y = lerp(y, target_y, drop_lerp);
	if (y == target_y) {
		moving = false;	
	}
}
#endregion