% Constants and parameters
L = 2;                      % Length of the copper bar (m)
T0 = 100;                   % Initial temperature (°C)
phi0 = 3;                   % Initial concentration (mol/m^3)
phi2 = 0;                   % Concentration at x=L (mol/m^3)
q = 10;                     % Heat flux at x=L (W/m^2)
k = 73;                    % Thermal conductivity (W/m°C)
D = 2.3e-5;                % Diffusion coefficient (m^2/s)

% Discretization
N = 100;                    % Number of points for discretization
dx = L / N;                 % Step size
x = linspace(0, L, N+1);    % Spatial grid

% Initialize temperature and concentration arrays
T = ones(1, N+1) * T0;      % Temperature array
phi = ones(1, N+1) * phi0;  % Concentration array

% Fourier's Law for steady-state heat conduction
dTdx = -q / k;
T = T0 + dTdx * x;

% Fick's first law of diffusion
dphidx = (phi0 - phi2) / L;
phi = phi0 - dphidx * x;

% Plot temperature and concentration distributions
figure;
subplot(2,1,1);
plot(x, T);
xlabel('Position (m)');
ylabel('Temperature (°C)');
title('Temperature Distribution');

subplot(2,1,2);
plot(x, phi);
xlabel('Position (m)');
ylabel('Concentration (mol/m^3)');
title('Concentration Distribution');
