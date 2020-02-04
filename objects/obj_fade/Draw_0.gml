/// @description Draw the fade

// draw a solid rectangle
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);

draw_set_alpha(StartOpacity);
draw_set_color(c_black);
draw_rectangle(view_x, view_y, view_x + view_width, view_y + view_height, false);
draw_set_alpha(1);
StartOpacity += Increment * Direction;

// if the opacity has gone passed the end point
if (StartOpacity * Direction > End) {
	with(caller) {
		event_user(other.fade_finished_function);
	}
	instance_destroy(id);
}