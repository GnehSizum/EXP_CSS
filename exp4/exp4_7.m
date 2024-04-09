% Define the fundamental parameters
T = 4; % Period of the square wave
A = 0.5; % Amplitude of the square wave

% Resistance and Capacitance values
R = 1; % Ohms
C = 1; % Farads

% Define the time vector for one period
t = linspace(-1.5*T, 1.5*T, 1000);

% Define the square wave over one period
f_t = A * (square(2 * pi * (t+1) / T) + 1);

% Fundamental angular frequency of the square wave
omega_0 = 2 * pi / T;

% Create a function handle for the transfer function H(jw)
H = @(w) 1 ./ (1 + 1i*w*R*C);

% Initialize the response as a zero vector
v_t = zeros(size(t));

% Number of harmonics to consider
N = 25;  % This can be adjusted to include more harmonics

% Compute the response by summing the contributions of each harmonic
for n = 1:2:N  % Only odd harmonics contribute to a square wave
    C_n = 4*A/(n*pi);   % Fourier coefficient for the nth harmonic
    v_t = v_t + C_n * abs(H(n*omega_0)) .* cos(n*omega_0*t + angle(H(n*omega_0)));
end

% Plot the original square wave and its response through the RC circuit
figure;
subplot(2,1,1);
plot(t, f_t);
title('周期方波');
xlabel('t');
ylabel('f(t)');
axis([-6 6 -0.2 1.2]);

subplot(2,1,2);
plot(t, v_t);
title('通过RC系统的响应');
xlabel('t');
ylabel('v(t)');
axis([-6 6 -0.4 0.4]);