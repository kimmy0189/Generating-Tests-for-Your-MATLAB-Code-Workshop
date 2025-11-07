function d = distanceBetweenPoints(p1, p2)
% distanceBetweenPoints  Compute Euclidean distance between two points
%
%   d = distanceBetweenPoints(p1, p2) returns the Euclidean distance between
%   points p1 and p2, where each is a numeric vector of length 2 or 3.
%
%   Example:
%       p1 = [0 0];
%       p2 = [3 4];
%       d = distanceBetweenPoints(p1, p2) % returns 5
%
%   See also: norm, angleBetweenVectors
%
%   Author: MATLAB Expo Workshop Team

arguments
    p1 (1,:) double {mustBeFinite}
    p2 (1,:) double {mustBeFinite}
end

if numel(p1) ~= numel(p2)
    error("distanceBetweenPoints:DimensionMismatch", ...
        "Points must have the same number of elements.");
end

d = norm(p2 - p1);

end
