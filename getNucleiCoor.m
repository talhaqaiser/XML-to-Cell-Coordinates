function [nuclei_loc, class] = getNucleiCoor(labels)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% XML to X,Y spatial coordinates  
% 
% Inputs: 
%   labels: XML label attribute  
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

nuclei_loc = [];
class = [];

for i=1:length(labels.LABEL)
    att = labels.LABEL(i).ATTRIBUTE;
    x = att.X;
    y = att.Y;
    c = hex2rgb(att.TEXTCOLOR(2:end));
    
    nuclei_loc = [nuclei_loc; [x, y]];
    class =  [class; c];
end

% only for this dataset
class =  class(:,1) + class(:,2)*0 + 2*class(:,3);

end