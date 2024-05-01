#!/bin/bash

#VARIABLE
PODNAME=$(kubectl get po -A | awk '{print $1, $2, $4}' | fzf | awk '{print $1, $2}')

#COMMAND
function list() {
    kubectl get po -n ${PODNAME} -o jsonpath='{range .spec.containers[*]}{.name}{"\n"}{end}' | fzf
}

list
