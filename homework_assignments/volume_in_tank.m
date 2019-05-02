%% Summary

%Created by Chris Graffia on January 30, 2019.
    %Mech 105
%This function calculates the volume of a liquid in a tank given a height
%of liquid in the tank. The tank is predetermined as a cylinder with base
%diameter 25m and height 19m, which then extends outward in a cone shape
%that has a height of 14m and top diameter of 46m.

%% Computations

h=input('Height of water in the tank (meters): ');
if h>=0 && h<=19
    v = pi*(25/2)^2*h;
    fprintf('The volume of water in the tank is: %.3f m^3\n', v)
elseif h>19
    v = (pi*(25/2)^2*19)+(3*pi*((h-(7/3))^3)/16)-(3*pi*((50/3)^3)/16);
    fprintf('The volume of water in the tank is %.3f m^3\n', v)
else
    fprintf(2, '\n    Error, height must be a positive real number. \n')
end
