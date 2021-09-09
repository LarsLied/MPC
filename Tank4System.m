%% 4 Tank system modeling and simulation
close all 
clear all
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

p = [a1; a2; a3; a4; A1; A2; A3; A4; gamma1; gamma2; g; rho];

%% --------------------------------------------------------------
% Simulation scenario
%% --------------------------------------------------------------
t0 = 0.0;           % [s] Initial time
tf = 20*60;         % [s] Final time
m10 = 0.0;          % [g] Liquid mass in tank 1 at time t0
m20 = 0.0;          % [g] Liquid mass in tank 2 at time t0
m30 = 0.0;          % [g] Liquid mass in tank 3 at time t0
m40 = 0.0;          % [g] Liquid mass in tank 4 at time t0
F1 = 300;           % [cm3/s] Flow rate from pump 1
F2 = 300;           % [cm3/s] Flow rate from pump 2

x0 = [m10; m20; m30; m40];
u = [F1; F2];


%% --------------------------------------------------------------
% Compute the solution / Simulate
%% --------------------------------------------------------------
% Solve the system of differential equations
[T,X] = ode15s(@FourTankSystem,[t0 tf],x0,[],u,p);
% --------------------------------------------------------------