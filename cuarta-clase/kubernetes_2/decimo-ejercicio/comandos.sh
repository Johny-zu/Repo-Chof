kubectl create ns team-academia

kubectl apply -f .

kubectl get pods -n team-academia

kubectl get cm -n team-academia

kubectl exec -it -n team-academia pod-academia -- bash

kubectl exec -it busy -n team-academia -- sh
