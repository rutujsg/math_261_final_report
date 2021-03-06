clc;clear;
%------------ODE---------------------------
f = @(t,Y) [Y(1)*(Y(1) - 1);Y(1)^2 - Y(2)];

[x_0,y] = meshgrid(-2:.2:2, -2:.2:3.2);
dxdt = x_0.*(x_0 - 1);
dydt = x_0.^2 - y;
%--------------Y(t)-----------------------
figure(1)
[t, Y_a] = ode45(f, [0 1000], [-1 0]);
plot(Y_a(:,1),Y_a(:,2),'g','linewidth',2)
hold on
[t, Y_a] = ode45(f, [0 1000], [.8 0]);
plot(Y_a(:,1),Y_a(:,2),'m','linewidth',2)
[t, Y_a] = ode45(f, [0 1000], [1 3]);
plot(Y_a(:,1),Y_a(:,2),'y','linewidth',2)
%--------------Nullclines-----------------
x = linspace(-5,5);
plot(x,x.^2,'--b','linewidth',2)
plot([0 0],[-5 5],'--r','linewidth',2)
plot([1 1],[-5 5],'--r','Linewidth',2)
%--------Vector Field--------------------
quiver(x_0,y,dxdt,dydt)
title('Phase Plot')
xlabel('x')
ylabel('y')
axis([-1.5 1.5 -1.2 3.2])
grid on
hold off
legend('(x_0, y_0) = (-1, 0)', '(x_0, y_0) = (0.8, 0)','(x_0, y_0) = (1, 3)','y-nullcline', 'x-nullcline', 'x-nullcline','Vector Field')

