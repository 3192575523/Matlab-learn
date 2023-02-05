%%  大于，小于，等于，不等于 
clear all;
a=7>5 %遵循运算符优先级和结合性
b1=rand(2,2)
b2=b1>=0.6
b3=b1<=0.7
c1=eq(b2,b3)
c2=b2~=b3 % 不等于
%%  比较大小
clear all;
format long;
a=4.44+eps
b=4.44
c1=a==b
c2=a>b
c3=abs(a-b)<1e-10
format short;
%%   与   或    非
clear all;
A=rand(2,2)
B=A>0.8
C=A<0.2
d1=B&C
d2=B|C
d3=~B
d4=xor(B,C) %j结果相同
%%    
clear all;
a=0;
(a>0)&&(6/a>3)  %逻辑与（快速）
(a>0)&(6/a>4)   %逻辑与
%%  
clear all;
a=12
b=56
c1=dec2bin(a)                     %　　转换为二进制数
c2=dec2bin(b)
d1=bitand(a,b)                    %    按位与    
d2=dec2bin(bitand(a,b))    
d3=dec2bin(bitor(a,b)) % 按位或
%%  运算顺序    建议使用括号，清晰不容易出错
clear all;
a=3*2>=4    %先乘法然后比较大小
b=5*3:19    %先乘法
c=2*4^2     %先乘方，再乘法