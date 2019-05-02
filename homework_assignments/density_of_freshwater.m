%% Summary

%Created by Chris Graffia on January 25, 2019.
    %Mech 105
%This function graphs the density of freshwater as a function of
%Temperature using a predefined function.

%% Computations

%Temperatures values in Fahrenheit
Tf = 32:2:100;
%Convert Fahrenheit to Celsius
Tc = 5/9*(Tf-32);
%Density Calculation
format long
rho = 5.5289e-8*Tc.^3-8.5016e-6*Tc.^2+6.5622e-5*Tc+0.99987;
%Create a Plot
plot(Tc,rho,'b.-')
title('Density of Freshwater as a Function of Temperature')
xlabel('Temperature (Celsius)')
ylabel('Density (g/cm^3)')
