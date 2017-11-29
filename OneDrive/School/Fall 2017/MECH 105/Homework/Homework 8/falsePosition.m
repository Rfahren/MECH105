function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,varargin)
% Estimates the root of a given function.
% Inputs: 
% func= Name of the function
% xl= Lower guess
% xu= Upper guess
% es= Relative error (Default is 0.0001%)
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
% Checks for sign change
test=func(xl,varargin{:})*func(xu,varargin{:});
if test>0
    error('Piss poor interval buddy. Try not to screw this up!')
end
% Default variable test
if nargin<4 || isempty(es)
    es=0.0001;
end
% Inital values
iter=0;
xr=xl;
ea=100;
% Plug n' chug
while ea>=es && iter<200
    xrold=xr;
    xr=xu-(func(xu)*(xl-xu))/(func(xl)-func(xu));
    iter=iter+1;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    if func(xl,varargin{:})*func(xr,varargin{:}) < 0
        xu = xr;
    elseif func(xu,varargin{:})*func(xr,varargin{:}) < 0
        xl = xr;
    else
        ea = 0;
    end
end
root=double(xr);
fx=double(func(xr,varargin{:}));
ea=double(ea);
iter=double(iter);
end