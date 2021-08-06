% Turns off a warning message
warning('off','sm:sli:setup:compile:LocalSolverNotSupported')

open_system('Quintic_Controller_max_distance')
run('Parameters.m')

Simulation_Time = [0.95, 1.5];

i = 1;
range_results = [];

% Test 1 = max distances
% Test 2 = max height
for W_cruise = [40, 40]
    
    set_param('Quintic_Controller_max_distance/test_num','Value', num2str(i));
    set_param('Quintic_Controller_max_distance/W_cruise','Value', num2str(W_cruise));
    output = sim('Quintic_Controller_max_distance', Simulation_Time(i));
    
    x_landing = getBallPos(output.ball_y, output.ball_x);
    y_max = max(output.ball_y.data()) - 0.02848783783;
    
    total_power = output.total_power.data(find(output.total_power.data(), 1, 'last'));
    return_time = output.return_time.data(find(output.return_time.data(), 1, 'last'));
    
    range_results = [range_results; [W_cruise, x_landing, y_max, total_power, return_time]]; 

    if i == 1
        fprintf('\nTest Max Distance\n');
    elseif i == 2
        fprintf('\nTest Max Height\n');
    end
    
    fprintf(('w_cruise = %.2f rad/s\n'), W_cruise);
    fprintf(('x_landing = %.2f m\n'), x_landing);
    fprintf(('y_max = %.2f m\n'), y_max);
    fprintf(('total_power = %.2f W\n'), total_power);
    fprintf(('return_time = %.2f s\n'), return_time);
    
    i = i+1;
end