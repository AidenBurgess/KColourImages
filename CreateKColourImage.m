%This function creates a new image from clusters and the mean colors for
%the clusters.
%Inputs: clustarray = An array containing the cluster value for each pixel
%        in an image
%        meancolors = A size k 1 3 array that contains the mean colors for k
%        clusters
%Outputs: newimg = A 3D array containing the new RGB image
%Author: Aiden Burgess
function newimg = CreateKColourImage(clustarray, meancolors)
%Find the number of clusters (rows)
[row col] = size(clustarray);
clusters = size(meancolors);
clusters = clusters(1);
%Initialise newimg to save processing time
newimg = zeros(row,col,3);

%Go through each cluster
for i = 1:clusters
    elements = clustarray == i;
    %Find the location of the cluster elements
    [row, col,kol] = find(elements);
    indexes = sub2ind(size(clustarray), row,col);
    color = meancolors(i,:,:);
    [row, col] = ind2sub(size(newimg(:,:,1)),indexes);
    
    %Go through each element of the cluster and set newimg to that color
    for k = 1:length(indexes)
        newimg(row(k),col(k),:) = color;
    end
end

%Convert newimg to uint8 so it can be displayed
newimg = uint8(newimg);
end