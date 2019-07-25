function[result] = polygonzug(h,i,beta,x_0,y_0)

result = [];
result = y_0;
y = y_0;
x = x_0;

if i==1
  
  for k = 0:10/h %0:10 ist Vektor von 0 bis 10
 
    y = y+(h/2)*(f_1(beta,y)+f_1(beta,y+h*f_1(beta,y)));
    result = [result;y];
 
    x = x+h;
  
  endfor 

else 

  for k = 0:10/h %0:10 ist Vektor von 0 bis 10
 
    y = y+(h/2)*(f_2(x)+f_2(x+h)); %ist also das Gleiche wie Euler, da f_2 nicht von y abhängt
    result = [result;y];
 
    x = x+h;
  
  endfor 

endif

endfunction
