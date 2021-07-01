clc
clear
x = [0:1:200];
y = sigmoid(x,60,0.1);
plot(x,y,'r')
hold on
z = sigmoid(x,70,0.1);
plot(x,z,'b')
hold on
%% codes
clc
clear
x = [0:1:200];
matrix_target = zeros(201,9);
for i = 1:201
    for j = 1:9
        dd = sigmoid(x(i)*(0.5+0.05*j),60,0.1)/sigmoid(x(i),60,0.1);
        ee = sigmoid(x(i)*0.8*(0.5+0.05*j),70,0.1)/sigmoid(x(i)*0.8,70,0.1);
        matrix_target(i,j) = dd/ee-1;
    end
end

    