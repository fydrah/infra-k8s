# set author and base
FROM golang AS build
MAINTAINER Flavien Hardy <flav.hardy@gmail.com>

# install dependencies, build and cleanup
RUN apt update
RUN apt install -y golang-glide git

RUN mkdir -p /go/src/github.com/heketi

WORKDIR /go/src/github.com/heketi
RUN git clone -b master https://github.com/heketi/heketi.git

WORKDIR /go/src/github.com/heketi/heketi
RUN glide install -v
RUN make

FROM alpine:3.6 AS run

RUN mkdir -p /var/lib/heketi /etc/heketi /root/.ssh /lib64 && \
    apk add -U openssh && \
    ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

COPY --from=build /go/src/github.com/heketi/heketi/heketi /usr/bin/heketi
COPY --from=build /go/src/github.com/heketi/heketi/client/cli/go/heketi-cli /usr/bin/heketi-cli

# post install config and volume setup
ADD ./heketi.json /etc/heketi/heketi.json
VOLUME /var/lib/heketi

# expose port, set user and set entrypoint with config option
ENTRYPOINT [""]
CMD ["/usr/bin/heketi","--config=/etc/heketi/heketi.json"]
EXPOSE 8080
