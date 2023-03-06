clc;
close;
a=imread(fullpath(getIPCVpath()+"/images/"+'baboon.png'));
a = rgb2gray(a)
b = double(a)-50;
b = uint8(b);
figure(1)
imshow(a)
title('original image');
figure(2);
imshow(b);
title('brightness suppressed Image');
