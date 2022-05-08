clc
clear
n = -10:1:10
L = length(n)

// To generate singularity functions
for i = 1:L
    if n(i) == 0
        x1(i) = 1
    else
        x1(i) = 0
    end
    if n(i) >= 0
        x2(i) = 1
        x3(i) = n(i)
    else
        x2(i) = 0
        x3(i) = 0
    end
end

// To generate exponential sequence
a = 0.85
x4 = a^n

// To generate sinusoidal sequence
f = 0.1
x5 = sin(2*%pi*f*n)


// ------------------- Plotting the functions ------------------

// Plotting Unit Step function
subplot(3, 2, 1)
plot2d3(n, x2)
xlabel("Time (n)")
ylabel("Amplitude")
title("Unit Step Function")

// Plotting Unit Impulse function
subplot(3, 2, 2)
plot2d3(n, x1)
xlabel("Time (n)")
ylabel("Amplitude")
title("Unit Impulse Function")

// Plotting Exponential function
subplot(3, 2, 3)
plot2d3(n, x4)
xlabel("Time (n)")
ylabel("Amplitude")
title("Exponential Function")

// Plotting Ramp function
subplot(3, 2, 4)
plot2d3(n, x3)
xlabel("Time (n)")
ylabel("Amplitude")
title("Ramp Function")

// Plotting Sinusoidal function
subplot(3, 2, 5)
plot2d3(n, x5)
xlabel("Time (n)")
ylabel("Amplitude")
title("Sinusoidal Function")

