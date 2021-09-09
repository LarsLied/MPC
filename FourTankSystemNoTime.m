function [xdot] = FourTankSystemNoTime(x,u,p)
%FOURTANKSYSTEMNOTIME Summary of this function goes here
%   This function take the four tank system model and make it solvable for
%   fsolve, therfor we need to take away the time from the equation. 
xdot = FourTankSystem(0,x,u,p);

end

