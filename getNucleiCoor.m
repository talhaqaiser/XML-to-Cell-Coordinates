function [nuclei_loc, class] = getNucleiCoor(labels)

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

% just for this dataset


class =  class(:,1) + class(:,2)*0 + 2*class(:,3);

end