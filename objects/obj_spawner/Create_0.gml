/// @description Time Setup
time_elapsed = 0;

#region guidance setup
guidance_complete = false;
currently_guiding = false;
spawn_direction = -1;
guide_point_x = x + (sprite_width/2 + 300) * spawn_direction;
guide_point_y = y;
#endregion