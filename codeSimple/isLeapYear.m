function isLeap = isLeapYear(year)
%ISLEAPYEAR Determine if a year is a leap year
%
%   isLeap = isLeapYear(year) returns true if the year is a leap year
%       - Leap years are divisible by 400, or divisible by 4 and not 100
%
%   Example:
%       isLeapYear(2000)  % returns true
%       isLeapYear(2024)  % returns true
%       isLeapYear(2025)  % returns false

arguments
    year (1,1) {mustBeInteger, mustBePositive}
end

% Set up logical comparisons for clarity
isDivBy400 = mod(year,400) == 0;
isDivBy100 = mod(year,100) == 0;
isDivBy4   = mod(year,  4) == 0;

% Check for leap year
if isDivBy400
    isLeap = true;
elseif isDivBy4
    isLeap = true;
elseif isDivBy100
    isLeap = false;
else
    isLeap = false;
end

end
