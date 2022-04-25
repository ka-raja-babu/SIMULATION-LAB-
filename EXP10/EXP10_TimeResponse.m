%EXP10_Time Response of Series RLC Circuit
%Made By K.A. Raja Babu,Roll No.-18117903

function EXP10_TimeResponse
      T=0.1; %Simulation Time
      x0=[0;0]; %Initial Conditions
      tspan=[0,T];
      %Solve state space model of series RLC circuit using ode45 function
      [t,x]=ode45(@EXP10_CircuitFunction,tspan,x0);
      
      %Plot current through inductor and voltage across capacitor
      Ii=x(:,1);
      Vc=x(:,2);
      subplot(2,1,1);
      plot(t,Vc,'b','LineWidth',0.75);
      grid on;
      title('Voltage across capacitor of series RLC circuit');
      xlabel('Time(sec)');
      ylabel('Voltage (V)');
      subplot(2,1,2);
      plot(t,Ii,'r','LineWidth',0.75);
      grid on;
      title('Current through inductor of series RLC circuit');
      xlabel('Time(sec)');
      ylabel('Current (A)');
end

