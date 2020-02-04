/// @description Move the fly up and down slightly

if (y <= start_y - MoveRange) or (y >= start_y + MoveRange) {
	move_direction *= -1;
} 

y += Speed * move_direction;