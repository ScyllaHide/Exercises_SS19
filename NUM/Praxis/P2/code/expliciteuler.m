% 
%i kann 1 oder eben was anderes sein
function [yvec]=expliciteuler(h, i, b, x_0,y_0)

x=x_0;
y=y_0;
yvec=[];
yvec=[yvec;y_0]
if i==1
    for k=0:10/h
        y=y+h*f_1(y,b);
        yvec=[yvec;y];
        x=x+h;
    endfor 
 else
     for k=0:10/h
         y=y+h*f_2(x);
         yvec=[yvec; y];
         x=x+h;
     endfor
endif
endfunction
% function [yvec]=euler(y_0, x, h, a, i, beta, alpha)
% 
% y=y_0;
% yvec=[];
% if i==1
%   for k=0:10/h
%     y=y+h*f_1(x, y, a);
%     yvec=[yvec; y]; 
%     x=x+h;
%   end
%   
% else
% 
%   for k=0:10/h
%     y=y+h*f_2(x, y, beta);
%     yvec=[yvec; y]; 
%     x=x+h;
%   end
%   
% end
% 
% endfunction