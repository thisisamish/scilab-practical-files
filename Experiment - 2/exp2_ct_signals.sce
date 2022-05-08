clc
clear
t = -10:0.01:10
L = length(t)

// To generate Unit Step function
for i = 1:L
    if t(i) < 0
        x1(i) = 0
    else
        x1(i) = 1
    end
end

// To generate Impulse Function
for i = 1:L
    if t(i) == 0
        x2(i) = 1
    else
        x2(i) = 0
    end
end

// To generate Exponential waveforms
x3 = exp(t)

// To generate Ramp Function
for i = 1:L
    if t(i) < 0
        x4(i) = 0
    else
        x4(i) = t(i)
    end
end

// To generate sinusoidal function
f = 0.1
x5 = sin(2*%pi*f*t)


// -------------------- Plotting the functions -----------------

// Plotting Unit Step function
subplot(2, 3, 1)
plot(t, x1)
xlabel("t")
ylabel("Amp")
title("Unit Step Function")

// Plotting Impulse function
subplot(2, 3, 2)
plot(t, x2)
xlabel("t")
ylabel("Amp")
title("Impulse Function")

// Plotting Exponential function
subplot(2, 3, 3)
plot(t, x3)
xlabel("t")
ylabel("Amp")
title("Exponential Function")


// Plotting Ramp function
subplot(2, 3, 4)
plot(t, x4)
xlabel("t")
ylabel("Amp")
title("Ramp Function")

// Plotting Sinusoidal function
subplot(2, 3, 5)
plot(t, x5)
xlabel("t")
ylabel("Amp")
title("Sinusoidal Function")

