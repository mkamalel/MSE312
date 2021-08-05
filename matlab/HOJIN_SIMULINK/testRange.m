open_system('Quintic_Controller')

Simulation_Time = 0.7;

range_results = [];
for x_desired = 0.2:0.01:1.5
    set_param('Quintic_Controller/x_desired','Value', num2str(x_desired));
    output = sim('Quintic_Controller', Simulation_Time);
    x_landing = getBallPos(output.ball_y, output.ball_x);
    
    range_results = [range_results; [x_desired, x_landing, x_landing-x_desired]]; 
    disp(x_landing);
end
    
