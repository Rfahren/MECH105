function [t,y]=heun_Fahrenkrug(dydt,tspan,y0,h,es,maxit)
if nargin < 4
    error('At least 4 inputs are required');
end
if nargin < 5 || isempty(es) 
    es=0.001;
end
if nargin < 6 || isempty(maxit) 
    maxit=50;
end
iter=0;
ea=100;
a=tspan(1);
b=tspan(2);
m=(b-a)/h;
t=a:h:b;
y=zeros(1,m+1);
y(1)=y0;
while iter<maxit && es<ea
    iter=iter+1;
    for i=1:m
        k=dpdt(t(i),y(i));
        k2=dpdt(t(i+1),y(i+1));
        y(i+1)=y(i)+(h/2)*(k+k2);
    end
    ea=abs((y(i)-y(i-1))/y(i))*100;
end
plot(t,y)
end
