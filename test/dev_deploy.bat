set KUBECONFIG=C:\Users\tfssetup\.kube\config
kubectl describe deployments pearson-dev
kubectl set image deployments/pearson-dev pearson-dev=deploymentimagerepo.azurecr.io/testapp_%BUILD_NUMBER%
kubectl describe deployments pearson-dev