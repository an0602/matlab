%Script file: High-Pass Filter
%MATLAB Programming for Engineers: Problem 3.19
%
%Author: Ayaz Noor  01/18/21
%
%Given the ratio of output voltage V0 and the input voltage Vi, calculate
%and plot the amplitude and phase response of this filter as a function of
%frequency.
%Assume R = 16 kohms and C = 1 mF

%Define variables
%amp     --Amplitude response
%C       --Capacitance (farads)
%f       --Frequency of input signal (Hz)
%phase   --Phase response
%R       --Resistance (ohms)
%res     --Vo/Vi

%Initialize R & C
R = 16000;       %16k ohms
C = 1.0E-6;      %1 uF

%Create array of input frequencies
f = 1:2:1000;

%Calculate response
res = (j*2*pi*f*R*C) ./ (1 + j*2*pi*f*R*C);

%Calculate amplitude response
amp = abs(res);

%Calculate phase response
phase = angle(res);

%Create plots
subplot(2, 1, 1);
loglog(f, amp);
title('\bfAmplitude Response');
xlabel('\bfFrequency (Hz)');
ylabel('\bfOutput/Input Ratio');
grid on;

subplot(2, 1, 2);
semilogx(f, phase);
title('\bfPhase Response');
xlabel('\bfFrequency (Hz)');
ylabel('\bfOutput-Input Phase (rad)');
grid on;
