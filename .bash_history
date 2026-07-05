sudo su
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo su
kubectl get nodes
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.27.0/manifests/calico.yaml
kubectl get pods -n kube-system
kubectl get nodes
kubectl run nginx1 --image=nginx
kubectl get pods -o wide
sudo apt update
sudo apt install -y bash-completion
echo 'source <(kubectl completion bash)' >>~/.bashrc
echo 'alias k=kubectl' >>~/.bashrc
echo 'complete -F __start_kubectl k' >>~/.bashrc
source .bashrc
k get nodes
kubectl run web1 --image nginx
kubectl get pods
kubectl get pods -o wide
kubectl run web1 --image nginx
kubectl get pods
k get nodes
mkdir yaml/
cd yaml/
vim pod1.yml
cat pod1.yml
vim pod1.yml
cat pod1.yml
kubectl apply -f pod1.yml
kubectl get pods
kubectl get pods -o wide
curl 192.168.246.193
curl 192.168.246.194
kubectl get pods -A
kubectl exec -it nginx1 -- curl localhost
curl 192.168.246.194
curl 192.168.246.195
kubectl describe pod web10
kubectl get pod web1 -o yaml
kubectl get pod web10 -o yaml
cat pod1.yml
vim pod2.yml
cat pod2.yml
kubectl apply -f pod2.yml
kubectl get pods --show-labels
cp pod2.yml pod3.yml
vim pod3.yml
cat pod3.yml
kubectl apply -f pod3.yml
kubectl get pods --show-labels
vim pod3.yml
kubectl apply -f pod3.yml
kubectl apply -f pod2.yml
kubectl get pods --show-labels
kubectl get pods -L env
kubectl get pods -l env
kubectl get pods -l env=prod
kubectl get pods -o wide
kubectl label nodes ip-10-0-0-14 hardware=highspec
kubectl label nodes ip-10-0-0-4 hardware=lowspec
cat pod3.yml
vim nodeselector1.yml
kubectl apply -f nodeselector1.yml
kubectl get pods -o wide
vim nodeselector2.yml
kubectl apply -f nodeselector2.yml
kubectl get pods -o wide
vim nodeselector3.yml
kubectl apply -f nodeselector3.yml
kubectl get pods -o wide
kubectl describe pod web16
vim nodeselector3.yml
kubectl apply -f nodeselector3.yml
kubectl delete pod web16
kubectl apply -f nodeselector3.yml
kubectl get pods -o wide
ls -lat
cd yaml
ls
vim rs1.yml
kubectl apply -f rs1.yml
kubectl get rs
kubectl get pods
kubectl get pods --show-lables
kubectl get pods --show-labels
kubectl get pods
kubectl get pods --show-labels
kubectl delete pod web15
kubectl delete pod web16
kubectl delete pod web14
kubectl delete pod web11
kubectl get pods --show-labels
vim clusterip.yml
kubectl apply -f clusterip.yml 
cat clusterip.yml
kubectl get svc
curl 10.107.121.237
kubectl edit svc frontend-service
kubectl delete svc frontend-service
ls
cp clusterip.yml nodeport.yml
vi nodeport.yml
kubectl apply -f nodeport.yml 
kubectl get svc
vi nodeport.yml
kubectl delete svc frontend-service
kubectl apply -f nodeport.yml 
kubectl get svc
vi nodeport.yml
kubectl get pods --show-labels -o wide
kubectl get endpoints
kubectl get namespaces
kubectl get pods
kubectl get pods -n default
kubectl create namespace dev
kubectl create ns qa
kubectl get ns
kubectl get pods -n dev
kubectl get rs -n dev
vim ns.yml
cat ns.yml
kubectl apply -f ns.yml
kubectl get ns
kubectl run nginx1 --image=nginx -n dev
kubectl run nginx1 --image=nginx -n qa
kubectl get pods -n dev
kubectl get pods -n qa
kubectl get pods -n prod
kubectl config view --minify | grep namespace:
kubectl get pods
kubectl config view --minify | grep namespace:
kubectl config set-context --current --namespace=default
kubectl config view --minify | grep namespace:
ls
cd yaml/
ls
cd ..
cp yaml/rs1.yml .
ls
cp rs1.yml rs1_nsdev.yml
cp rs1.yml rs1_nsqa.yml
vim rs1_nsdev.yml 
cat rs1_nsdev.yml
kubectl apply -f rs1_nsdev.yml
k get pods -n dev
vim rs1_nsqa.yml 
cat rs1_nsqa.yml
kubectl apply -f rs1_nsqa.yml
k get pods -n qa
ls
cp clusterip.yml clusterip_nsdev.yml 
cp clusterip.yml clusterip_nsqa.yml 
vim clusterip_nsdev.yml 
kubectl apply -f clusterip_nsdev.yml 
kubectl get svc -n dev
cat clusterip_nsdev.yml 
kubectl get endpoints -n dev
vim clusterip_nsqa.yml 
kubectl apply -f clusterip_nsqa.yml 
cat clusterip_nsqa.yml 
kubectl get svc -n qa
kubectl get endpoints -n qa
kubectl get pods -n dev
kubectl exec -it nginx1 bash -n dev
kubectl get pods
kubectl get rs
kubectl delete rs frontend
kubectl delete pods --all
kubectl get pods
ls
cp rs1.yml deployment.yml
vim deployment.yml 
cat deployment.yml
kubectl apply -f deployment.yml 
kubectl get deployment.apps
kubectl get rs
kubectl get pods
kubectl get endpoints
kubectl describe rs frontend-647797d8f7
kubectl describe deployment.apps frontend
kubectl describe pod frontend-647797d8f7-22p64
kubectl annotate deployment/frontend kubernetes.io/change-cause="initial image deployed 1.14.2"
vim deployment.yml
kubectl apply -f deployment.yml 
kubectl get rs
kubectl get pods
kubectl describe pod frontend-cd9ccb784-hltnl
kubectl describe deployment.apps frontend
kubectl annotate deployment/frontend kubernetes.io/change-cause="image updated 1.16.1"
kubectl rollout history deployment/frontend
kubectl rollout undo deployment/frontend --to-revision=1
kubectl get rs
sudo su
kubectl get node
kubectl taint nodes ip-10-0-0-4 hardware=highspec:NoSchedule
kubectl taint nodes ip-10-0-0-14 hardware=lowspec:NoSchedule
kubectl get pods
kubectl delete deployment.apps
kubectl delete deployment.apps frontend
kubectl get pods
vim taint1.yml
kubectl apply -f  taint.yml
kubectl apply -f  taint1.yml
kubectl get pods -o wide
cp taint1.yml taint2.yml
vim taint2.yml
cat taint2.yml
vim taint2.yml
cat taint2.yml
kubectl apply -f  taint2.yml
kubectl get pods -o wide
ls
cd yaml
ls
cat pod1.yml
kubectl apply -f pod1.yml
kubectl get pods -o wide
kubectl describe pod web10
kubectl edit nodes ip-10-0-0-14
kubectl get pods -o wide
cd ..
ls
cp taint2.yml taint3.yml
vim taint3.yml
kubectl apply -f taint3.yml
vim taint3.yml
cat taint3.yml
kubectl apply -f taint3.yml
kubectl get pods -o wide
kubectl taint nodes ip-10-0-0-14 hardware=lowspec:NoSchedule
kubectl get pods -o wide
kubectl edit nodes ip-10-0-0-14 
kubectl get pods -o wide
kubectl edit nodes ip-10-0-0-14 
kubectl edit nodes ip-10-0-0-4 
kubectl get node --show-labels
ls
cp clusterip.yml clusterip_readinessapp.yml
vim clusterip_readinessapp.yml
cat clusterip_readinessapp.yml
kubectl apply -f clusterip_readinessapp.yml 
kubectl get svc
kubectl get endpoints
vim readiness.yml
cat readiness.yml
kubectl apply -f readiness.yml
kubectl get deploymnet
kubectl get deployment
kubectl get pods
kubectl get nodes
kubectl edit node ip-10-0-0-14
kubectl edit node ip-10-0-0-4
kubectl get pods
kubectl get deployment
kubectl get endpoints
kubectl exec -it readiness-5d75f54d95-27lth bash
kubectl get pods
kubectl get endpoints
vim readiness2.yml
kubectl delete deployment readiness
cat readiness2.yml
kubectl get endpoints
kubectl get pods
kubectl apply -f readiness2.yml
l
kubectl apply -f readiness2.yml 
cat readiness2.yml
vim readiness2.yml
cat readiness2.yml
kubectl apply -f readiness2.yml 
kubectl get pods
kubectl get endpoints
kubectl get pods
kubectl get endpoints
kubectl get pods
kubectl get endpoints
vim liveness.yml
cat liveness.yml
kubectl apply -f liveness.yml
kubectl get pods
kubectl get pods -n kube-system -o wide
kubectl get daemonsets -n kube-system
cp deployment.yml daemon.yml
vim daemon.yml
cat daemon.yml
kubectl delete deployment frontend
kubectl get deployment
kubectl apply -f daemon.yml 
kubectl get daemonset
kubectl get pods -o wide
kubectl run nginx4 --image nginx
kubectl run nginx5 --image nginx
kubectl run nginx6 --image nginx
kubectl get pods -o wide
kubectl get pods -o wide | grep ip-10-0-0-14
kubectl get pods -o wide | grep ip-10-0-0-4
kubectl get nodes
vim /etc/apt/sources.list.d/kubernetes.list
sudo vim /etc/apt/sources.list.d/kubernetes.list
cat /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt-cache madison kubeadm
sudo apt-mark unhold kubeadm && sudo apt-get update && sudo apt-get install -y kubeadm='1.30.14-1.1' && sudo apt-mark hold kubeadm
kubeadm version
sudo kubeadm upgrade plan
sudo kubeadm upgrade apply v1.30.14
sudo apt-mark unhold kubelet kubectl && sudo apt-get update && sudo apt-get install -y kubelet='1.30.14-1' kubectl='1.30.14-1' && sudo apt-mark hold kubelet kubectl
sudo apt-mark unhold kubelet kubectl && sudo apt-get update && sudo apt-get install -y kubelet='1.30.14-1.1' kubectl='1.30.14-1.1' && sudo apt-mark hold kubelet kubectl
kubectl get nodes
sudo systemctl daemon-reload
sudo systemctl restart kubelet
kubectl get nodes
kubectl drain ip-10-0-0-4 --ignore-daemonsets
kubectl drain ip-10-0-0-4 --ignore-daemonsets --force
kubectl get nodes
sudo systemctl daemon-reload
sudo systemctl restart kubelet
kubectl get nodes
kubectl uncordon ip-10-0-0-4
kubectl get nodes
kubectl uncordon ip-10-0-0-4
kubectl uncordon ip-10-0-0-14
kubectl get nodes
kubectl get pods -o wide
k get nodes
kubectl get deplymnet.apps
kubectl get deploymnet.apps
kubectl get nodes
kubectl get deployment.apps
kubectl delete deployment.apps readiness
kubectl get pods
vim hostpath.yml
cat hostpath.yml
kubectl apply -f hostpath.yml 
kubectl get pods
kubectl get pods -o wide
kubectl delete pod nginx6
kubectl delete pod nginx5
kubectl delete pod nginx4
kubectl delete pod liveness-exec
kubectl get pods -o wide
kubectl exec -it test-webserver bash
sudo apt update
sudo apt install nfs-kernel-server
mkdir -p /nfsdata
sudo mkdir -p /nfsdata
sudo chown -R nobody:nogroup /nfsdata
sudo chmod 777 /nfsdata
sudo vim /etc/exports
sudo exportfs -a
sudo systemctl restart nfs-kernel-server
showmount -e
cd /nfsdata
ls
unmount /wow
cd ..
vim pv.yml
sudo vim pv.yml
sudo vim pvc.yml
kubectl apply -f pvc.yml
kubectl get pvc
kubectl apply -f pv.yml
kubectl get pv
kubectl get pvc
sudo vim pod-storage.yml
kubectl apply -f pod-storage.yml
kubectl get pod
kubectl exec -it nvolpod bash
cd /nfsdata/
ls
kubectl get pv
kubectl edit pv nfsdata
vim mysql.yml
cat mysql.yml
k apply -f mysql.yml
kubectl get pods -o wide
mysql
sudo apt install mysql-client-core-8.0
mysql -h 192.168.181.22 -u root -p
mysql -h 192.168.181.22 -u yashvi -p
kubectl create configmap --help
kubectl create configmap devdbcred --from-literal=MYSQL_USER=yashvi --from-literal=MYSQL_PASSWORD=Redhat@123
kubectl get configmaps
kubectl describe configmaps devdbcred
vim mysql1-configmap.yml
cat mysql1-configmap.yml
kubectl apply -f mysql1-configmap.yml 
kubectl get pod -o wide
kubectl describe pod mysql-cm
kubectl get configmap devdbcred -o yaml
kubectl create configmap devdbcred --from-literal=MYSQL_ROOT_PASSWORD=Root@123 --from-literal=MYSQL_USER=yashvi --from-literal=MYSQL_PASSWORD=Redhat@123
kubectl delete configmap devdbcred
kubectl create configmap devdbcred --from-literal=MYSQL_ROOT_PASSWORD=Root@123 --from-literal=MYSQL_USER=yashvi --from-literal=MYSQL_PASSWORD=Redhat@123
kubectl delete pod mysql-cm
kubectl apply -f mysql1-configmap.yml 
kubectl get pod -o wide
mysql -h 192.168.181.24 -u root -p
vim mysql2-configmapshort.yml
kubectl apply -f mysql2-configmapshort.yml 
kubectl get pods -o wide
mysql -h 192.168.181.25 -u root -p
kubectl get configmaps
kubectl describe configmaps devdbcred
kubectl create secret --help
kubectl create secret generic --help
kubectl create secret generic devdbcred --from-literal=MYSQL_ROOT_PASSWORD=Root@123 --from-literal=MYSQL_USER=yashvi --from-literal=MYSQL_PASSWORD=Redhat@123
kubectl get secrets
kubectl describe secrets devdbcred
kubectl get secrets devdbcred -o yaml
echo UmVkaGF0QDEyMw== | base64 --decode
kubectl get nodes
apt-get install openssl
sudo apt-get install openssl
openssl genrsa -out yashvi.key 2048
ls
cat yashvi.key
openssl req -new -key yashvi.key -out yashvi.csr -subj "/CN=yashvi/O=devopsncloud"
ls
cat yashvi.csr
cat yashvi.csr | base64 | tr -d '\n'
vim csr.yml
kubectl apply -f csr.yaml
kubectl apply -f csr.yml
cat csr,yml
cat csr.yml
cat -n csr.yml
vim csr.yml
cat -n csr.yml
kubectl apply -f csr.yml
vim csr.yml
cat -n csr.yml
kubectl apply -f csr.yml
kubectl get csr
kubectl delete csr janak-csr
kubectl get csr
kubectl certificate approve yashvi-csr
kubectl get csr
kubectl get csr yashvi-csr -o yaml
kubectl get csr yashvi-csr -o jsonpath='{.status.certificate}'
kkubectl get csr yashvi-csr -o jsonpath='{.status.certificate}' | base64 -d > yashvi.crt
kubectl get csr yashvi-csr -o jsonpath='{.status.certificate}' | base64 -d > yashvi.crt
ls
cat yashvi.crt
ls -lat
kubectl config set-credentials yashvi --client-certificate=yashvi.crt --client-key=yashvi.key
kubectl config set-context yashvi-context --cluster kubernetes --user=yashvi
kubectl --context=yashvi-context get pods
kubectl get pods
cd .kube/
ls
less config
vim config
ls
cd .kube/
ls
vim config
kubectl get pods
vim config
kubectl get pods
vim role.yml
kubectl apply -f role.yml
kubectl get role
cat role.yml
vim rb-rolebinding.yml
kubectl --context=yashvi-context get pods
[200~kubectl apply -f rb-rolebinding.yml
kubectl apply -f rb-rolebinding.yml
kubectl --context=yashvi-context get pods
kubectl --context=yashvi-context get deployment.apps
kubectl --context=yashvi-context get service
kubectl --context=yashvi-context run nginx1 --image nginx
kubectl proxy --port=8080 &
curl http://localhost:8080/api/
curl http://localhost:8080/api/v1
curl http://localhost:8080/api/v1 | less
vim role.yml
ls
ls yaml/
vim role.yml
cat role.yml
kubectl apply -f role.yml
kubectl --context=yashvi-context run nginx101 --image nginx
kubectl get ns
kubectl --context=yashvi-context run nginx101 --image nginx -n qa
vim clusterrole.yml
cat clusterrole.yml
kubectl apply -f clusterrole.yml
vim rolebindingwithclusterrole-permission.yml
cat rolebindingwithclusterrole-permission.yml
kubectl get ns
kubectl get pods -n dev
kubectl apply -f rolebindingwithclusterrole-permission.yml 
kubectl --context=yashvi-context get pods -n dev
kubectl --context=yashvi-context get pods -n qa
kubectl --context=yashvi-context get pods -n prod
vim clusterrolebinding.yml
cat clusterrolebinding.yml 
kubectl apply -f clusterrolebinding.yml 
kubectl --context=yashvi-context get pods -n qa
vim clusterrolebinding.yml
cat clusterrolebinding.yml 
kubectl apply -f clusterrolebinding.yml 
kubectl --context=yashvi-context get pods -n qa
kubectl --context=yashvi-context get pods -n prod
