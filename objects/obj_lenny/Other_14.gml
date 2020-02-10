/// @description State Machine: Licking

// if not already instantiated, instantiate the tongue tip
if (!tongue_instance) {
	tongue_max_extension = false;
	tongue_distance = radius_w + 2;
	tongue_instance = instance_create_layer(x + (tongue_distance * player_direction), 
											y, "Tongue", tongue_object);
}
// update the tongue direction based on player facing
tongue_direction = player_direction;
// check if the tongue has reached max extension, then reverse direction
if (tongue_distance >= TongueExtension) {
	tongue_max_extension = true;
} 


#region update direction, check retracting and move tongue
// reverse the tongue direction if retracting 
if (tongue_distance < radius_w + 2) {
	instance_destroy(tongue_instance);
	tongue_instance = 0;
	currently_licking = false;
} else {
	// update the tongue distance
	if (tongue_max_extension) {
		tongue_distance -= TongueSpeed;
	} else {
		tongue_distance += TongueSpeed;	
	}
	// update the tongue position
	tongue_instance.x = x + (tongue_distance*tongue_direction);
	tongue_instance.y = y
}
#endregion