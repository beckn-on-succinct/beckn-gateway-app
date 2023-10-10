# Alpine Linux with OpenJDK JRE
#FROM alpine:3.14
#RUN apk add -U tzdata curl openjdk11-jre-headless && ln -s /usr/share/zoneinfo/Asia/Kolkata  /etc/localtime  && echo "Asia/Kolkata" > /etc/timezone

FROM openjdk-11-headless-tz-india:latest 
EXPOSE 4000 
EXPOSE 4030

RUN mkdir /gateway gateway/target gateway/bin gateway/tmp gateway/overrideProperties
COPY tmp/gateway-docker /gateway/
WORKDIR /gateway
RUN /usr/bin/crontab /gateway/crontab.txt  

CMD ["/bin/sh" , "/gateway/bin/service-start"]
