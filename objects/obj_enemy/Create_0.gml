/// @description Insert description here
// You can write your code in this editor
move_direction = 1;

// move the enemy to the ground
while (!place_meeting(x, y + 1, mCollider)) {
	y += 1;	
}