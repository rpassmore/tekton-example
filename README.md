# jenkins-example using tekton pipelines

```yaml
apiVersion: v1
kind: ServiceAccount
metadata:
  name: build-bot
secrets:
  - name: basic-user-pass
```

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: basic-user-pass
  annotations:
    tekton.dev/docker-0: https://index.docker.io/v1/
type: kubernetes.io/basic-auth
stringData:
    username: myusername
    password: mypassword
```

```console
$ kubectl apply -f secret.yaml
secret/basic-user-pass created

$ kubectl apply -f serviceaccount.yaml
serviceaccount/build-bot created
```