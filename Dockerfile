FROM alpine:3.14.0

RUN echo "Hello !!!" > /hello.txt
CMD [ "cat", "/hello.txt" ]