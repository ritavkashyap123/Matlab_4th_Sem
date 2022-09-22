clc 
close all
clear all
%fs = input ("fs");
%fm = input ("fm");
%a = input ("apmlitude");

fs = 80;
fm = 10;
a = 2;

t=0:0.0001:1;

stooth = 1.0*a.*sawtooth(2*pi*fs*t);
subplot (3,1,1);
plot (t, stooth);
title ("comparator wave");
hold on
msg = a.*sin(2.*pi.*fm*t);
subplot (3,1,1)
plot (t,msg)
hold off

for i= 1:length(stooth)
    if (msg(i)>=stooth(i))
        pwm(i)=1;
    else 
        pwm(i) = 0;
    end
end
y3=pammod(msg,8);
subplot (3,1,2)
plot (t,pwm, 'r')
title ('PWM')
subplot (3,1,3)
plot (1,y3)
axis ([0 1 0 1])