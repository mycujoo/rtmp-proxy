#!/usr/bin/env python

import os

def main():

    conf = open('/srs.conf', 'r')
    conf_str = conf.read()
    
    forwards = os.environ.get('RTMP_ENDPOINT')

    if forwards == None:
        exit(1)

    if "," in forwards: 
        destinations = forwards.split(",")
    else:
        destinations = [forwards]

    conf_str = conf_str.replace("##destinations##", " ".join(destinations))    
    print(conf_str)

    exit(0)

if __name__ == "__main__":
    main()