% Pascal_Lehmann_P2_Pr=Octave
function[result] = explicite_euler(h,i,beta,x_0,y_0)

result = [];
result = y_0;
y = y_0;
x = x_0;

if i==1
  
  for k = 1:10/h %1:10 ist Vektor von 0 bis 10
 
    y = y+h*f_1(beta,y);
    result = [result;y];
 
    x = x+h;
  
  endfor 

else 

  for k = 1:10/h %1:10 ist Vektor von 0 bis 10
 
    y = y+h*f_2(x);
    result = [result;y];
 
    x = x+h;
  
  endfor 

endif

endfunction
