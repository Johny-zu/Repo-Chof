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

# tercer ejercicio
kubectl create ns team-academia
kubectl apply -f .
kubectl get pods -n team-academia
kubectl describe pod nginx-mem

kubectl top pod nginx-mem -n team-academia

# Cuarto ejercicio(?)
kubectl create ns team-academia
kubectl apply -f .
kubectl get pods -n team-academia
kubectl describe deployment -n team-academia nginx-memory
kubectl describe pods -n team-academia

# Quinto ejercicio
kubectl create ns team-academia
kubectl apply -f .
kubectl get pods -n team-academia

# comando para estresar 
kubectl autoscale deployment apache --cpu-percent=40 --min=1 --max=8  
 