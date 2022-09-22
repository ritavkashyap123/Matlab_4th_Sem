clc
clear all
close all
fm= 0.03;
fc= 0.5;
Ac= 1;
Am= 1;
Kf=0.5;
t = 0:0.001:100;
fdev=0.5;

%Bm=(Kf*Am)/fm;
Bm= 10;

Ct= Ac.* cos (2.* pi.*fc.*t);
Mt= Am.* sin (2.*pi.*fm.*t);
FREQM = Ac.* cos (2.*pi.*fc*t + Bm .*cos(2.*pi.*fm.*t));

Fdemod = fmdemod(FREQM,fc,200*fc,fdev);

figure (1)

subplot (4,1,1)
plot (t,Mt)
title ("Message signal");
grid on;

subplot (4,1,2)
plot (t,Ct)
title ("carrier signal");
grid on;

subplot (4,1,3)
plot (t, FREQM);
title ("Frequency modulated");
grid on;



subplot (4,1,4)
plot (t, Fdemod)
title ("demodulated signal")
grid on