function triangleType = typeOfTriangle(p1, p2, p3, opts)
%TRIANGLETYPE Determine what kind of triangle 3 points form (equilateral,
%isoscelese, scalene) or whether they form no triangle
%
%   triangleType = triangleType(p1, p2, p3)
%
% Inputs:
%   p1, p2, p3 - 1x2 or 1x3 vectors representing the coordinates of a
%                triangle's vertices
%   opts - a structure containing optional parameters
%          opts.Tolerance - Specifies the tolerance level for comparing
%                           side lengths
%
% Outputs:
%   triangleTypeOutput - String indicating the type of triangle
%                        Possible values: "Equilateral"
%                                         "Isosceles"
%                                         "Scalene"
%                                         "Not a Triangle".
%
%   2D Example:
%       p1 = [0,0];
%       p2 = [2,0];
%       p3 = [1,sqrt(3)];
%       triangleTypeStr = triangleType(p1, p2, p3) % returns "Equilateral"
%
%   3D Example:
%       p1 = [0,0,0];
%       p2 = [7,0,7];
%       p3 = [0,7,7];
%       triangleTypeStr = triangleType(p1, p2, p3) % returns "Equilateral"
%
%   See also: distanceBetweenPoints, areaOfTriangle
%
%   Author: MATLAB Expo Workshop Team

arguments
    p1 (1,:) double {mustBeFinite, mustBeNumDimensionsBetween(p1,2,3)}
    p2 (1,:) double {mustBeFinite, mustBeNumDimensionsBetween(p2,2,3)}
    p3 (1,:) double {mustBeFinite, mustBeNumDimensionsBetween(p3,2,3)}
    opts.Tolerance (1,1) string {mustBeMember(opts.Tolerance, ...
        ["verytight","tight","loose","veryloose"])} = "tight";
end

% Check for input mismatch
if numel(p1) ~= numel(p2) || numel(p2) ~= numel(p3)
    error("triangleType:DimensionMismatch", ...
        "All points must have the same number of coordinates.");
end

% Compute side lengths
lengthSide1 = distanceBetweenPoints(p1, p2);
lengthSide2 = distanceBetweenPoints(p2, p3);
lengthSide3 = distanceBetweenPoints(p3, p1);

% Compute area of triangle
triangleArea = areaOfTriangle(p1, p2, p3);

% Determine how many sides are equal in length
% Note:
% If all 3 sides are equal, numComparesEqual = 3
% If 2 sides are equal in length, numComparesEqual = 1
% If no sides are equal in length, numComparesEqual = 0
numComparesEqual = ...
    isapprox(lengthSide1, lengthSide2, opts.Tolerance) + ...
    isapprox(lengthSide1, lengthSide3, opts.Tolerance) + ...
    isapprox(lengthSide2, lengthSide3, opts.Tolerance);

% Determine triangle type
if isapprox(triangleArea, 0, opts.Tolerance)
    % If area = 0, points are collinear and form a line, not a triangle
    triangleType = "Not a Triangle";

elseif numComparesEqual == 3
    triangleType = "Equilateral";

elseif numComparesEqual == 1
    triangleType = "Isosceles";

else
    triangleType = "Scalene";
end

end

