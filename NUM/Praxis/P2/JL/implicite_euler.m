function[result] = implicite_euler(h,i,beta,x_0,y_0)

result = [];
result = y_0;
y = y_0;
x = x_0;

for k = 0:10/h %0:10 ist Vektor von 0 bis 10
 
  y = y+h*f_1(beta,y);
  result = [result;y];
 
  x = x+h;
  
endfor 

endfunction
