clc;
close;
a = imread(fullpath(getIPCVpath()+"/images/"+'baboon.png'));
a = rgb2gray(a);
[m n] = size(a);
for i = 1:m
    for j=1:n
        b(i,j) = 2*a(i,j);
        end
end

figure(1);
imshow(a);
title('original image');
figure(2);
imshow(b);
title('contrast Manipulation')
