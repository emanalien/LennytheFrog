// bouncer(object, vertical bounce, [horizontal bounce], [diminish rate])
/// @args object
/// @args vertical bounce
/// @args (horizontal bounce)
/// @args (diminish rate)
var object = argument[0];
var vert = argument[1];
if (object.object_index == obj_lenny) {
	object.vertical_movement = -vert;
	if (vert != 0) {
		object.current_state = object.Jumping;	
	}
	// check if we have a third argument
	if (argument_count > 3) {
		// we need to apply the push
		object.current_state = object.Pushed;
		object.push_direction = sign(argument[2]);
		object.force_of_push = argument[2] * sign(argument[2]);
		object.diminish_rate = argument[3];
	}
}