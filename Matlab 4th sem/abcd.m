clc;
clear all;
close all;
fc=100;
fm=fc/10;
fs=100*fc;
t=0:1/fs:4/fm;
mt=cos(2*pi*fm*t);
ct=0.5*square(2*pi*fc*t)+0.5;
st=mt.*ct;
tt=[];
%single sided PAM
for i=1:length(st);
    if st(i)==0
        tt=[tt,st(i)];
    else
        tt=[tt,st(i)+2];
    end
end

figure(1)
subplot(5,1,1);
plot(t,mt);
title('message signal');
xlabel('timeperiod');
ylabel('amplitude');

subplot(5,1,2);
plot(t,ct);
title('carrier signal');
xlabel('timeperiod');
ylabel('amplitude');

subplot(5,1,3);
plot(t,st);
title('demodulated signal of ');
xlabel('timeperiod');
ylabel('amplitude');

subplot(5,1,4);
plot(t,tt);
title('PAM of signal sideband');
xlabel('timeperiod');
ylabel('amplitude');

dt=st.*ct;
filter=fir1(200,fm/fs,'low');
original_t_signal=conv(filter,dt);
ti=0.1/(length(original_t_signal)-1):1;

subplot(5,1,5);
plot(t,dt);
title('demodulated signal');
xlabel('timeperiod');
ylabel('amplitude');