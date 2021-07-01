clc
clear
model1 = load('matrix_for_figure_3D_weak_virulence_20.mat');
model1 = model1.matrix_weak_virulence;
model2 = load('matrix_for_figure_3D_strong_virulence_2.mat');
model2 = model2.matrix_strong_virulence;

% 数据

% 准备一些变量
bins = 100; %分100个区间进行统计
maxdat = max(model1);%最大值
mindat = min(model1);%最小值
maxdat2 = max(model2);%最大值
mindat2 = min(model2);%最小值
bin_space = (maxdat - mindat) / bins;%每个bin宽度
bin_space2 = (maxdat2 - mindat2) / bins;%每个bin宽度
xtick = mindat : bin_space : maxdat - bin_space;
xtick2 = mindat2 : bin_space2 : maxdat2 - bin_space2;
% 求pdf
distribution = hist(model1,bins);%使用直方图得到数据落在各区间的总数
distribution2 = hist(model2,bins);
for i = 1:100
pdf(i) = bins * distribution(i)/((sum(distribution )) * (maxdat - mindat));%计算pdf
pdf2(i) = bins * distribution2(i)/((sum(distribution2 )) * (maxdat2 - mindat2));%计算pdf
end
% 画图
figure;
plot(xtick,pdf,'r');
hold on
plot(xtick2,pdf2,'b');