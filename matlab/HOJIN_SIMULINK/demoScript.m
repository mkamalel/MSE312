% Turns off a warning message
warning('off','sm:sli:setup:compile:LocalSolverNotSupported')

open_system('Quintic_Controller')
run('Parameters.m')


Simulation_Time = 1;    % Simulation times for 0.5, 1.2, 1.5 m

i = 1;
range_results = [];

for x_desired = [0.30, 1.01, 1.35]
    
    set_param('Quintic_Controller/x_desired','Value', num2str(x_desired));
    output = sim('Quintic_Controller', Simulation_Time);
    
    x_landing = getBallPos(output.ball_y, output.ball_x);
    y_max = max(output.ball_y.data()) - 0.02848783783;
    
    total_power = output.total_power.data(find(output.total_power.data(), 1, 'last'));
    return_time = output.return_time.data(find(output.return_time.data(), 1, 'last'));
    
    range_results = [range_results; [x_desired, x_landing, x_landing-x_desired, y_max, total_power, return_time]]; 

    fprintf("\nTest " + i + '\n');
    fprintf(('x_desired = %.2f m\n'), x_desired);
    fprintf(('x_landing = %.2f m\n'), x_landing);
    fprintf(('y_max = %.2f m\n'), y_max);
    fprintf(('total_power = %.2f W\n'), total_power);
    fprintf(('return_time = %.2f s\n'), return_time);
    
    %figure();
    %plot_title = sprintf("Test %d | x desired: %.2f | x landing = %.2f | y max = %.2f | total power = %.2f | return time = %.2f",...
                        %i, x_desired, x_landing, y_max, total_power, return_time);

    %plot(output.ball_x.Data+x0, output.ball_y.Data+y0);
    %title(plot_title);
    %ylabel('Y position (m)');
    %xlabel('X position (m)');
    
    figure();
    %plot_title = sprintf("Test %d", i);
    subplot(2,2,1)
    plot_title = sprintf("Test %d | x desired: %.2f | x landing = %.2f | y max = %.2f | total power = %.2f | return time = %.2f",...
                        i, x_desired, x_landing, y_max, total_power, return_time);

    plot(output.ball_x.Data+x0, output.ball_y.Data+y0);
    title("Ball Trajectory");
    ylabel('Y position (m)');
    xlabel('X position (m)');
        
    subplot(2,2,2)
    plot(output.arm_pos);
    title("Arm Position");
    ylabel('Angular Position (rad)');
    xlabel('Time (s)');    

    subplot(2,2,3)
    plot(output.arm_vel);
    title("Arm Velocity");
    ylabel('Angular Speed (rad/s)');
    xlabel('Time (s)');    

    subplot(2,2,4)
    plot(output.arm_accel);
    title("Arm Acceleration");
    ylabel('Angular Acceleration (rad/s2)');
    xlabel('Time (s)'); 
    
    sgtitle(plot_title) 
    
    i = i+1;

end