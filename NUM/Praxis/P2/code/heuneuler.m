% improved euler (heuns method)

function [yvec]=heuneuler(y_0,x,h,a,i,beta, alpha)

y=y_0;
yvec=[];

if i==1
    for 0:10/h
        y=y+(h/2)(f_1(x,y) + f_1(x+h, y+hf_1(x.y)));
        yvec=[yvec;y];
        x=x+h
    end
    
else
    for 0:10/h
        y=y+(h/2)(f_2(x,y) + f_2(x+h, y+hf_1(x.y)));
        yvec=[yvec;y];
        x=x+h
    end
end
