#!/bin/bash

python3 /destinations.py > /srs_mod.conf

echo "[RTMP] Starting RTMP server"
objs/srs -c /srs_mod.conf