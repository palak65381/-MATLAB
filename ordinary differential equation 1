% Define the function representing the ODE
ode_func = @(x, u) sin(x) * u;

% Define the range of x values for the solution
x_span = [0, 5]; % Adjust the range as needed

% Define the initial condition
initial_condition = 2;

% Solve the ODE using ode45
[x, u] = ode45(ode_func, x_span, initial_condition);

% Plot the solution
plot(x, u, '-o');
xlabel('x');
ylabel('u(x)');
title('Solution of du(x)/dx - sin(x)u(x) = 0');
grid on;

% Display the initial condition
hold on;
plot(0, initial_condition, 'ro'); % Mark the initial condition point
legend('Solution', 'Initial Condition');
hold off;
