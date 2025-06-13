# Usage

## Run cronjob-test

## Run job-test
kubectl create job mynewjob --image=busybox --dry-run=client -o yaml -- sleep 5 > mynewjob.yaml

