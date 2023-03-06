clc;
close;
S = imread(fullpath(getIPCVpath()+"/images/morpex.png"));
figure(1);
imshow(S);
title('Original Image ');
se = imcreatese('ellipse',5,5);
s2 = imopen(S,se);
s3 = imclose(S,se);
s4 = imerode(S,se);
s5 = imdilate(S,se);
figure(2)
subplot(2,2,1);
imshow(s2);
title('opening');
subplot(2,2,2);
imshow(s3)
title('closing')
subplot(2,2,3);
imshow(s4);
title('Errosion');
subplot(2,2,4);
imshow(s5);
title('Dialtion')
