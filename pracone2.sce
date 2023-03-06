clc;
X=[1,2;3,4];
H=[5,6;7,8];
x = fft2(X);
h = fft2(H);
y = x.*h;
Y=ifft(y);
disp(Y,'circular convolution result y=')
