%EXP2_Program for stability analysis of SMIB system using ODE function
%Made by K.A. Raja Babu, Roll No.-18117903

function dx=EXP2_DuringFault(t,x)
dx=zeros(2,1); %initialization
dx(1)=x(2);
dx(2)=(pi*12)*(0.8-0.65*sin(x(1)));
end

%Swing Equation During Fault