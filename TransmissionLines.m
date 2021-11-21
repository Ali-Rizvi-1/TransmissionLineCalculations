%function [Vs,Is] = long_transmission_line(Pr, Vr, pf_r, r, x, y, l)
% Three-phase long transmission
Pr = 20e6; % Receiving end power
pf_r = 0.8; % Receiving end power factor
Vr = 110e3; % Receiving end line to line voltage
r = 0.16; % resistance per phase per km
x = 0.25; % reactance per phase per km
y = 1.5e-6; % shunt admittance per phase perr km 
l = 200; % length of the transmission line in km 

[Vs,Is] = long_transmission_line(Pr, Vr, pf_r, r, x, y, l);
