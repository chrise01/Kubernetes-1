###running on a single ubuntu VM###
###Make sure VT-x is running on hypervisor###
sudo snap install docker
sudo docker version
sudo apt-get install curl -y
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo kubectl version
sudo apt install virtualbox -y
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \ && chmod +x minikube
sudo install minikube /usr/local/bin
minikube version
minikube start
virtualbox
kubectl get nodes
####
kubectl run hw --image=karthequian/helloworld --port=80
kubectl get deployments
## ReplicaSets
kubectl get rs
kubectl get pods
##
kubectl expose deployment hw --type=NodePort
kubectl get services
## - displays app in browsers?
minikube service hw
## - shows pods, services, deployments and replicasets
kubectl get all
##
## - yaml output of the hw deployment
kubectl get deployment/hw -o yaml
kubectl get services/hw -o yaml
### combine the 2 yaml into a single yml file - use "---" to seperate deployment vs services sections?

