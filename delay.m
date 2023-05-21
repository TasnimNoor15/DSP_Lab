clc;
clear all;
t=-20:1:20;
x1=square(3*t);
x2=square(3*(t+5));
[corr,t]=xcorr(x1,x2)
subplot(3,1,1)
plot(x1);
title('X1')
subplot(3,1,2)
plot(x2);
title('X2')
subplot(3,1,3)
plot(t,corr)
title('corr')
mag=max(corr(:))
delay1=find(corr(:)==mag);
if delay1>40
    delay=delay1-41;
end
if delay1<40
    delay=40-delay1;
end

delay


