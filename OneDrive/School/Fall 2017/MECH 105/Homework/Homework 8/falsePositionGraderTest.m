% falsePositionGraderTest.m
% If this script is placed in the same folder as the falsePosition.m
% function that the student submitted, it can be used to check their work.

% Hint to grader, change format in command window to short

% Use the VanDerWaals Equation
syms f(V);
P = 6; % in atm
T = 323.15; % in K
n = 2; % in mol
R = 0.08206;
a = 3.59;
b = 0.0427;

f(V) = (P + ((n^2*a)/V^2))*(V-n*b)-(n*R*T);

[root,fx,ea,iter] = falsePosition(@(V) f(V),8,9)
% Answers should be...
% root = 8.6507
% fx = -7.8566e-09
% ea = 1.2562e-05
% iter = 3

[root,fx,ea,iter] = falsePosition(@(V) f(V),8)
% Should give error, minimum arguments not supplied