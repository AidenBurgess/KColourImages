%This function goes through the K means algorthim for an image
%Inputs: myimg =  A 3D array containing an RGB image
%        seedmeans = Array of initial mean color values k by 1 by 3
%        maxiter = maximum iterations of UpdateMeans allowed
%Outputs: clustarray = A 2D array containing cluster values for each pixel
%                      in myimg
%         newmeans = Array of final mean color values k by 1 by 3
%Author: Aiden Burgess
function [clustarray, newmeans] = KMeansRGB(myimg, seedmeans, maxiter)
%Find k, the number of means
[k ,~, ~] = size(seedmeans);

for i = 1:maxiter
    %Calculate the new mean colors
    clustarray = AssignToClusters(myimg, seedmeans);
    newmeans = UpdateMeans(myimg, k, clustarray);
    
    %Stop when means are equal
    if (newmeans == seedmeans) == 1
        break
    end
    
    %Set old mean to new mean to prepare for next loop
    seedmeans = newmeans;
    
end
%Display error message if maximum iterations achieved before convergence
if i == maxiter
    disp('Maximum number of iterations reached before convergence was achieved')
end

end