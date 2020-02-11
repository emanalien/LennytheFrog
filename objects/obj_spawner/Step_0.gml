/// @description Check for new respawn
#region respawn an enemy
if (time_elapsed >= RespawnTime) {
	time_elapsed = 0;
	// spawn a new enemy
	currently_guiding = true;
	guidance_complete = false;
	last_spawned = instance_create_layer(x, y - sprite_height/2 - 500, "Enemy", EnemyType);
	with(last_spawned) {
		current_state = Guided
		move_direction = other.spawn_direction;
		guider = other;
		guide_x = other.guide_point_x;
		guide_y = other.guide_point_y;
	}

}
#endregion
time_elapsed += 1;

#region guide an enemy to the ground.
if (currently_guiding) {
	if (guidance_complete) {
		with(last_spawned) {
			current_state = Moving;
		}
		currently_guiding = false;
	}
	
}	
#endregion