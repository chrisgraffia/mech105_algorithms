function nd = days(mo,da,leap)
%% Summary

%Created by Chris Graffia on February 1, 2019.
    %Mech 105
%This function will output the total number of days elapsed given the
%number of months completed, number of days completed, and whether it's a
%leap year or not.

%% Definition of Inputs

    % mo = number of complete months elapsed.
        % If today's date is March 3, input 2 for mo.
    % da = number of days elapsed after the given number of months.
        % For example if it is the 7th of February the value for da is 7.
        % Do not include the 31 days in January in this value.
    % leap = 1 for a leap year and 0 for not a leap year.

%% Computations

month= [31 28 31 30 31 30 31 31 30 31 30 31];
days=sum(month(1:mo));
if mo>2
    nd=days+da+leap;
else
    nd=days+da;
end

end