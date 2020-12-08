In Docker image: `mcr.microsoft.com/dotnet/sdk:5.0`

```
$ dotnet --info
.NET SDK (reflecting any global.json):
 Version:   5.0.100
 Commit:    5044b93829

Runtime Environment:
 OS Name:     debian
 OS Version:  10
 OS Platform: Linux
 RID:         debian.10-x64
 Base Path:   /usr/share/dotnet/sdk/5.0.100/

Host (useful for support):
  Version: 5.0.0
  Commit:  cf258a14b7

.NET SDKs installed:
  5.0.100 [/usr/share/dotnet/sdk]

.NET runtimes installed:
  Microsoft.AspNetCore.App 5.0.0 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
  Microsoft.NETCore.App 5.0.0 [/usr/share/dotnet/shared/Microsoft.NETCore.App]

To install additional .NET runtimes or SDKs:
  https://aka.ms/dotnet-download

```

```
$ dotnet build ./System.Security.Cryptography.Pkcs/System.Security.Cryptography.Pkcs.csproj /bl
...
/usr/share/dotnet/sdk/5.0.100/MSBuild.dll -consoleloggerparameters:Summary -distributedlogger:Microsoft.DotNet.Tools.MSBuild.MSBuildLogger,/usr/share/dotnet/sdk/5.0.100/dotnet.dll*Microsoft.DotNet.Tools.MSBuild.MSBuildForwardingLogger,/usr/share/dotnet/sdk/5.0.100/dotnet.dll -maxcpucount -restore -verbosity:m /bl ./System.Security.Cryptography.Pkcs/System.Security.Cryptography.Pkcs.csproj
  Determining projects to restore...
  Restored /work/System.Security.Cryptography.Cng/System.Security.Cryptography.Cng.csproj (in 62 ms).
/usr/share/dotnet/sdk/5.0.100/NuGet.targets(131,5): error : An item with the same key has already been added. Key: (System.Security.Cryptography.Cng, 5.0.0-rc.2.20475.5) [/work/System.Security.Cryptography.Pkcs/System.Security.Cryptography.Pkcs.csproj]

Build FAILED.

/usr/share/dotnet/sdk/5.0.100/NuGet.targets(131,5): error : An item with the same key has already been added. Key: (System.Security.Cryptography.Cng, 5.0.0-rc.2.20475.5) [/work/System.Security.Cryptography.Pkcs/System.Security.Cryptography.Pkcs.csproj]
    0 Warning(s)
    1 Error(s)

Time Elapsed 00:00:04.94
```

# Projects

System.Security.Cryptography.Cng.csproj

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net5.0</TargetFramework>
    <Version>5.0.0-rc.2.20475.5</Version>
  </PropertyGroup>
</Project>
```

System.Security.Cryptography.Pkcs.csproj

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFrameworks>net5.0;netcoreapp3.1</TargetFrameworks>
  </PropertyGroup>
  <ItemGroup Condition="'$(TargetFramework)' == 'net5.0'">
    <ProjectReference Include="../System.Security.Cryptography.Cng/System.Security.Cryptography.Cng.csproj" />
  </ItemGroup>
  <ItemGroup Condition="'$(TargetFramework)' == 'netcoreapp3.1'">
    <PackageReference Include="System.Security.Cryptography.Cng" Version="5.0.0-rc.2.20475.5" />
  </ItemGroup>
</Project>
```