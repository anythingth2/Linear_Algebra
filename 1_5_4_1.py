def laff_axpy(alpha,x,y):
    try:
        for i in range(len(y)):
            x[i] = x[i]*alpha + y[i]
    except:
        print('FAILED')
    
    return x
