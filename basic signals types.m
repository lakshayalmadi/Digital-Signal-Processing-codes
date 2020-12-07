clc
clear all
% unit impulse
n1=-10:20;
u=[zeros(1,10) 1 zeros(1,20)];
subplot(4,1,1)
stem(n1,u)
xlabel('Time index');
ylabel('Amplitude');
title ('Unit impulse function');
axis([-10 20 0 1.2])
% ramp
n2=10;
s=1;%its the slope which is 45 degree by default
t=0:n2;
subplot(4,1,2);
stem(t,s*t);
xlabel('Time index');
ylabel('Amplitude');
title ('Ramp Signal');
axis([0 10 0 10]);
% unit step signal
n3=-10:1:10;
imp=[zeros(1,10) ones(1,11)];
subplot(4,1,3);
stem(n3,imp);
xlabel('Time Index');
ylabel('Amplitude');
title ('Unit Step signal');
axis([-10 10 0 2]);
% exponential signal
n4=-2:.04:2;
a=2;
x=exp(a*n4);
subplot(4,1,4);
stem(n4,x);
xlabel('Time Index');
ylabel('Amplitude');
title ('Real Exponential Signal');
axis([-2 2 0 60]);