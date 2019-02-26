%This function retrieves color values from particular pixels in an img
%Inputs: myimg =  A 3D array containing an RGB image
%        pixels = A 2D array containing points from which to extract color values
%Outputs: colorinfo = A k by 1 by 3 array containing the color values for
%                     pixels
%Author: Aiden Burgess
function colorinfo = GetRGBValuesForPoints(myimg, pixels)
[rows, ~] = size(pixels);

%Go through each pixel and find the color
for i = 1:rows
    currentpixel = pixels(i,:);
    mycolors = myimg(currentpixel(1), currentpixel(2), 1:3);
    colorinfo(i, 1 ,:) = mycolors;
    
end
end