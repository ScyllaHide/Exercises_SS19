% Hauptprogramm, Maximilian Selch, Björn Hoppmann
clc; clear all; close all;
disp('Euler-Verfahren')
disp('(1) mit a=-10')
a=-10;
h=1;
lsg=[];
for j=1:12

bild=euler(0, 0, h, a, 1, 0, 0);
lsg=[lsg bild(10/h)];
h=(1/2)*h;
end
lsg 

pause

disp('(1) mit a=1')
a=1;
h=1;
lsg=[];
for j=1:12

bild=euler(0, 0, h, a, 1, 0, 0);
lsg=[lsg bild(10/h)];
h=(1/2)*h;
end
lsg

pause

disp('(2)')
alpha=100;
h=0.05;
lsg=[];
for j=1:6

bild=euler(alpha, 0, h, 0, 42, 1, 100); %42 für f_2
lsg=[lsg bild(10/h)];
h=(1/2)*h;
end
lsg

pause

disp('Runge-Kutta-Verfahren')

disp('(1) mit a=-10')
a=-10;
h=1;
lsg=[];
for j=1:12

bild=kutter(0, 0, h, a, 1, 0, 0); %42 für f_2
lsg=[lsg bild(10/h)];
h=(1/2)*h;
end
lsg

pause

disp('(1) mit a=1')
a=1;
h=1;
lsg=[];
for j=1:12

bild=kutter(0, 0, h, a, 1, 0, 0); %42 für f_2
lsg=[lsg bild(10/h)];
h=(1/2)*h;
end
lsg

pause

disp('(2)')
alpha=100;
h=0.05;
lsg=[];
for j=1:6

bild=kutter(alpha, 0, h, 0, 42, 1, 100); %42 für f_2
lsg=[lsg bild(10/h)];
h=(1/2)*h;
end
lsg
