%% Ryan Fahrenkrug
% MECH 105
% Homework 8 problem 2
% 9/25/2017
% This script solves a funtion for theta using the false prediction method
% and the bisection method.
clc
clear
close all
format longe
% function
syms f(t)
% Known variables
F=150; % Force in newtons
g=9.81; % gravity in meters per second^2
m=25; % mass in kilograms
u=0.55; % coefitent of friction
f(t)=(u*m*g)/(cos(t)+(u*sin(t)))-F;
fplot(f,'r')
xlim([1.1 1.2])
ylim([-1 1])
refline(0,0)
% Bracketing methods
[root fx ea iter]=falsePosition(f,1.14,1.18);
disp('False Position Method:')
fprintf('The estimated root is %f\n',root)
fprintf('The function evaluated at the root is %f\n',fx)
fprintf('The approximate error is %f\n',ea)
fprintf('The number of iterations is %f\n',iter)
[rootb fxb eab iterb]=bisect(f,1.14,1.18,0.0001);
disp('Bisection Method:')
fprintf('The estimated root is %f\n',rootb)
fprintf('The function evaluated at the root is %f\n',fxb)
fprintf('The approximate error is %f\n',eab)
fprintf('The number of iterations is %f\n',iterb)