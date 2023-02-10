%%   学习目标：矩阵的初级学习
%%   获取元素
clear all;
A=[3:6;7:10]
f1=A(1,3)                        % 第1行第3列的元素              
f2=A(5)                          %第5个元素
%%  
clear all;
A=[5:8;9:12;13:16;17:20]
f1=A(2,:)
f2=A(:,2)
f3=A(1:3,1:3)
f4=A(1:end,end)     %最后一列
%%  单下标和双下标的转换        矩阵是按照列存储的
clear all;
A=[5:8;9:12;13:16;17:20]
ind1=sub2ind(size(A),2,3)    %双下标转换成单下标
A(ind1)     
A(2,3)
[I,J]=ind2sub(size(A),4)    %单下标转化成双下标
ind2=sub2ind(size(A),I,J)    
%% 查找替换值
clear all;
A=[1:4;5:8;9:12;13:16]
B=A>8
A(A>8)=9
f1=find(A>2)
A(find(A>2))=0
%%  矩阵的自动扩充
clear all;
A=[1:4;5:8]
a=A(2,3)
A(4,4)=3
%%   矩阵的合并  
clear all;
A=[1:4;5:8]
B=[1:2;3:4]
C=cat(2,A,B)
D=horzcat(A,B)     %水平合并
E=vertcat(A,B)     %这样不可以，因为矩阵纬度不同
%%  矩阵的块操作   数据块的复制
clear all;
A=magic(2)
B=repmat(A,2,3)
C=repmat(A,[2,3])    
%%  将多个矩阵作为对角块产生新的矩阵
clear all;
A=magic(3)
B=[1:2;3:4]
C=blkdiag(A,B)
D=blkdiag(B,A)
%%  删除矩阵中的某些元素
clear all;
A=rand(4,4)
A([1 3],:)=[]     %第一行和第三行删除
A(:,end)=[]       %最后一列进行删除
%%  矩阵的转置   复数不一样，会转化为共轭复数
clear all;
A=rand(2,4)
A1=A'
A2=transpose(A) % 相当于A1 = A'
B=[2+3i,4+5i,3;2 4+i 5+3*i]
B1=B'                          %没有一点
B2=ctranspose(B)               %和没有一点效果一样
B3=B.'                         %有一点不转为为共轭
%%    逆时针旋转90度的K倍，默认为1倍，可以设定参数
clear all;
A=rand(2,3)
B=rot90(A) % 逆时针
C=rot90(A,2)
%%  矩阵的翻转  左右    上下
clear all;
A=rand(2,3)
B=fliplr(A)                      %左右翻转
C=flipud(A)                      %上下翻转
D=flipdim(A,1)                   %指定的方向翻转 ，1相当于左右，2相当于上下
E=flipdim(A,2)
%%  矩阵尺寸的改变
clear all;
X=[1:4;5:8]
Y1=reshape(X,1,8)       
Y2=reshape(Y1,[4,2])
Y3=reshape(X,size(Y2))    
%%     矩阵的加减   维数必须相同
clear all;
A=[1:4;5:8]
B=[2 2 2 2;4 4 4 4]
C=A-B
D=A+12
%%  矩阵的相乘     直接相乘的矩阵的列数和另一个矩阵的行数相等才行  有点没有点完全不一样 
clear all;
A=[1:4;5:8]
B=[2 2;2 2;2 2;2 2]
C=A*B        %直接相乘
D=A.*B'      %点乘必须具有相同的行和列
E=A*10
%%  矩阵的相除   左右   逆
clear all;
A=[1 1 1;1 1 1;1 1 1]
B=[1 1 1;2 2 2;3 3 3]
C1=A\B  %矩阵左除
C2=inv(A)*B  Z % inv是逆矩阵
D1=B/A %矩阵右除
D2=B*inv(A)
E1=A^3  %矩阵求幂
E2=A*A*A
%%  矩阵的点除   左右     对应元素相除
clear all;
A=[1 1 1;1 1 1;1 1 1]
B=[1 1 1;2 2 2;3 3 3]
C1=A./B
C2=A.\B
C3=A./2
D=A.^2 