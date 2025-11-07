function sortedArray = simpleSort(inputVector)
%SIMPLESORT Uses a Bubble Sort algorithm to sort an array of numbers in
% ascending order
%
%   sortedArray = simpleSort(array) returns a new array with the same
%   elements as the input array, sorted in ascending order
%
%   Example:
%       simpleSort([3, 1, 4, 1, 5]) % returns [1 1 3 4 5]
%
%   Input must be a numeric vector.

arguments
    inputVector {mustBeNumeric,mustBeVector(inputVector,"allow-all-empties")}
end

% Copy the array to avoid modifying the input
sortedArray = inputVector;

n = length(sortedArray);

% Bubble Sort algorithm
for ii = 1:n-1
    for jj = 1:n-ii
        if sortedArray(jj) > sortedArray(jj+1)
            % Swap elements
            temp = sortedArray(jj);
            sortedArray(jj) = sortedArray(jj+1);
            sortedArray(jj+1) = temp;
        end
    end
end

end
