function isTXTFileOK = parseTXTFile(fileName, threshold, index, folderName)
%% Description
%This function loads a single .txt file and checks it to ensure that it can
%be used in DiffusionAnalysis.m. THIS MUST BE SAVED IN THE SAME DIRECTORY
%AS DiffusionAnalysis.m!
%The .txt file contains an array of values. This function checks if the
%maximum value is below an given threshold and if the minimum value is at 
%least 0. If the file passes both checks, it's good. If it fails one, it's
%bad and a short message appears in the Command Window identifying the file
%and the folder it's in.
%% INPUTS
    %fileName = Name of the .txt file to be analyzed
    %threshold = Lower limit for the maximum intensity. A max intensity below this value is considered bad.
    %index = Index of the .txt file in the list of files
    %folderName = Name of the folder that contains the .txt file
        %Note: These last two are only used if the file is bad
%% OUTPUTS
    %isTXTFileOK = True/false statement
%%
    fileContents = load(fileName);
    %Get the maximum and minimum values within the file. The locations of
    %those values within the file don't seem to matter.
    intensityMax = max(fileContents(:));
    intensityMin = min(fileContents(:));
    %Perform the cheks
    if intensityMax < threshold
        isTXTFileOK = false;
        fprintf(['Tossed file #' index ' from the ' folderName ' folder - was above threshold'])
    elseif intensityMin < 0
        isTXTFileOK = false;
        fprintf(['Tossed file #' index ' from the ' folderName ' folder - had negative values'])
    else
        isTXTFileOK = true;
    end
end