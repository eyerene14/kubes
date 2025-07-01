# Test-pvs Usage
## pvc.yaml
kubectl apply -f pvc.yaml
kubectl get pvc,pv
kubectl describe pv pvc-53...
OUTPUT:
    ...
    Source:
        Type: HostPath
        Path: /tmp/hostpath-provisioner/default/ineedstorage
    ...
ls /usr/share/

## pv-pvc-pod.yaml
kubectl apply -f pv-pvc-pod.yaml

kubectl get pv,pvc,pods

## podvol.yaml
The same volume is mounted by two different containers within the same pod. That means these containers can use the volume to exchange data

❯ kubectl apply -f podvol.yaml
pod/podvol created

❯ kubectl describe pod podvol

❯ kubectl exec podvol -c busybox1 — touch /busy1/testfile
❯ kubectl exec podvol -c busybox2 — ls /busy1
ls: /busy1: No such file or directory
command terminated with exit code 1
➜  kubectl exec podvol -c busybox2 -- ls /busy2
testfile

