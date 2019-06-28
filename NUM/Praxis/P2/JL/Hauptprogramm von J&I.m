% Jean-Luc_Hauptmann_Ilina_Tuneska_P2_Pr=Octave
% Hauptprogramm von Jean-Luc & Ilina
clc; clear all; close all;

% Teilaufgabe (c)

disp('Lösung AWP (1)')

disp('f_1 mit y_0 = 10')

% Lösung für f_1 mittels explicite_euler

disp('explicite_euler')

y_0 = 10;
beta = 2;
h=0.01;
lsg=[];

for j=1:8

  ergebnis = explicite_euler(h,1,beta,0,y_0);
  lsg = [lsg;ergebnis((10/h)+1)];
  h=(1/2)*h;

endfor
lsg 

pause

% Lösung für f_1 mittls polygonzug

disp('polygonzug')

h = 0.01;
lsg=[];

for j=1:8

  ergebnis = polygonzug(h,1,beta,0,y_0);
  lsg=[lsg;ergebnis((10/h)+1)];
  h=(1/2)*h;
  
endfor
lsg

pause

% Lösung für f_1 mittels implicite_euler

disp('implicite_euler')

h=0.2;
lsg=[];

for j=1:8

  ergebnis = implicite_euler(h,beta,0,y_0);
  lsg=[lsg;ergebnis((10/h)+1)];
  h=(1/2)*h;
  
endfor
lsg

pause

% Teilaufgabe (d)

disp('Lösung AWP (2)')

disp('f_2 mit y_0 = 10')

% Lösung für f_2 mittels explicite_euler

disp('explicite_euler')

h = 2;
y_0 = 10;
beta = 2;
lsg=[];

for j=1:8

  ergebnis = explicite_euler(h,2,beta,0,y_0);
  lsg=[lsg;ergebnis((10/h)+1)];
  h=(1/2)*h;
  
endfor
lsg

% graphische Darstellung des Fehlers auf Intervall [0,10]

x = 0:(2*h):10;
plot(x,ergebnis);

pause

analytisch = -2*(sin(5*x)+cos(5*x)-10);
fehler = abs(transpose(analytisch)-ergebnis);
plot(x,fehler); 

disp('experimentelle Konvergenzordnung')

exp_KO = (log(fehler((5/h)+1))-log(fehler(5/h)))/(log(10)-log(10-(2*h)))

pause

% Lösung für f_2 mittels polygonzug

disp('polygonzug')

h=2;
lsg=[];

for j=1:8

  ergebnis = polygonzug(h,2,beta,0,y_0);
  lsg=[lsg;ergebnis((10/h)+1)];
  h=(1/2)*h;
endfor
lsg

fehler = abs(transpose(analytisch)-ergebnis);

disp('experimentelle Konvergenzordnung')

exp_KO = (log(fehler((5/h)+1))-log(fehler(5/h)))/(log(10)-log(10-(2*h)))


