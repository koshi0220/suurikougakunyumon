a = 0.7;
b = 0.8;
c = 3;
z = 0;

syms x y
syms A

A = jacobian([c*(y + x - (x^3)/3 + z),-(x - a + b*y)/c],[x,y]);
