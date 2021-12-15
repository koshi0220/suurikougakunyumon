x_ = linspace(-2,2,100);
y_ = linspace(-1,1,25);

[x,y] = meshgrid(x_,y_);
a = 0.7;
b = 0.8;
c = 3;
z = -0.4;

u = c*(y + x - (x.^3)/3 + z);
v = -(x - a + b*y)/c;
hold on;
quiver(x,y,u,v);
contour(x,y,v);
contour(x,y,u);
hold off;
