# Helm k8s

for CI/CD pipelines (GitLab-CI, Jenkins) via [Helm](https://github.com/kubernetes/helm) package manager.

### Utilities
This Alpine image has the following tools installed:
* `kubectl`
* `helm`

these are required to deploy to k8s using Helm.
```
docker build -t davarski/k8s-helm:latest .

docker push davarski/k8s-helm:latest
```
