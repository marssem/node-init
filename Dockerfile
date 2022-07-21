FROM ubuntu

RUN apt update
RUN apt-get install vim -y
RUN apt-get install curl -y
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install nodejs -y
WORKDIR /
RUN mkdir app
WORKDIR /app
RUN npm init -y

EXPOSE 80
EXPOSE 3000
EXPOSE 3001
EXPOSE 3002
