%% Ryan Fahrenkrug
% MECH 105
% Homework 5
% 9/4/2017
%Although it is not commonly used, MATLAB allows numbers to be expressed in single precision. Each value is stored in 4 bytes with 1 bit for the sign, 23 bits for the mantissa, and 8 bits for the signed exponent. Determine the smallest and largest positive floating-point numbers for single precision. Express your answer to 5 significant digits
%You must be EXACT when you type it into canvas and you must use scientific notation with E instead of writing out exponent.
clear
clc
close all
%% Smallest and largest positive floating point numbers for single precision
max=realmax('single');
min=realmin('single');
fprintf('The smallest positive floating point number for single precision is %1.4e\n',min)
fprintf('The largest positive floating point number for single precision is %1.4e\n',max)
