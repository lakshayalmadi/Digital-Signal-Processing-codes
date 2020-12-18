clc
clear all 
close all
h1= input('Enter the first sequence: '); 
h2= input('Enter the second sequence: '); 
h=conv(h1,h2);
disp('The convolution of sequence h1 and h2 is: ') 
h
length=length(h)
