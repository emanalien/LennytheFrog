/// @description Insert description here
// You can write your code in this editor

// assign destination based on direction moving
changed_direction = false;
if (vector_sign == 1) {
	if (x == Endpoint.x) and (y == Endpoint.y) {
		vector_sign = -1;
		changed_direction = true;
	}
} else {
	if (x == start_x) and (y == start_y) {
		vector_sign = 1;
		changed_direction = true;
	}
}
if (changed_direction) {
	x_amount_moved = 0;
	y_amount_moved = 0;
}
// TODO: Works, but not for horizontal platforms



#region move based on Acceleration and vector_x and y
deaccel = false;
if (!changed_direction) {
	if (vector_sign == 1) {
		if (abs(Endpoint.x - x) <= distance_to_stop(x_amount_moved, Acceleration)) and 
					abs(Endpoint.y -y) <= distance_to_stop(y_amount_moved, Acceleration) {
			x_amount_moved -= vector_x * vector_sign * Acceleration;
			y_amount_moved -= vector_y * vector_sign * Acceleration;
			deaccel = true;
			}
	} else {
		if (abs(start_x - x) <= distance_to_stop(x_amount_moved, Acceleration)) and 
					abs(start_y - y) <= distance_to_stop(y_amount_moved, Acceleration) {
			x_amount_moved -= vector_x * vector_sign * Acceleration;
			y_amount_moved -= vector_y * vector_sign * Acceleration;
			deaccel = true;
		}	
	}
}
if (!deaccel) {
	x_amount_moved += vector_x * vector_sign * Acceleration;
	y_amount_moved += vector_y * vector_sign * Acceleration;
}
if (abs(x_amount_moved) > MaxSpeed) x_amount_moved = vector_x * vector_sign * MaxSpeed;
if (abs(y_amount_moved) > MaxSpeed) y_amount_moved = vector_y * vector_sign * MaxSpeed;
#endregion



x += x_amount_moved;
y += y_amount_moved;