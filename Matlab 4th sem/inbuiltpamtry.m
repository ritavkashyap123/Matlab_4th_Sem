clc
close all
clear all
fc = 1000;
fs= 10000;
f=200;
t= 0:2/fs:((2/f)-(1/fs));
x=0.4*cos(2*pi*f*t)+0.5;

[y1,t]=modulate(x,fc,fs,'ppm');

subplot (4,1,1)
plot (y1)
title ('PPM')

[y2,t]=modulate(x,fc,fs,'pwm');

subplot (4,1,2)
plot(y2)
title ('PWM')

[y3,t]=modulate(x,fc,fs,'qam');
subplot(4,1,3)
plot(y3)
title ('PAM')

subplot (4,1,4)
plot (x)
title ('msg')