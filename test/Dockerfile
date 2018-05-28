#Download base image ubuntu 16.04doyt
FROM ubuntu:16.04

# Update Software repository
RUN apt-get update -y

# Install nginx and .net core
RUN apt-get install -y apt-utils
RUN apt-get install unzip -y
RUN apt-get install -y nginx
RUN apt-get install wget -y
RUN apt-get install -y apt-transport-https
RUN sh -c 'wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb'
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update -y
RUN apt-get install -y dotnet-sdk-2.1.4
COPY Publish.zip /
RUN sh -c 'unzip -o /Publish.zip -d /var/www/'
EXPOSE 5000/tcp
EXPOSE 80
ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT Development
WORKDIR /var/www
RUN pwd
ENTRYPOINT ["dotnet", "aspnetapp.dll"]