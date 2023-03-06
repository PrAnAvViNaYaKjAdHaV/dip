clc;
f=[1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1];
N=4;
for k=0:N-1
    for l=0:N-1
        w(k+1,l+1)=int(cos((2*%pi*k*1)/N)-%i*sin((2*%pi*k*1)/N));
        end
    end
    
    disp(w,'kernel matrix of 2d DFT =');
    F=w*f*w
    disp(F,'2D dft of given 2d image=');
