#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from glob import glob
import pandas as pd
import numpy as np

cpdef dict extract_data(str dir_name):
    cdef list data_names = [data for data in glob(dir_name+'/*.txt')]
    cdef list names = ['dimention_'+str(n+1) for n in range(15)]
    cdef dict parent_data = {}
    for data_name in data_names:
        data = pd.read_csv(data_name, sep=' ', names=tuple(names))
        data = [list(data[i]) for i in names]
        name = data[0][1]
        for i in range(len(data)):
            for j in range(3):
                data[i].remove(data[i][0])
            for k in range(len(data[i])):
                data[i][k] = float(data[i][k])
        data = np.array(data).T
        parent_data[name] = data
    return parent_data