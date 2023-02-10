%%   学习目标：深入学习字符串
%%  字符串最基本的玩法一定要掌握
clc;
clear all;
str='I am daxian';
disp(str);                  %字符串显示
str_size=size(str)          %字符串的长度
str(1:7)                    %截取字符串的一部分显示
str2=str(end:-1:1)          %字符串反序输出
str_ascii=double(str)       %字符串的ASCII码显示
char(str_ascii)             %以字符串显示
str3='我是大仙！';          %显示汉字
str3_ascii=double(str3)     %显示汉字的编码
char(str3_ascii)            %显示汉字
%%   字符串的初级玩法
clc;
clear all;
str1='I am from daxianyipintang,';         %字符串
str2='i am daxian';
str=[str1 str2]                 %连接两个字符串
s=['Boy';'boy']                 %建立字符矩阵，长度相等
c=char('daxian','yipintang')    %利用char()建立字符矩阵
celldata=cellstr(c)              %建立字符串单元数组
celldata{1}                      %显示第一个值
%%     字符串的中级玩法
clc;
clear all;
str1='I like reaading,';
str2='and you?';
s1=[str1 str2]          %连接两个字符串
s2=strcat(str1,str2)    %采用函数strcat( )连接字符串
s3=strvcat(str1,str2)   %把多个字符串变为矩阵
%%      字符串的中级玩法
clc;
clear all;
str1='daxian';
str2='daxia';
n=strcmp(str1,str2)         %判断两个字符串是否相等
n1=strncmp(str1,str2,5)     %判断前k个字符是否相等
n2=strncmp(str1,str2,6)
%%    字符串的中级玩法
clc;
clear all;
str1='daxian';
str2='dashen';
n1=str1==str2       %对应字符是否相等
n2=str1>=str2       %字符的比较
n3=ge(str1,str2)    %采用函数ge  字符的比较
%%  字符串的查找
clc;
clear all;
str='I am dAxian';
n1=strfind(str,'n')      
n2=strfind('n',str)         %注意顺序
n3=strfind(str,'am')        %查找字符串
n4=strfind(str,'Am')        %区分大小写
n5=strfind(str,' ')         %查找空格
%%    字符串的替换
clc;
clear all;
str='I am daxian';
s1=strrep(str,'daxian','dashen')    %字符串替换
s2=strrep(str,'Daxian','dashen')    %如果没有找到，输出为原来的字符串
%%    
clc;
clear all;
t1=num2str(randn(3,3))      %将数字转换为字符串
pi=num2str(pi,5)                %只显示6位,5位小数
t2=int2str(randn(3,3))          %先取整，然后转换为字符串
x1=str2num(t2)                  %将字符串矩阵转换为数字矩阵
x2=str2double('82+96i')        %将字符串转换为双精度数值
%%  进制转换
clc;
clear all;
b=dec2bin(123)          %将十进制数转换为二进制
h=dec2hex(34)          %将十进制数转换为十六进制
d1=hex2dec('2B')        %将十六进制转换为十进制
d2=bin2dec('1100001')   %将二进制转换为十进制
%%   
clc;
clear all;
str='I am daxian';
isspace(str)                %是否为空格
isletter(str)               %是否为字母
%%   执行字符串语句   
clc;
clear all;
x=0:pi/20:2*pi;
str='figure;y=sin(x);plot(x,y);legend(''sinx'')';
eval(str); % 执行
%%  字符串大小写转换
clc;
clear all;
str='I am  DAXIAN'
s1=upper(str)	      % 大写		
s2=lower(str)		  % 小写	
x=[1 2 3];
y1=ischar(str)		  %判断是不是字符串		
y2=ischar(x)	