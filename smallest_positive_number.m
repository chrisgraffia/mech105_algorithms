%% Summary

%Created by Chris Graffia on February 10, 2019.
    %Mech 105
%This algorithm calculates the smallest positive number that the user's
%computer can store.

%% Computations

format long
e=1;
while (1)
    if e>0
        n=e;
        e=e/2;
    else
        break
    end
end
fprintf('The smallest positive number in MatLab is %0.6e \n',n)
