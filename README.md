# deployment-demo

To build docker image:
```bash
docker build . --tag gcr.io/fetch-ai-sandbox/demo-deployment:latest
```

To push to container registry:
```
gcloud docker --push gcr.io/fetch-ai-sandbox/demo-deployment:latest
```
