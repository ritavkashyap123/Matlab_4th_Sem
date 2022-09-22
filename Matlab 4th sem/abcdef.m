clc;
clear all;
close all;
fc=1000;
fs=10000;
f=200;
t=0:2/fs:((2/f)-(1/fs));
x=0.4*cos(2*pi*f*t)+0.5;
y1=modulate(x,fc,fs,'ppm');
y=modulate(x,fc,fs,'ppm');

subplot(4,1,1);
plot(x);
title('modulating signal');

subplot(4,1,2);
plot(y1);
title('pwm modulating signal');

subplot(4,1,3);
plot(y);
title('ppm modulated signal');

x_recov=demod(y,fc,fs,'ppm');
subplot(4,1,4);
plot(x_recov);
title('Original signal');



