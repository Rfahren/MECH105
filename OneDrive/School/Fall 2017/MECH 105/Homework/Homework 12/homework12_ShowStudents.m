% homework12_ShowStudents.m

clear
clc
close all

% Initialize variables with values
W = 560
s;flg

% Create math function based on FDoverv
func = @(v) FDoverv(v,W,CD0,rho,A,AR)

% Then you know, plot it and stuff
% instead of using fplot, try creating an array of v
% and then use the matlab function arraryfun() to evaluate

% Function being evaluated
function [FDv] = FDoverv(v,W,CD0,rho,A,AR)
CL = (2*W)/(rho*v^2*A);
CD = CD0+(CL^2)/(pi*AR);
FD = W*CD/CL;
FDv = ? % Obviously students need to figure out
end