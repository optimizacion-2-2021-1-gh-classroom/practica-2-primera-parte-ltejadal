#!/bin/bash


#una vez dentro de la instancia: 

sudo su

cd /root && minikube start --driver=none

cd /opt/kf-educate && /root/kfctl apply -V -f kfctl_k8s_istio.v1.0.2.yaml

##//esperara tres minutos 

## sleep
sleep 3m

## Crea nuestro minikube 
OPT_URL=https://raw.githubusercontent.com/optimizacion-2-2021-1-gh-classroom/practica-2-primera-parte-ltejadal/main/deployments/minikube
OPT_PV=hostpath-pv
kubectl create -f $OPT_URL/hostpath_pv/$OPT_PV.yaml


kubectl create -f https://raw.githubusercontent.com/optimizacion-2-2021-1-gh-classroom/practica-2-primera-parte-ltejadal/main/deployments/minikube/hostpath_pv/hostpath-pvc.yaml

kubectl create -f https://raw.githubusercontent.com/ITAM-DS/analisis-numerico-computo-cientifico/master/deployments/minikube/hostpath_pv/loadbalancer-opt-0.1-hostpath-pv.yaml


kubectl create -f https://raw.githubusercontent.com/optimizacion-2-2021-1-gh-classroom/practica-2-primera-parte-ltejadal/main/deployments/minikube/hostpath_pv/jupyterlab-opt-0.1-hostpath-pv.yaml

