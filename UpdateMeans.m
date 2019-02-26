%This function recalculates the mean color for each cluster of an image.
%Inputs: myimg =  A 3D array containing an RGB image
%        numcluster = The number of clusters in clustarray
%        clustaray = A 2D array specifying the cluster number for each pixel in
%                    myimg
%Outputs: meancol = An array k by 1 by 3 containing the mean colors of each
%                   cluster
%Author: Aiden Burgess
function meancol = UpdateMeans(myimg, numcluster, clustarray)
%Initialise meancol at start for faster processing
meancol = zeros(numcluster,1,3);
%Retrieve RGB values for the img
red = myimg(:,:,1);
green = myimg(:,:,2);
blue = myimg(:,:,3);

%Go through each cluster
for i = 1:numcluster
    %Find the indexes of the cluster
    elements = clustarray == i;
    [row, col, ~] = find(elements);
    %Find the RGB values of the cluster
    indexes = sub2ind(size(myimg), row,col);
    redvals = red(indexes);
    greenvals = green(indexes);
    bluevals = blue(indexes);
    %Calculate the mean RGB values
    meancol(i,1,:) = [mean(redvals) mean(greenvals) mean(bluevals)];
    
end

end

