%Script file: Power in a resistor
%MATLAB Programming for Engineers: Problem 2.25
%
%Purpose:  The voltage across a resistor is related to current flowing
%through it by Ohm's Law:
%   V = IR
%
%Author:  Ayaz Noor
%Date: 1/10/21

%Define variables:
% res     --resistor
% cur     --current
% vol     --volts
% pow     --pow
% db      --decibals, the ratio of two power measurements



%Set values
res = 1000;
vol = 1:1:200;

%Use V =IR to solve for current
cur = vol ./ res;
pow = vol .* cur;

%create plot of power in Watts
plot(vol, pow, 'b-', 'LineWidth', 1.5);
title('Plot of power versus voltage from 1V to 200V');
xlabel('Volts (V)');
ylabel('Power (W)');
grid on;
figure;

%create plot of power in dBW (dB power levels with respect to a 1 W
%reference

% to calculate decibals, use: 
db = 10 * log10(pow ./ 1);
plot(pow, db, 'r-', 'LineWidth', 1.5);
title('Plot of decibals versus power');
xlabel('Power (W)');
ylabel('Decibals (dB)');
grid on;
