function [x] = Jacobi_Fahrenkrug(A,b,es,maxit)
% Finds the solution to a system of equations using the Jacobi method.
% Inputs:
% A is the coefficient matrix of the system.
% b is the right hand side column vector.
% es is the max error desired (default is 0.00001%)
% maxit is the maximum number of iterations preformed before the function
% gives up.
% Outputs:
% x is the solution to the system of equations.

if nargin < 2
    error ('At least 2 inputs required');
end
if nargin < 3 || isempty(es)
    es=0.00001;
end
if nargin < 4 || isempty(maxit)
    maxit=50;
end
[m,n]=size(A);
if m ~= n
    error('Matrix A is not square')
end
x=zeros(n,1);
ea=zeros(n,1)+100;
iter=0;
while iter < maxit && max(ea)>= es
    xold=x;
    for i=1:n
        s=0;
        for j=1:n
            if i~=j
            s=s+A(i,j)*x(j);
            end 
        end
        x(i)=(b(i)-s)/A(i,i);
        if x~=0
            ea(i)=abs((x(i)-xold(i))/x(i))*100;
        end
    end
iter = iter+1;
end
end