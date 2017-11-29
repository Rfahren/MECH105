% Romberg Iteration Example

clear
clc
close all
format long

% first lets calculate the analytical solution
syms x
analytical = int((x+1/x)^2,x,1,2);

% anonymous function to calculate function values
fun = @(x) (x+(1./x)).^2;

% anonymous function to calculate error
e_t = @(true,est) double(abs((true-est)/true)*100);

% limits of integration
a = 1;
b = 2;

% 1st Less Accurate Estimate (h = 1)
x1_1 = a:1:b;
y1_1 = fun(x1_1);
I1_1 = trapz(x1_1,y1_1)
%e1_1 = e_t(analytical,I1_1)

% 1st More Accurate Estimate (h = 1/2)
x1_2 = a:1/2:b;
y1_2 = fun(x1_2);
I1_2 = trapz(x1_2,y1_2)
%e1_2 = e_t(analytical,I1_2)

% Romberg iteration - use those two estimates to come up with a BETTER one
I2_1 = (4/3)*I1_2 - (1/3)*I1_1
e2_1true = e_t(analytical,I2_1)
e2_1est = e_t(I2_1,I1_2)

% Hmm thats not close enough, so lets iterate again
% 1st Even MORE accurate estimate (h = 1/4)
x1_3 = a:0.25:b;
y1_3 = fun(x1_3);
I1_3 = trapz(x1_3,y1_3)
%e1_3 = e_t(analytical,I1_3)

% Now do the Romberg Iteration again
I2_2 = (4/3)*I1_3 - (1/3)*I1_2
%e2_2 = e_t(analytical,I2_2)

% Getting there! Now use our Romberg Iterations again to get an even BETTER
% estimate. This time we have to use a different version of the function.
I3_1 = (16/15)*I2_2 - (1/15)*I2_1
e3_1true = e_t(analytical,I3_1)
e3_1est = e_t(I3_1,I2_2)




