# coding=utf-8

import os
import threading
import time


def worker1():
    print 'Pid', os.getpid()
    print threading.current_thread()
    while 1:
        2 * 100
    return

def worker():
    """thread worker function"""
    print 'Pid', os.getpid()
    print threading.current_thread()
    t = threading.Thread(target=worker1)
    t.start()
    while 1:
        2 * 100
    return


t = threading.Thread(target=worker)
t.start()
