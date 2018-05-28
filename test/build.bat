cd C:\Users\tfssetup\Desktop\docker\aspnetapp
dotnet restore
dotnet publish -c Release -o C:\Users\tfssetup\Desktop\docker\Artifact
cd ..
docker build -t testapp_%BUILD_NUMBER% .
docker tag testapp_%BUILD_NUMBER% deploymentimagerepo.azurecr.io/testapp_%BUILD_NUMBER%
docker push deploymentimagerepo.azurecr.io/testapp_%BUILD_NUMBER%