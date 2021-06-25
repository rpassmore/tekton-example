FROM alpine:3.13

RUN apk --update add \
  bash=5.1.0-r0

RUN echo "Hello !!!" > /hello.txt
CMD [ "cat", "/hello.txt" ]