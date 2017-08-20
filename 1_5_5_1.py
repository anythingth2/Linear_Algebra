def laff_dot(x,y):
    result=0
    try: 
        for i in range(len(y)):
            result = x[i]*y[i]
    except:
        print('FAILED')
    return result