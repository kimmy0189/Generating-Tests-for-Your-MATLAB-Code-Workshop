function area = areaOfTriangle(p1, p2, p3)

arguments
    p1 (1,:) double {mustBeFinite, mustBeNumDimensionsBetween(p1,2,3)}
    p2 (1,:) double {mustBeFinite, mustBeNumDimensionsBetween(p2,2,3)}
    p3 (1,:) double {mustBeFinite, mustBeNumDimensionsBetween(p3,2,3)}
end

% Make 3D for simplified calculations
p1 = make3D(p1);
p2 = make3D(p2);
p3 = make3D(p3);

% General 3D case: are = half the magnitude of the cross product
v1 = p2 - p1;
v2 = p3 - p1;
area = 0.5 * norm(cross(v1, v2));

end

function out = make3D(in)
out = zeros(3,1);
nDim = numel(in);
out(1:nDim) = in;
end