def laff_scal(alpha,x):
    try:
        for i in x:
            i*=alpha
    except:
        print('FAILED')