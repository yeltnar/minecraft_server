FROM eclipse-temurin:17.0.6_10-jdk-alpine 

WORKDIR /minecraft_server

COPY init.sh /usr/bin/init.sh
RUN chmod u+x /usr/bin/init.sh

# COPY japp.jar /opt/app
RUN mkdir -p /opt/app; cd /opt/app; wget https://piston-data.mojang.com/v1/objects/701767d4d07aad992e3e2875ae5d1485cebf66e0/server.jar

EXPOSE 25565

CMD /usr/bin/init.sh

