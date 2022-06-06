clc
clear
t = -10:1:10
L = length(t)
for i = 1:L
    if t(i) <= 0
        x1(i) = 0
    elseif t(i) < 5
            x1(i) = t(i)
    elseif t(i) >= 5
        x1(i) = -t(i) + 10
    end
end
subplot(4, 2, 1)
plot(t, x1)
xgrid
title('Original Triangular Function')

t6 = -t
subplot(4, 2, 2)
plot(t6, x1)
xgrid
title("Time Reversal")

x2 = 2 * x1
subplot(4, 2, 3)
plot(t, x2)
xgrid
title('Amplitude Scaling: Expansion')

x3 = (1/2) * x1
subplot(4, 2, 4)
plot(t, x3)
xgrid
title('Amplitude Scaling: Compression')

t2 = 2*t
subplot(4, 2, 5)
plot(t2, x1)
xgrid
title('Time Scaling: Expansion')

t3 = (1/2)*t
subplot(4, 2, 6)
plot(t3, x1)
xgrid
title('Time Scaling: Compression')

t4 = t - 3
subplot(4, 2, 7)
plot(t4, x1)
xgrid
title('Time Shifting: Advance')

t5 = t + 3
subplot(4, 2, 8)
plot(t5, x1)
xgrid
title('Time Shifting: Delay')
