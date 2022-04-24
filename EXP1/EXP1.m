%Exp 1_Program for uncontrolled rectifier
%Made By K.A. Raja Babu,Roll No.-18117903

m=5:5:100; %Parameter to vary resistance from 5 to 100 ohm

for i=1:length(m)
    R=m(i);
    out=sim('SIM_EXP1.slx'); %Linking simulink model
    irmsf(i)=out.Irms(end);  %Extracting Irms value from simulink model
end

plot(m,irmsf);    %Plotting graph between Irms and Load Resistance
grid on;
title('Variation of I(rms) with Load Resistance(R)');
xlabel('Load Resistance(R)');
ylabel('I(rms)')


