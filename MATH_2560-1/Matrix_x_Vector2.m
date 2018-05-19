function [y_out] = Matrix_x_Vector2(A,x,y)
    [xm , xn] = size(x);
    [ym , yn] = size(y);
    [Am , An] = size(A);
    
    if ~(Am == xm && Am == ym)
        y_out = 'FAILED';
        return
    end
    
    for i = 1:Am
        if i == 1 
            y(i,1) = y(i,1) + laff_dot( A(i,i+1:An) , x(i+1:An,1));
        elseif i == Am
            y(i,1) = y(i,1) + laff_dot( A(i,1:i-1) , x(1:i-1,1)) ;
        else
            y(i,1) = y(i,1) + laff_dot( A(i,1:i-1) , x(1:i-1,1)) + laff_dot( A(i,i+1:An) , x(i+1:An,1));
        end
    end
    y_out = y;
    return