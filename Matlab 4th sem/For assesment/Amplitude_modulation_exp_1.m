clc;
clear all;
close all;

Ac= 10; %carrier amplitude
fc= 1; % carrier freq (carrier freq must be at least twice message freq)
Am= 2; %message amplitude
fm= 0.05; %message signal frequency

ka1=0.1; %amplitude sensitivity
ka2=5;
ka3=1.0;

t= [0:0.1:50];
ct=Ac*sin(2*pi*fc*t);
mt=Am*sawtooth(2*pi*fm*t,0.5);
AM1= ct.*(1+ka1*mt);
AM2= ct.*(1+ka2*mt);
AM3= ct.*(1+ka3*mt);

fdev=3;
[ampm,t] = modulate(mt,fc,1000*fc,'fm');
Ademod = amdemod(ampm,fc,200*fc,fdev);

figure (1);
subplot(3, 1, 1);

plot(t,mt);
xlabel("time");
ylabel("amplitude");
title("message signal");
grid on;

subplot (3, 1, 2);
plot(t, ct);
title("carrier signal");
xlabel("time");
ylabel("amplitude");
grid on;

subplot (3, 1, 3);
plot(t, AM1, 'g');
xlabel("time");
ylabel("amplitude");
title("Amplitude modulated signal (under modulated)");
grid on;

figure (2);
subplot (2, 1, 2);
plot(t, AM3, 'b');
xlabel("time");
ylabel("amplitude");
title("Amplitude modulated signal 3 (overmodulated)");
grid on;

subplot (2, 1, 1);
plot(t, AM2, 'r');
xlabel("time");
ylabel("amplitude");
title("Amplitude modulated signal 2 (critically modulated)");
grid on;

figure (3);
subplot (2,1,1);
plot (t, ampm);
title ("amplitude modulated");
grid on;

subplot (2,1,2);
plot (t,Ademod);
title ("demodulated signal");
grid on;
