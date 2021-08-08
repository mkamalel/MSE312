% Turns off a warning message
warning('off','sm:sli:setup:compile:LocalSolverNotSupported')

open_system('Quintic_Controller_max_distance')
run('Parameters.m')

Simulation_Time = 5;

i = 1;
range_results = [];

% Test 1 = max distances
% Test 2 = max height
for W_cruise = [40, 40]
    
    set_param('Quintic_Controller_max_distance/test_num','Value', num2str(i));
    set_param('Quintic_Controller_max_distance/W_cruise','Value', num2str(W_cruise));
    output = sim('Quintic_Controller_max_distance', Simulation_Time());
    
    x_landing = getBallPos(output.ball_y, output.ball_x);
    y_max = max(output.ball_y.data()) - 0.02848783783;
    
    total_power = output.total_power.data(find(output.total_power.data(), 1, 'last'));
    return_time_1 = output.return_time.data(find(output.return_time.data(), 1, 'last'));
    return_time_2 = output.return_time2.data(find(output.return_time2.data(), 1, 'last'));
    
    range_results = [range_results; [x_landing, y_max, total_power, return_time_1, return_time_2]]; 

    if i == 1
        fprintf('\nTest Max Distance\n');
    elseif i == 2
        fprintf('\nTest Max Height\n');
    end
    
    fprintf("\nTest " + num2str(i) + '\n');
    fprintf(('x_max = %.4f m\n'), x_landing);
    fprintf(('y_max = %.4f m\n'), y_max);
    fprintf(('total_power = %.4f W\n'), total_power);
    fprintf(('return_time_1 = %.4f s\n'), return_time_1);
    fprintf(('return_time_2 = %.4f s\n'), return_time_2);
    
    
    figure();
    plot_title = sprintf("Test %d | x max = %.2f | y max = %.2f | total power = %.2f | return time 1 = %.2f, | return time 2 = %.2f",...
                        i, x_landing, y_max, total_power, return_time_1, return_time_2);

    plot(output.ball_x.Data+x0, output.ball_y.Data+y0);
    title(plot_title);
    ylabel('Y position (m)');
    xlabel('X position (m)');
    
    figure();
    plot_title = sprintf("Test %d", i);
    
    subplot(2,2,1)
    plot(output.arm_pos);
    title("Arm Position");
    ylabel('Angular Position (rad)');
    xlabel('Time (s)');    

    subplot(2,2,2)
    plot(output.arm_vel);
    title("Arm Velocity");
    ylabel('Angular Speed (rad/s)');
    xlabel('Time (s)');    

    subplot(2,2,3)
    plot(output.arm_accel);
    title("Arm Acceleration");
    ylabel('Angular Acceleration (rad/s2)');
    xlabel('Time (s)'); 
    
    subplot(2,2,4)
    plot(output.total_power);
    title('Total Power');
    ylabel('Power (W)');
    xlabel('Time (s)');
    
    sgtitle(plot_title) 
    
    i = i+1;
end