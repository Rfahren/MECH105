%% Ryan Fahrenkrug
% MECH 105 Extra credit
% Training Heart Rate Program
%% User Input Section
clear
clc
Gender=input('What is your gender? Enter M for Male or W for Woman as a script.');
while Gender~='M' && Gender ~= 'W'
    warning('Invalid entry. You are not a unicorn!')
    Gender=input('What is your gender? Enter M for Male or W for Woman.');
end
 AGE=input('What is your age in years?');
while AGE >= 100 || AGE<= 0
      warning('Invalid entry. Please enter an age between 0 and 100.')
      AGE=input('What is your age in years?');
end
RHR=input('What is your resting heart rate in bpm?');
while RHR >120||RHR<30
    warning('Invalid entry. Please enter an RHR between 30 and 120 or seek medical attention.')
    RHR=input('What is your resting heart rate in ppm?');
end
INTEN=input('What is your fitness level? Enter 1 for low, 2 for medium and 3 for high.');
while INTEN~=1 && INTEN~=2 && INTEN~=3
    warning('Invalid entry. Please enter INTEN 1 for low, 2 for medium and 3 for high.')
    INTEN=input('What is your fitness level? Enter 1 for low, 2 for medium and 3 for high');
end
%% Formulas
if INTEN==1
    INTEN=0.55;
elseif INTEN==2
    INTEN=0.65;
else
    INTEN=0.8;
end
if Gender=='M'
THRmen=[(220-AGE)-RHR]*INTEN+RHR;
fprintf( 'Your training heart rate is %3.0f bpm!',THRmen)
else
THRwomen=[206-(0.88*AGE)-RHR]*INTEN+RHR;
fprintf( 'Your training heart rate is %3.0f bpm!',THRwomen)
end