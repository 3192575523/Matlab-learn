clear all;
clc; % 运行matlab必须使用的清空工作区和清空命令行

%% 基本变量
% 变量
% 变量命名遵循以字母开头，数字加字母加下划线组成，不允许使用标点符号
% 并且可以使用int,uint,single等限制
T = 2
t = 3
jieguo=T*t*2
one=int8(2)                   %%有符号整型
two=int16(-2)
three=uint32(20)              %%无符号整型  
four=uint64(80)
five=single(1.6)              %%单精度浮点型
six=23                        %%默认为双精度浮点型
seven=true                    %%逻辑型
eight='daxian'                %%字符串型
ten.name='daxianyipintang'    %%结构体
eleven=@cos                   %%函数句柄类型

%% whos可以查看参数的类型

%% 矩阵
juzhen = rand(6,9)            %矩阵随机6行9列  0到1之间
rows = size(juzhen, 1)        %矩阵有几行
cols = size(juzhen, 2)        %矩阵有几列
A = [3 6 2; 6 5 6; 8 7 9]
B = A'                          %转置矩阵
C = A(:)                        %变成一列
D = inv(A)                      %逆矩阵
A * D                           %矩阵相乘

%% 字符串和字符
% 字符与字符串深入学习
zifu = 'a'
abs(zifu)                     %转换成ASCI
char(65)                      %转换成字母,代表A
zhaunhuan=num2str(65)         %将数字转换成字符串，多了耳朵
doc num2str                   %遇到不懂的函数直接doc 谷歌在线翻译不害怕
str = "I am "
length(str)                  %字符串长度

%%
%  元胞数组深入学习，用到的时候在深刻理解也行，暂时不要求掌握
%  但是要知道有这个
A = cell(1, 6)
A{2} = eye(3)
A{5} = magic(5)                   %魔方
B = A{5}
B=A{2}

%%  
% 结构体
% 举例一个比较复杂的结构体，包括了两个
books = struct('name',{{'daxian','dashen'}},'price',[30 40])
books.name
books.name(1)
books.name{1}