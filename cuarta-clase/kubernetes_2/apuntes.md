# dia 21/03/2025
Aqui escribire los ejercicios del dia

## levantamos un pod(pod-apache)
seria el pod de apache que esta en la clase, se puede correr usando 

> kubectl create -f pod-apache-yaml

## configuramos el manifiesto(servicioNodePod)

## En segundo-ejercicio
se corre de la siguiente forma
> kubectl exec -it redis-cli --bash
> redis-cli -h redis-svc
el -h es por donde te vas a conectar
vamos a crear una dato de llave
> set v1 21
> set prueba 2000
> get v1
> get prueba 

### comandos usados
kubectl create -f .

kubectl get pods,svc
 
kubectl exec -it redis-cli --bash

redis-cli -h redis-svc

set v1 21
