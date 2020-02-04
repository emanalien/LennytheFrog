/// @description Camera Movement
x += (ObjectFollowing.x - x) * FollowRate;
if (!LockY) {
	y += (ObjectFollowing.y - y) * FollowRate;	
}

if (camera_following) {
	// calculate new position
	var view_x = x - view_width/2;
	var view_y = y - view_height/2;
	// bound along edges of the world for x
	if (view_x < 0) {
			view_x = 0;
	} else if (view_x > (r_width - view_width)) {
		view_x = (r_width - view_width);	
	}
	// same for y
	if (view_y < 0) {
		view_y = 0;	
	} else if (view_y > r_height - view_height) {
		view_y = r_height - view_height;	
	}

	// move the camera
	camera_set_view_pos(view_camera[0], view_x, view_y);
	
	#region parallax
	layer_x(bg_1, view_x/bg1_depth);
	layer_x(bg_2, view_x/bg2_depth);
	layer_x(bg_3, view_x/bg3_depth);
	#endregion
}