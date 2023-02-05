%%   学习目标：学会求积分
%%  quad函数求积分   单变量数值积分求解
clear all;
syms x; % 创建符号变量x
f=inline('1./(sin(x)+exp(-x.^2))')   %内联函数
y=quad(f,0,1.1)            %积分求解    
y1=quad(@myfun1,0,1.1)    %函数句柄
y2=quad(@myfun1,0,1.1,1.e-10)      %精度  
%%  quadl精度更高，速度更快
clear all;
syms x;
f=inline('1./(sin(x)+exp(-x.^2))','x');
y=quadl(f,0,1.1)
y1=quadl(f,0,1.1,1.e-20)
%%  双重积分求解
clear all;
syms x;
f=inline('x*cos(y)+y*sin(x)','x','y');
y=dblquad(f,pi,2*pi,0,pi) %根据x,y先后顺序，先设置x上下限，再设置y上下限
y1=dblquad(@integrnd,pi,2*pi,0,pi)
y2=dblquad(@(x,y) x*cos(y)+y*sin(x),pi,2*pi,0,pi)
%%  三重积分的求解
clear all;
f=inline('z*cos(x)+y*sin(x)','x','y','z');
q=triplequad(f,0,pi,0,1,-1,1)
q1=triplequad(@(x,y,z) (y*sin(x)+z*cos(x)),0,pi,0,1,-1,1)
q2=triplequad(@(x,y,z) (y*sin(x)+z*cos(x)),0,pi,0,1,-1,1,1.e-10)
q3=triplequad(@(x,y,z) (y*sin(x)+z*cos(x)),0,pi,0,1,-1,1,1.e-10,@quad)