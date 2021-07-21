 function [tau, e_pid, ed_pid, q_d, qd_d, qdd_d] = fcn(command, pcommand, theta, t, T_ramp. W_cruise, T_fin, T_ret, a_ret, q_ret, omega)
 
 if (t <= T_ramp)
     q_d = 0.5 * W_cruise * t^2/T_ramp;
     qd_d = W_cruise* t/T_ramp;
     qdd_d = W_cruise/T_ramp;
     e_pid = qd_d - omega;
     tau = command;
     q_0=[];
     q_1=[];
     q_2=[];
     q_3=[];
     ed_pid = 0;
 elseif (t > T_ramp && t < T_ret)
     q_d = 0.5 * W_cruise * T_ramp + W_cruise * (t-T_ramp);
     qd_d = W_cruise;
     qdd_d = 0;
     e_pid = qd_d - omega;
     tau = command;
     q_0=[];
     q_1=[];
     q_2=[];
     q_3=[];
     ed_pid = 0;
 elseif (t >= T_ret && t < T_fin)
     Del = T_fin- T_ret;
     q_2 = a_ret*0.5;
     q_1 = W_cruise;
     q_0 = q_ret;
    % ii = inv([Del^3 Del ^4 Del^5; 3*Del^2 4*Del^4; 6*Del 12*Del^2 20*Del^3])*[-q_0-q_1*Del-q_2*del^2; -q_1-2*q_2*Del; -2*Del];
     
     q_3=ii(1); q_4=ii(2); q_5=ii(3);
     Del_T= t- T_ret;
     
     q_d = q_0 + q_1*Del_T + q_2*Del_T^2 + q_3* Del_T^3 + q_4*Del_T^4 + q_5*Del_T^5;
     qd_d = q_1 +2*q_2 * Del_T + 3*q_3*Del_T^2 + 4*q_4*Del_T^3 + 5*q_5*Del_T^4;
     qdd_d = 2*q_2 + 6*q_3*Del_T + 12*q_4*Del_T^2 + 20*q_5*Del_T^3;
     e_pid = q_d - theta;
     ed_pid = qd_d - omega;
     tau = pcommand;
     
 else 
     q_d = 0;
     qd_d = 0;
     qdd_d = 0;
     e_pid = q_d - theta;
     ed_pid = qd_d - omega;
     tau = pcommand;
 end
 
         
     