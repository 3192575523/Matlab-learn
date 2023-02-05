%% 学习目标：使用MATLAB求解常微分方程  通解  特解  数值解
%%  求微分方程的通解
clear all;
f1=dsolve('Dy-y=sin(x)')     %默认情况下以t为自变量求解   求出的C2为积分常数
f2=dsolve('Dy-y=sin(x)','x')       % 以x为自变量求解     
%%  求微分方程的特解
clear all;
dsolve('Dy=a*y','y(0)=b')          %求微分方程的特解,自变量t,t=0时y=b
%%  求微分方程组
clear all;
z=dsolve('Dx=y','Dy=-x')            %  默认t为自变量
z.x
z.y
%%  求解常微分方程组的数值解
clear all;
close all;
options=odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);    %设置参数,结构体
[t,y]=ode45(@rigid,[0 12],[0 1 1],options); % ode45是一个求解方法
%  t范围0到12，rigid是方程组，变量的初始值是y(1) =0,y(2)=1,y(3)=1
figure;
plot(t,y(:,1),'-',t,y(:,2),'--',t,y(:,3),':');
xlabel('Time');
legend('y1','y2','y3');