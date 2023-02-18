FROM debian:stable as build

WORKDIR /deepin-docker-build

ADD . .

RUN ./build.sh

FROM scratch

COPY --from=build /apricot-rootfs /

CMD ["sh"]
