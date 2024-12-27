# Kubernetes dashboard installation

## Create namespace
```bash
kubectl apply -f post-installation/k8s/kubernetes-dashboard/namespace.yaml
```

## Create service account
```bash
kubectl apply -f post-installation/k8s/kubernetes-dashboard/service-account.yaml
```

## Create cluster role binding
```bash
kubectl apply -f post-installation/k8s/kubernetes-dashboard/cluster-role-binding.yaml
```

## Create secret
```bash
kubectl apply -f post-installation/k8s/kubernetes-dashboard/secret.yaml
```

## Deploy dashboard with helm repository
```bash
# Add kubernetes-dashboard repository
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
# Deploy a Helm Release named "kubernetes-dashboard" using the kubernetes-dashboard chart
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard
```

## Forward the dashboard to your local machine
```bash
kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443
```

Access the dashboard at [https://localhost:8443](https://localhost:8443) and use the token from the secret to login, get the token with `kubectl get secret admin-user -n kubernetes-dashboard -o jsonpath="{.data.token}" | base64 -d`.