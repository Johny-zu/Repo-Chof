kubectl apply -f pod-multi.yaml
kubectl get pods
kubectl # me falto este
kubectl get logs multi # si quiero revisar los logs del pod
kubectl logs multi -c frontal
kubectl exec -it multi -c web -- sh

# comando del history
1  exit
    2  halt
    3  ls
    4  kuctl create -f .
    5  kubectl create -f .
    6  kubectl get pods,svc
    7  kubectl exec -it redis-cli -- bash
    8  kubectl exce -it redis-maestro -- bash
    9  kubectl exec -it redis-maestro -- bash
   10  kubectl deleted -f .
   11  kubectl delete -f .
   12  kubectl create -f pod-apache.yaml 
   13  history
   14  kubectl create svc svc-lb.yaml
   15  kubectl create svc-lb.yaml
   16  kubectl create -f svc-lb.yaml
   17  kubectl get svc,pods
   18  curl http://localhost:32605
   19  kubectl apply -f pod-multi.yaml 
   20  kubectl get pods
   21  kubectl stl describe
   22  kubectl log multi
   23  kubectl logs multi
   24  kubectl logs multi -c frontal
   25  kubectl exec -it multi -c frontal -- bash
   26  kubectl exec -it multi -c frontal --bash
   27  kubectl exec -it multi -c web --bash
   28  kubectl exec -it multi -c web -- bash
   29  kubectl exec -it multi -c web -- sh
30  pwd
31  history