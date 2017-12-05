function [t,y]=heun_Fahrenkrug(dydt,tspan,y0,h,es,maxit)
% This function uses Heun's method to estimade the given differental
% equation
% Inputs:
% dydt- name of the M-file that evaluates the ODE.
% tspan- [ti,tf] where ti an tf are the inital and final values of the
% independent variable.
% y0- intial value of the dependent variable.
% h- step size.
% es- stopping criterion % (defaults to 0.0001).
% maxit- maximum number of iteration of corrector (defaults to 50).
% Outputs:
% t- vector of the independent variable.
% y- vector of solution for dependent variable.

% input errors
if nargin < 4
    error('At least 4 inputs are required');
end
if nargin < 5 || isempty(es) 
    es=0.001;
end
if nargin < 6 || isempty(maxit) 
    maxit=50;
end
% initalized variables/ preallocation of y
iter=0;
ea=100;
a=tspan(1);
b=tspan(2);
m=(b-a)/h;
t=a:h:b;
y=zeros(1,m+1);
y(1)=y0;
% loops for Huen's method
while iter<maxit && es<ea
    iter=iter+1;
    for i=1:m
        k=dpdt(t(i),y(i));
        k2=dpdt(t(i+1),y(i+1));
        y(i+1)=y(i)+(h/2)*(k+k2);
    end
    ea=abs((y(i)-y(i-1))/y(i))*100;
end
% plots
plot(t,y);
title('Proof of rise in failed condoms')
xlabel('Time')
ylabel('Population')
end