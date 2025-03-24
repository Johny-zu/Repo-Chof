## Reto 1
# cuantos pots tienes
kubectl get pods

# create a new pod with the image nginx image 
kubectl run nginx --image=nginx

# Hoy many pod are created now?
kubectl get pods

# what is the image used to create a new pod?
kubectl describe pod nginx

# wich node are these pods placede on?
kubectl get pods -o wide

# how many containers are part of the pod webapp?
# we just created a new POD. ignore the sate of the pod for now
kubectl get pods

# what images are used in the new webapp pod?
kubectl describe pod webapp

# what is the state of the conteiner agentx in the pod webapp?
kubectl describe pod webapp

# delete the pod webapp pod
kubectl delete pod webapp

# create a new pod with the name refis and the image redis123
kubectl run redis --image=redis123

# change the image of the pod redis to redis
kubectl set image pod redis redis=redis
kubectl edit pod redis redis=redis

