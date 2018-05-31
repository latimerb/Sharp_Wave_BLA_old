close all;
clear all;
clc;

%Ben Latimer 2018
%Code to analyze model outputs

%spikes = load('../Data_Output/data');
%figure
%plot(spikes(:,1),spikes(:,2),'.')



%vclamp = load('../Data_Output/current');

figure
%plot(vclamp(:,1));

PlotVoltages([1877:1:1884],'../Data_Output/Voltage/')
saveas(gcf,'Voltages.png')
%pause(20)

