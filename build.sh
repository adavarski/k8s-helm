#!/bin/bash
docker build -t davarski/k8s-helm:latest .
docker push davarski/k8s-helm:latest

#docker build -t davarski/k8s-helm:`git rev-parse --short HEAD` .

