/// @description Regular Movement & Collisions

// move the grub in the current direction
horizontal_movement = move_direction * Speed;
// required to check if there is still ground below the enemy
// checks if there is something in front of the enemy
if (place_meeting(x + horizontal_movement, y, mCollider)) {	
	while (!place_meeting(x + sign(horizontal_movement), y, mCollider)) {
		x += sign(horizontal_movement);	
	}
	horizontal_movement = 0;
	move_direction *= -1;
}
x += horizontal_movement;

vertical_movement = GM.Gravity;
//vertial collisions
if (place_meeting(x, y + vertical_movement, mCollider)) {
	while (!place_meeting(x, y + sign(vertical_movement), mCollider)) {
		y += sign(vertical_movement);	
	}
	vertical_movement = 0;
}
y += vertical_movement;
if (!position_meeting(x + (radius_w * move_direction), y + radius_h + 8, mCollider)) {
	move_direction *= -1;
}	

// change sprite facing
image_xscale = move_direction * -1;

#region Health and death
if (Health <= 0) {
	instance_destroy(id);	
}
#endregion