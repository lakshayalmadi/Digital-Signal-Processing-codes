clc
clear all close all
h1= input('Enter the first sequence: '); 
h2= input('Enter the second sequence: '); 
h3= input('Enter the third sequence: '); 
a=length(h1);
b=length(h2); 
c=length(h3); 
len=1+c:a-1; 
h3(len)=0;
h1 
h2 
h3
h_23=h2+h3
h=conv(h1,h_23);
disp('The output of the system is: ') 
h
length=length(h)
