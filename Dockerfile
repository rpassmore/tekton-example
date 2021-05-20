FROM alpine:3.13

RUN echo "Hello !!!" > /hello.txt
CMD [ "cat", "/hello.txt" ]