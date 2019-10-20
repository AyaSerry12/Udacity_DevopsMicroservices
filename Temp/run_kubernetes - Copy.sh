#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ml_project

# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run app --image=ayaserry/$dockerpath:latest --port=80

sudo kubectl run app --image=ayaserry/ml_project:latest --port=80

sudo kubectl run app3 --image=ayaserry/ml_project:latest --port=80
# Step 3:
# List kubernetes pods
sudo kubectl get pods

# Step 4:
# Forward the container port to a host
sudo kubectl expose deployment app2 --type=LoadBalancer --port=8000 --target-port=80
NodeType 

sudo kubectl run app2 --image=ayaserry/ml_project:latest --port=80 --cloud-provider=aws

sudo kubectl run app5 --image=ayaserry/ml_project:latest --port=80
sudo kubectl expose deployment app2 --type=NodeType --port=8000 --target-port=80 --cloud-provider=aws

sudo kubectl expose deployment app4 --port=8000 --target-port=80
# https://www.linode.com/docs/applications/containers/kubernetes/deploy-container-image-to-kubernetes/


#Hello World: https://kubernetes.io/docs/tutorials/hello-minikube/




sudo kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
deployment "hello-minikube" created
sudo kubectl expose deployment hello-minikube --type=NodePort


Workingggggg curl 172.31.57.212:32139 with load balancer 



kubectl port-forward deployment/app 8000:80
===========================
sudo kubectl run appx --image=ayaserry/ml_project:latest --port=8000
sudo kubectl expose deployment appx --type=LoadBalancer --port=8000 --target-port=80

sudo kubectl port-forward deployment/appx 8000:80
==================
sudo kubectl run appy --image=ayaserry/ml_project:latest --port=80
sudo kubectl expose deployment appx --type=LoadBalancer --port=80 --target-port=8000
sudo kubectl port-forward deployment/appy 80:8000



sudo kubectl exec $(sudo kubectl get pod -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' -n kube-system -l app=nginx-ingress-controller) -n kube-system cat /etc/nginx/nginx.conf