FROM ubuntu
WORKDIR /app
COPY  . .
RUN apt update
RUN apt install npm -y
EXPOSE 8000
ENTRYPOINT [ "node", "app.js" ]