% Pascal_Lehmann_P2_Pr=Octave
% main
clc; clear all; close all;

% Teilaufgabe (c)

disp('Lösung AWP (1)')

disp('f_1 mit y_0 = 10')

% Lösung für f_1 mittels explicite_euler

disp('explicite_euler')

y_0 = 10;
beta = 2;
h=0.01;
sol=[];

for j=1:8

  result = explicite_euler(h,1,beta,0,y_0);
  sol = [sol;result((10/h)+1)];
  h=(1/2)*h;

endfor
sol 

pause

% Lösung für f_1 mittls polygonzug

disp('polygonzug')

h = 0.01;
sol=[];

for j=1:8

  result = polygonzug(h,1,beta,0,y_0);
  sol=[sol;result((10/h)+1)];
  h=(1/2)*h;
  
endfor
sol

pause

% Lösung für f_1 mittels implicite_euler

disp('implicite_euler')

h=0.2;
sol=[];

for j=1:8

  result = implicite_euler(h,beta,0,y_0);
  sol=[sol;result((10/h)+1)];
  h=(1/2)*h;
  
endfor
sol

pause

% Teilaufgabe (d)

disp('Lösung AWP (2)')

disp('f_2 mit y_0 = 10')

% Lösung für f_2 mittels explicite_euler

disp('explicit euler method')

h = 2;
y_0 = 10;
beta = 2;
sol=[];

for j=1:8

  result = explicite_euler(h,2,beta,0,y_0);
  sol=[sol;result((10/h)+1)];
  h=(1/2)*h;
  
endfor
sol

% graphische Darstellung des Fehlers auf Intervall [0,10]

x = 0:(2*h):10;
plot(x,result); hold on;
title("graphical presentation for f_2");

pause

analytic = -2*(sin(5*x)+cos(5*x)-10);
error = abs(transpose(analytic)-result);
fplot(x,error); 
title("graphical presentation of the error for f_2");

disp('experimentelle Konvergenzordnung')

exp_KO = (log(error((5/h)+1))-log(error(5/h)))/(log(10)-log(10/(2*h)))

pause

% Lösung für f_2 mittels polygonzug

disp('polygonzug')

h=2;
sol=[];

for j=1:8

  result = polygonzug(h,2,beta,0,y_0);
  sol=[sol;result((10/h)+1)];
  h=(1/2)*h;
endfor
sol

error = abs(transpose(analytic)-result);

disp('experimentelle Konvergenzordnung')

exp_KO = (log(error((5/h)+1))-log(error(5/h)))/(log(10)-log(10/(2*h)))