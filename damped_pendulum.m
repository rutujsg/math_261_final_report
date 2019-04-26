clc;clear;
%------------ODE---------------------------
g = 9.81;
b = 1.5;
f = @(t,Y) [Y(2);- b*Y(2) - g*sin(Y(1))];

[x_0,y] = meshgrid(-2*pi:.1:2*pi, -4:.1:4);
H = 0.5*y.^2 - g*cos(x_0);
dxdt = y;
dydt = - b*y - g*sin(x_0);
%--------------Y(t)-----------------------
figure(1)
[t, Y_a] = ode45(f, [0 1000], [-1 0]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
hold on
[t, Y_a] = ode45(f, [0 1000], [-3 0]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
[t, Y_a] = ode45(f, [0 1000], [3 3]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
[t, Y_a] = ode45(f, [0 1000], [5 -2.4]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2)
[t, Y_a] = ode45(f, [0 1000], [-2.5 -2.4]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
[t, Y_a] = ode45(f, [0 1000], [-5 -2.4]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
%--------Vector Field--------------------
quiver(x_0,y,dxdt,dydt)
title('Phase plot of a damped pendulum with b = 1')
xlabel('\theta(t)')
ylabel('\omega(t)')
axis([-2*pi 2*pi -4 4])
%---------Hamiltonian--------------------
contour(x_0,y,H,10, 'LineWidth',1, 'LineColor', 'k')
grid on
hold off
legend('(\theta, \omega) = (-1,0)','(\theta, \omega) = (-3,0)','(\theta, \omega) = (3,3)', '(\theta, \omega) = (5,-2.4)', '(\theta, \omega) = (-2.5,-2.4)', '(\theta, \omega) = (-5,-2.4)', 'Vector Field', 'Hamiltonian')