%% read the excel file with the state of charge data
Data = xlsread('Battery_Parameters.xlsx');

%% Separate the variables from the Data
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge = Data(:,3);
R_Discharge = Data(:,4);

%% Plot
plot(SOC, OCV)

figure
plot(SOC, R_Charge)

figure
plot(SOC, R_Discharge)

%% define the parameters
I = 2.3; 
Cn = 2.3*3600; %Capacity Ah*3600 = As
Sim_time = 3600; %1h

%%
sim('batterySimulation.slx');





