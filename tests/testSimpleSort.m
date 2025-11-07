classdef testSimpleSort < matlab.unittest.TestCase
    
    properties (TestParameter)
        inputValues = struct( ...
            ScalarPositive = 5, ...
            ScalarNegative = -7, ...
            ScalarZero = 0, ...
            VectorLength2 = randi(100,[20,1]), ...
            VectorLength10 = randi(100,[10,1]), ...
            VectorLength100 = randi(100,[100,1]), ...
            Empty = []);
    end

    methods (Test)

        function test_simpleSort_ClassicTest(testCase)
            % This is a classic test using defined inputs and expected
            % outputs

            % Define inputs
            in = [3,5,2,8,1,2,6];

            % Define expected outputs
            expectedOut = [1,2,2,3,5,6,8];

            % Exercise function
            actualOut = simpleSort(in);

            % Verify results
            testCase.verifyEqual(actualOut,expectedOut);

        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Uncomment the following tests and add code to complete the test %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        % function test_simpleSort_PropertyBasedTest(testCase, inputValues)
        %     % Create a property-based test for simpleSort
        % 
        %     % Instead of testing specific input and output values like we
        %     % did above, property-based testing checks that the
        %     % "properties" (i.e., the defining characterstics) of the
        %     % result that must always be true are actually satisfied.
        % 
        %     % For simpleSort, the properties of the algorithm are:
        %     %   - Output has the same number of elements as the input
        %     %   - Output is sorted in ascending order
        % 
        %     % Another nice benefit of property-based testing is that you
        %     % don't need to specify any expected values. The expecation is
        %     % that the properties of the solution are true, so the specific
        %     % values are less important (or not important at all).
        % 
        % 
        %     % Exercise function
        %     output = simpleSort(inputValues);
        % 
        % 
        %     % Compute and verify properties of the result. Be sure to check
        %     % for existing testCase.verify* qualifications that can help
        %     % make this easier. You can explore available qualifications
        %     % using testCase.verify<TAB>.
        %     % e.g., testCase.verifyTrue( all(output > 0) )
        % 
        % 
        %     %%%%%%%%%%%%%%%%%%%%
        %     % MODIFY CODE HERE %
        %     %%%%%%%%%%%%%%%%%%%%
        %     hasSameNumberOfElements = false;
        %     isSortedAscending = false;
        % 
        % 
        %     % Verify properties of result are satisfied
        %     testCase.verifyTrue(hasSameNumberOfElements);
        %     testCase.verifyTrue(isSortedAscending);
        % 
        % end

    end
end