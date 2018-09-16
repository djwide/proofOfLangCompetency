%DWeidman


function approx = polyNewton(coef, x0,tol)
    fprintf('\n\n%s\n\n','DWeidman');
    xl=x0+1; % assumes tol will be less than 1
    while(abs(xl-x0)> tol)
        [n,d]= Horner(coef,x0);
        xl= x0;
        x0= x0-n/d;
        display(x0)
    end
    approx= x0;
end

function [y,z] = Horner(coef, x0) 
    len= length(coef);
    y=coef(len);
    z=coef(len);
    for i=len-1:-1:2
        y=x0*y+coef(i);
        z=x0*z+y;
    end
    y=x0*y+coef(1);
end