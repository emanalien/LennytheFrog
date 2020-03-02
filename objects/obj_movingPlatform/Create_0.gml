/// @description 
move_direction = sign(Endpoint.x - x);
start_x = x;
start_y = y;

// vector from start to end
vector_x = Endpoint.x - x;
vector_y = Endpoint.y - y;
vector_x /= magnitude(vector_x, vector_y);
vector_y /= magnitude(vector_x, vector_y);
vector_sign = 1;

#region player movement
x_amount_moved = 0;
y_amount_moved = 0;
#endregion