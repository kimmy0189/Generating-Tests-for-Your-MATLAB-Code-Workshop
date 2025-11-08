classdef testIsLeapYear < matlab.unittest.TestCase
    
    properties (TestParameter)
        yearAndIsLeapYear = { ...
            {2000, true}; ...
            {2024, true}; ...
            {2025, false}; ...
            {1985, false}; ...
            {1900, false}; ...
            {1999, false} };
    end

    methods (Test, ParameterCombination = "sequential")

        function test_isLeapYear(testCase, yearAndIsLeapYear)

            % Extract input and expected output from parameter for clarity
            year = yearAndIsLeapYear{1};
            expected_isLeap = yearAndIsLeapYear{2};

            % Exercise the code
            actual_isLeap = isLeapYear(year);

            % Verify results
            testCase.verifyEqual(actual_isLeap, expected_isLeap);
        end
    end
end

