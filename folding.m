clear all
clc
n=-1:2;
x = [4 -1 0 3];
subplot(2,1,1)
stem(n,x);
axis([-3 3 -5 5]);
title ('Input Signal x(n)');
c = fliplr(x);
y = fliplr(-n);
subplot (2,1,2);
stem(y,c);
axis ([-3 3 -5 5] );
title( 'Folded Signal x(-n)');
