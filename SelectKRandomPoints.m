%This function selects random points from an image
%Inputs: myimg =  A 3D array containing an RGB image
%        numberOfPoints = Number of randompoints to choose on myimg
%Outputs: RandomPoints = A numberOfPoints by 2 array containing coordinates
%         of random points
%Author: Aiden Burgess
function [randomPoints] = SelectKRandomPoints(myimg, numberOfPoints)

[row,col,~] = size(myimg);
randomPoints = zeros(numberOfPoints,2);

randindex = randperm(row*col,numberOfPoints);

[randomPoints(:,1) randomPoints(:,2)] = ind2sub(size(myimg), randindex);
end