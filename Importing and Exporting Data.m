%% Importing and Exporting Data
clc; clear
%Importing (bringing in Data)

%Importing .csv file
Data1 = readmatrix("pvcells.csv");
%file name should be a string (or character)
%suppress the line
% include the file extension

%import .txt file
Data2 = readmatrix('xvalues.txt');

%import .xls file (only numbers)
Data3 = readmatrix('yvalues.xls');

%Load in an image
PIC1 = imread('Wyatt.png');
PIC2 = imread('Leo.png');

% plot results
plot(Data2, Data3)

%the number of x values need to ewual the number of y values

%visualization
image(PIC2)
image(PIC1)

%Exporting Data

%export to a .csv file (work for .txt and .xls)
writematrix(Data1, 'DataExport.csv')
%remember the extension
%filename is string or character
%variable name is just as is
% 1st input: variable
% 2nd input: file name + extension

% export to a .mat file
% .mat file saves variables from the workspace
% saves the variable name and data
% unique to matlab
% save command
save('SampleMATfile.mat', 'Data2', 'Data3')
%1st input is the file name
% 2nd+ inputs are the variable names (as strings or characters)

%% Creates a new Section
clc; clear
% Import a .mat file
load("SampleMATfile.mat")
