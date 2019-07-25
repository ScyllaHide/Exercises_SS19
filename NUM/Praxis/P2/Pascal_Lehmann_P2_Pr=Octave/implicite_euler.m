% Pascal_Lehmann_P2_Pr=Octave
function[result] = implicite_euler(h,beta,x_0,y_0)

result = [];
result = y_0;
y = y_0;
x = x_0;

for k = 1:10/h %1:10 ist Vektor von 0 bis 10
 
  y_1 = (1/2)*(-1+1/(h*beta))+sqrt((1/4)*(-1+1/(h*beta)^2+y/(h*beta))); 
  y_2 = (1/2)*(-1+1/(h*beta))-sqrt((1/4)*(-1+1/(h*beta)^2+y/(h*beta)));
  
    if abs(y-y_1) < abs(y-y_2)
    
      y = y_1;
      
    else 
      
      y = y_2;
      
    endif 
    
  result = [result;y];
 
  x = x+h;  
  
endfor 

endfunction
