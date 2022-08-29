#
# Isha media service is simply a nodejs 16 runtime environment, nothing else
#
FROM alpine:3.16
RUN apk --update add yarn git openssh-client
RUN apk add --no-cache libc6-compat
RUN ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2

#RUN mkdir -p /root/.ssh
#COPY ./known_hosts /root/.ssh
