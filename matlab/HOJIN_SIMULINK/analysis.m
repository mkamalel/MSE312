%% Current Controller
Current_time_info = stepinfo(currentcontroller.signals.values,currentcontroller.time);

transient_Current = struct();
indices = find(abs(currentcontroller.time)>Current_time_info.SettlingTime);

plt_title = sprintf("Current Controller");

figure();
plot(currentcontroller.time, currentcontroller.signals.values, 'b')
title(plt_title);
ylabel('Current (A)')
xlabel('Time (s)')
hold on
xline(Current_time_info.SettlingTime,'--r', {Current_time_info.SettlingTime,'Steady State'});
xline(Current_time_info.RiseTime,'--r', {Current_time_info.RiseTime,'Rise Time'});
yline(Current_time_info.Peak,'--r', {Current_time_info.Peak,'Peak'});
%ylim([-200 200])

%% Speed Controller
Speed_time_info = stepinfo(speedcontroller.signals.values,speedcontroller.time);

transient_Current = struct();
indices = find(abs(speedcontroller.time)>Current_time_info.SettlingTime);

plt_title = sprintf("Speed Controller");

figure();
plot(speedcontroller.time, speedcontroller.signals.values, 'b')
title(plt_title);
ylabel('Speed (A)')
xlabel('Time (s)')
hold on
xline(Speed_time_info.SettlingTime,'--r', {Speed_time_info.SettlingTime,'Steady State'});
xline(Speed_time_info.RiseTime,'--r', {Speed_time_info.RiseTime,'Rise Time'});
yline(Speed_time_info.Peak,'--r', {Speed_time_info.Peak,'Peak'});