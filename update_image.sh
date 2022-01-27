#!/usr/bin/env bash
set -e
export IMAGE=$1
git pull
yq e -i '.app.image = strenv(IMAGE)' ./config/test/values.yaml
git add ./config/test/values.yaml
git commit -m "Update image to $IMAGE"
git push