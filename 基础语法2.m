%% 强制类型转换
clear all;
%%  
shu=66;                            %双精度浮点型，强制转换成整型
shu8=int8(shu)
shu16=int16(shu)
shu32=int32(shu)
shu64=int64(shu)
zifuchuan='daxian'
huan1=int8(zifuchuan)

fudian=14.89                        %默认是双精度浮点型
fusingle=single(fudian)             %转换成单精度浮点型
fudouble=double(fudian)             %转换成双精度浮点型
%% 查看数据类型的数值范围
singlefanwei=[realmin('single') realmax('single')]
doublefanwei=[realmax('double') realmax('double')]
%% 数值的取整
round1=round(8.5)                    %最接近取整，0.5为临界条件
round2=round(-6.4)
round3=round(-6.5)
fix1=fix(-1.6)                        %向0取整
fix2=fix(-1.5)
floor1=floor(2.7)                      %小于或者等于该数的接近整数   
floor2=floor(-2.4)
ceil1=ceil(4.2)                           %大于或者等于该数的接近整数
ceil2=ceil(-4.4)  
%% 复数学习
fushu1=3+4i   
real1=real(fushu1)                             %求复数的实部
imag1=imag(fushu1)                             %求复数的虚部
abs1=abs(fushu1)                              %求复数的模
angle1=angle(fushu1)                            %求复数的角度
gonge=conj(fushu1)                             %求它的共轭复数
fushuduo=complex(1:3,2:4)                % 生成三个复数
realduo=real(fushuduo)
imagduo=imag(fushuduo)