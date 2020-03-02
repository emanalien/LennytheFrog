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

#region if on moving platform
if (on_platform) {
	x += horizontal_movement_carry;
	y += vertical_movement_carry;
	horizontal_movement_carry = 0;
	vertical_movement_carry = 0;
}
#endregion

#region collisions
// horizontal collisions	
// create a reference to the collider
var otherCollider = instance_place(x + horizontal_movement, y, mCollider);
if (otherCollider) and (otherCollider.is_solid) {
	// incrementally move the player until just next to collider
	while (!place_meeting(x + sign(horizontal_movement), y, mCollider)) {
		x += sign(horizontal_movement);
	}
	// stop anymore horizontal movement
	horizontal_movement = 0;
	
	// Unsure about this: stop upwards vertical movement
	//vertical_movement = clamp(vertical_movement, 0, 10000);
	// @TODO: NEED TO WORK OUT A NEW WAY OF STOPPING "ROUNDING" THE CORNERS>
	
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
var otherCollider = instance_place(x, y + vertical_movement, mCollider);
if (otherCollider) and (otherCollider.is_solid) {
	// reset jumping
	//is_dropping = false;
	
	while (!place_meeting(x, y + sign(vertical_movement), mCollider)) {
		y += sign(vertical_movement);
	}
	vertical_movement = 0;
	// unsure about this: stop horizontal movememnt??
	
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
vertical_movement += GM.Gravity;
if (vertical_movement > GM.TerminalV) {
	vertical_movement = GM.TerminalV;	
}
#endregion

#region licking 
// call the licking script
if (currently_licking) {
	event_user(Licking);
}	
#endregion