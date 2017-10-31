#!/bin/bash

kubectl create secret -n heketi generic priv-key --from-file=./id_rsa
kubectl create cm -n heketi config --from-file=heketi.json
