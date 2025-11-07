function enableAdvancedCodeCoverage()

% Enable coverage only if you have MATLAB Test
if ~license("test","MATLAB_Test")
    return;
end

% Get project metadata
proj = matlab.project.currentProject;
projMetadata = matlab.internal.project.metadata.FileMetadataManager(proj,"MLTestManagerCoverageSettings");
coverageSettings = projMetadata.getMetadata(proj.RootFolder);

% Enable code coverage
coverageSettings.set(isCoverageEnabled = "true");
coverageSettings.set("coverageMode", "MCDC");
coverageSettings.set(isGenCoverageEnabled = "true");
projMetadata.setMetadata(proj.RootFolder, coverageSettings);

end