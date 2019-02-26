numOfClusters = 6
maximumIterations = 100

randomPoints = SelectKRandomPoints(myimg, numOfClusters)
%  
% 
colors = GetRGBValuesForPoints(myimg, randomPoints)
% 
%distance = SquaredDistance(p1,p2)
% 
cluster1 = AssignToClusters2(myimg,colors);
cluster2= AssignToClusters2(myimg,colors);
% 
% 
%meancolors = UpdateMeans(myimg, numOfClusters, cluster);

% 
% KMeansRGB(myimg,meancolors,maximumIterations);
% 
% newimg = CreateKColourImage(cluster, meancolors);
% imshow(newimg)