function I = Simpson(x,y)
%% Summary
% Created by: Chris Graffia
    % Dr. Bechara, Mech 105
    % Due Friday, April 19, 2019
% This function uses Simpson's 1/3 rule to approximate the integral of a
% set of tabulated data. In the case that there is an odd number of values,
% the trapezoidal rule is used on the last interval. This contains error
% checks for the same number of x and y values, and equally spaced x
% values. Also gives the user a warning that the trapezoidal rule will be
% used on the last interval if applicable.

%% Error Checks
% Equally spaced x values
% x and y have the same length

n = length(x);

n1 = length(y);

E = diff(x);

for i=1:(n-2)
    
    if E(i) ~= E(i+1)
        
        fprintf(2,'\nError, x values must be equally spaced. \n')
        
        return
        
    end
    
end

if n ~= n1
    
    fprintf(2,'\nError, x and y must be the same length. \n')
    
    return
    
end

%% Trapezoidal Warning

if mod(n,2) == 1
    
    fprintf(2,'\nWarning, trapezoidal rule has been used on the last interval. \n')
    
end

%% Simpson Calculations (No Trap Rule)

if mod(n,2) == 0
    
    I = y(1);
    
    for i = 1:(n-2)
        
        if mod(i,2) == 1
            
            I = I+(4*y(i+1));
            
        end
        
        if mod(i,2) == 0
            
            I = I+(2*y(i+1));
            
        end
        
    end
    
    I = I+y(n);
    
    I = I*((x(n)-x(1))/(3*(n-1)));
    
end

%% Simpson Calculations (With Trap Rule)

if mod(n,2) == 1
    
    I = y(1);
    
    for i = 1:(n-3)
        
        if mod(i,2) == 1
            
            I = I+(4*y(i+1));
            
        end
        
        if mod(i,2) == 0
            
            I = I+(2*y(i+1));
            
        end
        
    end
    
    I = I+y(n-1);
    
    I = I*((x(n-1)-x(1))/(3*(n-2)));
    
    I = I+((x(n)-x(n-1))*(y(n)+y(n-1))/2);
    
end

end

