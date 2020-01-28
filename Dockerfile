FROM node:alpine
LABEL maintainer="Jeudi Prando <jeudiprando@gmail.com>"
EXPOSE 3000
ENV REDIREC2_HOST=0.0.0.0 REDIREC2_PORT=3000 REDIREC2=https://jeudi.dev
WORKDIR /app
COPY . /app
USER node
ENTRYPOINT ["node"]
CMD ["server.js"]
