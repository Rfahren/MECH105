function [I] = Simpsons_Fahrenkrug(x,y)
% Uses Simpsons composite 1/3 rule to integrate data
% Inputs:
% x: "dx" vector 
% y: "function" vector
% Outputs:
% I: integral of data

%Checks that inputs are the same length
if length(x)~=length(y)
    error('x and y are not the same length')
end
%Checks for equal step size
a=diff(x);
space=max(a)-min(a);
if space~=0
    error('x input is not eually spaced')
end
%Checks if even or odd number of segments if odd gives warning and calcs
%trap rule
n=0;
xn=length(x);
yn=length(y);
trap=0;
if mod(length(y)-1,2)>0
    trap=(x(xn)-x(xn-1))*((y(yn)+y(yn-1))/2);
    warning('Trapezoidal rule has to be used on last interval')
end
if trap==0
    n=xn-1;
    b=x(xn);
else
    n=xn-2;
    b=x(xn-1);
end
a=x(1);
h=(b-a)/n;
% simpsons rule
simp=(h/3)*(y(1)+4*sum(y(2:2:n))+2*sum(y(3:2:n))+y(yn));
% Gives integrand of data
I=simp+trap
end

