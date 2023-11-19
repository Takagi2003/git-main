p1=[1/2, 1/4, 1/8, 1/8];
p2=[7/8, 1/8];
H1 = 0.0;
H2 = 0.0;
I=[];
J=[];
for i = 1:4
    H1 = H1 +p1(i)*log2(1/p1(i));
    I(i) = log2(1/p1(i));
end
disp('P1自信息量分别是：');
I
disp('H1信息熵为：');
H1
for i = 1:2
    H2 = H2 + p2(i)*log2(1/p2(i));
        J(i) = log2(1/p2(i));
end
disp('P2自信息量分别是：');
J
disp('H1信息熵为：');
H2
     