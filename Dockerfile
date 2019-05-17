FROM scratch
ADD hello /
CMD ["/hello"]
RUN docker run -d 
