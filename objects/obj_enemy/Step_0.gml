/// @description Insert description here
// You can write your code in this editor

// move the grub in the current direction
horizontal_movement = move_direction * Speed;
// required to check if there is still ground below the enemy
var horizontal_pos_check = (move_direction * Radius);
// checks if there is something in front of the enemy
if (place_meeting(x + horizontal_movement, y, mCollider) or // then checks if there's no ground beneath
 		!place_meeting(x + horizontal_pos_check + horizontal_movement, y + 1, mCollider)) {
	while (!place_meeting(x + sign(horizontal_movement), y, mCollider) and 
			place_meeting(x + sign(horizontal_movement) + horizontal_pos_check, y + 1, mCollider)) {
		x += sign(horizontal_movement);	
	}
	horizontal_movement = 0;
	move_direction *= -1;
}
x += horizontal_movement;

// change sprite facing
image_xscale = move_direction * -1;