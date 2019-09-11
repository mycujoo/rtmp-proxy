FROM mycujoo/srs:3.0

RUN apt-get update && apt-get install -y python3
COPY srs.conf /
COPY docker/srs.sh /srs.sh
COPY docker/destinations.py /destinations.py

RUN chmod +x /srs.sh

EXPOSE 1935
EXPOSE 80

CMD ["/srs.sh"]