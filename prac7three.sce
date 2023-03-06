clc;
close;
x=imread(fullpath(getIPCVpath()+'/images/'+'baboon.png'));
x = rgb2gray(x);
y = double(x);
[m n] = size(y);
l = max(x)
a = round(l/2);
b = l
for i = 1:m
    for j=1:n
        if(y(i,j)>=a & y(i,j)<=b)
            z(i,j) = l;
        else
            z(i,j) = 255
         end
      end
end

z = uint8(z);
figure(1);
imshow(x);
title('original Image')
figure(2);
imshow(z);
title('gray level slicing with background')
