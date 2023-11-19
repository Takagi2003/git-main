% 给下面不同的p概率赋值
p_x1 = 0.5; 
p_x2 = 0.5;
p_y1_x1 = 0.98;
p_y2_x1 = 0.02;
p_y1_x2 = 0.2;
p_y2_x2 = 0.8;
px1y1 = p_x1*p_y1_x1;
px1y2 = p_x1*p_y2_x1;
px2y1 = p_x2*p_y1_x2;
px2y2 = p_x2*p_y2_x2;
p_y1 = px1y1+px2y1;
p_y2 = px1y2+px2y2;

p_x = [p_x1,p_x2];
p_y = [p_y1,p_y2];
p_y_x =[p_y1_x1,p_y2_x1,p_y1_x2,p_y2_x2];
p_xy =[px1y1,px1y2,px2y1,px2y2];
disp('H(X):')
H1 = 0; 
for i = 1:2
    H1 = H1+p_x(i)*log2(1/p_x(i));
end
H1
disp('H(Y):')
H2 = 0; 
for i = 1:2
    H2 = H2+p_y(i)*log2(1/p_y(i));
end
H2
disp('H(XY):')
H3 = 0; 
for i = 1:4
    H3 = H3+p_xy(i)*log2(1/p_xy(i));
end
H3
disp('互信息I(X;Y):');
I1 = H1+H2-H3;
I1
disp('疑义度H(X|Y):');
H4= H3-H2;
H4
disp('噪声熵H(Y|X):');
H5= H3-H1;
H5

