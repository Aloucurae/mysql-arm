# MySQL on an ARM64v8 docker base

this project is for runnung mysql:5.7 on docker for apple silicon

sample:
```yaml
version: '3'

services:
  mysql:
    tty: true
    build: .
    image: alexjonas/mysql:8-arm-v2
    environment:
      MYSQL_ALLOW_EMPTY_PASSWORD: "true"
      MYSQL_DATABASE: "my_databse"
      MYSQL_USER: "user"
      MYSQL_PASS: "user_pass"
      MYSQL_TCP_PORT: "3307"
    ports:
      - 3307:3307
```

## CHANGELOG    

 - Added port configutration with environment variable