FROM python:3.9-alpine3.15

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk

RUN apk add --no-cache --update \
    openjdk8-jre \
    bash \
  && pip install amazon-kclpy==2.0.6 \
  && rm -rf /var/cache/apk/*

WORKDIR /app

COPY bin/ /usr/local/bin/

COPY . /app/

ONBUILD COPY . /app/
ONBUILD RUN chmod -R 755 /app/

CMD ["/usr/local/bin/kcl-start.sh"]
