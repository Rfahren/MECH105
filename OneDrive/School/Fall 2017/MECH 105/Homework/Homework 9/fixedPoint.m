function [root,fx,ea,iter] = fixedPoint(func,func2,xi,es,varargin)
% Estimates the root of a given function.
% Inputs: 
% func= Name f(x)
% func2= Name of g(x)
% xl= Inital guess
% es= Relative error (Default is 0.01%)
% p1,p2,...= Any aditional parameters uesed by the function
% Outputs:
% root= estimated root location
% fx= The function evaluated at the root location
% ea= Approximate relative error (%)
% iter= number of iterations preformed

% Checks for required inputs
if nargin<3
    error('At least 3 inputs are required.')
end
% Default variable test
if nargin<4 || isempty(es)
    es=0.01;
end
% Inital values
iter=0;
xr=xi;
ea=100;
% Plug n' chug
disp('i    xi     ea')
while ea>=es && iter<20
    xrold=xr;
    xr=func2(xi);
    iter=iter+1;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    if func(xi)~=func2(xi)
         xi= xr;
    else
        ea = 0;
    end
    fprintf('%1.0f',iter),fprintf('   %1.2f',xrold),fprintf('   %3.2f\n',ea)
end
root=double(xr);
fx=double(func(xr,varargin{:}));
ea=double(ea);
iter=double(iter);
end

