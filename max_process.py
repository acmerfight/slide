# coding=utf-8

import time
from multiprocessing import Pool


def f(x):
    while 1:
        a = 1 + 1

if __name__ == '__main__':
    p = Pool(200)
    print(p.map(f, [1, 2, 3]))
