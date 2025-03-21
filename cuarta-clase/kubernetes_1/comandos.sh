controlplane:~$ kubectl run nginx-academia --image=nginx
kubectl describe pod nginx-academia 
kubectl logs nginx-academia -c nginx
kubectl get pods
kubectl expose pod nginx-academia --port=80 --name=academia-svc --type=NodePort
kubectl get services
curl http://localhost:31275
 
 