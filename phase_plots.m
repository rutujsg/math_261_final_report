%Eg. 1
x_0 = [0:.1:30];
y_1 = 10 - x_0;
y_2 = 30 - 2*x_0;

[x , y] = meshgrid(0:.75:30, 0:.75:30);
dxdt = x.*(10 - x - y);
dydt = y.*(30 - 2*x - y);

figure(1)

quiver(x,y,dxdt,dydt)
hold on
plot(x_0,y_1);
plot(x_0,y_2);
hold off
axis([0 30 0 30])
xlabel('x(t)');
ylabel('y(t)');
title('Phase Plot')
legend('Vector field','y = 10 - x', 'y = 30 - 2x')

%Eg. 2
x_0 = [0:.01:2];
y_1 = 2 - x_0;
y_2 = x_0.^2;

[x , y] = meshgrid(0:.05:2, 0:.05:2);
dxdt = x.*(2 - x - y);
dydt = y.*(y - x.^2);
figure(2)
quiver(x,y,dxdt,dydt)
hold on
plot(x_0,y_1);
plot(x_0,y_2);
hold off
axis([0 2 0 2])
xlabel('x(t)');
ylabel('y(t)');
title('Phase Plot')
legend('Vector field','y = 2 - x', 'y = x^2')

