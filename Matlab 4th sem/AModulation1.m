clc;
clear all;
close all;

Ac= 8; %carrier amplitude
fc= 0.5; % carrier freq (carrier freq must be at least twice message freq)
Am= 2; %message amplitude
fm= 0.05; %message signal frequency

ka1=0.1; %amplitude sensitivity
ka2=5;
ka3=1.0;

t= [0:0.1:50];
ct=Ac*cos(2*pi*fc*t);
mt=Am*cos(2*pi*fm*t);
AM1= ct.*(1+ka1*mt);
AM2= ct.*(1+ka2*mt);
AM3= ct.*(1+ka3*mt);

figure (1);
subplot(3,1,1);
plot(t,mt);
xlabel("time");
ylabel("message signal");

subplot (3, 1, 2);
plot(t, ct);
ylabel("carrier signal");
xlabel("time");

subplot (3, 1, 3);
plot(t, AM1, 'g');
xlabel("time");
ylabel("Amplitude modulated signal");

figure (2);
subplot (2, 1, 2);
plot(t, AM3, 'b');
xlabel("time");
ylabel("Amplitude modulated signal 3");

subplot (2, 1, 1);
plot(t, AM2, 'r');
xlabel("time");
ylabel("Amplitude modulated signal 2");