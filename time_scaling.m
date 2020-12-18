clear all
clc
k=2;
x1 = [-1 -2 1 3 2];
a = length(x1);
n=0:1:a-1;
subplot(3,1,1);
stem(x1);
xlabel('Number of Samples');
ylabel('Amplitude');
title('Input Signal x1');
x2=k*x1;
subplot(3,1,2);
stem(x2);
xlabel('Number of Samples');
ylabel('Amplitude');
title('Amplified Signal');
x3=x1/k;
subplot(3,1,3);
stem(x3);
xlabel('Number of Samples');
ylabel('Amplitude');
title('Attenuated Signal');
display(x1);
display(x2);
display(x3);
