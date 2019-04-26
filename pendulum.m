[x_0, y_0] = meshgrid(-4:.1:4, -3:.1:3);

g = 1;

dxdt = y_0; 
dydt = - g*sin(x_0);

H = 0.5*y_0.^2 - g*cos(x_0);

quiver(x_0,y_0,dxdt,dydt)
hold on;
contour(x_0,y_0,H,20, 'LineWidth', 2)
hold off
xlabel('\theta(t)')
ylabel('\omega(t)')
title('Phase portrait of a non-linear pendulum')
axis([-4 4 -3 3])




