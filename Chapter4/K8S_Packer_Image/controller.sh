sudo mkdir -p /etc/kubernetes/config
sudo wget https://github.com/etcd-io/etcd/releases/download/v3.4.10/etcd-v3.4.10-linux-amd64.tar.gz
sudo tar -xvf etcd-v3.4.10-linux-amd64.tar.gz
sudo mv etcd-v3.4.10-linux-amd64/etcd* /usr/local/bin/
sudo mkdir -p /etc/etcd
sudo mkdir -p /var/lib/etcd
sudo chmod 700 /var/lib/etcd
sudo mkdir -p /etc/kubernetes/config
wget https://storage.googleapis.com/kubernetes-release/release/v1.18.6/bin/linux/amd64/kube-apiserver 
wget https://storage.googleapis.com/kubernetes-release/release/v1.18.6/bin/linux/amd64/kube-controller-manager
wget https://storage.googleapis.com/kubernetes-release/release/v1.18.6/bin/linux/amd64/kube-scheduler
wget https://storage.googleapis.com/kubernetes-release/release/v1.18.6/bin/linux/amd64/kubectl
chmod +x kube-apiserver kube-controller-manager kube-scheduler kubectl
sudo mv kube-apiserver kube-controller-manager kube-scheduler kubectl /usr/local/bin/
sudo mkdir -p /var/lib/kubernetes/