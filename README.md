# demo-app-helm

Helm chart for experimenting with a local ArgoCD setup. See https://github.com/jgoelen/argo-app-of-apps-demo.

## Update from CI

The following script can be triggered from CI to update the image version for the `test` deployment:

```
 ./update_image.sh "nginx:1.20.1-alpine" 
```

The script uses [yq](https://github.com/mikefarah/yq) to manipulate the `values.yaml` file.

