clc;
clear all;
close all;

Ac= 8; %carrier amplitude
fc= 2; % carrier freq (carrier freq must be at least twice message freq)
Am= 2; %message amplitude
fm= 0.05; %message signal frequency

ka1=0.5; %amplitude sensitivity
ka2=5;
ka3=1.0;
ka4=3.0;

t= [0:0.01:50];
ct=Ac*cos(2*pi*fc*t);
mt=Am*cos(2*pi*fm*t);
AM1= ct.*(1+ka1*mt);
AM2= ct.*(1+ka2*mt);
AM3= ct.*(1+ka3*mt);
AM4= ct.*(1+ka4*mt);

figure (1);
plot(t,mt);
xlabel("time");
ylabel("message signal");
hold on;

plot(t, ct);
ylabel("carrier signal");
xlabel("time");
hold on;

plot(t, AM1, 'g');
xlabel("time");
ylabel("Amplitude modulated signal");
hold on;

figure (2);
plot(t, AM1, 'g');
xlabel("time");
ylabel("Amplitude modulated signal");
hold on;

plot(t, AM3, 'b');
xlabel("time");
ylabel("Amplitude modulated signal 3");
hold on;

plot(t, AM4, 'c');
xlabel("time");
ylabel("Amplitude modulated signal 3");
hold on;

plot(t, AM2, 'r');
xlabel("time");
ylabel("Amplitude modulated signal 2");