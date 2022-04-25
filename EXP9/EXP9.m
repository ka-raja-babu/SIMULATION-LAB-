%EXP9_Frequency Response of Series RLC Circuit
%Made By K.A. Raja Babu,Roll No.-18117903

%%For Frequency Response
for i=1:2
    for j=1:5
        f=j*(10^i);
        p=sim('SIM_EXP9.slx');
        out_v(j,i)=(max(p.vol_capacitor))-min(min(p.vol_capacitor));
        in_v(j,i)=(max(p.vol_source))-min(min(p.vol_source));
        freq(j,i)=f;
        gain(j,i)=out_v(j,i)/in_v(j,i);
    end
end
x=reshape(freq,1,[]);
y=reshape(gain,1,[]);
plot(x,y,'LineWidth',2);
title('Frequency Response of Series RLC Circuit');
xlabel('Frequency(Hz)');
ylabel('Gain(Volatge across capacitor/input voltage)');

%%For Bode Plot

R=100; %in ohm
L=0.001; %in Henry
C=0.000001;%in Farad
m=R/L;
n=1/(L*C);

%Constructing transfer funtion using standard equation
num=[n]; 
den=[1 m n];
sys=tf(num,den);
bode(sys); %Bode plot
