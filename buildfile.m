function plan = buildfile
import matlab.buildtool.tasks.*

plan = buildplan(localfunctions);

% Set default task
plan.DefaultTasks = "test";


% CodeIssues task
plan("check") = CodeIssuesTask();

% Test task
tTask = TestTask("tests", ...
    SourceFiles = ["codeSimple","codeAdvanced"], ...
    IncludeSubfolders = true,...
    TestResults = fullfile("results","tests","index.html"), ...
    Dependencies = "check");
tTask = tTask.addCodeCoverage( ...
    fullfile("results","coverage","index.html"), ...
    MetricLevel = "mcdc");
plan("test") = tTask;

% Clean task
plan("clean") = CleanTask();

end
