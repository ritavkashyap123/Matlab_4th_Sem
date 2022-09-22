clc
clear all
close all

fm= 0.04; %Message frequency
fc= 1; %Carrier frequency
Ac= 1; %Carrier amplitude
Am= 1; %Message amplitude
%Kf=0.5;
t = 0:0.001:100;
fdev=3;

%Bm=(Kf*Am)/fm;
%Bm= 10;

Ct= Ac.* cos (2.* pi.*fc.*t);
Mt= Am.* sawtooth (2.*pi.*fm.*t,0.5);
%FREQM = Ac.* cos (2.*pi.*fc*t + Bm .*cos(2.*pi.*fm.*t));
[FREQM,t] = modulate(Mt,fc,1000*fc,'fm');

Fdemod = fmdemod(FREQM,fc,200*fc,fdev); 
%Fdemod = 500*demod(FREQM,0.5,fdev, 'fm' );

figure (1)

subplot (4,1,1);
plot (t,Mt);
title ("Message signal");
grid on;

subplot (4,1,2);
plot (t,Ct);
title ("carrier signal");
grid on;

subplot (4,1,3);
plot (t, FREQM);
title ("Frequency modulated");
grid on;

subplot (4,1,4);
plot (t,Fdemod);
title ("demodulated signal");
grid on;