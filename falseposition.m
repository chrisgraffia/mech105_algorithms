function [root,fx,ea,iter] = falseposition(func,x_l,x_u,es,maxiter)
%% Summary

%Created by Chris Graffia on February 27, 2019.
    %Mech 105
%This function uses false position to determine the root of a function
%given the desired function, a lower and upper bound, a desired approximate
%relative error, and a maximum number of iterations.

%% Definition of Inputs

%func = the function in which the root is trying to be found 
    %Must be typed as "@(x) desired function"
    %Example: @(x) exp(x)-1
%x_l = the lower bound guess at the root
%x_u = the upper bound guess at the root
%es = the desired approximate relative error
    %as a percentage
    %Example: for 100% enter 100
%maxiter = the desired maximum iterations assuming
    %the approximate relative error is not met
%root = the approximation of the root of the given function
%fx = the given function
%ea = the approximate relative error of the final iteration
%iter = the number of iterations that were completed

%% Predefined Inputs if not Already Given

if nargin == 4
    maxiter = 200;
elseif nargin == 3
    es = 0.0001;
    maxiter = 200;
end

%% Error Checks

%Ensure the user has selected bounds that contain a root
if func(x_l)*func(x_u) >= 0
    fprintf(2, '\nError, upper bound and lower bound must contain a root. \n')
end

%% Computations

%Define initial error and number of iterations
n = 1;
err = 100;
%A while loop ensures that the desired error and iterations are met
while err > es && n <= maxiter
    %Point-slope formula
    x_r = ((-func(x_l)*(x_u-x_l))/(func(x_u)-func(x_l)))+x_l;
    %if statement to decide if x_r replaces the lower or upper bound
    if func(x_r) > 0 && func(x_l) > 0
        previous = x_l;
        x_l = x_r;
        err = abs((x_l-previous)/(x_l))*100;
    elseif func(x_r) > 0 && func(x_l) < 0
        previous = x_u;
        x_u = x_r;
        err = abs((x_u-previous)/(x_u))*100;
    elseif func(x_r) < 0 && func(x_l) < 0
        previous = x_l;
        x_l = x_r;
        err = abs((x_l-previous)/(x_l))*100;
    elseif func(x_r) < 0 && func(x_l) > 0
        previous = x_u;
        x_u = x_r;
        err = abs((x_u-previous)/(x_u))*100;
    end
    %Next iteration
    n = n+1;
end
%Outputs
root = x_r;
fx = func;
ea = err;
iter = n;
fprintf('\nThe final approximate relative error was %f percent.\n',ea)
fprintf('\n%1.0f iterations were completed.\n',iter)

end