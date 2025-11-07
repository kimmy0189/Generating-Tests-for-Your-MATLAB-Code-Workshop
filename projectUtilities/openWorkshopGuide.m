function openWorkshopGuide()

% Skip opening the workshop guide if running in an automated system
if batchStartupOptionUsed()
    return;
end

% Open workshop guide
prj = matlab.project.currentProject();
if ~isempty(prj)
    pathToGuide = fullfile(prj.RootFolder,"WorkshopGuide.m");
    edit(pathToGuide);
end

end