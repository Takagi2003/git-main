disp('均匀分布连续信源');
h1=0;
b=8;
a=4;
h1= log(b-a);

disp('高斯信源：');
m =3;
r=4;
px=1/(sqrt(2*pi*r))exp(-(x-m)^2/2*r);
H = 0;
H = quad(px,-inf,inf);
H;

disp('指数分布信源：');
x2=[1:1:n]
u=1/4;
p(x2)=u*exp(-u*x2);
f(x2)=1/2*u1*exp(-u1*abs(x2));
h3=0;
h4=0;
for i =1:n
	h3= h3+p(i)*log(1/p(i));
	h4=h4+f(i)*log(1/f(i));
end
h3
h4
