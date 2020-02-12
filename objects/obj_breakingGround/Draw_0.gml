/// @description fade the sprite as we move
if (falling) {
	percent_fallen = 1 - (y - start_y)/fall_distance;
	//percent_fallen = 1;
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, percent_fallen);
} else {
	draw_sprite(sprite_index, 0, x, y);	
}
