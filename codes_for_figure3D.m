
clc
clear

%% modeling individual behavior(weak virulence with replication cylce = 11) .
num_c_valve = 0;
for kkk = 1: 5000
    kkk
    for iii = 1:50 %% virus dose = 20
       s(1,iii)  = struct('replication_cycle',11,'waiting_time',0,'time',0);
    end

count_number = 20; %% initial virus number = 20
input_number = 20;
for i = 1:100  %% virus generations
    i;
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= (0.60-(0.0018)*i) %% this number = d;
         
        if time_phage+s(i,j).waiting_time >= 11 
         

       
     
         s(i+1,number+1).replication_cycle = 11;

     
         s(i+1,number+1).waiting_time = time_phage+s(i,j).waiting_time -11; 

         s(i+1,number+1).time = (10*(i+1));
         
        

         s(i+1,number+2).replication_cycle = 11;


         s(i+1,number+2).waiting_time = time_phage+s(i,j).waiting_time -11; 
         s(i+1,number+2).time = (10*(i+1));
         number = number+2;
        else

        
         s(i+1,number+1).replication_cycle = 11;
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

matrix_weak_virulence(kkk) = max(ddd);
clear ddd
end



save('matrix_for_figure_3D_weak_virulence_20','matrix_weak_virulence');


clc
clear

%% modeling individual behavior(strong virulence with replication cylce = 10) .
num_c_valve = 0;
for kkk = 1: 5000
    kkk
    for iii = 1:2 %% virus dose = 2
       s(1,iii)  = struct('replication_cycle',10,'waiting_time',0,'time',0);
    end

count_number = 2; %% initial virus number = 20
input_number = 2;
for i = 1:100  %% virus generations
    i;
    k = count_number;
    number = 0;
    for j = 1:k  %%virus population per generation
    time_phage = 10;%% we chose 10min as time interval
    d = rand; %% 
    A = s(i,j);
    if d <= (0.60-(0.0018)*i) %% this number = d;
         
        if time_phage+s(i,j).waiting_time >= 10
         

       
     
         s(i+1,number+1).replication_cycle = 10;

     
         s(i+1,number+1).waiting_time = time_phage+s(i,j).waiting_time -10; 

         s(i+1,number+1).time = (10*(i+1));
         
        

         s(i+1,number+2).replication_cycle = 10;


         s(i+1,number+2).waiting_time = time_phage+s(i,j).waiting_time -10; 
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

matrix_strong_virulence(kkk) = max(ddd);
clear ddd
end



save('matrix_for_figure_3D_strong_virulence_2','matrix_strong_virulence');