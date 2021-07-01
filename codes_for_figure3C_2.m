model1 = load('matrix_for_figure_3C_weak_imm.mat');
model1 = model1.matrix_weak(10,:);
model2 = load('matrix_for_figure_3C_strong_imm.mat');
model2 = model2.matrix_strong(10,:);

% ����

% ׼��һЩ����
bins = 100; %��100���������ͳ��
maxdat = max(model1);%���ֵ
mindat = min(model1);%��Сֵ
maxdat2 = max(model2);%���ֵ
mindat2 = min(model2);%��Сֵ
bin_space = (maxdat - mindat) / bins;%ÿ��bin���
bin_space2 = (maxdat2 - mindat2) / bins;%ÿ��bin���
xtick = mindat : bin_space : maxdat - bin_space;
xtick2 = mindat2 : bin_space2 : maxdat2 - bin_space2;
% ��pdf
distribution = hist(model1,bins);%ʹ��ֱ��ͼ�õ��������ڸ����������
distribution2 = hist(model2,bins);
for i = 1:100
pdf(i) = bins * distribution(i)/((sum(distribution )) * (maxdat - mindat));%����pdf
pdf2(i) = bins * distribution2(i)/((sum(distribution2 )) * (maxdat2 - mindat2));%����pdf
end
% ��ͼ
figure;
plot(xtick,pdf);
hold on
plot(xtick2,pdf2);