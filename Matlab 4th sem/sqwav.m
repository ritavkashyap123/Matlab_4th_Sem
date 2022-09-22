t=0:0.01:10;
fc=100;
ct= 0.5*square(2*pi*fc*t) + 0.5;
plot (ct,t)
axis([0 5 0 5])