fs=input('comparator sawtooth frequency = ');
fm=input('message frequency(assuming it to be a sideband) = ');
a=input('Enter amplitude of signal = ');

t=0:0.0001:1; %sampling rate of 10 KHz

stooth=1.01*a.*sawtooth(2*pi*fs*t);


figure(1)
subplot(3,1,1);
plot(t,stooth); %plotting the sawtooth wave
title('Comparator wave');

msg=a.*sin(2*pi*fm*t); %Generating message wave

subplot(3,1,2);
plot(t,msg); %plotting the sine message wave
title('Message Signal');

for i=1:length(stooth)
    if (msg(i)>=stooth(i))
        pwm(i)=1;
    else
        pwm(i)=0;
    end
end

subplot(3,1,3);
plot(t,pwm,'r');
title('msg');
axis([0 1 0 1.1]); 