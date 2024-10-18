
#Starting from base debian image
FROM debian:stable-slim
WORKDIR /opt

#Exposing Factorio's ports
EXPOSE 34197/udp 
EXPOSE 27015/tcp 

#Adding a user to run the service, may not be needed?
ARG USER=gamemaster
ARG GROUP=factorio

#taking my deployed server files and shoving them into this image
COPY ./opt/ /factorio
