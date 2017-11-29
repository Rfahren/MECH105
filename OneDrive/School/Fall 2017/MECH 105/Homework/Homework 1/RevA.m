%% Ryan Fahrenkrug 
%% MECH 105 
%% Homework 1
clear
clc
%% Problem 1
clc
clear
A=1250; %m^2
Q=450; %m^3/d
t=0; %days
y=0;
for t=0:0.5:10
    y=3*(Q/A)*((sin(t))^2)-(Q/A);
    fprintf('y=%1.4f\n',y)
    fprintf('t=%1.1f\n',t)
end
plot(t,y)
xlabel('Time (d)')
ylabel('Depth')
table(t,y)

