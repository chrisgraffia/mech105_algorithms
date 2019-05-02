%% Summary

%Created by Chris Graffia on February 8, 2019.
    %Mech 105
%This function finds the machine epsilon of the computer, or the distance
%to the next closest number to 1. The final line of code is proof that the
%calculated value is equal to the true value.

%% Computations

clear
clc
format long
e=1;
while (1)
    if (1+e)<=1
        e=2*e;
        break
    elseif (1+e)>1
        e=e/2;
    end
end
fprintf('%0.4e is equal to %0.4e\n',e,eps)
