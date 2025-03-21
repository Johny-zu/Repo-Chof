# config map

## comandos 
kubectl create ns team-academia

kubectl create configmap <nombres> --<donde viene>=<nombre variable>= <dato de la variable>
kubectl create configmap apache -n team-academia --from-literal=name=acedemia --from-literal=propietario=Softtek

kubectl delete cm <nombre>

kubectl create ns team-academia

kubectl create ns team-academia --from-literal=name=acedemia --from-literal=propietario=Softtek

kubectl get configmap -n team-academia

kubectl get cm -n team-academia
kubectl apply -f .
kubectl get pods -w