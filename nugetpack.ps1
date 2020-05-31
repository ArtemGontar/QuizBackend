cd ../Shared
dotnet pack Shared.sln -p:PackageVersion=1.2.0 -c Release -o ../pack

cd ../pack
dotnet nuget push *.nupkg -k oy2b6pgab6neovprl3ia3pt7fmz7aooelik4judyqoyj7a -s https://api.nuget.org/v3/index.json

rmdir pack