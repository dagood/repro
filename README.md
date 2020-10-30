```
#> dotnet --info
.NET SDK (reflecting any global.json):
 Version:   5.0.100-rc.2.20479.15
 Commit:    da7dfa8840

Runtime Environment:
 OS Name:     Windows
 OS Version:  10.0.19042
 OS Platform: Windows
 RID:         win10-x64
 Base Path:   C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\

Host (useful for support):
  Version: 5.0.0-rc.2.20475.5
  Commit:  c5a3f49c88

.NET SDKs installed:
  3.1.300-preview-015135 [C:\Program Files\dotnet\sdk]
  3.1.302 [C:\Program Files\dotnet\sdk]
  3.1.403 [C:\Program Files\dotnet\sdk]
  5.0.100-rc.2.20479.15 [C:\Program Files\dotnet\sdk]

.NET runtimes installed:
  Microsoft.AspNetCore.App 3.1.6 [C:\Program Files\dotnet\shared\Microsoft.AspNetCore.App]
  Microsoft.AspNetCore.App 3.1.7 [C:\Program Files\dotnet\shared\Microsoft.AspNetCore.App]
  Microsoft.AspNetCore.App 3.1.9 [C:\Program Files\dotnet\shared\Microsoft.AspNetCore.App]
  Microsoft.AspNetCore.App 5.0.0-rc.2.20475.17 [C:\Program Files\dotnet\shared\Microsoft.AspNetCore.App]
  Microsoft.NETCore.App 2.1.22 [C:\Program Files\dotnet\shared\Microsoft.NETCore.App]
  Microsoft.NETCore.App 3.1.6 [C:\Program Files\dotnet\shared\Microsoft.NETCore.App]
  Microsoft.NETCore.App 3.1.7 [C:\Program Files\dotnet\shared\Microsoft.NETCore.App]
  Microsoft.NETCore.App 3.1.9 [C:\Program Files\dotnet\shared\Microsoft.NETCore.App]
  Microsoft.NETCore.App 5.0.0-rc.2.20475.5 [C:\Program Files\dotnet\shared\Microsoft.NETCore.App]
  Microsoft.WindowsDesktop.App 3.1.6 [C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App]
  Microsoft.WindowsDesktop.App 3.1.7 [C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App]
  Microsoft.WindowsDesktop.App 3.1.9 [C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App]
  Microsoft.WindowsDesktop.App 5.0.0-rc.2.20475.6 [C:\Program Files\dotnet\shared\Microsoft.WindowsDesktop.App]

To install additional .NET runtimes or SDKs:
  https://aka.ms/dotnet-download
```

```
#> dotnet build /bl
Microsoft (R) Build Engine version 16.8.0-preview-20475-05+aed5e7ed0 for .NET
Copyright (C) Microsoft Corporation. All rights reserved.

C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\MSBuild.dll -consoleloggerparameters:Summary -distributedlogger:Microsoft.DotNet.Tools.MSBuild.MSBuildLogger,C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\dotnet.dll*Microsoft.DotNet.Tools.MSBuild.MSBuildForwardingLogger,C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\dotnet.dll -maxcpucount -restore -verbosity:m /bl .\Build.proj
  Determining projects to restore...
  Restored D:\temp\static-restore-same-version\Build.proj (in 39 ms).
  Restored D:\temp\static-restore-same-version\System.Security.Cryptography.Cng\System.Security.Cryptography.Cng.csproj (in 39 ms).
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error : An item with the same key has already been added. Key: (System.Security.Cryptography.Cng, 5.0.0-rc.2.20475.5) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Collections.Generic.Dictionary`2.TryInsert(TKey key, TValue value, InsertionBehavior behavior) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Linq.Enumerable.ToDictionary[TSource,TKey](List`1 source, Func`2 keySelector, IEqualityComparer`1 comparer) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Linq.Enumerable.ToDictionary[TSource,TKey](IEnumerable`1 source, Func`2 keySelector, IEqualityComparer`1 comparer) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Linq.Enumerable.ToDictionary[TSource,TKey](IEnumerable`1 source, Func`2 keySelector) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.LockFileBuilder.CreateLockFile(LockFile previousLockFile, PackageSpec project, IEnumerable`1 targetGraphs, IReadOnlyList`1 localRepositories, RemoteWalkContext context) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreCommand.ExecuteAsync(CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.ExecuteAsync(RestoreSummaryRequest summaryRequest, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.ExecuteAndCommitAsync(RestoreSummaryRequest summaryRequest, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.CompleteTaskAsync(List`1 restoreTasks) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.RunAsync(IEnumerable`1 restoreRequests, RestoreArgs restoreContext, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.RunAsync(RestoreArgs restoreContext, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Build.Tasks.BuildTasksUtility.RestoreAsync(DependencyGraphSpec dependencyGraphSpec, Boolean interactive, Boolean recursive, Boolean noCache, Boolean ignoreFailedSources, Boolean disableParallel, Boolean force, Boolean forceEvaluate, Boolean hideWarningsAndErrors, Boolean restorePC, Boolean cleanupAssetsForUnsupportedProjects, ILogger log, CancellationToken cancellationToken) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Build.Tasks.Console.MSBuildStaticGraphRestore.RestoreAsync(String entryProjectFilePath, IDictionary`2 globalProperties, IReadOnlyDictionary`2 options) [D:\temp\static-restore-same-version\Build.proj]

Build FAILED.

C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error : An item with the same key has already been added. Key: (System.Security.Cryptography.Cng, 5.0.0-rc.2.20475.5) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Collections.Generic.Dictionary`2.TryInsert(TKey key, TValue value, InsertionBehavior behavior) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Linq.Enumerable.ToDictionary[TSource,TKey](List`1 source, Func`2 keySelector, IEqualityComparer`1 comparer) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Linq.Enumerable.ToDictionary[TSource,TKey](IEnumerable`1 source, Func`2 keySelector, IEqualityComparer`1 comparer) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at System.Linq.Enumerable.ToDictionary[TSource,TKey](IEnumerable`1 source, Func`2 keySelector) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.LockFileBuilder.CreateLockFile(LockFile previousLockFile, PackageSpec project, IEnumerable`1 targetGraphs, IReadOnlyList`1 localRepositories, RemoteWalkContext context) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreCommand.ExecuteAsync(CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.ExecuteAsync(RestoreSummaryRequest summaryRequest, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.ExecuteAndCommitAsync(RestoreSummaryRequest summaryRequest, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.CompleteTaskAsync(List`1 restoreTasks) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.RunAsync(IEnumerable`1 restoreRequests, RestoreArgs restoreContext, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Commands.RestoreRunner.RunAsync(RestoreArgs restoreContext, CancellationToken token) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Build.Tasks.BuildTasksUtility.RestoreAsync(DependencyGraphSpec dependencyGraphSpec, Boolean interactive, Boolean recursive, Boolean noCache, Boolean ignoreFailedSources, Boolean disableParallel, Boolean force, Boolean forceEvaluate, Boolean hideWarningsAndErrors, Boolean restorePC, Boolean cleanupAssetsForUnsupportedProjects, ILogger log, CancellationToken cancellationToken) [D:\temp\static-restore-same-version\Build.proj]
C:\Program Files\dotnet\sdk\5.0.100-rc.2.20479.15\NuGet.RestoreEx.targets(19,5): error :    at NuGet.Build.Tasks.Console.MSBuildStaticGraphRestore.RestoreAsync(String entryProjectFilePath, IDictionary`2 globalProperties, IReadOnlyDictionary`2 options) [D:\temp\static-restore-same-version\Build.proj]
    0 Warning(s)
    1 Error(s)

Time Elapsed 00:00:00.96
```