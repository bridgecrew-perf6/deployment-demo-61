# deployment-demo

To build docker image:
```bash
docker build . --tag gcr.io/fetch-ai-sandbox/demo-deployment:james
```

To push to container registry:
```bash
gcloud docker -- push gcr.io/fetch-ai-sandbox/demo-deployment:james
```

To create deployment:
```bash
kubectl apply -f deployment/deployment.yaml
```

To see deployed pods:
```bash
kubectl get pods
```

To show logs:
```bash
kubectl logs <pod-name> -f
```

To delete deployment:
```bash
kubectl delete deployments.apps demo-deployment
```
