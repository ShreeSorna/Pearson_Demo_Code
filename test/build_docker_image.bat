cd C:\Users\tfssetup\Desktop\docker
docker build -t testapp_%BUILD_NUMBER% .
docker tag testapp_%BUILD_NUMBER% deploymentimagerepo.azurecr.io/testapp_%BUILD_NUMBER%
docker login deploymentimagerepo.azurecr.io -u DeploymentImageRepo -p GoeYzos9LWqguT8MyW6jNiUgPdEM3D7=
docker push deploymentimagerepo.azurecr.io/testapp_%BUILD_NUMBER%