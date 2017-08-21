import numpy as np

def laff_copy(x,y):
    # for i in range(len(y)):
    #     try:
    #         x[i] = y[i]
    #     except:
    #         print('FAILED')
    if x.shape != y.shape:
        print('FAILED')
        return
    x = y.copy()
    print(x)

laff_copy(np.matrix('1 2 3;4 5 6'),np.matrix('5 2 5;4 5 1'))