url=lank8s.cn
#url=registry.aliyuncs.com/google_containers

kubeadm config images list | awk -F/ '{print $2}' | while read image
do
    docker pull $url/$image
    docker tag $url/$image k8s.gcr.io/$image
    docker rmi $url/$image
done
