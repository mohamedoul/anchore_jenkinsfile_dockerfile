FROM scratch
ADD hello /
RUN chmod 777 hello
CMD ["/hello"]
