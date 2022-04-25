%EXP8_Design of Proportional Controller
%Made by K.A. Raja Babu,Roll No.-18117903

%% Defining tf and obtaining root locus

num=[0.1 0.3 0.2]; %define numerator
den=[1 -0.9 -0.1]; %define denominator
P=tf(num,den); %open loop tf
h=rlocusplot(P);  %rlocus plot of open loop tf

%% Plotting step response

T=feedback(P,1); %Closed loop tf
K=1;  %Defining Kp
P1=K*P;
T1=feedback(P1,1);
step(T1);   %Step Response

