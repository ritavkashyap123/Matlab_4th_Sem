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

Ct= 0.5.*square(2*pi*fc*t) + 0.5;
Mt= Am.* sin (2.*pi.*fm.*t);
PA = Ct.*Mt;

subplot (4,1,1)
plot (t,Mt)
 
subplot (4,1,2)
plot (t,Ct)

subplot (4,1,3)
plot (t,PA)

subplot(4,1,4)
plot (t,PA)