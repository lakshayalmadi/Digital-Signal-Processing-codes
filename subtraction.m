clear all
clc
n1 = -1:2;
x = [2 4 3 1];
subplot (3,1,1);
stem(n1, x);
title ('X Sequence');
axis ([-3 3 0 5]);
n2=0:3;
y = [1 1 2 1];
subplot (3,1,2);
stem(n2,y);
title('Y Sequence');
axis([-3 3 0 5]);
n3 = min (min(n1), min ( n2 ) ) : max (max (n1), max ( n2 ));
s1 = zeros(1,length (n3));
s2 = s1;
s1 ( ( n3>=min( n1 )) & (n3 <=max ( n1 ))==1 )=x;
s2 ( ( n3>=min( n2 )) & (n3 <=max ( n2 ))==1 )=y;
sub = s1 - s2;
subplot(3,1,3)
stem(n3, sub)
title ('OUTPUT = X-Y');
axis ([-3 3 0 5]);
