# rtmp-proxy
Simple RTMP forwarding proxy based on SRS

* Simply forwards a stream to a given endpoint

It can also do HLS and fmp4, simply enable port 8080.

# Usage
docker run -p 1935:1935 -e RTMP_ENDPOINT=stream-eu.mycujoo.football:1935 -it mycujoo/rtmp-proxy