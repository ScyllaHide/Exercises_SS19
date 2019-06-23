% 
%i kann 1 oder eben was anderes sein
function [yvec]=expliciteuler(y_0,x,h,a,i,beta, alpha)

y=y_0;
yvec=[];
if i==1
    for k=0:10/h
        y=y+h*f_1(x,y,b);
        yvec=[yvec;y];
        x=x+h
    end
    
else
    for k=0:10/h
        y=y+h*f_2(x,y);
        yvec=[yvec; y];
        x=x+h;
    end
end
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