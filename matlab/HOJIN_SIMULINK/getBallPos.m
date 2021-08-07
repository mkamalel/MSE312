function [x_pos] = getBallPos(ball_y, ball_x)

x0 = -0.45697770542;
y0 = -0.02848783783;

% Location where ball hits the ground (y = 0)
y_threshold = -y0;
y_threshold_upper = y_threshold + 0.0001;
y_threshold_lower = y_threshold - 0.0001;

y_data = ball_y.data(:);
y_time = ball_y.time(:);

index = find((y_threshold_lower < y_data) & (y_data < y_threshold_upper), 1, 'last');


y_time(index);


% X distance of ball
x_data = ball_x.data(:);
x_landing = x_data(index);
x_pos = x_landing - (-x0); % Taken about x0 (x = 0).
end

