%% Ryan Fahrenkrug
% MECH 105
% Homework 9
% 9/27/2017
clc
clear
close all
format long
syms m(x)
syms f(x)
syms g(x)
m(x)=-0.9*x^2+1.7*x+2.5;
f(x)=x;
g(x)=sqrt((1.7*x+2.5)/0.9);
fplot(m);
xlim([0 5])
ylim([-5 10])
refline(0,0)
disp('Fixed Point Method')
fixedPoint(f,g,5);
%% Part 2
close all
syms n(x)
n(x)=-0.9*x^2+1.7*x+2.5;
dx=diff(n);
disp('Newton Raphson Method')
newtonRaphson(n,dx,5);