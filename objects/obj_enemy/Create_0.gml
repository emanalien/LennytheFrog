/// @description Insert description here
// You can write your code in this editor
move_direction = -1;
radius_w = sprite_width/2;
radius_h = sprite_height/2;

// move the enemy to the ground
while (!place_meeting(x, y + 1, mCollider)) {
	y += 1;	
}

GM = instance_find(GameManager, 0);

#region state machine setup
Moving = 2;
Guided = 3;
guider = -1;
current_state = Moving;
#endregion

#region guidance settings
guider = -1;
guide_lerp = 0.05; // % of distance to move each frame
guide_x = 0;
guide_y = 0;
guide_error = 50;
#endregion