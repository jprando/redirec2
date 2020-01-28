# URL Redirection Service

Redirect To URL

## Docker Commands

pull image from docker hub  
`docker pull jprando/redirec2`

### Defaults

- host 0.0.0.0  
- port 3000  

```sh
docker run -d --name redirec2-srv \
    --restart=unless-stopped \
    -e REDIREC2=https://jeudi.dev
    -p 3000:3000
jprando/redirec2
```

change internal host and port config  
```sh
docker run -d --name redirec2-srv \  
    --restart=unless-stopped \
    -e REDIREC2_HOST=0.0.0.0  
    -e REDIREC2_PORT=8080  
    -e REDIREC2=https://jeudi.dev  
    -p 3000:8080  
jprando/redirec2
```
