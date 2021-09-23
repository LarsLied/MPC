%% four tank system with regulation

clear all;
close all;
clc


%% --------------------------------------------------------------
% Parameters
%% --------------------------------------------------------------
a1 = 1.2272;        %[cm2] Area of outlet pipe 1
a2 = 1.2272;        %[cm2] Area of outlet pipe 2
a3 = 1.2272;        %[cm2] Area of outlet pipe 3
a4 = 1.2272;        %[cm2] Area of outlet pipe 4
A1 = 380.1327;      %[cm2] Cross sectional area of tank 1
A2 = 380.1327;      %[cm2] Cross sectional area of tank 2
A3 = 380.1327;      %[cm2] Cross sectional area of tank 3
A4 = 380.1327;      %[cm2] Cross sectional area of tank 4
gamma1 = 0.45;      % Flow distribution constant. Valve 1
gamma2 = 0.40;      % Flow distribution constant. Valve 2
g = 981;            %[cm/s2] The acceleration of gravity
rho = 1.00;         %[g/cm3] Density of water
F3 = 10;            % [cm3/s] uncontroled flow in to tank 3
F4 = 15;            % [cm3/s] uncontroled flow in to tank 4

p = [a1; a2; a3; a4; A1; A2; A3; A4; gamma1; gamma2; g; rho];

%% Initial values and simulation senario
t0 = 0.0;           % [s] Initial time
tf = 20*60;         % [s] Final time
m10 = 0.0;          % [g] Liquid mass in tank 1 at time t0
m20 = 0.0;          % [g] Liquid mass in tank 2 at time t0
m30 = 0.0;          % [g] Liquid mass in tank 3 at time t0
m40 = 0.0;          % [g] Liquid mass in tank 4 at time t0

h = 0.1;            % step size

%% System


%% simulation
for k = i : tf/h
    
end



