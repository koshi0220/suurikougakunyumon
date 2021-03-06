
a = 0.7;
b = 0.8;
c = 3;
z = -0.4;

p = 1/b - 1;
q = -3*(z + a/b);
x0 = nthroot((-q + sqrt(q^2 + 4*p^3))/2,3) + nthroot((-q - sqrt(q^2 + 4*p^3))/2,3);
y0 = (a - x0)/b;

syms x y
syms u(x,y) v(x,y)
u(x,y) = c*(y + x - (x^3)/3 + z);
v(x,y) = -(x - a + b*y)/c;

A(x,y) = jacobian([u,v],[x,y]);
A1 = A(x0,y0);

lambda = eig(A1);
[double(real(lambda)),double(imag(lambda))]