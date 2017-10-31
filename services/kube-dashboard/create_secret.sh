#!/bin/bash

kubectl create secret -n kube-system generic kubernetes-dashboard-basic-auth --from-file=auth
