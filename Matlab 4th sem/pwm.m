clc;
clear all;
close all;
fs=input('Comparator swatooth frequency:');
fm=input('message frequency(assuming it is to be a sin)');
a=input('enter amplitude');
t=0:0.0001:1;%sampling rate of 10khz
stooth=1.01*a.*sawtooth(2*pi*fs*t);

subplot(3,1,1);
plot(t,stooth);
title('Comparator Wave');

msg=a.*sin(2*pi*fm*t);
subplot(3,1,2);
plot(t,msg);
title('message signal');

for i=1: length(stooth)
    if(msg(i)>=stooth(i))
        pwm(i)=1;
    else
        pwm(i)=0;
    end
end
subplot(3,1,3);
plot(t,pwm,'r');
title('pwm');



 