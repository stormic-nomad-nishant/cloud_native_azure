sudo apt-get update
sudo apt-get -y install socat conntrack ipset
wget https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.17.0/crictl-v1.17.0-linux-amd64.tar.gz
wget https://storage.googleapis.com/gvisor/releases/nightly/latest/runsc
wget https://github.com/opencontainers/runc/releases/download/v1.0.0-rc10/runc.amd64
wget https://github.com/containernetworking/plugins/releases/download/v0.8.5/cni-plugins-linux-amd64-v0.8.5.tgz
wget https://github.com/containerd/containerd/releases/download/v1.3.2/containerd-1.3.2.linux-amd64.tar.gz
wget https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kubectl
wget https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kube-proxy
wget https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kubelet
sudo mkdir -p /etc/cni/net.d
sudo mkdir -p /opt/cni/bin 
sudo mkdir -p /var/lib/kubelet
sudo mkdir -p /var/lib/kube-proxy
sudo mkdir -p /var/lib/kubernetes
sudo mkdir -p /var/run/kubernetes
sudo mv runc.amd64 runc
chmod +x kubectl kube-proxy kubelet runc runsc
sudo mv kubectl kube-proxy kubelet runc runsc /usr/local/bin/
sudo tar -xvf crictl-v1.17.0-linux-amd64.tar.gz -C /usr/local/bin/
sudo tar -xvf cni-plugins-linux-amd64-v0.8.5.tgz -C /opt/cni/bin/
sudo tar -xvf containerd-1.3.2.linux-amd64.tar.gz -C /
sudo mkdir -p /etc/containerd/