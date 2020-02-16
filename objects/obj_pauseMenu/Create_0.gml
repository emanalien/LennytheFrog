/// @description Insert description here
// You can write your code in this editor



#region drop in settings
drop_speed = 30;
drop_lerp = 0.05;
drop_buffer = 200;
drop_below_buffer = 300;
drop_below = 600; // useless at this stage
drop_past = true;
moving = true;
#endregion

#region size settings

#endregion

#region camera settings
GM = instance_find(GameManager, 0); // passed in by GameManager on creation?
//target_x = camera.x + camera.view_width/2;
target_y = camera_get_view_y(view_camera[0]) + GM.Camera.view_height/2; 
#endregion

#region inital position settings
//x = camera.x + camera.view_width/2;
//y = camera.y - drop_buffer;
y -= drop_buffer;
#endregion