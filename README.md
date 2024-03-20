
## How to deploy

```
docker image build -t thangnvbkhn/rocky9_vnc -f Dockerfile .
docker image push thangnvbkhn/rocky9_vnc
```

## How to run

```
docker run -p 15901:5901 --restart always --shm-size=512m -h crypto_bot -e VNC_RESOLUTION=1920x1080 -e VNC_PW=thang123 -v /tmp:/home --name bot -it thangnvbkhn/rocky9_vnc /bin/bash
```

## More info
https://github.com/ConSol/docker-headless-vnc-container