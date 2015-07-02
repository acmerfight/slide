# coding=utf-8

import ipdb
import time
from multiprocessing import Pool


def f(x):
    while 1:
        time.sleep(100000)

if __name__ == '__main__':
    p = Pool(200)
    print(p.map(f, [1, 2, 3] * 100000))
