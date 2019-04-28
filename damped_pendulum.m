clc;clear;
%------------ODE---------------------------
g = 1;
b = 4;
f = @(t,Y) [Y(2);- b*Y(2) - g*sin(Y(1))];

[x_0,y] = meshgrid(-2*pi:.1:2*pi, -4:.1:4);
H = 0.5*y.^2 - g*cos(x_0);
dxdt = y;
dydt = - b*y - g*sin(x_0);
%--------------Y(t)-----------------------
figure(1)
[t, Y_a] = ode45(f, [0 1000], [0 3.2]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
hold on
[t, Y_a] = ode45(f, [0 1000], [pi 0]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)
[t, Y_a] = ode45(f, [0 1000], [-3 3]);
plot(Y_a(:,1),Y_a(:,2),'linewidth',2.5)

%--------Vector Field--------------------
quiver(x_0,y,dxdt,dydt)
title('Phase plot of a damped pendulum with b = 4')
xlabel('\theta(t)')
ylabel('\omega(t)')
axis([-2*pi 2*pi -4 4])
%---------Hamiltonian--------------------
contour(x_0,y,H,5, 'LineWidth',1, 'LineColor', 'k')
grid on
hold off
legend('(\theta, \omega) = (0,3.2)','(\theta, \omega) = (\pi,0)','(\theta, \omega) = (-3,3)', 'Vector Field', 'Hamiltonian')