%% Summary

%Created by Chris Graffia on January 26, 2019.
    %Mech 105
%This algorithm graphs the standard normal probability density function.

%% Computations

%Define the Function and its Parameters
z = -5:0.1:5;
f = exp(-(z.^2)/2)/sqrt(2*pi);
%Create a Plot
plot(z,f,'b.-')
title('Standard Normal Probability Density Function')
xlabel('z')
ylabel('Frequency (Hz)')
