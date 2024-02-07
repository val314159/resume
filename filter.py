#!usr/bin/env python
import sys
def out(s=None):
    if s is None: return print()
    return print(s, end='')
for line in sys.stdin:
    if 'stylesheet' in line and '/> in line':
        out("<style>")
        out(open('public/style.css').read())
        out("</style>")
        out()
    else:
        out(line)

