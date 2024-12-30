# Metrics Server

This is a basic monitoring tool for Kubernetes. It collects metrics from pods and nodes and allow to monitor basic metrics like CPU and memory usage.

```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```