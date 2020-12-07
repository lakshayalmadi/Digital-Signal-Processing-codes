clc
clear all
close all
wp = 0.2;
ws= 0.3;
rp = 1;
rs = 15;
[n,wn] = cheb1ord(wp,ws,rp,rs); 
[b,a] = cheby1(n,rp,wn);
figure
[h,w] = freqz(b,a,200);
subplot(1,2,1)
plot(abs(h));
grid on;
xlabel('frequency'); 
ylabel('amplitude');
title('low pass chebyshev filter response'); 
