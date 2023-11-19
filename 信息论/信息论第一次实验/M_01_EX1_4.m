p_x= [0.7, 0.3];

p_xx=[p_x(1)*p_x(1),p_x(1)*p_x(2),p_x(2)*p_x(1),p_x(2)*p_x(2)];

p_xxx = [p_x(1)*p_x(1)*p_x(1),p_x(1)*p_x(1)*p_x(2),p_x(1)*p_x(2)*p_x(1),p_x(1)*p_x(2)*p_x(2),p_x(1)*p_x(2)*p_x(1),p_x(1)*p_x(2)*p_x(2),p_x(2)*p_x(2)*p_x(1),p_x(2)*p_x(2)*p_x(2)];

disp('原始信源熵为：');
H1=0;
for i =1:2
    H1=H1+p_x(i).*log2(1/p_x(i));
end
H1

disp('二次扩展信源熵为：');
H2=0;
for i =1:4
    H2=H2+p_xx(i).*log2(1/p_xx(i));
end
H2

disp('三次扩展信源熵为：');
H3=0;
for i =1:8
    H3=H3+p_xxx(i).*log2(1/p_xxx(i));
end
H3
