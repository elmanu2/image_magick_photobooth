#!/usr/bin/env python

import os
import sys

res = os.environ['PYTHONPATH'].split(os.pathsep)

print 'PYTHONPATH environment variable %r \n' %res

res = os.environ['PATH'].split(os.pathsep)

print 'PATH environment variable'

for path in res :
    print path
