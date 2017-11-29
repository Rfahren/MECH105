% Part 2 of MECH 105 Homework 15
function [x,c] = Fahrenkrug_reactor(D,U,k,c0,cL,L,dx)
% This function solves the system linear of equations created from
% approximating a steady-state mass balance equation for a chemical in a
% one-dimensional canal.
% Inputs:
% D= diffusion coefficient
% U= the fluid Velocity
% k= the first order decay rate
% c0= the starting concentration
% cL= the concentrasion of the function evaluated at L
% L= the length of the tube
% dx= the step size
% Outputs:
% c= the concentration
% x= distance or location in the tube 

step=(L/dx)-1; % Creates a step size
x=D/dx^2+U/(2*dx); %ci-1
y=-((2*D)/dx^2+k); %ci
z=D/dx^2-U/(2*dx); %ci+1
% zeros matrix (Preallocation)
A=zeros(step);
n2=step-2;
% For loop to create A matrix
A(1,1)=y; % Places y in row 1 column 1
A(1,2)=z; % Places z in row 1 column 2
A(2,1)=x; % Places x in row 2 column 1
% moves the xyz vector along a 19x19 matrix to create a tridiaginol matrix
for r = 2:step
    for c = 2:step
        A(r,c)=A(r-1,c-1);
    end
end
% B vector
B1=(c0*x)*-1;
Bn=(cL*z)*-1;
nb=zeros(n2,1);
B=[B1; nb; Bn];
% Outputs
c=[c0; A\B; cL];
x=[0:dx:L];
end

