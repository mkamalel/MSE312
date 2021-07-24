% Simscape(TM) Multibody(TM) version: 6.0

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

% Parameters to convert torque to current
efficiency = 0.95;
n = 3.75;
kt = 0.0527;
Rm = 3.9;
km = kt/sqrt(Rm);

L = 9.35e-3;

Jarm = 2.3e-3;

% Required rotational velocity to reach x distance
x_desired = 1.5;
x0 = 0.4795;     % Distance from where ball is launched to x = 0;
y0 = 0.19672;
theta_release = pi/4;
r_arm = 0.1795;

t = sqrt((y0 + (x_desired + x0)*tan(theta_release)) / 4.905);       % Time ball is in the air
v_x = (x_desired + x0)/t;
v = v_x/cos(theta_release);
W_cruise = (v/r_arm);



% Trajectory control
% 1.5 m
q_ret = (pi/2);
T_ramp = 0.07;
T_ret = (q_ret - 0.5*W_cruise*T_ramp)/W_cruise + T_ramp;
T_fin = 0.4;
a_ret = -0.9;
Ki = 300;
Kp = 7;
Kd = 300;


% 1.2 m
% q_ret = (pi/2);
% T_ramp = 0.05;
% T_ret = (q_ret - 0.5*W_cruise*T_ramp)/W_cruise + T_ramp;
% T_fin = 0.4;
% a_ret = -0.9;



% 0.5 m
% q_ret = (pi/2);
% T_ramp = 0.05;
% T_ret = (q_ret - 0.5*W_cruise*T_ramp)/W_cruise + T_ramp;
% T_fin = 0.4;
% a_ret = -0.9;


%%%VariableName:smiData

%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(32).translation = [0.0 0.0 0.0];
smiData.RigidTransform(32).angle = 0.0;
smiData.RigidTransform(32).axis = [0.0 0.0 0.0];
smiData.RigidTransform(32).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-41.250000000000007 -19.749999999999989 9.9999999999999947];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 -0];
smiData.RigidTransform(1).ID = 'B[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-41.249999999999972 -19.749999999999986 61.40000000000002];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [-1 0 0];
smiData.RigidTransform(2).ID = 'F[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 -0.75000000000000067 7.5415000000000063];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = 'B[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-2.3453946652621774e-13 -1.9035738050922251e-13 94.841500000000508];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897909;  % rad
smiData.RigidTransform(4).axis = [-1 1.501198452373382e-30 -1.1835055054519429e-15];
smiData.RigidTransform(4).ID = 'F[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 -0.75000000000000067 -10.000000000000002];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = 'B[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:Catapult Base 8020-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-30.703906249999818 31.699999999999989 100.6539062500003];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [1 0 0];
smiData.RigidTransform(6).ID = 'F[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:Catapult Base 8020-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-71.953906249999875 12.700000000000003 52.929306249999634];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(7).ID = 'B[Catapult Base 8020-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-41.250000000000028 -19.749999999999986 -6.3246000000006539];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(8).ID = 'F[Catapult Base 8020-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [12.727922061359989 5.3040813874629977 -12.727922061360003];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = 'B[QBL4208-100-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [30.704081387463003 16.599999916556641 12.72792210308123];  % mm
smiData.RigidTransform(10).angle = 2.094395102393197;  % rad
smiData.RigidTransform(10).axis = [-0.57735026918962651 -0.57735026918962451 0.57735026918962629];
smiData.RigidTransform(10).ID = 'F[QBL4208-100-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [2.0000000000000018 3.1568542494923926 100];  % mm
smiData.RigidTransform(11).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(11).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(11).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [1.9999999999998637 1.9999999999999745 38.899999999999856];  % mm
smiData.RigidTransform(12).angle = 2.094395102393197;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962629 -0.57735026918962629 0.57735026918962484];
smiData.RigidTransform(12).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [103.73789375000017 -14.808200000000035 46.553906250000288];  % mm
smiData.RigidTransform(13).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(13).axis = [1 0 1.7457406694215667e-15];
smiData.RigidTransform(13).ID = 'B[Catapult Base 8020-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [-2.1081999999999681 23.291799999999988 -7.1054273576010019e-15];  % mm
smiData.RigidTransform(14).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(14).axis = [-1 0 -1.7457406694215667e-15];
smiData.RigidTransform(14).ID = 'F[Catapult Base 8020-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [-71.953906250000102 6.3246000000000411 123.35390624999967];  % mm
smiData.RigidTransform(15).angle = 3.4914813388431334e-15;  % rad
smiData.RigidTransform(15).axis = [-0 -1 0];
smiData.RigidTransform(15).ID = 'B[Catapult Base 8020-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [11.225037308624387 47.11127213926607 100.00000000000001];  % mm
smiData.RigidTransform(16).angle = 1.2246467991457425e-16;  % rad
smiData.RigidTransform(16).axis = [0.55540570393815047 0.83157952357725096 2.8281014115563681e-17];
smiData.RigidTransform(16).ID = 'F[Catapult Base 8020-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 0 100];  % mm
smiData.RigidTransform(17).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(17).axis = [1 0 0];
smiData.RigidTransform(17).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [3.2628465835693066e-14 2.3499129789463443e-16 95.660657671158347];  % mm
smiData.RigidTransform(18).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(18).axis = [-1 1.1691760958796345e-30 -1.1525580761375235e-17];
smiData.RigidTransform(18).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [22.25040000000028 12.700000000000061 50];  % mm
smiData.RigidTransform(19).angle = 2.0943951023931988;  % rad
smiData.RigidTransform(19).axis = [-0.57735026918962695 -0.57735026918962351 -0.57735026918962684];
smiData.RigidTransform(19).ID = 'B[47065T418_ALUMINUM T-SLOTTED FRAMING EXTRUSION-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [-74.600000000000279 -3.6453849308124873e-13 22.250400000000369];  % mm
smiData.RigidTransform(20).angle = 3.1415926535897909;  % rad
smiData.RigidTransform(20).axis = [-1.3099226430328277e-15 -0.70710678118654757 -0.70710678118654757];
smiData.RigidTransform(20).ID = 'F[47065T418_ALUMINUM T-SLOTTED FRAMING EXTRUSION-1:-:8982K141_Multipurpose 6061 Aluminum 90 Degree Angle-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [-71.953906250000102 -12.700000000000003 116.97850624999973];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931975;  % rad
smiData.RigidTransform(21).axis = [-0.57735026918962651 -0.57735026918962651 0.5773502691896244];
smiData.RigidTransform(21).ID = 'B[Catapult Base 8020-1:-:47065T418_ALUMINUM T-SLOTTED FRAMING EXTRUSION-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [-76.363959932143629 12.70000000000009 43.624599999999447];  % mm
smiData.RigidTransform(22).angle = 2.0943951023931975;  % rad
smiData.RigidTransform(22).axis = [-0.57735026918962651 -0.57735026918962651 0.5773502691896244];
smiData.RigidTransform(22).ID = 'F[Catapult Base 8020-1:-:47065T418_ALUMINUM T-SLOTTED FRAMING EXTRUSION-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [-1.9999999999999809 -2.0000000000000293 6.9999999999999991];  % mm
smiData.RigidTransform(23).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(23).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(23).ID = 'B[98870A715_MACHINE KEY-1:-:Arm-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-6.5000000000002274 -2.0000000000000853 209.8431457505078];  % mm
smiData.RigidTransform(24).angle = 3.1415926535897913;  % rad
smiData.RigidTransform(24).axis = [-0.70710678118654757 -0.70710678118654757 8.6042284408449612e-16];
smiData.RigidTransform(24).ID = 'F[98870A715_MACHINE KEY-1:-:Arm-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [0 0 100];  % mm
smiData.RigidTransform(25).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(25).axis = [1 0 0];
smiData.RigidTransform(25).ID = 'B[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-38.400000000000034 -5.6843418860808015e-14 217.00000000000006];  % mm
smiData.RigidTransform(26).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(26).axis = [0.57735026918962573 0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(26).ID = 'F[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [7.4999999999999929 10.000000000000009 229.99999999999991];  % mm
smiData.RigidTransform(27).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(27).axis = [0.57735026918962573 0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(27).ID = 'B[Arm-1:-:Catapult Base 8020-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [-28.582585906440528 47.963455967290628 77.453906249999733];  % mm
smiData.RigidTransform(28).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(28).axis = [-1 1.2311016638850033e-31 -1.7121588331038367e-15];
smiData.RigidTransform(28).ID = 'F[Arm-1:-:Catapult Base 8020-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [0 0 6];  % mm
smiData.RigidTransform(29).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(29).axis = [-1 -0 -0];
smiData.RigidTransform(29).ID = 'B[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:QBL4208-100-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [5.0619851839494439e-14 -10.499999999999996 2.6645352591003757e-14];  % mm
smiData.RigidTransform(30).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(30).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(30).ID = 'F[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:QBL4208-100-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [-105.84609375000014 38.100000000000023 -46.553906250000296];  % mm
smiData.RigidTransform(31).angle = 0;  % rad
smiData.RigidTransform(31).axis = [0 0 0];
smiData.RigidTransform(31).ID = 'RootGround[Catapult Base 8020-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [-270.5467350348498 -50.054599411121018 38.399999999999018];  % mm
smiData.RigidTransform(32).angle = 1.7177715174584021;  % rad
smiData.RigidTransform(32).axis = [-0.35740674433659791 0.86285620946101349 0.35740674433659653];
smiData.RigidTransform(32).ID = 'SixDofRigidTransform[Lacrosse Ball-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(11).mass = 0.0;
smiData.Solid(11).CoM = [0.0 0.0 0.0];
smiData.Solid(11).MoI = [0.0 0.0 0.0];
smiData.Solid(11).PoI = [0.0 0.0 0.0];
smiData.Solid(11).color = [0.0 0.0 0.0];
smiData.Solid(11).opacity = 0.0;
smiData.Solid(11).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.12143250848930869;  % kg
smiData.Solid(1).CoM = [1.2000090082728161 -0.17761332099907515 3.3446419783464574];  % in
smiData.Solid(1).MoI = [0.15890210408595906 0.6984285486359797 0.59968910223527383];  % kg*in^2
smiData.Solid(1).PoI = [0 0 0.053211784431509715];  % kg*in^2
smiData.Solid(1).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Catapult Base 8020*:*Default<As Machined>';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.0017659469517735098;  % kg
smiData.Solid(2).CoM = [-0.0041663400404219255 -7.4763793078344695e-08 0.22756264614305111];  % in
smiData.Solid(2).MoI = [8.5222156350694251e-05 8.3999692073320425e-05 8.2993766015534474e-05];  % kg*in^2
smiData.Solid(2).PoI = [-1.2279419702182952e-11 1.2223510668923413e-06 7.6403356722036652e-11];  % kg*in^2
smiData.Solid(2).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = '2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE*:*2664N468';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.029934613964194032;  % kg
smiData.Solid(3).CoM = [-1.3817410598694516e-06 -4.7691425541575843 1.0216136929620541e-06];  % mm
smiData.Solid(3).MoI = [4.7926277236307468 9.6754334275560172 12.629682416648169];  % kg*mm^2
smiData.Solid(3).PoI = [6.2590443528393286e-08 3.7571832907023497e-07 -1.3688963878533844e-07];  % kg*mm^2
smiData.Solid(3).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = '2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING*:*2031N21';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.10442688560052384;  % kg
smiData.Solid(4).CoM = [-6.1633153336175405e-08 10.697422828897018 85.57905780871701];  % mm
smiData.Solid(4).MoI = [483.34309153314047 480.02852114634936 51.753205555787616];  % kg*mm^2
smiData.Solid(4).PoI = [53.781121586632473 7.0294634390124269e-07 -8.7365114794406875e-08];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'Arm*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.010110244591908839;  % kg
smiData.Solid(5).CoM = [0 -0.48092890697519824 49.999999999999993];  % mm
smiData.Solid(5).MoI = [8.3281423727405919 8.351715050741495 0.17363417177877369];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = '1439K411_1045 Carbon Steel Keyed Rotary Shaft*:*1439K411';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.035212232396786954;  % kg
smiData.Solid(6).CoM = [-0.00056087233551827009 -0.0015499856088251965 0.28983577093615032];  % in
smiData.Solid(6).MoI = [0.012307168897127673 0.012316388479138633 0.021745848342075505];  % kg*in^2
smiData.Solid(6).PoI = [8.2986055523429809e-06 5.9391333742303453e-06 3.0682326118345843e-08];  % kg*in^2
smiData.Solid(6).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = '2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE*:*2664N15';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.00022400000000000005;  % kg
smiData.Solid(7).CoM = [0 0 0];  % mm
smiData.Solid(7).MoI = [0.0039573333333333344 0.0039573333333333344 0.00059733333333333361];  % kg*mm^2
smiData.Solid(7).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(7).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = '98870A715_MACHINE KEY*:*98870A715';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.16847275010912963;  % kg
smiData.Solid(8).CoM = [0.00030899374210809077 49.888197860393198 -0.088790547023854929];  % mm
smiData.Solid(8).MoI = [169.10941657032311 45.609294710733678 168.53854897944623];  % kg*mm^2
smiData.Solid(8).PoI = [0.59975450636773053 0.0018589524732518002 -0.0022458894523493204];  % kg*mm^2
smiData.Solid(8).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = 'QBL4208-100*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.050785330917315519;  % kg
smiData.Solid(9).CoM = [0.0001939346663463781 -0.00030122084698140509 0];  % in
smiData.Solid(9).MoI = [0.070975993644422322 0.085388458693678934 0.025168751743635111];  % kg*in^2
smiData.Solid(9).PoI = [0 0 2.3002561184029311e-05];  % kg*in^2
smiData.Solid(9).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = '47065T418_ALUMINUM T-SLOTTED FRAMING EXTRUSION*:*47065T418';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.011365907168232959;  % kg
smiData.Solid(10).CoM = [0.82021796022438986 0.72280614596300952 0];  % in
smiData.Solid(10).MoI = [0.0084749712083260383 0.0043955482455406104 0.0052315647704175893];  % kg*in^2
smiData.Solid(10).PoI = [0 0 -0.00087827010891110085];  % kg*in^2
smiData.Solid(10).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = '8982K141_Multipurpose 6061 Aluminum 90 Degree Angle*:*8982K141';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.145;  % kg
smiData.Solid(11).CoM = [0 -31.5 0];  % mm
smiData.Solid(11).MoI = [57.5505 57.550500000000014 57.5505];  % kg*mm^2
smiData.Solid(11).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(11).color = [0.75294117647058822 0.75294117647058822 0.75294117647058822];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = 'Lacrosse Ball*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(2).Rz.Pos = 0.0;
smiData.CylindricalJoint(2).Pz.Pos = 0.0;
smiData.CylindricalJoint(2).ID = '';

smiData.CylindricalJoint(1).Rz.Pos = -135.00000000000054;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = '[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

smiData.CylindricalJoint(2).Rz.Pos = 1.2722218725854064e-14;  % deg
smiData.CylindricalJoint(2).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(2).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:Arm-1]';


%Initialize the PlanarJoint structure array by filling in null values.
smiData.PlanarJoint(4).Rz.Pos = 0.0;
smiData.PlanarJoint(4).Px.Pos = 0.0;
smiData.PlanarJoint(4).Py.Pos = 0.0;
smiData.PlanarJoint(4).ID = '';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(1).Rz.Pos = 0;  % deg
smiData.PlanarJoint(1).Px.Pos = 0;  % mm
smiData.PlanarJoint(1).Py.Pos = 0;  % mm
smiData.PlanarJoint(1).ID = '[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:Catapult Base 8020-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(2).Rz.Pos = 90.000000000000014;  % deg
smiData.PlanarJoint(2).Px.Pos = 0;  % mm
smiData.PlanarJoint(2).Py.Pos = 0;  % mm
smiData.PlanarJoint(2).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:98870A715_MACHINE KEY-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(3).Rz.Pos = 135.00000000000054;  % deg
smiData.PlanarJoint(3).Px.Pos = 0;  % mm
smiData.PlanarJoint(3).Py.Pos = 0;  % mm
smiData.PlanarJoint(3).ID = '[Catapult Base 8020-1:-:1439K411_1045 Carbon Steel Keyed Rotary Shaft-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.PlanarJoint(4).Rz.Pos = 135.00000000000054;  % deg
smiData.PlanarJoint(4).Px.Pos = 0;  % mm
smiData.PlanarJoint(4).Py.Pos = 0;  % mm
smiData.PlanarJoint(4).ID = '[Arm-1:-:Catapult Base 8020-1]';


%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(3).Pz.Pos = 0.0;
smiData.PrismaticJoint(3).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = '[2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-1:-:2031N210_MOUNTED OPEN NEEDLE-ROLLER BEARING-2]';

smiData.PrismaticJoint(2).Pz.Pos = 0;  % m
smiData.PrismaticJoint(2).ID = '[1439K411_1045 Carbon Steel Keyed Rotary Shaft-1:-:2664N150_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1]';

smiData.PrismaticJoint(3).Pz.Pos = 0;  % m
smiData.PrismaticJoint(3).ID = '[Catapult Base 8020-1:-:47065T418_ALUMINUM T-SLOTTED FRAMING EXTRUSION-1]';


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(1).Rz.Pos = 0.0;
smiData.RevoluteJoint(1).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -140.44465429996006;  % deg
smiData.RevoluteJoint(1).ID = '[2664N468_METAL GEAR - 20 DEGREE PRESSURE ANGLE-1:-:QBL4208-100-1]';

