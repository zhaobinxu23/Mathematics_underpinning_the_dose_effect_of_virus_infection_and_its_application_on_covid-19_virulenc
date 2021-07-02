
clc
clear
%% modeling virus dose effect on infection
num_c_valve = 0;
for kkk = 1: 5000
    kkk

for iii = 1:50
s(1,iii)  = struct('replication_cycle',10,'waiting_time',0,'time',0);
end


for input_number  = 1:50
count_number = input_number; %% initial virus number = 1
for i = 1:100  %% virus generations
    i;
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= (0.6-0.002*i) %% this number = d;
         
        if time_phage+s(i,j).waiting_time >= 10 
         

       
     
         s(i+1,number+1).replication_cycle = 10;

     
         s(i+1,number+1).waiting_time = 0; 

         s(i+1,number+1).time = (10*(i+1));
         
        

         s(i+1,number+2).replication_cycle = 10;


         s(i+1,number+2).waiting_time = 0;
         s(i+1,number+2).time = (10*(i+1));
         number = number+2;
        else

        
         s(i+1,number+1).replication_cycle = 10;
         s(i+1,number+1).waiting_time = 10 + A.waiting_time ;
         s(i+1,number+1).time = (10*(i+1));
         number = number+1;
        end
    else 
    end
    end
    count_number = number;
    ddd(i) = count_number;
end


matrix_d077n1len29900(input_number,kkk) = max(ddd);
clear ddd
end
end
save('matrix_for_figure_strong_virus_0.6_0.002','matrix_d077n1len29900')


%% generate figure2a
model = matrix_d077n1len29900;
for i = 1:50
    new_model(i,:) = sort(model(i,:),'descend');
end
surf(new_model);

%% generate figure2b
model = matrix_d077n1len29900;

yy(1) = 0;
ww(1) = 0;
zz(1) = 0;

for i = 1:50
    yy(i+1) = length(find(model(i,:)>=500))/5000;
    ww(i+1) = length(find(model(i,:)>=1000))/5000;
    zz(i+1) = length(find(model(i,:)>=2500))/5000;
end
x = [0:1:50];
plot(x,yy);
hold on
plot(x,ww);
hold on
plot(x,zz);

