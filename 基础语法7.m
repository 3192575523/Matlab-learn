%% 学习目标：求一元函数最小值和零点
%%  函数的极小值和零点    求解一元函数的最小值
clear all;
close all;
[x,fval]=fminbnd(@cos,1,5)    %函数句柄 
% 意思是cos函数在1，5之间的局部最小值
y=cos(x)
%%        求解自变量范围限定的一元函数的最小值
clear all;
close all;
f=@(x)x.^2-6*x-9;
[x,fval]=fminbnd(f,0,6,optimset('Display','iter'))     
%自变量在0到6之间的最小值，显示计算过程,fval是目标点处的函数值
y=f(x)
%%    求多元函数的最小值
clear all;
close all;
f=@(x)2*(x(2)-x(1)^2)^2+(2-x(1))^2;
[x,fval]=fminsearch(f,[-6.7 8])     %指定一个起始点  在某点附近寻找
% 这种函数句柄是二元函数，如果想要直接访问，可以用以下语法
% x = [-6.7,8]
% f(x)
y=f(x)
%%   求解一元函数的零点
clear all;
close all;
f=@(x)sin(x)*cos(x);
figure;
fplot(f,[-5,5]); % 绘制函数图像
xlabel('x');
ylabel('f(x)');
grid on;
x1=fzero(f,[-4,-2]) % 求非线性函数的根，在-4，-2的里面寻找f的零点
x3=fzero(f,-2) % 在-2附近寻找f的零点
[x4,fval]=fzero(f,[-3,-1])