# crear el namespace
kubectl create ns team-academia

# Primer ejercicio
kubectl apply -f .
kubectl get pods -n team-academia 
kubectl get secrets -n team-academia
kubectl describe -n team-academia secret
kubectl get secrets volumen -n team-academia -o yaml > ejemplo.yaml
kubectl exec -it nginx -n team-academia -- bash

# segundo parte del primero
kubectl get secrets -n team-academia
kubectl get pods -n team-academia
 
# kubectl create secret docker-registry <name-secret> --docker-server=docker.io --docker-username= --docker-password= --docker-email=

# Segundo ejercicio
kubectl apply -f .
kubectl get rs -n team-academia
kubectl scale deployment apache -n team-academia --replicas 5