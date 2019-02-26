% This function assigns each point in an image to a cluster, to the cluster
% which is closest in color to the point.
% Inputs: myimg = A 3D array containing an RGB image
% meancolors = A size k 1 3 array that contains the mean colors for k
% clusters
% Outputs: clustarray = An array containing the cluster value for each pixel
% in myimg
% Author: Aiden Burgess
function clustarray = AssignToClusters(myimg, meancolors)
% Find number of clusters and size of img
[means, ~, ~] = size(meancolors);
[rows, cols, ~] = size(myimg);
% Preallocation for faster processing
clustarray = zeros(rows, cols);
distances = zeros(means, rows, cols);
% Vectorisation for faster processing
i =1:rows;
j = 1:cols;
% Create an array - distances - of the squared distances between the mean
% and the colors
for k = 1:means
    distances(k,:,:) = sum((myimg(:,:,:) - meancolors(k,:,:)).^2,3);
end

% Find minimum distance to assign the cluster
[~, clustarray(i,j)] = min(distances,[],1);

end
