#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import pandas as pd

cpdef tuple extract_data(str data_name):
    cdef str data_str = ''
    cdef str word
    with open(data_name, 'r') as data:
        for i, line in enumerate(data):
            data_str += line.replace('\n', ' ')
    data_list = [data_str.split(' ')][0]
    while '' in data_list:
        if '' in data_list:
            data_list.remove('')
    cdef int j
    word = data_list[1]
    for j in range(3):
        data_list.remove(data_list[0])
    data_list = [float(data_n) for data_n in data_list]

    return word, data_list