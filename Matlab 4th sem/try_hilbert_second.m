clc
close all
clear all
t = 0:1/1024:1;
x1 = sin(2*pi*60*t);
x2 = sin(2*pi*2*t);

x3 = (1+x2).*x1;
y = abs(hilbert(x3));
figure (1)
plot (t,x3);
hold on;
plot (t,y);