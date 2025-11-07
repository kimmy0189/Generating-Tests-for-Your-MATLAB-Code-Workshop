function mustBeNumDimensionsBetween(inputVar, minDims, maxDims)
%MUSTBENUMDIMENSIONSBETWEEN Checks if the number of dimensions of inputVar
% is between minDims and maxDims.
%
% Inputs:
%   inputVar - The variable to check.
%   minDims  - Minimum number of dimensions (inclusive).
%   maxDims  - Maximum number of dimensions (inclusive).
%
% Throws an error if the number of dimensions is outside the specified range.

arguments
    inputVar double
    minDims (1,1) double
    maxDims (1,1) double
end

numDims = numel(inputVar);
if numDims < minDims || numDims > maxDims
    exceptionObj = MException( ...
        "mustBeNumDimensionsBetween:InvalidDimensions", ...
        "Input must be " + minDims + "D or " + maxDims + "D (was " + numDims + "D)");
    throwAsCaller(exceptionObj);
end

end

