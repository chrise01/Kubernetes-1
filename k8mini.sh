##wget -N https://raw.githubusercontent.com/chrise01/Kubernetes-1/master/k8mini.sh
##chmod -x ./k8mini.sh
##sudo bash ./k8mini.sh
##
sudo apt-get update
sudo apt-get install -y apt-transport-https
##
sudo apt-get install -y virtualbox virtualbox-ext-pack
#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
#sudo touch /etc/apt/sources.list.d/kubernetes.list 
#echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
#sudo apt-get update
sudo snap install kubectl --classic


##sudo apt-get install -y kubectl - no longer works?
sudo apt install curl
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

##
#wget -N minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64
#chmod +x minikube && sudo mv minikube /usr/local/bin/
##
minikube start
kubectl api-versions

