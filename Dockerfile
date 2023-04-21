FROM ubuntu
WORKDIR /app
COPY  . .
RUN apt update
RUN apt install nodejs && apt install npm &&  npm install
EXPOSE 8000
ENTRYPOINT [ "node", "app.js" ]