p_x = [11/36, 4/9, 1/4];
ai_aj = [1/4,1/18,0,1/18,1/3,1/18,0,1/18,7/36];
pai_aj=[ai_aj(1)/p_x(1), ai_aj(2)/p_x(1),ai_aj(3)/p_x(1),ai_aj(4)/p_x(2),ai_aj(5)/p_x(2),ai_aj(6)/p_x(2),ai_aj(7)/p_x(3),ai_aj(8)/p_x(3),ai_aj(9)/p_x(3)];
disp('联合熵H（x1x2）：');
H=0;
for i =1:3
    H=H+ai_aj(i)*log2(1/(pai_aj(i)));
end
H;
h2 = 0;
for i =1:3
	h2=h2+p_x(i)*log2(1/p_x(i));
end
h2
disp('条件熵H(x2|x1):');
h3 = 0;
h3 = h2+H;
h3