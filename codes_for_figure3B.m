
clc
clear
ddd = zeros(5,100);
%% modeling individual behavior(strong immunity with d = 0.77) when infected with  29900bp virus .
num_c_valve = 0;
for kkk = 1: 5
    kkk
    for iii = 1:100
       s(1,iii)  = struct('replication_cycle',10,'waiting_time',0,'time',0);
    end





count_number = 100; %% initial virus number = 100
for i = 1:100  %% virus generations
    i;
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= (0.60-(0.001 + 0.0002*kkk)*i) %% this number = d;
         
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
    ddd(kkk,i) = count_number;
end



end
save('matrix_for_figure_3A','ddd');



