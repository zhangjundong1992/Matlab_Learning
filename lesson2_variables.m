%% char
s1='h';
whos
uint16(s1)

%% string
s1='Example';
s2='String';
s4=[s1,s2];
% s5=[s2;s3];
s6=[s1;s1];

%% 字符串操作
str='aardvark';
disp(str=='a');     %比较字符串内的每一个字符

num=[1,1,2,2,3,3];  %！！！字符串在matlab里面跟数组完全一致！！！
disp(num==1);

%% a的位置替换为Z
str='aardvark';
str(str=='a')='Z';
disp(str);

%% 字符串比较
s1='hello';
s2='hello';
s3='hi';
disp(strcmp(s1,s2));
disp(strcmp(s2,s3));

%% structure
student.name='chris zhang';
student.id='219081202003';
student.grade=[98,90,89];

disp(student);  %单个的时候可以直接用student访问到数据

%% 结构体序列
student.name='chris zhang';
student.id='219081202003';
student.grade=[98,90,89];

student(2).name='lan ruitong';
student(2).id='219081202003';
student(2).grade=[89,98,97];

disp(student)   %！！！这里的student输出的是结构体的类型
disp(student(1));   %注意，一旦创建了序列，就必须使用index访问
disp(student(2).grade(1,3));


%% 结构体函数
student(1).name='chris zhang';
student(1).id='219081202003';
student(1).grade=[98,90,89];

disp(fieldnames(student));

%% Nesting Structures
A = struct('data', [3 4 7; 8 0 1], 'nest', ...
struct('testnum', 'Test 1', ...
'xdata', [4 2 8],'ydata', [7 1 6]));
A(2).data = [9 3 2; 7 6 5];
A(2).nest.testnum = 'Test 2';
A(2).nest.xdata = [3 4 2];
A(2).nest.ydata = [5 0 9];
A.nest

%% Cell Array
%两种声明方式
A(1,1)={[1 4 3; 0 5 8; 7 2 9]};
A(1,2)={'Anne Smith'};
A(2,1)={3+7i};
A(2,2)={-pi:pi:pi};

% A{1,1}=[1 4 3; 0 5 8; 7 2 9];
% A{1,2}='Anne Smith';
% A{2,1}=3+7i;
% A{2,2}=-pi:pi:pi

%取cell的数据
disp(A(1,1)); %获取element的类型
disp(A{1,1}); %获取element的数据

%% Cell函数
a=magic(3);
b=num2cell(a);    %矩阵转cell
c=mat2cell(a,[1 1 1],3);    %矩阵转cell
d=mat2cell(a,[1,2],[2,1]);  %矩阵转cell

%% 数据的存储和读取
clear;
a=magic(4);
save mydata1.mat;   
save mydata2.mat -ascii;    %其他app可读

%load mydata1.mat;
%load mydata2.mat -ascii;

%% 读取excel文档
score1=xlsread('04Score.xlsx');  %可以的
score2=xlsread('04Score.xlsx','B2:D4'); %默认是读取数值的，不会读标题什么的，跟第一条的读书结果一致

m=mean(score1,2);   %2表示按行计算平均值

xlswrite('04Score.xlsx',m,1,'E2:E4');   %'文件名'，‘写入数据’，‘sheet’，‘写入位置’
xlswrite('04Score.xlsx',{'Mean'},1,'E1');   %！！！必须用cell数据，保持字符串的原子性

[Score,Header] = xlsread('04Score.xlsx');   %score是数值部分，header是文字部分
disp(Score);
disp(Header);

%% low-level File I/O 写入
x = 0:pi/10:pi; y = sin(x);
fid = fopen('sinx.txt','w');    %文件句柄
for i=1:11
    fprintf(fid,'%5.3f %8.4f\n', x(i), y(i));
end
fclose(fid); 
type sinx.txt

%% 读取
fid = fopen('04asciiData.txt','r');
i = 1;
while ~feof(fid)
    name{i} = fscanf(fid,'%5c',1);    %1是指读取内容的数量，5个字符，空格也算一个字符
    year(i) = fscanf(fid,'%d',1);
    no1(i) = fscanf(fid,'%d',1);
    no2(i) = fscanf(fid,'%d',1);
    no3(i) = fscanf(fid,'%g',1);
    no4(i) = fscanf(fid,'%g\n');
    i=i+1;
end
fclose(fid);






