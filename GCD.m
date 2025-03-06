x0 = [0; 0];  % valores iniciales en cero
tspan = [0 0.01];  % tiempo de simulacion 5 ms

% Resolver el sistema con ODE45
[t, x] = ode45(@CD, tspan, x0);

figure(1)
plot(t,x);

figure('Position', [50, 50, 600, 500]);

% Corriente iL
subplot(2,1,1);
plot(t, x(:,1), 'g', 'LineWidth', 2.0);
xlabel('Tiempo (s)');
ylabel('Corriente i_L (A)');
title('Corriente en el inductor');
grid on;

% Voltaje en el capacitor Vc
subplot(2,1,2);
plot(t, x(:,2), 'r', 'LineWidth', 2.0);
xlabel('Tiempo (s)');
ylabel('Voltaje V_C (V)');
title('Voltaje en el capacitor');
grid on;
