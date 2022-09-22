t = 0:1/1024:1;
x = sin(2*pi*60*t);
y = hilbert(x);


plot(t,real(y))
hold on
plot(t,imag(y))
hold off
axis([0 1 -1.1 2])
legend('Real Part','Imaginary Part')