#!/bin/bash

export KUBECONFIG=~/.kube/ij-kube-practice
alias kubectl="kubectl --kubeconfig ~/.kube/ij-kube-practice"
alias k9="k9s --kubeconfig ~/.kube/ij-kube-practice"

kubectl config set-context $(kubectl config current-context) --namespace=datadog-demo
