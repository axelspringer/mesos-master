FROM pixelmilk/mesos:1.3.1
MAINTAINER Sebastian Doell <sebastian@katallaxie.me>

# https://github.com/Yelp/dumb-init
RUN curl -fLsS -o /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.0.2/dumb-init_1.0.2_amd64 && chmod +x /usr/local/bin/dumb-init

COPY \
    init.sh /

RUN \
    chmod +x /init.sh

CMD ["/usr/sbin/mesos-master", "--registry=in_memory", "--no-hostname_lookup", "true"]

ENV MESOS_WORK_DIR /tmp/mesos

VOLUME /tmp/mesos

ENTRYPOINT ["/usr/local/bin/dumb-init", "/init.sh"]
