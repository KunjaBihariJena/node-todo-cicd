FROM ubuntu
WORKDIR /app
COPY  . .
RUN apt update
RUN apt install nodejs 
RUN apt install npm 
EXPOSE 8000
ENTRYPOINT [ "node", "app.js" ]