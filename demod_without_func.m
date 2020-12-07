clc;clear all;
close all;
t=linspace(0,0.02,10000);
fc=5000;
fm=200;
fs=40000;
Am=5;
Ac=10;
m=Am/Ac
wc=2*pi*fc*t;
wm=2*pi*fm*t;
ec=Ac*sin(wc);
em=Am*sin(wm);
y=Ac*(1+m*sin(wm)).*sin(wc);
z=y.*ec;
z1=conv(z,exp(-t/0.000795));
l=10000;
subplot(4,1,1),plot(t(1:l),em(1:l),'linewidth',1.2,'color',[0,0.5 0])
xlabel('time(sec)');
ylabel('amplitude in volts(V)');
title('MODULATING SIGNAL');
subplot(4,1,2),plot(t(1:l/2),ec(1:l/2),'color','b','linewidth',1.1)
xlabel('time(sec)');
ylabel('amplitude in volts(V)');
title('CARRIER SIGNAL');
subplot(4,1,3),plot(t(1:l),y(1:l),'color','b','linewidth',1.2)
xlabel('time(sec)');
ylabel('amplitude in volts(V)');
title('AMPLITUDE MODULATED SIGNAL');
subplot(4,1,4),plot(t(1:l),0.5*z1(1:l),'color','b')
xlabel('time(sec)');
ylabel('amplitude in volts(V)');
title('DEMODULATED SIGNAL');