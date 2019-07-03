FROM ossrs/srs:3.0.42

COPY srs.conf /
COPY docker/srs.sh /srs.sh

RUN chmod +x /srs.sh

EXPOSE 1935
EXPOSE 80

CMD ["/srs.sh"]