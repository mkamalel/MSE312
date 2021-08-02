% Simscape(TM) Multibody(TM) version: 6.0

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

F_sampling = 128;
Angle_noise = 0.000001;
Velocity_noise = 0.0002;
Current_noise = 0.0001;

% Parameters to convert torque to current
nu = 0.85;          % Gear efficiency
n = 3.75;           % Gear ratio
kt = 0.0527;        % Torque constant
Rm = 3.9;           % Motor resistance
Lm = 9.35e-3;       % Motor inductance
km = kt/sqrt(Rm);   % Motor Constant

% Initial Starting Position of ball COM (from origin (0,0))
x0 = -0.45697770542;
y0 = -0.02848783783;

r_arm = 0.1805;
x_launch = 0.39828784259;     % Distance from where ball is launched to x = 0;
y_launch = 0.22677771018;

% Ball
m_ball = 0.145;
r_ball = 0.0315;
J_ball = (2/5)*m_ball*r_ball^2;

J_rotor = 0.0000795; %kgm^2
J_arm = 0.0022994846; %kgm^2

J_load = J_arm + (J_ball + m_ball*r_arm^2) + J_rotor;
% J_load = J_arm + J_rotor;


% Position where ball COM is thrown (from origin (0,0))
% y = 226.77771018 mm
% x = -398.28784259 mm

x_desired = 1;
r_arm = 0.1805;
x_launch = 0.39828784259;     % Distance from where ball is launched to x = 0;
y_launch = 0.22677771018;
theta_release = pi/4;


t = sqrt((y_launch + (x_desired + x_launch)*tan(theta_release)) / 4.905);       % Time ball is in the air
v_x = (x_desired + x_launch)/t;
v = v_x/cos(theta_release);
W_cruise = (v/r_arm); 


% Trajectory control
q_ret = (pi/2);
T_ramp = 0.08;
T_ret = (q_ret - 0.5*W_cruise*T_ramp)/W_cruise + T_ramp;
T_fin = 0.4;
a_ret = -0.1;


%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(46).translation = [0.0 0.0 0.0];
smiData.RigidTransform(46).angle = 0.0;
smiData.RigidTransform(46).axis = [0.0 0.0 0.0];
smiData.RigidTransform(46).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [12.70000000000001 12.70000000000001 177.80000000000001];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(1).ID = 'B[Base_Top-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [136.55000000000001 -19.749999999999986 -12.700000000000035];  % mm
smiData.RigidTransform(2).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(2).axis = [-1 1.3401577416544657e-16 7.8504622934188746e-17];
smiData.RigidTransform(2).ID = 'F[Base_Top-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [12.700000000000006 12.699999999999999 76.799999999999997];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(3).ID = 'B[Base_Feet_1-1:-:Base_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-12.700000000000017 -12.699999999999992 177.80000000000001];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [9.4763462698352212e-17 -0.70710678118654757 -0.70710678118654757];
smiData.RigidTransform(4).ID = 'F[Base_Feet_1-1:-:Base_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [12.700000000000003 -12.699999999999992 177.80000000000001];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = 'B[Base_Top-1:-:Base_Feet_2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [101.46388379721618 12.7000000000008 24.600000000000001];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [-0.70710678118654746 7.8504622934188758e-17 0.70710678118654757];
smiData.RigidTransform(6).ID = 'F[Base_Top-1:-:Base_Feet_2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-12.699999999999996 -12.700000000000003 177.80000000000001];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(7).ID = 'B[Base_Top-2:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [136.55000000000004 -19.749999999999986 12.699999999999989];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962584 0.57735026918962573 0.57735026918962584];
smiData.RigidTransform(8).ID = 'F[Base_Top-2:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [12.700000000000006 -12.699999999999999 76.799999999999997];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = 'B[Base_Feet_1-1:-:Base_Top-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [38.100000000000023 -64.099999999999994 177.80000000000001];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(10).axis = [-0 5.5511151231257827e-17 1];
smiData.RigidTransform(10).ID = 'F[Base_Feet_1-1:-:Base_Top-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [37.500000000000007 37.49999999999995 0];  % mm
smiData.RigidTransform(11).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(11).axis = [-0.57735026918962584 -0.57735026918962562 -0.57735026918962584];
smiData.RigidTransform(11).ID = 'B[Arm_Bucket_Right-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-37.499999999999986 37.499999999999893 74.999999999999929];  % mm
smiData.RigidTransform(12).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962573 0.57735026918962595 0.57735026918962562];
smiData.RigidTransform(12).ID = 'F[Arm_Bucket_Right-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 5.0000000000000604];  % mm
smiData.RigidTransform(13).angle = 0;  % rad
smiData.RigidTransform(13).axis = [0 0 0];
smiData.RigidTransform(13).ID = 'B[Arm_Bucket_Top-1:-:Arm_Bucket_Left-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [4.2632564145606011e-14 -4.2632564145606011e-14 74.000000000000057];  % mm
smiData.RigidTransform(14).angle = 4.7752497883927352e-16;  % rad
smiData.RigidTransform(14).axis = [0.11624763874381928 -0.34874291623145787 0.92998110995055427];
smiData.RigidTransform(14).ID = 'F[Arm_Bucket_Top-1:-:Arm_Bucket_Left-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 5.0000000000000604];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = 'B[Arm_Bucket_Top-1:-:Arm_Bucket_Right-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [5.6843418860808015e-14 1.8474111129762605e-13 73.999999999999972];  % mm
smiData.RigidTransform(16).angle = 7.4476024597418174e-16;  % rad
smiData.RigidTransform(16).axis = [-0.59628479399994394 -0.29814239699997197 -0.7453559924999299];
smiData.RigidTransform(16).ID = 'F[Arm_Bucket_Top-1:-:Arm_Bucket_Right-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [32.500000000000014 49.999999999999986 5.0000000000000044];  % mm
smiData.RigidTransform(17).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(17).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(17).ID = 'B[Arm_Bucket_Top-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-32.500000000000099 50.000000000000057 1.0000000000000426];  % mm
smiData.RigidTransform(18).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(18).axis = [-0.57735026918962584 -0.57735026918962595 -0.57735026918962562];
smiData.RigidTransform(18).ID = 'F[Arm_Bucket_Top-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 0 0];  % mm
smiData.RigidTransform(19).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(19).axis = [1 0 0];
smiData.RigidTransform(19).ID = 'B[Arm_Rod-1:-:Arm_Bucket_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [1.7763568394002505e-15 5.6843418860808015e-14 4.9999999999999911];  % mm
smiData.RigidTransform(20).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(20).axis = [-6.9388939039072284e-17 -8.3266726846886741e-17 -1];
smiData.RigidTransform(20).ID = 'F[Arm_Rod-1:-:Arm_Bucket_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [0 -0.75000000000000067 7.5415000000000001];  % mm
smiData.RigidTransform(21).angle = 0;  % rad
smiData.RigidTransform(21).axis = [0 0 0];
smiData.RigidTransform(21).ID = 'B[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [1.0048591735576153e-14 -1.0048591735576172e-14 97.541499999999999];  % mm
smiData.RigidTransform(22).angle = 0;  % rad
smiData.RigidTransform(22).axis = [0 0 0];
smiData.RigidTransform(22).ID = 'F[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [22.25040000000028 12.700000000000061 50];  % mm
smiData.RigidTransform(23).angle = 2.0943951023931988;  % rad
smiData.RigidTransform(23).axis = [-0.57735026918962695 -0.57735026918962351 -0.57735026918962684];
smiData.RigidTransform(23).ID = 'B[Base_Feet_2-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-74.599999999999966 -8.4498977198407645e-13 22.250399999999956];  % mm
smiData.RigidTransform(24).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(24).axis = [-2.0500033882574023e-17 -0.70710678118654968 -0.70710678118654535];
smiData.RigidTransform(24).ID = 'F[Base_Feet_2-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [2.5399999999999867 29.327922019638667 0];  % mm
smiData.RigidTransform(25).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(25).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(25).ID = 'B[8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1:-:Motor-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [7.2475359047529654e-13 -22.860000000000014 1.2114753644709708e-12];  % mm
smiData.RigidTransform(26).angle = 2.0943951023931913;  % rad
smiData.RigidTransform(26).axis = [-0.57735026918962862 -0.5773502691896244 -0.57735026918962429];
smiData.RigidTransform(26).ID = 'F[8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1:-:Motor-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [2.0000000000000018 3.156854249492365 100];  % mm
smiData.RigidTransform(27).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(27).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(27).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [1.9999999999999298 2.0000000000000249 35.200000000000017];  % mm
smiData.RigidTransform(28).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(28).axis = [0.57735026918962584 -0.57735026918962562 0.57735026918962595];
smiData.RigidTransform(28).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [0 0 76.799999999999997];  % mm
smiData.RigidTransform(29).angle = 0;  % rad
smiData.RigidTransform(29).axis = [0 0 0];
smiData.RigidTransform(29).ID = 'B[Base_Feet_1-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [-12.700000000000006 12.699999999999999 0];  % mm
smiData.RigidTransform(30).angle = 0;  % rad
smiData.RigidTransform(30).axis = [0 0 0];
smiData.RigidTransform(30).ID = 'F[Base_Feet_1-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [-7.5000000000000036 9.9999999999999805 230.00000000000009];  % mm
smiData.RigidTransform(31).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(31).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(31).ID = 'B[Arm_Rod-1:-:Base_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [18.200000000000035 47.963455967290706 43.371320343559745];  % mm
smiData.RigidTransform(32).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(32).axis = [-0.57735026918962562 -0.57735026918962573 0.57735026918962595];
smiData.RigidTransform(32).ID = 'F[Arm_Rod-1:-:Base_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [37.500000000000014 1.999999999999974 209.84314575050766];  % mm
smiData.RigidTransform(33).angle = 0;  % rad
smiData.RigidTransform(33).axis = [0 0 0];
smiData.RigidTransform(33).ID = 'B[Arm_Rod-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [-1.9999999999999267 2.0000000000000062 -38.000000000000043];  % mm
smiData.RigidTransform(34).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(34).axis = [-3.9252311467094368e-16 1 -1.3007465412229488e-16];
smiData.RigidTransform(34).ID = 'F[Arm_Rod-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [0 0 100];  % mm
smiData.RigidTransform(35).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(35).axis = [1 0 0];
smiData.RigidTransform(35).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm_Rod-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [-35.700000000000017 -8.5265128291212022e-14 216.99999999999994];  % mm
smiData.RigidTransform(36).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(36).axis = [0.57735026918962584 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(36).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm_Rod-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [0 0 100];  % mm
smiData.RigidTransform(37).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(37).axis = [1 0 0];
smiData.RigidTransform(37).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [1.0041588769086878e-14 -3.845339450930517e-14 92.799999999999997];  % mm
smiData.RigidTransform(38).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(38).axis = [-1 -5.5511151231257815e-17 1.0824450702943441e-16];
smiData.RigidTransform(38).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [0 31.000000000000014 0];  % mm
smiData.RigidTransform(39).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(39).axis = [-1 -0 -0];
smiData.RigidTransform(39).ID = 'B[2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [-37.117566655480886 -43.805446961187265 -2.8421709430404007e-14];  % mm
smiData.RigidTransform(40).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(40).axis = [-1 -1.1684633017363027e-32 1.0415502998363791e-16];
smiData.RigidTransform(40).ID = 'F[2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [0 9.0000000000000018 0];  % mm
smiData.RigidTransform(41).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(41).axis = [-1 -0 -0];
smiData.RigidTransform(41).ID = 'B[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [20.899999999999995 35.92355488467453 6.123530608206778];  % mm
smiData.RigidTransform(42).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(42).axis = [0.57735026918962562 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(42).ID = 'F[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [0 0 0];  % mm
smiData.RigidTransform(43).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(43).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(43).ID = 'B[Motor-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [3.7930382076311052e-13 -6.1740945090726585e-13 -4.5];  % mm
smiData.RigidTransform(44).angle = 1.5700924586837752e-16;  % rad
smiData.RigidTransform(44).axis = [-0.73284809611514423 -0.68039228980082378 3.9144304350903308e-17];
smiData.RigidTransform(44).ID = 'F[Motor-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [-12.700000000000006 12.699999999999999 -76.799999999999997];  % mm
smiData.RigidTransform(45).angle = 0;  % rad
smiData.RigidTransform(45).axis = [0 0 0];
smiData.RigidTransform(45).ID = 'RootGround[Base_Feet_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [-293.52770542341341 -28.487842584930185 -38.400000000000041];  % mm
% smiData.RigidTransform(46).angle = 1.7177715174584023;  % rad
% smiData.RigidTransform(46).axis = [-0.35740674433659386 0.86285620946101615 0.3574067443365942];
smiData.RigidTransform(46).angle = 0;  % rad
smiData.RigidTransform(46).axis = [0 0 0];
smiData.RigidTransform(46).ID = 'SixDofRigidTransform[Lacrosse Ball-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(16).mass = 0.0;
smiData.Solid(16).CoM = [0.0 0.0 0.0];
smiData.Solid(16).MoI = [0.0 0.0 0.0];
smiData.Solid(16).PoI = [0.0 0.0 0.0];
smiData.Solid(16).color = [0.0 0.0 0.0];
smiData.Solid(16).opacity = 0.0;
smiData.Solid(16).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.013000000000000005;  % kg
smiData.Solid(1).CoM = [0 30.000000000000007 2.5];  % mm
smiData.Solid(1).MoI = [1.7604166666666665 4.6041666666666679 6.3104166666666686];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Arm_Bucket_Top*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.0055499999999999959;  % kg
smiData.Solid(2).CoM = [-34.999999999999993 30 37];  % mm
smiData.Solid(2).MoI = [2.6367124999999976 2.5442124999999973 0.11562500000000006];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Arm_Bucket_Left*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.035212232396786954;  % kg
smiData.Solid(3).CoM = [-0.00056087233551827009 -0.0015499856088251965 0.28983577093615032];  % in
smiData.Solid(3).MoI = [0.012307168897127673 0.012316388479138633 0.021745848342075505];  % kg*in^2
smiData.Solid(3).PoI = [8.2986055523429809e-06 5.9391333742303453e-06 3.0682326118345843e-08];  % kg*in^2
smiData.Solid(3).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = '2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE*:*2664N15';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.14499999999999999;  % kg
smiData.Solid(4).CoM = [0 0 0];  % mm
smiData.Solid(4).MoI = [57.5505 57.550500000000014 57.5505];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'Lacrosse Ball*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.049857570319179069;  % kg
smiData.Solid(5).CoM = [0 0 3.5000000000000009];  % in
smiData.Solid(5).MoI = [0.20866960032309162 0.20866960032309162 0.010169043039553478];  % kg*in^2
smiData.Solid(5).PoI = [0 0 0];  % kg*in^2
smiData.Solid(5).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'Base_Top*:*47065T992';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.029934613964194032;  % kg
smiData.Solid(6).CoM = [-1.3817410598694516e-06 -4.7691425541575843 1.0216136929620541e-06];  % mm
smiData.Solid(6).MoI = [4.7926277236307468 9.6754334275560172 12.629682416648169];  % kg*mm^2
smiData.Solid(6).PoI = [6.2590443528393286e-08 3.7571832907023497e-07 -1.3688963878533844e-07];  % kg*mm^2
smiData.Solid(6).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = '2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING*:*2031N21';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.0097948895555055367;  % kg
smiData.Solid(7).CoM = [0.80140691094201011 0.65354322370073969 0];  % in
smiData.Solid(7).MoI = [0.007943248265404431 0.0042725443230461771 0.0047686036697332347];  % kg*in^2
smiData.Solid(7).PoI = [0 0 -0.00078594147153980575];  % kg*in^2
smiData.Solid(7).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = '8982K141_Multipurpose 6061 Aluminum 90 Degree Angle*:*8982K141';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.050785330917315519;  % kg
smiData.Solid(8).CoM = [0.0001939346663463781 -0.00030122084698140509 0];  % in
smiData.Solid(8).MoI = [0.070975993644422322 0.085388458693678934 0.025168751743635111];  % kg*in^2
smiData.Solid(8).PoI = [0 0 2.3002561184029311e-05];  % kg*in^2
smiData.Solid(8).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = 'Base_Feet_2*:*47065T418';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.010110244591908839;  % kg
smiData.Solid(9).CoM = [0 -0.48092890697519824 49.999999999999993];  % mm
smiData.Solid(9).MoI = [8.3281423727405919 8.351715050741495 0.17363417177877369];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = '1439K411_1045 Carbon Steel Keyed Rotary Shaft*:*1439K411';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.067176850047562575;  % kg
smiData.Solid(10).CoM = [-1.060897328918095e-07 -0.0059822809684237713 112.23915220572029];  % mm
smiData.Solid(10).MoI = [287.05894052465658 286.03805179566132 3.5418154905399049];  % kg*mm^2
smiData.Solid(10).PoI = [0.042101897998037707 5.8143642514370491e-07 -3.8664765311684365e-08];  % kg*mm^2
smiData.Solid(10).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = 'Arm_Rod*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.005549999999999995;  % kg
smiData.Solid(11).CoM = [35 30.000000000000011 37.000000000000007];  % mm
smiData.Solid(11).MoI = [2.6367124999999976 2.5442124999999978 0.1156249999999998];  % kg*mm^2
smiData.Solid(11).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(11).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = 'Arm_Bucket_Right*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.021535778405584665;  % kg
smiData.Solid(12).CoM = [0 0 1.5118110236220466];  % in
smiData.Solid(12).MoI = [0.01860343357405245 0.01860343357405245 0.0043924775333954247];  % kg*in^2
smiData.Solid(12).PoI = [0 0 0];  % kg*in^2
smiData.Solid(12).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = 'Base_Feet_1*:*47065T992';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 0.013000000000000017;  % kg
smiData.Solid(13).CoM = [0 30.000000000000007 72.5];  % mm
smiData.Solid(13).MoI = [1.760416666666669 4.6041666666666714 6.3104166666666739];  % kg*mm^2
smiData.Solid(13).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(13).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = 'Arm_Bucket_Bottom*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.00022400000000000005;  % kg
smiData.Solid(14).CoM = [0 0 0];  % mm
smiData.Solid(14).MoI = [0.0039573333333333344 0.0039573333333333344 0.00059733333333333361];  % kg*mm^2
smiData.Solid(14).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(14).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = '98870A715_MACHINE KEY*:*98870A715';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 0.0017659469517735098;  % kg
smiData.Solid(15).CoM = [-0.0041663400404219255 -7.4763793078344695e-08 0.22756264614305111];  % in
smiData.Solid(15).MoI = [8.5222156350694251e-05 8.3999692073320425e-05 8.2993766015534474e-05];  % kg*in^2
smiData.Solid(15).PoI = [-1.2279419702182952e-11 1.2223510668923413e-06 7.6403356722036652e-11];  % kg*in^2
smiData.Solid(15).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = '2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE*:*2664N468';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 0.16847275010912963;  % kg
smiData.Solid(16).CoM = [0.00030899374210863054 49.888197860393198 -0.088790547023854929];  % mm
smiData.Solid(16).MoI = [169.10941657032308 45.60929471073365 168.53854897944623];  % kg*mm^2
smiData.Solid(16).PoI = [0.59975450636772731 0.0018589524732528593 -0.00224588945234811];  % kg*mm^2
smiData.Solid(16).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = 'Motor*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(2).Rz.Pos = 0.0;
smiData.CylindricalJoint(2).Pz.Pos = 0.0;
smiData.CylindricalJoint(2).ID = '';

smiData.CylindricalJoint(1).Rz.Pos = -1.1017764609091712e-14;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm_Rod-1]';

smiData.CylindricalJoint(2).Rz.Pos = -132.87430556248154;  % deg
smiData.CylindricalJoint(2).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(2).ID = '[Motor-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';


%Initialize the PlanarJoint structure array by filling in null values.
smiData.PlanarJoint(5).Rz.Pos = 0.0;
smiData.PlanarJoint(5).Px.Pos = 0.0;
smiData.PlanarJoint(5).Py.Pos = 0.0;
smiData.PlanarJoint(5).ID = '';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(1).Rz.Pos = 180;  % deg
smiData.PlanarJoint(1).Px.Pos = 0;  % mm
smiData.PlanarJoint(1).Py.Pos = 0;  % mm
smiData.PlanarJoint(1).ID = '[Arm_Bucket_Top-1:-:Arm_Bucket_Bottom-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(2).Rz.Pos = -90.000000000000014;  % deg
smiData.PlanarJoint(2).Px.Pos = 0;  % mm
smiData.PlanarJoint(2).Py.Pos = 0;  % mm
smiData.PlanarJoint(2).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(3).Rz.Pos = -45.000000000000057;  % deg
smiData.PlanarJoint(3).Px.Pos = 0;  % mm
smiData.PlanarJoint(3).Py.Pos = 0;  % mm
smiData.PlanarJoint(3).ID = '[Arm_Rod-1:-:Base_Top-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(4).Rz.Pos = 177.87430556248185;  % deg
smiData.PlanarJoint(4).Px.Pos = 0;  % mm
smiData.PlanarJoint(4).Py.Pos = 0;  % mm
smiData.PlanarJoint(4).ID = '[2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(5).Rz.Pos = -132.87430556248111;  % deg
smiData.PlanarJoint(5).Px.Pos = 0;  % mm
smiData.PlanarJoint(5).Py.Pos = 0;  % mm
smiData.PlanarJoint(5).ID = '[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';


%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(3).Pz.Pos = 0.0;
smiData.PrismaticJoint(3).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = '[Base_Top-1:-:Base_Feet_2-1]';

smiData.PrismaticJoint(2).Pz.Pos = 0;  % m
smiData.PrismaticJoint(2).ID = '[Arm_Bucket_Right-1:-:Arm_Bucket_Bottom-1]';

smiData.PrismaticJoint(3).Pz.Pos = 0;  % m
smiData.PrismaticJoint(3).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(1).Rz.Pos = 0.0;
smiData.RevoluteJoint(1).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 135.00000000000006;  % deg
smiData.RevoluteJoint(1).ID = '[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

