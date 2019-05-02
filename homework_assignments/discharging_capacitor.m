%% Summary

%Created by Chris Graffia on January 26,2019.
    %Mech 105
%This algorithm graphs the charge of a capacitor over time given a
%predefined function.

%% Computations

%Define given values
q = 10;
R = 60;
L = 9;
C = 0.00005;
%Time vector
t = 0:0.025:0.8;
%Predefined function
Qt = q.*exp(-R.*t/(2*L)).*cos(sqrt((1/(L*C))-(t.*(R/(2*L))^2)));
%Plot
plot(t,Qt,'b.-')
title('Charge on a Capacitor Over Time')
xlabel('Time (seconds)')
ylabel('Charge (Coulomb)')
