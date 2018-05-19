function [y_out] = laff_dot(x,y)
    [xm,xn] = size(x);
    [ym,yn] = size(y);
    
    if ~( (xm >= 1 && xn == 1) || (xm == 1 && xn >= 1) ) || ~( (ym >= 1 && yn == 1) || (ym == 1 && yn >= 1))
        y_out = 'FAILED';
        disp('FAILED')
        return
    end
    y_out = 0;
    if xn == 1
        if yn == 1
            if xm == ym
                for i = 1:xm
                    y_out = y_out + x(i,1)*y(i,1);
                end
            else
                y_out = 'FAILED';
                return
            end
        else
            if xm == yn
                for i = 1:xm
                   y_out = y_out + x(i,1)*y(1,i);
                end
            else
                y_out = 'FAILED';
                return
            end
        end
    else
        if yn == 1
            if xn == ym
                for i = 1:xn
                    y_out = y_out + x(1,i)*y(i,1);
                end
            else
                y_out = 'FAILED';
                return
            end
        else
            if xn == yn
                for i = 1:xn
                    y_out = y_out+x(1,i)*y(1,i);
                end
            else
                y_out = 'FAILED';
                return
            end
        end
    end
    
    
    return
    