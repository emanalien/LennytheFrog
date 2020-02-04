/// @desc State Machine: Collision Checks and Movement

// Check for dropping, the fast and easy way
if (drop_key) {
	drop_key = false;
	vertical_movement = TerminalV;
	horizontal_movement = 0;
}

// change sprite facing
if (horizontal_movement != 0) {
	image_xscale = sign(horizontal_movement);
}
#region collisions
// horizontal collisions
if (place_meeting(x + horizontal_movement, y, mCollider)) {
	// create a reference to the collider
	var otherCollider = instance_place(x + horizontal_movement, y, mCollider);
	// incrementally move the player until just next to collider
	while (!place_meeting(x + sign(horizontal_movement), y, mCollider)) {
		x += sign(horizontal_movement);
	}
	// stop anymore horizontal movement
	horizontal_movement = 0;
	
	// enact collision events by calling the script from the other object
	with (otherCollider) {
		if (HasCollisionEvents) {
			Collidee = other.id;
			event_user(0);
		}
	}
}
x += horizontal_movement;
// vertical collisions
if (place_meeting(x, y + vertical_movement, mCollider)) {
	var otherCollider = instance_place(x, y + vertical_movement, mCollider);
	// reset jumping
	//is_dropping = false;
	
	while (!place_meeting(x, y + sign(vertical_movement), mCollider)) {
		y += sign(vertical_movement);
	}
	vertical_movement = 0;
	
	// collision events
	with (otherCollider) {
		if (HasCollisionEvents) {
			Collidee = other.id;
			event_user(0);
		}
	}
}
y += vertical_movement;
#endregion

// gravity movement
#region gravity
vertical_movement += GameManager.Gravity;
if (vertical_movement > TerminalV) {
	vertical_movement = TerminalV;	
}
#endregion

#region licking 
// call the licking script
if (currently_licking) {
	event_user(Licking);
}	
#endregion