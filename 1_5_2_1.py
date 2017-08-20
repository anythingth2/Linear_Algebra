def laff_copy(x,y):
    for i in range(len(y)):
        try:
            x[i] = y[i]
        except:
            print('FAILED')
