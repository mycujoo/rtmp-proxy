#!/bin/bash

sed -i "s|##destination##|${RTMP_ENDPOINT}|g" /srs.conf

echo "[RTMP] Starting RTMP server"
objs/srs -c /srs.conf