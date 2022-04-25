%EXP3_Stability Analysis of SMIB system using simulink model
%Made by K.A. Raja Babu, Roll no.-18117903

threshold=[0.4 0.5]; %array of fault clearing times

for i=1:2
    fct=threshold(i);
    out=sim('SIM_EXP3.slx'); %Calling simulink model
    color=['r','b'];
    plot(out.tout,out.delta,color(i)); %Plotting delta versus time
    xlabel('Time(sec)');
    ylabel('Delta(degree)');
    title('Swing Curve for FCT=0.4sec and 0.5sec');
    hold on; %holding previous plot
end
