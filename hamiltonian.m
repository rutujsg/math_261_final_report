[x_0, y_0] = meshgrid(-2:.1:2, -2:.1:2);

subplot(2,3,1)
a = -1;
dxdt = y_0; 
dydt = x_0.^2 - a;
H = .5* y_0.^2 - x_0.^3/3 + a*x_0;
quiver(x_0,y_0,dxdt,dydt)
hold on;
contour(x_0,y_0,H)
hold off
xlabel('x(t)')
ylabel('y(t)')
title('Level curves for a = -1')

subplot(2,3,2)
a = -.5;
dxdt = y_0; 
dydt = x_0.^2 - a;
H = .5* y_0.^2 - x_0.^3/3 + a*x_0;
quiver(x_0,y_0,dxdt,dydt)
hold on;
contour(x_0,y_0,H)
hold off
xlabel('x(t)')
ylabel('y(t)')
title('Level curves for a = -0.5')

subplot(2,3,3)
a = 0;
dxdt = y_0; 
dydt = x_0.^2 - a;
H = .5* y_0.^2 - x_0.^3/3 + a*x_0;
quiver(x_0,y_0,dxdt,dydt)
hold on;
contour(x_0,y_0,H)
hold off
xlabel('x(t)')
ylabel('y(t)')
title('Level curves for a = 0')

subplot(2,3,4)
a = .5;
dxdt = y_0; 
dydt = x_0.^2 - a;
H = .5* y_0.^2 - x_0.^3/3 + a*x_0;
quiver(x_0,y_0,dxdt,dydt)
hold on;
contour(x_0,y_0,H)
hold off
xlabel('x(t)')
ylabel('y(t)')
title('Level curves for a = 0.5')


subplot(2,3,6)
a = 1;
dxdt = y_0; 
dydt = x_0.^2 - a;
H = .5* y_0.^2 - x_0.^3/3 + a*x_0;
quiver(x_0,y_0,dxdt,dydt)
hold on;
contour(x_0,y_0,H)
hold off
xlabel('x(t)')
ylabel('y(t)')
title('Level curves for a = 1')
