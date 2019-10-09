%% plot(x,y) & plot(y)(x如果不给，默认1，2，3...)
plot(cos(0:pi/20:2*pi));

%% 第二个会覆盖第一个
plot(cos(0:pi/20:2*pi));
plot(sin(0:pi/20:2*pi));

%% 使用hold on保留所有绘图
hold on
plot(cos(0:pi/20:2*pi));
plot(sin(0:pi/20:2*pi));
hold off

%% 自定义颜色等各种属性
plot(cos(0:pi/20:2*pi),'*r');

%% legend() 图标 
x=0:0.5:4*pi;
y=sin(x); h=cos(x); 
w=1./(1+exp(-x));
g=(1/(2*pi*2)^0.5).*exp((-1.*(x-2*pi).^2)./(2*2^2));
plot(x,y,'bd-',x,h,'gp:',x,w,'ro-',x,g,'c^-');
legend('sin(x)','cos(x)','Sigmoid','Gauss function');

%% tittle() xlabel() ylabel() zlabel()
x = 0:0.1:2*pi; y1 = sin(x); y2 = exp(-x);
plot(x, y1, '--*', x, y2, ':o');
xlabel('t = 0 to 2\pi');    %转义字符，会显示π
ylabel('values of sin(t) and e^{-x}')   %大括号，显示的就是e的-x次方
title('Function Plots of sin(t) and e^{-x}');
legend('sin(t)','e^{-x}');

%% text（）
x = linspace(0,3); y = x.^2.*sin(x); plot(x,y); %linspace产生等差数列
line([2,2],[0,2^2*sin(2)]); %绘制直线
str = '$$ \int_{0}^{2} x^2sin(x) dx $$';    %\int积分符号，_{0}下界 ^{2}上界
text(0.25,2.5,str,'Interpreter','latex');   %Interpreter属性等于latex，意为使用latex显示较为复杂的公式
annotation('arrow','X',[0.32,0.5],'Y',[0.6,0.4]);   %箭头,注意这里的x，y位置都是标准化的，取值（0，1）

%% exercise
t=linspace(1,2);
f=t.^2;
g=sin(2*pi*t);
plot(t,f,'k',t,g,'ro');
xlabel('t= 1 to 2');
ylabel('values of t^2 and sin(2\pit)');
title('mini Assignment #1');
legend(' t^2','location','northwest','sin(2\pit)','location','northwest');

%% Figure Adjustment
x = linspace(0, 2*pi, 1000); y = sin(x);
h = plot(x,y); 
%改变函数曲线
set(h,'LineWidth',2.0,'Color','r');
%改变坐标轴的范围
set(gca,'XLim',[0,2*pi]);
set(gca,'YLim',[-1.2,1.2]);
%改变字体大小
set(gca,'FontSize',18);
%改变x轴的刻度
set(gca, 'XTick', 0:pi/2:2*pi);
set(gca, 'XTickLabel', {'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});

%% Marker
y=rand(1,20); 
h=plot(y,'-md');
set(h,'LineWidth', 2, 'MarkerEdgeColor', 'k','MarkerFaceColor', 'g', 'MarkerSize', 10);
set(gca, 'FontSize', 18);
xlim([1, 20]);

%% exercise
%函数
t=linspace(1,2);f=t.^2;g=sin(2*pi*t);
%绘制
h=plot(t,f,'k',t,g,'ro');
set(h(1),'LineWidth',2);
purple=[0.5,0,0.5];
set(h(2),'MarkerEdgeColor',purple,'MarkerFaceColor',purple);
% 修改坐标轴
xlabel('Time(ms)');
ylabel('f(t)');
set(gca,'FontSize',18);
% 标题和图例
title('Mini Assignment #1');
legend(' t^2','location','northwest','sin(2\pit)','location','northwest');

%% Multiple Figures ！！！需要注意的是，gca和gcf只会指向当前的figure
x = -10:0.1:10;
y1 = x.^2 - 8;
y2 = exp(x);
figure, plot(x,y1);
figure, plot(x,y2);

%% Several Plots in One Figure
t = 0:0.1:2*pi; x = 3*cos(t); y = sin(t);
subplot(2, 2, 1); plot(x, y); axis normal
subplot(2, 2, 2); plot(x, y); axis square %x轴跟y轴的几何长度相等
subplot(2, 2, 3); plot(x, y); axis equal %x轴跟y轴单位相等
subplot(2, 2, 4); plot(x, y); axis equal tight %边界线跟图形相切
% axis off/on 
% box off/on
% grid off/on
% saveas(gcf,'several plots','pdf');
