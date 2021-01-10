%Script file: Radio Receiver
%MATLAB Programming for Engineers: Problem 2.28
%
%Purpose:  The RLC circuit is connected to an external antenna and the
%ground (see Figure).  The tuned circuit lets the radio select a specific
%station out of all the stations transmitting on the AM band.  At resonant
%frequency of the circuit, almost all of the signal V0 appearing at the
%antenna appears across the resistor, which represents the rest of the
%radio.  The radio receives its strongest signal at the resonant frequency.
%
%Author:  Ayaz Noor
%Date: 1/10/21

%Define variables
%f0     --resonant frequency
%ind      --inductance in henrys (H)
%cap      --capacitance in farads (F)

%prompt the user for the values of inductance and capacitance
ind = input('Enter the inductance (in mH) of the RLC circuit radio receiver: ');
cap = input('Enter the capacitance (in nC) of the RLC circuit radio receiver: ');

%Perform calculations
f0 = 1 ./ (2*pi*sqrt((ind*10.^(-3)) * (cap*10.^(-9))));

fprintf('With an inductance of %0.3f mH and a capacitance of %0.3f nC, the resonant frequency is %6.4f megahertz. \n', ind, cap, f0./10.^(6));

