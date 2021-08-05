function [T_ramp, W_cruise, T_fin, T_ret, a_ret, q_ret]= fcn(x_desired)

r_arm = 0.1805;
x_launch = 0.39828784259;     % Distance from where ball is launched to x = 0;
y_launch = 0.22677771018;
theta_release = pi/4;

t = sqrt((y_launch + (x_desired + x_launch)*tan(theta_release)) / 4.905);       % Time ball is in the air
v_x = (x_desired + x_launch)/t;
v = v_x/cos(theta_release); 


% Trajectory control
W_cruise = (v/r_arm)*0.97; 
q_ret = pi/2;
T_ramp = 0.1;
T_ret = (q_ret - 0.5*W_cruise*T_ramp)/W_cruise + T_ramp;

if x_desired >= 0.2 || x_desired <= 0.7
    T_fin = T_ret + 0.15;   %0.2 - 0.7 m
    
elseif x_desired >= 0.71 || x_desired <= 1.05
    T_fin = T_ret + 0.2;    %0.71 - 1.05 m

elseif x_desired >= 1.06 || x_desired <= 1.21
    T_fin = T_ret + 0.17;   %1.06 - 1.21 m 

elseif x_desired >= 1.22 || x_desired <= 1.36
    T_fin = T_ret + 0.15;   %1.22 - 1.36 m
    
elseif x_desired >= 1.37 || x_desired <= 1.42
    T_fin = T_ret + 0.14;   %1.37 - 1.42 m
    
else
    T_fin = T_ret + 0.13;   %1.42 - 1.5 m
end

a_ret = -100;