FROM alpine AS download
ADD https://downloads.rclone.org/rclone-current-linux-amd64.zip /tmp/
RUN \
  apk add unzip && \
  unzip /tmp/rclone-current-linux-amd64.zip -d /tmp/

FROM alpine
LABEL maintainer="mail@h3po.de"

COPY --from=download /tmp/rclone-*/rclone /usr/bin/
RUN \
  chown root:root /usr/bin/rclone && \
  chmod 755 /usr/bin/rclone

ENTRYPOINT ["/usr/bin/rclone"]
CMD ["help"]
