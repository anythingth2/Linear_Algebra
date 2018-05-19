function [y_out] = Matrix_x_Vector(A,x,y)

    [xm , xn] = size(x);
    [ym , yn] = size(y);
    [Am , An] = size(A);
    
    if ~(Am == xm && Am == ym)
        y_out = 'FAILED';
        return
    end
    
    A = A;
    for i = 1:Am
        y(i,1) = y(i,1) + laff_dot(A(i,1:An),x);
        
    end
    y_out = y;
    return
    