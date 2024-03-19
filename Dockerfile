# Alpine Linux with OpenJDK JRE
# FROM alpine:latest
# RUN apk add -U tzdata curl openjdk17 && ln -s /usr/share/zoneinfo/Asia/Kolkata  /etc/localtime  && echo "Asia/Kolkata" > /etc/timezone

FROM beckn:latest 

RUN mkdir /gateway gateway/target gateway/bin gateway/tmp gateway/overrideProperties
COPY tmp/gateway-docker /gateway/
WORKDIR /gateway
RUN /usr/bin/crontab /gateway/crontab.txt  

CMD ["/bin/sh" , "/gateway/bin/service-start"]
