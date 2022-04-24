%EXP2_Program for stability analysis of SMIB system using ODE function
%Made by K.A. Raja Babu, Roll No.-18117903

%% Given Parameters
H=5;
pm=0.8; %in pu
pmax1= 1.8; % Pre Fault
pmax2= 0.65; % During Fault
%Fault is cleared at 0.3 sec
pmax3= 1.4625; %After Fault
%% Initial Conditions
del=0.46055; %radians (take this as x1 variable)
w=0; %take this as x2 variable
fct=input('Enter fault clearing time: ');
%Critical Clearing Time (CCT)=0.41 sec
%% Solution during fault
[t1,x]=ode45(@EXP2_DuringFault,[0 fct],[0.46055 0]);

%% Solution after fault
[t2,y]=ode45(@EXP2_PostFault,[fct 10],[x(end,1) x(end,2)]);

%% Plot the results
t=[t1;t2];
result=[x;y];
plot(t,result(:,1)*180/pi);
xlabel('time(sec)');
ylabel('delta(deg)');






