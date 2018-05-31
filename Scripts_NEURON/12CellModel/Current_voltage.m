close all;
clear all;
load current;
load voltage;
c = hsv(12);

Trace_1 = current(:,1);
Trace_2 = voltage(:,8);
Trace_3 = voltage(:,9);
%Trace_4 = voltage(:,4);
%Trace_5 = voltage(:,5);
%Trace_6 = voltage(:,6);
%Trace_7 = voltage(:,7);
%Trace_8 = voltage(:,8);
%Trace_9 = voltage(:,9);
%Trace_10 = voltage(:,10);
%Trace_11 = voltage(:,11);
%Trace_12 = voltage(:,12);

hold all
plot(Trace_1,'g');
%plot(Trace_2,'r');
%plot(Trace_3, 'black');
%plot(Trace_5, 'g');
%plot(Trace_5, 'black');
%plot(Trace_8, 'r');
%plot(Trace_12, 'black');
%plot(Trace_8, 'color', c(8,:));
%plot(Trace_9, 'g');
%plot(Trace_10, 'color', c(10,:));
%plot(Trace_11,'color', c(11,:));
%plot(Trace_12, 'color', c(12,:));