FROM scratch
RUN curl https://ancho.re/v1/service/feeds
ADD hello /
CMD ["/hello"]

