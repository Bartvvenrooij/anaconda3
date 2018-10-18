#!/usr/bin/env python

import sys
from notebook.auth import passwd

def main(argv):
    out = passwd(argv)
    path = "/root/.jupyter/jupyter_notebook_config.py"
    f = open(path,"w+")
    f.write("c.NotebookApp.allow_password_change = False\r\n")
    f.write("c.NotebookApp.password = u'" + out + "'")

if __name__ == '__main__':main(*sys.argv[1:])

