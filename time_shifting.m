clear all
clc
n1 = input('Enter the time to be Delayed');
n2 = input('Enter the time to be Advanced');
n = -2:2;
x = [-1 -2 1 3 2];
subplot(3, 1, 1);
stem(n,x);
title('Input Signal x(n)');
m=n+n1;
y= x;
subplot(3,1,2);
stem(m,y);
title('Delayed signal x(n-n1');
t = n-n2;
z = x;
subplot(3,1,3);
stem(t,z);
title('Advanced signal x(n+n2)');
