%EXP10_Time Response of Series RLC Circuit
%Made By K.A. Raja Babu,Roll No.-18117903

%State Space Model of Series RLC Circuit

function y=EXP10_CircuitFunction(t,x)
         R=30; %Resistance in ohm
         L=60e-3; %Inductance in Henry
         C=100e-7; %Capacitance in Farad
         Vi=100; %Input Voltage in V

         y=[-R/L -1/L; 1/C 0]*x + [1/L 0]*Vi;
         y=y(:,1);
end



