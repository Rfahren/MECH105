%% Ryan Fahrenkrug
%MECH 105
%Homework 18
%11/3/2017
clc
clear
close all

%% Initialization 
h=[140:1:149]'; % Time of Fermentation [h]
% Carbon Dioxide Evolution Rate [g/h]
cde=[15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75]';
% Oxygen Uptake Rate [g/h]
our=[15.49 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 13.68]';

%% Carbon Dioxide Produced
s1=Simpsons_Fahrenkrug(h,cde);
t1=trapz(h,cde);
% aprox error
ea1=abs((t1-s1)/t1)*100
%% Oxygen Consumed
s2=Simpsons_Fahrenkrug(h,our);
t2=trapz(h,our);
% aprox error
ea2=abs((t2-s2)/t2)*100