%% 判断奇偶
a=6;
if rem(a,2)==0 %rem() reminder,余数
    disp('a is even') %disp() display,打印到控制台
else
    disp('a is odd')
end %判断循环什么的，都要加end

%% while循环
n=1;
while prod(1:n)< 1e100 %prod() product,乘积
    n=n+1;
end

%% 计时器
tic %计时器
clear %可以执行指令
close
clc
a=zeros(1,5);
for n=1:5
    a(n)=2^(2*n-1);
end
disp(a)
toc %计时器

%% 换行
A=[1 2 3 4;...
    5 6 7 8;...
    9 10 11 12;...
    13 14 15 16];
disp(A)

%% 文件操作
which('mean.m') %获取路径
edit(which('mean.m')) %打开文件

%% 函数调用
freebody(0,0,10)
freebody([0 1],[0 1],[10 20])

%% 
[a,F]=acc(10,5,5,0,10);
%向量可以用逗号，也可以用空格
b=[1 2 3 4 5];
c=[2,3,4,5,6];
d=[3,4,5;6,7,8;9,10,11];

%% 
F2C

%% function handle
f=@(x) exp(-2*x);   %function handle,类似于函数指针
x=0:0.1:2;
plot(x,f(x))





