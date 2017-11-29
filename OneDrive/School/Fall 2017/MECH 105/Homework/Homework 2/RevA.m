%% Ryan Fahrenkrug
% MECH 105
% Homework 2
% Revision A
% 8/25/2017
%% Problem 1
clc
clear
% Section 1.1
q=10; % Inital Charge
R=60; % Resistance
L=9; % Inductance
C=0.00005; % Capacitance
for t=0:0.1:0.8; % time from 0 to 0.8
qt=q*exp((-R.*t)/(2*L))*cos(sqrt((1/(L*C))-((R/(2*L))^2).*t)); % Charge on capacitor qt as a function of time
fprintf('qt= %2.3f\n',qt)
fprintf('f=%1.1f\n',t)
end
plot(t,qt)
