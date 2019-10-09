function F2C()
f=input('Temperature in F : '); %获取输入的方法
while(~isempty(f))  %是否为空的判断
    c=(f-32).*5./9;
    disp(['-->Temperature in C = ',num2str(c)]); %字符串的拼接
    f=input('Temperature in F : ');
end
