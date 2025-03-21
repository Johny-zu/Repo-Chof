kubectl create ns team-academia
kubectl get ns
echo -n "usupass" | base64
echo -n "Academia-2025" | base64
kubectl create secret generic test-secret --from-literal=usuario=<lo que salio de arriba> 
                                           --from-literal=entorno=<lo que salio de arriba>
kubectl get secret 
# kubectl describe secret test-secret
# kubectl get secret test-secret -o yaml
kubectl describe secret test-secret

# para eliminar los secrets
kubectl delete secret test-secret

# desde el pod nuevo
kubectl create secret generic datos -n team-academia --from-file=datos.txt=
kubectl get pods -n team-academia
kubectl exec -it test-container -n team-academia -- bash

# apartir del second secret
kubectl