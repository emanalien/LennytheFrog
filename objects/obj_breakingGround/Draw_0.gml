/// @description fade the sprite as we move
if (falling) and false {
	visible = false;
	percent_fallen = (y - start_y) / (fall_distance);
	draw_set_alpha(percent_fallen);
	draw_sprite(sprite_index, 0, x, y);
	draw_set_alpha(1);
}
