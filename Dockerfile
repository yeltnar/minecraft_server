FROM eclipse-temurin:17.0.6_10-jdk-alpine 

WORKDIR /minecraft_server

# COPY japp.jar /opt/app
RUN mkdir -p /opt/app; cd /opt/app; wget https://piston-data.mojang.com/v1/objects/701767d4d07aad992e3e2875ae5d1485cebf66e0/server.jar

# dont enable this commend RUN echo "eula=true" >> /minecraft_server/eula.txt

EXPOSE 25565

ARG "-Xmx1024M" 
ARG "-Xms1024M" 

CMD ["java", "-jar", "/opt/app/server.jar", "nogui"]

