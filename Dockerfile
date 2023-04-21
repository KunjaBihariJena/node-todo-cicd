FROM node:20-alpine3.16
WORKDIR /app
COPY  . .
RUN npm install 
RUN npm run test
EXPOSE 8000
ENTRYPOINT [ "node", "app.js" ]