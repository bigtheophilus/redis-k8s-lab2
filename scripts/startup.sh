#!/bin/bash
set -e

echo "Applying Redis ConfigMap..."
kubectl apply -f k8s/redis-configmap.yaml

echo "Applying Redis Secret..."
kubectl apply -f k8s/redis-secret.yaml

echo "Applying Redis PVC..."
kubectl apply -f k8s/redis-pvc.yaml

echo "Applying Redis Deployment and Service..."
kubectl apply -f k8s/redis-deployment.yaml
kubectl apply -f k8s/redis-service.yaml

echo "Applying FastAPI Deployment and Service..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment complete."
