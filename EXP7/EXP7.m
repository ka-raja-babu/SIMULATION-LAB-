%EXP7_Dynamic simulation of RL Circuit
%Made By K.A. Raja Babu, Roll No.-18117903

R=10;
for L=2:2:10
    out=sim('SIM_EXP7.slx');
    plot(out.t,out.y(:,:));
    hold on;
    gtext(strcat('L = ',num2str(L)));
    title('Effect of Change of Inductance over the Current Response');
    xlabel('Time(sec)');
    ylabel('Current Response (Amp)');
end