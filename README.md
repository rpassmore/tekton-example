# jenkins-example using tekton pipelines

```console
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml -n tekton-pipelines
```

```console
# replace DASHBOARD_URL with the hostname you want for your dashboard
# the hostname should be setup to point to your ingress controller
kubectl apply -n tekton-pipelines -f - <<EOF
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: tekton-dashboard
  namespace: tekton-pipelines
spec:
  rules:
  - host: tekton.localhost
    http:
      paths:
      - pathType: ImplementationSpecific
        backend:
          service:
            name: tekton-dashboard
            port:
              number: 9097
EOF
```

```console
$ kubectl apply -f secret.yaml
secret/basic-user-pass created

$ kubectl apply -f serviceaccount.yaml
serviceaccount/build-bot created
role.rbac.authorization.k8s.io/pipeline-role created
rolebinding.rbac.authorization.k8s.io/pipline-role-binding created
role.rbac.authorization.k8s.io/tekton-role created
rolebinding.rbac.authorization.k8s.io/tekton-role-binding created
```