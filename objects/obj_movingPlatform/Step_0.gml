/// @description Insert description here
// You can write your code in this editor
if (move_towards_ep) {
	var dest_x = Endpoint.x;
	var dest_y = Endpoint.y;
} else {
	var dest_x = start_x;
	var dest_y = start_y;
}
if (abs(dest_x - x) < Error) and (abs(dest_y - y) < Error) {
	move_towards_ep = !move_towards_ep;
}
// @TODO: Not sure how well this works for diagonals, but for straight it works great
x = clamp(lerp(x, dest_x, Lerp), x-MaxSpeed, x+MaxSpeed);
y = clamp(lerp(y, dest_y, Lerp), y-MaxSpeed, y+MaxSpeed);
x_amount_moved = x - xprevious;
y_amount_moved = y - yprevious;

// vector method: @TODO: Doesn't seem to work
//vector_x = (dest_x - x);
//vector_y = (dest_y - y);
//vector_sign = sign(vector_x);
//// calculate the actual lerp amount
//var actual_lerp = sqrt(sqr(MaxSpeed) / (sqr(vector_x) + sqr(vector_y)));

//x += (vector_x * actual_lerp);
//y += (vector_y * actual_lerp);