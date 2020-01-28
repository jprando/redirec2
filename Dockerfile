FROM node:alpine
LABEL maintainer="Jeudi Prando <jeudiprando@gmail.com>"
EXPOSE 3000
WORKDIR /app
COPY . /app
USER node
ENTRYPOINT ["node"]
CMD ["server.js"]
