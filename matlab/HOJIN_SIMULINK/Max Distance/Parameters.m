F_sampling = 128;
Angle_noise = 0.000001;
Velocity_noise = 0.000001;
Current_noise = 0.000001;

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

% Ball
m_ball = 0.145;
r_ball = 0.0315;
J_ball = (2/5)*m_ball*r_ball^2;

J_rotor = 0.0000795; %kgm^2
J_arm = 0.0022994846; %kgm^2
r_arm = 0.1805;
J_load = J_arm + (J_ball + m_ball*r_arm^2) + J_rotor;



% a_ret = -100;
% W_cruise = 35;
% q_ret = 4/9*pi;
% T_ramp = 0.07;
% T_ret = (q_ret - 0.5*W_cruise*T_ramp)/W_cruise + T_ramp;
% T_fin = 0.15;

% Simscape model
%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(48).translation = [0.0 0.0 0.0];
smiData.RigidTransform(48).angle = 0.0;
smiData.RigidTransform(48).axis = [0.0 0.0 0.0];
smiData.RigidTransform(48).ID = '';

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
smiData.RigidTransform(6).translation = [101.46388379717334 12.7000000000008 24.600000000000001];  % mm
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
smiData.RigidTransform(11).translation = [-37.000000000000007 7.5000000000000346 5.0000000000000044];  % mm
smiData.RigidTransform(11).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(11).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(11).ID = 'B[Arm_Bucket_Right-1:-:Arm_Bucket_Left-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [37.000000000000078 7.5000000000000107 -68.999999999999986];  % mm
smiData.RigidTransform(12).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(12).ID = 'F[Arm_Bucket_Right-1:-:Arm_Bucket_Left-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [-37.000000000000007 7.5000000000000346 5.0000000000000044];  % mm
smiData.RigidTransform(13).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(13).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(13).ID = 'B[Arm_Bucket_Right-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [37 7.5000000000000817 5.0000000000000213];  % mm
smiData.RigidTransform(14).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(14).axis = [1 -7.8504622934188734e-17 -2.9439233600320774e-17];
smiData.RigidTransform(14).ID = 'F[Arm_Bucket_Right-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [32 16.000000000000014 5.0000000000000044];  % mm
smiData.RigidTransform(15).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(15).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(15).ID = 'B[Arm_Bucket_Top-1:-:Arm_Bucket_Left-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [-37 16.000000000000099 4.4408920985006262e-15];  % mm
smiData.RigidTransform(16).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(16).axis = [-2.039278384626744e-17 -8.5368929620491088e-17 1];
smiData.RigidTransform(16).ID = 'F[Arm_Bucket_Top-1:-:Arm_Bucket_Left-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 0 5.0000000000000044];  % mm
smiData.RigidTransform(17).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(17).axis = [0.57735026918962584 -0.57735026918962562 0.57735026918962584];
smiData.RigidTransform(17).ID = 'B[Arm_Bucket_Top-1:-:Arm_Bucket_Right-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [37.000000000000085 7.815970093361102e-14 -31.999999999999993];  % mm
smiData.RigidTransform(18).angle = 1.570796326794897;  % rad
smiData.RigidTransform(18).axis = [1 2.3551386880256619e-16 3.1401849173675489e-16];
smiData.RigidTransform(18).ID = 'F[Arm_Bucket_Top-1:-:Arm_Bucket_Right-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [-32.000000000000014 16.000000000000014 5.000000000000032];  % mm
smiData.RigidTransform(19).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(19).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(19).ID = 'B[Arm_Bucket_Top-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [32.000000000000043 16.000000000000156 -69.000000000000114];  % mm
smiData.RigidTransform(20).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(20).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(20).ID = 'F[Arm_Bucket_Top-1:-:Arm_Bucket_Bottom-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [-7.5000000000000036 9.9999999999999805 230.00000000000003];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(21).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(21).ID = 'B[Arm_Rod-1:-:Arm_Bucket_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [7.4999999999999574 -15.999999999999972 -225.00000000000009];  % mm
smiData.RigidTransform(22).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(22).axis = [-0.57735026918962573 0.57735026918962573 0.57735026918962584];
smiData.RigidTransform(22).ID = 'F[Arm_Rod-1:-:Arm_Bucket_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 -0.75000000000000067 7.5415000000000001];  % mm
smiData.RigidTransform(23).angle = 0;  % rad
smiData.RigidTransform(23).axis = [0 0 0];
smiData.RigidTransform(23).ID = 'B[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-3.045760882530636e-14 9.0595818516924562e-15 97.541499999999985];  % mm
smiData.RigidTransform(24).angle = 0;  % rad
smiData.RigidTransform(24).axis = [0 0 0];
smiData.RigidTransform(24).ID = 'F[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [22.25040000000028 12.700000000000061 50];  % mm
smiData.RigidTransform(25).angle = 2.0943951023931988;  % rad
smiData.RigidTransform(25).axis = [-0.57735026918962695 -0.57735026918962351 -0.57735026918962684];
smiData.RigidTransform(25).ID = 'B[Base_Feet_2-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-74.599999999999966 -8.4854248566287695e-13 22.250399999999956];  % mm
smiData.RigidTransform(26).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(26).axis = [-2.0500033882574023e-17 -0.70710678118654968 -0.70710678118654535];
smiData.RigidTransform(26).ID = 'F[Base_Feet_2-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [2.5399999999999867 29.327922019638667 0];  % mm
smiData.RigidTransform(27).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(27).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(27).ID = 'B[8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1:-:Motor-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [7.1054273576009473e-13 -22.860000000000014 1.1617373729677638e-12];  % mm
smiData.RigidTransform(28).angle = 2.0943951023931913;  % rad
smiData.RigidTransform(28).axis = [-0.57735026918962862 -0.5773502691896244 -0.57735026918962429];
smiData.RigidTransform(28).ID = 'F[8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1:-:Motor-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [2.0000000000000018 3.1568542494923717 100];  % mm
smiData.RigidTransform(29).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(29).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(29).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [1.9999999999999769 2.0000000000000053 35.200000000000003];  % mm
smiData.RigidTransform(30).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(30).axis = [0.57735026918962584 -0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(30).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [0 0 76.799999999999997];  % mm
smiData.RigidTransform(31).angle = 0;  % rad
smiData.RigidTransform(31).axis = [0 0 0];
smiData.RigidTransform(31).ID = 'B[Base_Feet_1-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [-12.700000000000006 12.699999999999999 0];  % mm
smiData.RigidTransform(32).angle = 0;  % rad
smiData.RigidTransform(32).axis = [0 0 0];
smiData.RigidTransform(32).ID = 'F[Base_Feet_1-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [-7.5000000000000036 9.9999999999999805 230.00000000000003];  % mm
smiData.RigidTransform(33).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(33).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(33).ID = 'B[Arm_Rod-1:-:Base_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [18.200000000000035 46.238982565828017 33.659348779547912];  % mm
smiData.RigidTransform(34).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(34).axis = [-0.57735026918962573 -0.57735026918962573 0.57735026918962562];
smiData.RigidTransform(34).ID = 'F[Arm_Rod-1:-:Base_Top-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [37.500000000000007 2.0000000000000018 209.8431457505076];  % mm
smiData.RigidTransform(35).angle = 0;  % rad
smiData.RigidTransform(35).axis = [0 0 0];
smiData.RigidTransform(35).ID = 'B[Arm_Rod-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [-2.0000000000000062 2.0000000000000639 -38.000000000000099];  % mm
smiData.RigidTransform(36).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(36).axis = [-0 1 -7.8504622934188746e-17];
smiData.RigidTransform(36).ID = 'F[Arm_Rod-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [0 0 100];  % mm
smiData.RigidTransform(37).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(37).axis = [1 0 0];
smiData.RigidTransform(37).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm_Rod-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [-35.700000000000045 -8.5265128291212022e-14 217.00000000000003];  % mm
smiData.RigidTransform(38).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(38).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(38).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm_Rod-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [0 0 100];  % mm
smiData.RigidTransform(39).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(39).axis = [1 0 0];
smiData.RigidTransform(39).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [-8.6439168184903525e-14 -2.9213226755183394e-14 92.800000000000026];  % mm
smiData.RigidTransform(40).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(40).axis = [-1 -1.5265566588595902e-16 2.6582210619695768e-17];
smiData.RigidTransform(40).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [0 30.999999999999993 0];  % mm
smiData.RigidTransform(41).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(41).axis = [-1 -0 -0];
smiData.RigidTransform(41).ID = 'B[2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [-19.140985272087182 -38.8625437008183 -2.8421709430404007e-14];  % mm
smiData.RigidTransform(42).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(42).axis = [-1 -1.1684633017362091e-32 1.0415502998363356e-16];
smiData.RigidTransform(42).ID = 'F[2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [0 9.0000000000000018 0];  % mm
smiData.RigidTransform(43).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(43).axis = [-1 -0 -0];
smiData.RigidTransform(43).ID = 'B[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [20.900000000000009 35.923554884674537 6.1235306082066501];  % mm
smiData.RigidTransform(44).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(44).axis = [0.57735026918962562 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(44).ID = 'F[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [0 0 0];  % mm
smiData.RigidTransform(45).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(45).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(45).ID = 'B[Motor-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [4.5444093104604804e-13 -4.8947669764362029e-13 -4.4999999999999858];  % mm
smiData.RigidTransform(46).angle = 1.5700924586837752e-16;  % rad
smiData.RigidTransform(46).axis = [-0.73284809611514423 -0.68039228980082378 3.9144304350903308e-17];
smiData.RigidTransform(46).ID = 'F[Motor-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [-12.700000000000006 12.699999999999999 -76.799999999999997];  % mm
smiData.RigidTransform(47).angle = 0;  % rad
smiData.RigidTransform(47).axis = [0 0 0];
smiData.RigidTransform(47).ID = 'RootGround[Base_Feet_1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [-208.76301781888708 -100.75140004552621 -38.400000000000006];  % mm
smiData.RigidTransform(48).angle = 0;  % rad
smiData.RigidTransform(48).axis = [-0.54071620306093782 0.64440047757177021 0.54071620306093782];
smiData.RigidTransform(48).ID = 'SixDofRigidTransform[Lacrosse Ball-1]';


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
smiData.Solid(1).mass = 0.049857570319179069;  % kg
smiData.Solid(1).CoM = [0 0 3.5000000000000009];  % in
smiData.Solid(1).MoI = [0.20866960032309162 0.20866960032309162 0.010169043039553478];  % kg*in^2
smiData.Solid(1).PoI = [0 0 0];  % kg*in^2
smiData.Solid(1).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Base_Top*:*47065T992';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.050785330917315519;  % kg
smiData.Solid(2).CoM = [0.0001939346663463781 -0.00030122084698140509 0];  % in
smiData.Solid(2).MoI = [0.070975993644422322 0.085388458693678934 0.025168751743635111];  % kg*in^2
smiData.Solid(2).PoI = [0 0 2.3002561184029311e-05];  % kg*in^2
smiData.Solid(2).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Base_Feet_2*:*47065T418';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.021535778405584665;  % kg
smiData.Solid(3).CoM = [0 0 1.5118110236220466];  % in
smiData.Solid(3).MoI = [0.01860343357405245 0.01860343357405245 0.0043924775333954247];  % kg*in^2
smiData.Solid(3).PoI = [0 0 0];  % kg*in^2
smiData.Solid(3).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Base_Feet_1*:*47065T992';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.0097948895555055367;  % kg
smiData.Solid(4).CoM = [0.80140691094201011 0.65354322370073969 0];  % in
smiData.Solid(4).MoI = [0.007943248265404431 0.0042725443230461771 0.0047686036697332347];  % kg*in^2
smiData.Solid(4).PoI = [0 0 -0.00078594147153980575];  % kg*in^2
smiData.Solid(4).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = '8982K141_Multipurpose 6061 Aluminum 90 Degree Angle*:*8982K141';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.16847275010912963;  % kg
smiData.Solid(5).CoM = [0.0003089937421085019 49.888197860393213 -0.088790547023854929];  % mm
smiData.Solid(5).MoI = [169.10941657032308 45.60929471073365 168.53854897944623];  % kg*mm^2
smiData.Solid(5).PoI = [0.59975450636773708 0.0018589524732522086 -0.0022458894523486005];  % kg*mm^2
smiData.Solid(5).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'Motor*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.00022400000000000005;  % kg
smiData.Solid(6).CoM = [0 0 0];  % mm
smiData.Solid(6).MoI = [0.0039573333333333344 0.0039573333333333344 0.00059733333333333361];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(6).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = '98870A715_MACHINE KEY*:*98870A715';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.035212232396786954;  % kg
smiData.Solid(7).CoM = [-0.00056087233551827009 -0.0015499856088251965 0.28983577093615032];  % in
smiData.Solid(7).MoI = [0.012307168897127673 0.012316388479138633 0.021745848342075505];  % kg*in^2
smiData.Solid(7).PoI = [8.2986055523429809e-06 5.9391333742303453e-06 3.0682326118345843e-08];  % kg*in^2
smiData.Solid(7).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = '2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE*:*2664N15';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.067176850047562561;  % kg
smiData.Solid(8).CoM = [-1.0608973293954226e-07 -0.0059822809684238077 112.23915220572029];  % mm
smiData.Solid(8).MoI = [287.05894052465658 286.03805179566132 3.5418154905399053];  % kg*mm^2
smiData.Solid(8).PoI = [0.042101897998037714 5.814364251276602e-07 -3.8664765311665181e-08];  % kg*mm^2
smiData.Solid(8).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = 'Arm_Rod*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.010240000000000003;  % kg
smiData.Solid(9).CoM = [0 0 2.5];  % mm
smiData.Solid(9).MoI = [0.89514666666666687 3.5165866666666687 4.3690666666666695];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = 'Arm_Bucket_Top*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.010110244591908839;  % kg
smiData.Solid(10).CoM = [0 -0.48092890697519824 49.999999999999993];  % mm
smiData.Solid(10).MoI = [8.3281423727405919 8.351715050741495 0.17363417177877369];  % kg*mm^2
smiData.Solid(10).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(10).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = '1439K411_1045 Carbon Steel Keyed Rotary Shaft*:*1439K411';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.029934613964194032;  % kg
smiData.Solid(11).CoM = [-1.3817410598694516e-06 -4.7691425541575843 1.0216136929620541e-06];  % mm
smiData.Solid(11).MoI = [4.7926277236307468 9.6754334275560172 12.629682416648169];  % kg*mm^2
smiData.Solid(11).PoI = [6.2590443528393286e-08 3.7571832907023497e-07 -1.3688963878533844e-07];  % kg*mm^2
smiData.Solid(11).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = '2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING*:*2031N21';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.0017659469517735098;  % kg
smiData.Solid(12).CoM = [-0.0041663400404219255 -7.4763793078344695e-08 0.22756264614305111];  % in
smiData.Solid(12).MoI = [8.5222156350694251e-05 8.3999692073320425e-05 8.2993766015534474e-05];  % kg*in^2
smiData.Solid(12).PoI = [-1.2279419702182952e-11 1.2223510668923413e-06 7.6403356722036652e-11];  % kg*in^2
smiData.Solid(12).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = '2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE*:*2664N468';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 0.14499999999999999;  % kg
smiData.Solid(13).CoM = [0 0 0];  % mm
smiData.Solid(13).MoI = [57.5505 57.550500000000014 57.5505];  % kg*mm^2
smiData.Solid(13).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(13).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = 'Lacrosse Ball*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.0055499999999999994;  % kg
smiData.Solid(14).CoM = [0 0 2.5];  % mm
smiData.Solid(14).MoI = [0.11562499999999998 2.5442124999999991 2.6367124999999998];  % kg*mm^2
smiData.Solid(14).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(14).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = 'Arm_Bucket_Left*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 0.0055499999999999994;  % kg
smiData.Solid(15).CoM = [0 0 2.5];  % mm
smiData.Solid(15).MoI = [0.11562500000000001 2.5442124999999991 2.6367124999999998];  % kg*mm^2
smiData.Solid(15).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(15).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = 'Arm_Bucket_Right*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 0.010239999999999999;  % kg
smiData.Solid(16).CoM = [0 0 2.5];  % mm
smiData.Solid(16).MoI = [0.89514666666666665 3.5165866666666656 4.369066666666666];  % kg*mm^2
smiData.Solid(16).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(16).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = 'Arm_Bucket_Bottom*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(2).Rz.Pos = 0.0;
smiData.CylindricalJoint(2).Pz.Pos = 0.0;
smiData.CylindricalJoint(2).ID = '';

smiData.CylindricalJoint(1).Rz.Pos = -1.1017764609091714e-14;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm_Rod-1]';

smiData.CylindricalJoint(2).Rz.Pos = -132.87430556248154;  % deg
smiData.CylindricalJoint(2).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(2).ID = '[Motor-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';


%Initialize the PlanarJoint structure array by filling in null values.
smiData.PlanarJoint(6).Rz.Pos = 0.0;
smiData.PlanarJoint(6).Px.Pos = 0.0;
smiData.PlanarJoint(6).Py.Pos = 0.0;
smiData.PlanarJoint(6).ID = '';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(1).Rz.Pos = 180;  % deg
smiData.PlanarJoint(1).Px.Pos = 0;  % mm
smiData.PlanarJoint(1).Py.Pos = 0;  % mm
smiData.PlanarJoint(1).ID = '[Arm_Bucket_Right-1:-:Arm_Bucket_Left-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(2).Rz.Pos = -180;  % deg
smiData.PlanarJoint(2).Px.Pos = 0;  % mm
smiData.PlanarJoint(2).Py.Pos = 0;  % mm
smiData.PlanarJoint(2).ID = '[Arm_Bucket_Top-1:-:Arm_Bucket_Bottom-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(3).Rz.Pos = -90.000000000000028;  % deg
smiData.PlanarJoint(3).Px.Pos = 0;  % mm
smiData.PlanarJoint(3).Py.Pos = 0;  % mm
smiData.PlanarJoint(3).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(4).Rz.Pos = -80.000000000000171;  % deg
smiData.PlanarJoint(4).Px.Pos = 0;  % mm
smiData.PlanarJoint(4).Py.Pos = 0;  % mm
smiData.PlanarJoint(4).ID = '[Arm_Rod-1:-:Base_Top-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(5).Rz.Pos = -147.12569443751804;  % deg
smiData.PlanarJoint(5).Px.Pos = 0;  % mm
smiData.PlanarJoint(5).Py.Pos = 0;  % mm
smiData.PlanarJoint(5).ID = '[2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(6).Rz.Pos = -132.87430556248111;  % deg
smiData.PlanarJoint(6).Px.Pos = 0;  % mm
smiData.PlanarJoint(6).Py.Pos = 0;  % mm
smiData.PlanarJoint(6).ID = '[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';


%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(4).Pz.Pos = 0.0;
smiData.PrismaticJoint(4).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = '[Base_Top-1:-:Base_Feet_2-1]';

smiData.PrismaticJoint(2).Pz.Pos = 0;  % m
smiData.PrismaticJoint(2).ID = '[Arm_Bucket_Right-1:-:Arm_Bucket_Bottom-1]';

smiData.PrismaticJoint(3).Pz.Pos = 0;  % m
smiData.PrismaticJoint(3).ID = '[Arm_Bucket_Top-1:-:Arm_Bucket_Right-1]';

smiData.PrismaticJoint(4).Pz.Pos = 0;  % m
smiData.PrismaticJoint(4).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(1).Rz.Pos = 0.0;
smiData.RevoluteJoint(1).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 170.0000000000002;  % deg
smiData.RevoluteJoint(1).ID = '[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

