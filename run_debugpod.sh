#!/bin/bash

ns=${1:-default}
pod_name='k8s-debugpod'
image='quay.io/jgzurano/k8s-debugpod'

kubectl run -it --rm "$pod_name" \
    --namespace "$ns" \
    --image="$image" \
    --restart=Never
