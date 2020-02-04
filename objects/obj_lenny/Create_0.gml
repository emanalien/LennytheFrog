/// @description Insert description here

#region // setup of macros
#macro mCollider Collider

// for state machine
#macro Moving 2
#macro Jumping 3
#macro Licking 4
#endregion

#region setup for state machine
current_state = Moving;
#endregion

#region player settings
radius = 32;
#endregion

#region movement settings
player_direction = 1; // direction player is facing, can't be 0
horizontal_movement = 0;
vertical_movement = 0;
can_jump = true;
can_dJump = true;
drop_key = false;

is_dropping = false;

// jump settings
jump_direction = 0;

#endregion

#region tongue settings
tongue_instance = 0;
tongue_max_extension = false;
currently_licking = false;
tongue_direction = 0;
tongue_distance = 0;
#endregion

#region camera settings
if (!instance_exists(obj_camera)) {
	Camera = instance_create_layer(x,y,"Player", obj_camera);
} else {
	Camera = instance_find(obj_camera, 0);	
}
// set the camera's object following as this instance
Camera.ObjectFollowing = id;
Camera.FollowRate = Camera.FollowDefault;
#endregion

#region gamemanger and score
GM = instance_find(GameManager, 0);
#endregion