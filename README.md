# smeeio
Docker version of smee.io client


## Usage

### Docker run

```
docker run -d --name smee carlositline/smee:latest --target http://jenkins:8080
```

### Docker compose
```yaml
services:
  smee:
    image: carlositline/smee:latest
    environment: 
      WEBHOOK_TARGET: "http://jenkins:8080"
    restart: always
```

