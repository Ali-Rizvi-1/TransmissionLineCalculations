function [Vs,Is] = long_transmission_line(Pr, Vr, pf_r, r, x, y, l)
%long_transmission_line Summary of this function goes here
%   Detailed explanation goes here
% Vs = sending end voltage of the transmission line
% Is = sending end current of the transmission line
% Pr = receiving end power & Vr = receiving end line to line voltage
R = r*l; % Total Rresistance per phase
X = x*l; % Total reactance per phase
Y = y*l; % Total shunt admittance per phase
Z = R + X*1i; % Total Series impedance per phase
theta_r = rad2deg(acos(pf_r)); % receiving end theta

Vr_per_phase = Vr/sqrt(3); % receiving end per phase voltage

Ir = Pr / ( 3 * Vr_per_phase * pf_r); % receiving end current 

Vs_per_phase = Vr_per_phase*cosh(sqrt(Y*Z)) + Ir*sqrt(Z/Y)*sinh(sqrt(Y*Z));

Vs = sqrt(3)*Vs_per_phase;

Is = Vr_per_phase*sqrt(Y/Z)*sinh(sqrt(Y*Z))+Ir*cosh(sqrt(Y*Z));

end

