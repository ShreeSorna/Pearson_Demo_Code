FROM microsoft/aspnetcore:2.0
WORKDIR /app
COPY Artifact/ .
ENTRYPOINT ["dotnet", "aspnetapp.dll"]
