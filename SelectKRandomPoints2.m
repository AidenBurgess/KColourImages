%This function calculates the mean colors of clusters
%Inputs:
%
%Outputs:
%
%Author: Aiden Burgess
function [randomPoints] = SelectKRandomPoints(image, numberofPoints)

[row,col,colors] = size(image);
randomPoints = [0 0];

for i = 1:numberofPoints
    
    randrow = randi([1 row]);
    randcol = randi([1 col]);
    
    while sum(ismember(randomPoints,[randrow randcol],'rows'))
        randrow = randi([1 row]);
        randcol = randi([1 col]);
    end
    randomPoints(i,1) = randrow;
    randomPoints(i,2) = randcol;
    
end
end




