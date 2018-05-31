close all; clear all;

load data;

X_axis = data(:,2);

Y_axis = data(:,1);

plot(Y_axis, X_axis, '.');

