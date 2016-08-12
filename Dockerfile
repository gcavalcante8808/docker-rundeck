FROM java:jre

RUN groupadd -g 10000 webserver && useradd -g webserver webserver -m -u 10000
WORKDIR /home/webserver
ARG RD_VERSION=2.6.9

ADD http://dl.bintray.com/rundeck/rundeck-maven/rundeck-launcher-${RD_VERSION}.jar /opt/rundeck/rundeck.jar
RUN chown -R webserver:webserver /home/webserver /tmp/ansible-plugin.jar

USER webserver

EXPOSE 4440
CMD java -jar /home/webserver/rundeck/rundeck.jar
