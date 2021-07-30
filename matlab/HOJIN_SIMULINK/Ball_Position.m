ball_y = out.ball_y;
ball_x = out.ball_x;

% Location where ball hits the ground (y = 0)
y_threshold = -y0 + r_ball;
y_threshold_upper = y_threshold + 0.0005;
y_threshold_lower = y_threshold - 0.0005;

y_data = ball_y.data(:);
y_time = ball_y.time(:);

index = find((y_threshold_lower < y_data) & (y_data < y_threshold_upper), 1, 'last');

y_time(index)


% X distance of ball
x_data = ball_x.data(:);
x_landing = x_data(index)
x_actual = x_landing - (-x0) % Taken about x0 (x = 0).