H = 0;
p = 0:0.01:1;
H = -p.*log2(p)-(1-p).*log2(1-p);
figure(1);
subplot(1,2,1)
plot(p,H,'--rs');
title('熵');
xlabel("概率p");
ylabel('熵H');

[p1,p2]=meshgrid(0.00001:0.001:1);
h = -p1.*log2(p1)-p2.*log2(p2)-(1-p1-p2).*log2(1-p1-p2);
subplot(1,2,2)
plot3(p1,p2,h);
title('三元信源空间分布曲线图')