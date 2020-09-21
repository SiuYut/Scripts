url=lank8s.cn
#url=registry.aliyuncs.com/google_containers


for i in `kubeadm config images list`; do
    image=${i#k8s.gcr.io/}
    docker pull $url/$image
    docker tag $url/$image k8s.gcr.io/$image
    docker rmi $url/$image
done;
