FROM registry.opensource.zalan.do/stups/openjdk:8-27

COPY target/contractmanager-0.1-SNAPSHOT.jar /contractmanager.jar

COPY scm-source.json /scm-source.json

EXPOSE 8080

CMD java $(java-dynamic-memory-opts) $(appdynamics-agent) -jar /contractmanager.jar