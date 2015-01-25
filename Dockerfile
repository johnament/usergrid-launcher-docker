FROM dockerfile/java:oracle-java7

EXPOSE 8088
EXPOSE 9160

ADD ./usergrid-launcher.jar .

CMD java -jar /usergrid-launcher.jar -nogui --port 8088 -db -init
