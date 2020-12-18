clc
clear all
close all
wp=0.5;
ws=0.7;
rp=1;
rs=50;
[n,wn]=buttord(wp,ws,rp,rs);
[b,a]=butter(n,wn);
[h,w]=freqz(b,a,128);
subplot(2,2,3);
plot(abs(h));
ylim([0,1.5]);
xlabel('frequency');
ylabel('amplitude');
title('low pass Butterworth filter response');
[b,a]=butter(n,wn,'high');
[h,w]=freqz(b,a,128);
subplot(2,2,4);
plot(abs(h));
ylim([0,1.5]);
xlabel('frequency');
ylabel('amplitude');
title('high pass Butterworth filter response');
[n,wn]= cheb1ord(wp,ws,rp,rs);
[b,a] = cheby1(n,rp,wp);
[h,w]=freqz(b,a,128);
subplot(2,2,1);
plot(abs(h));
ylim([0,1.5]);
xlabel('frequency');
ylabel('amplitude');
title('low pass Chebyshev filter response');
[b,a] = cheby1(n,rp,wp,'high')
[h,w]=freqz(b,a,128);
subplot(2,2,2);
plot(abs(h));
ylim([0,1.5]);
xlabel('frequency');
ylabel('amplitude');
title('high pass Chebyshev filter response');
