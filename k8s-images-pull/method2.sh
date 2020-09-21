url=lank8s.cn
#url=registry.aliyuncs.com/google_containers

images=(`kubeadm config images list | awk -F '/' '{print $2}'`)

for image in ${images[*]}; do
    docker pull $url/$image
    docker tag $url/$image k8s.gcr.io/$image
    docker rmi $url/$image
done;
