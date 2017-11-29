function [dydx, d2ydx2] = diffeq_Fahrenkrug(x,y)
% diffeq_Fahrenkrug outputs the first and second derivatives of a data set
% of equal lengths and plots them.
% Inputs:
% x is the equally spaced independent variable vector.
% y is the dependent vector.  
% Outputs:
% dydx is the first derivative vector.
% d2ydx2 is the second derivative vector.

% verifies that the function will work for the provided inputs. 
if length(x)~=length(y)
    error('Input vectors are not the same length')
end
d=diff(x);
if max(d)-min(d)~=0
    error('Independent variable is not equally spaced')
end
if length(x)<4
    error('Not enough inputs')
end
% Initialized values/ Prealocation of vectors
n=length(x);
h=x(2)-x(1);
dydx=zeros(1,n);
d2ydx2=zeros(1,n);
% Forwards approx
dydx(1)=(-y(3)+4*y(2)-3*y(1))/(2*h);
d2ydx2(1)=(-y(4)+4*y(3)-5*y(2)+2*y(1))/(h^2);
% Centered approx
for i=2:n-1
    dydx(i)=(y(i+1)-y(i-1))/(2*h);
    d2ydx2(i)=(y(i+1)-2*y(i)+y(i-1))/(h^2);
end
% Backwards approx
dydx(n)=(3*y(n)-4*y(n-1)+y(n-2))/(2*h);
d2ydx2(n)=(2*y(n)-5*y(n-1)+4*y(n-2)-y(n-3))/(h^2);
% Derivatives
[dydx]=dydx
[d2ydx2]=d2ydx2
% Plots
subplot(2,1,1)
plot(x,dydx)
title('Estimated Derivative')
xlabel('Independent Variable')
ylabel('1st Derivative')
subplot(2,1,2)
plot(x,d2ydx2)
title('Estimated Derivative')
xlabel('Independent Variable')
ylabel('2nd Derivative')
end

