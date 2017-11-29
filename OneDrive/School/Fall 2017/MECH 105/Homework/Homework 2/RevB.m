%% Ryan Fahrenkrug
% MECH 105
% Homework 2
% Revision B
% 8/25/2017
%% Problem 1
clc
clear
% Section 1.1
q=10; % Inital Charge
R=60; % Resistance
L=9; % Inductance
C=0.00005; % Capacitance
t=0:0.1:0.8; % time from 0 to 0.8
e=exp((-R*t)/(2*L))
s=sqrt((1/(L*C))-((R/(2*L))^2)*t)
co=cos(s)
qt=q.*e.*co; 
% Charge on capacitor qt as a function of time
plot(t,qt)
