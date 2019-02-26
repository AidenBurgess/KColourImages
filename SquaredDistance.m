%This function calculates the squared distance between two points
%Inputs: point1 = First point to calculate distance between
%        point2 = Second point to calculate distance between
%Outputs: squaredDist = Squared distanc between two points
%Author: Aiden Burgess
function squaredDist = SquaredDistance(point1, point2)
squaredDist = sum((point1 - point2).^2);    %Calculate the squared distance
end