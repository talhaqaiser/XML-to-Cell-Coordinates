%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% XML to X,Y spatial coordinates  
% 
% Inputs: 
%   xml_path: a valid path to XML file 
%
% Outputs:
%   nuclei_loc: X,Y coordinates of nuclei 
% 	class:		class label
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Talha Qaiser
% Department of Computer Science, 
% University of Warwick, UK.
% http://www2.warwick.ac.uk/fac/sci/dcs/people/research/talhaqaiser
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear 
close all

xml_path = 'D:\fakePath';

xml_data = xml_read(xml_path);
[nuclei_loc, class] = getNucleiCoor(xml_data.POI.LABELS); 
